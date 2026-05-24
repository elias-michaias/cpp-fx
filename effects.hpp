#pragma once
// effects.hpp -- Algebraic Effects & Handlers in C++23
//
// --- API -------------------------------------------------------------------
//
//  Effect<Self>     -- CRTP base; gives Self::Fx<R> and Self::Handler<Derived>
//                      Use: struct MyEff : Effect<MyEff> { using result_type =
//                      T; };
//  Handler H        -- callable  (E, fx::Resume<E>) -> void
//                      Resume<E> is a lightweight resume token; r(value) resumes
//                      the suspended perform.  Use `auto r` in the signature.
//
//  E::Fx<T>                 -- coroutine return type for a single effect E
//  Row<E1,E2>::Fx<T>        -- coroutine return type for multiple effects
//                              Row accepts bare effects or other rows:
//                              Row<IO, Fail>  flattens to Row<Ask, Log, Fail>
//  Fx<T>                    -- pure computation, no effects (zero-arg .run())
//  perform(e)               -- co_await an effect inside an Fx
//  handle<E>(comp, h)       -- install h for E; returns Fx with E removed
//                              compile error if E is not in comp's declared
//                              effects
//  comp.run(h1, h2, ...)    -- validate ALL declared effects are handled, run
//                              compile error if any declared effect lacks a
//                              handler

//  handler<E>(lambda)       -- wrap a lambda as a single-effect TypedHandler
//  handler<Row>(l1, l2, ...) -- build an inline CompositeHandler for a Row
//  VALIDATE_HANDLER(H)      -- static_assert at definition site that H is
#include <any>
#include <coroutine>
#include <exception>
#include <functional>
#include <memory_resource>
#include <optional>
#include <stdexcept>
#include <type_traits>
#include <utility>
#include <variant>

namespace fx {

// --- Concepts ---------------------------------------------------------------

/// Satisfied by any type that declares a `result_type` member.
/// This is the minimum requirement for an effect type — `result_type`
/// is the value the coroutine receives back after `perform(e)` resumes.
///
///   struct Ask : Effect<Ask> { using result_type = std::string; };
template <typename E>
concept Effectful = requires { typename E::result_type; };

// Forward-declare PerformAwaitable so Resume<E> can hold a pointer to it.
// Full definition is in the perform() section below.
template <Effectful E> class PerformAwaitable;

/// Lightweight resume token passed to handlers instead of std::function.
/// Stores a single pointer into the coroutine frame — no heap allocation,
/// no type erasure, no virtual dispatch.  Call r(value) to resume.
template <Effectful E>
struct Resume {
  PerformAwaitable<E> *pa;
  void operator()(typename E::result_type v) const;
};

/// Resume token that also carries the computation's final result type `T`.
///
/// This is what ScopedHandler passes to the handler's operator() when it
/// knows the inner result type (i.e. inside run_push for a TypedHandler).
/// Handlers that write `auto k` in their signature receive this type, so they
/// can call `k.resume_and_get(value)` to drive the computation to completion
/// and get `T` back — without an explicit template argument.
///
/// For polymorphism over T, write a template operator():
///
///   struct CacheHit : Ask::Handler<CacheHit> {
///     std::map<std::string, std::any> cache;
///     template <typename T>
///     auto operator()(Ask e, TypedResume<Ask, T> k) -> T {
///       T result = k.resume_and_get("value");
///       cache[e.prompt] = result;  // JSON::serialize(result), metrics, etc.
///       return result;             // passthrough
///     }
///   };
///
/// Inherits from Resume<E> so handlers that take an explicit `Resume<E>`
/// parameter continue to work unchanged.
template <Effectful E, typename T>
struct TypedResume : Resume<E> {
  explicit TypedResume(PerformAwaitable<E> *pa) noexcept : Resume<E>{pa} {}
  /// Drive the continuation to completion and return the final result as T.
  /// Equivalent to fx::resume_and_get<T>(*this, v) without the explicit <T>.
  T resume_and_get(typename E::result_type v) const; // defined after fx::resume_and_get
};

/// Satisfied when H can be called as `h(e, r)` where `e : E` and
/// `r : TypedResume<E, int>` (a probe T — any TypedResume<E, *> works).
/// Use `auto r` in the handler signature; the actual T is deduced at the
/// call site and forwarded by ScopedHandler.
template <typename H, typename E>
concept HandlerFor =
    Effectful<E> &&
    requires(std::remove_cvref_t<H> &h, E e, TypedResume<E, int> r) { h(e, r); };

/// Satisfied by handler objects that advertise their target effect via
/// an `effect_type` alias (produced by `Effect::Handler<Derived>` or
/// `handler<E>(lambda)`).  Used by `run_impl` to dispatch single-effect
/// handlers without ambiguity with composite handlers.
template <typename H>
concept TypedHandler =
    requires { typename std::remove_cvref_t<H>::effect_type; } &&
    HandlerFor<std::remove_cvref_t<H>,
               typename std::remove_cvref_t<H>::effect_type>;

// --- handler<E>(lambda) wrapper ---------------------------------------------

/// Thin wrapper that gives an arbitrary lambda an `effect_type` alias so it
/// satisfies `TypedHandler`.  Constructed by `handler<E>(lambda)` — prefer
/// that helper over constructing this directly.
template <Effectful E, typename F>
  requires HandlerFor<F, E>
struct LambdaHandler {
  using effect_type = E;
  F fn;
  void operator()(E e, auto r) { fn(std::move(e), std::move(r)); }
};

/// Wraps `fn` in a `LambdaHandler<E>` so it can be passed to `.run()`.
///
///   auto h = handler<Ask>([](Ask e, auto r) { r("Alice"); });
///   greet().run(h);
template <Effectful E, typename F>
  requires HandlerFor<F, E>
auto handler(F &&fn) {
  return LambdaHandler<E, std::decay_t<F>>{std::forward<F>(fn)};
}

// --- Thread-local handler stack and allocator --------------------------------

namespace detail {

// Non-templated base for the abort slot in every promise.
// Stored by pointer in PerformAwaitable so ScopedHandler::dispatch can
// signal abort without knowing T or Es.
struct PromiseAbortBase {
  bool        aborted     = false;
  void       *abort_owner = nullptr; // address of the handler that aborted
  std::any    abort_value;           // typed abort value, set by aborting handler

  // Moved here from PromiseBase so that resume_and_get can reach them
  // through the non-templated abort_base_ pointer on PerformAwaitable.
  const void        *effect_tag  = nullptr;
  void              *payload_ptr = nullptr;
  std::exception_ptr exception;
  // Points to the std::optional<T> result member inside the typed promise.
  // Set by get_return_object().  Null for Fx<void> computations.
  void              *result_ptr  = nullptr;
};

struct HandlerNode {
  const void *effect_tag = nullptr;
  void *handler_obj = nullptr;      // abort-owner ID (= &node for TypedHandler, or group_id for composite)
  void *real_handler_ptr = nullptr; // actual handler object pointer (used by dispatch lambda)
  void (*dispatch)(void *node_self, void *payload) = nullptr;
  HandlerNode *prev = nullptr;
};

inline thread_local HandlerNode *stack_top = nullptr;

/// Active memory resource for this thread.  Null means use new/delete.
/// Set via fx::ScopedAllocator — never write this directly.
inline thread_local std::pmr::memory_resource *current_mr = nullptr;

template <Effectful E> inline constexpr char effect_tag_v = 0;

// (Payload<E>, pmr_new, pmr_delete removed — per-perform data lives
//  directly in PerformAwaitable on the coroutine frame; no heap alloc.)

inline void dispatch_effect(const void *tag, void *payload_ptr) {
  for (auto *n = stack_top; n; n = n->prev) {
    if (n->effect_tag == tag) {
      n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
      return;
    }
  }
  throw std::runtime_error(
      "fx: unhandled effect -- no matching handler installed");
}

} // namespace detail

// --- Type-level utilities ---------------------------------------------------

namespace detail {

template <typename... Ts> struct type_list {};

template <typename T, typename... Ts>
inline constexpr bool contains_v = (std::is_same_v<T, Ts> || ...);

template <typename T, typename List>
inline constexpr bool contains_in_list_v = false;
template <typename T, typename... Ts>
inline constexpr bool contains_in_list_v<T, type_list<Ts...>> =
    contains_v<T, Ts...>;

template <typename T, typename List> struct prepend_list;
template <typename T, typename... Ts> struct prepend_list<T, type_list<Ts...>> {
  using type = type_list<T, Ts...>;
};

template <typename T, typename List> struct remove_from_list;
template <typename T> struct remove_from_list<T, type_list<>> {
  using type = type_list<>;
};
template <typename T, typename Head, typename... Tail>
struct remove_from_list<T, type_list<Head, Tail...>> {
  using rest = typename remove_from_list<T, type_list<Tail...>>::type;
  using type = std::conditional_t<std::is_same_v<T, Head>, rest,
                                  typename prepend_list<Head, rest>::type>;
};

// Coverage concepts — used inside effect_is_handled_v.
// Being named concepts means GCC/Clang print the concept name in constraint
// failure notes, making "which handler covered which effect" self-evident.
template <typename E, typename H>
concept SingleCoversEffect = requires { typename H::effect_type; } &&
                             std::is_same_v<E, typename H::effect_type>;

template <typename E, typename H>
concept CompositeCoversEffect = requires { typename H::effect_types; } &&
                                contains_in_list_v<E, typename H::effect_types>;

// True if at least one handler in Hs... covers effect E.
template <typename E, typename... Hs>
inline constexpr bool effect_is_handled_v =
    (... || (SingleCoversEffect<E, std::remove_cvref_t<Hs>> ||
             CompositeCoversEffect<E, std::remove_cvref_t<Hs>>));

// True if every effect in the list has a matching handler.
template <typename EffectList, typename... Hs>
inline constexpr bool all_handled_v = false;
template <typename... Es, typename... Hs>
inline constexpr bool all_handled_v<type_list<Es...>, Hs...> =
    (... && effect_is_handled_v<Es, Hs...>);

// True if H provides an operator() for every effect in List.
// Used by the CompositeHandler concept.
template <typename H, typename List>
inline constexpr bool all_effects_handled_v = false;
template <typename H, typename... Es>
inline constexpr bool all_effects_handled_v<H, type_list<Es...>> =
    (HandlerFor<H, Es> && ...);

// True if every effect in InnerList appears in OuterEs... (propagation checks).
template <typename InnerList, typename... OuterEs>
inline constexpr bool all_in_v = false;
template <typename... InnerEs, typename... OuterEs>
inline constexpr bool all_in_v<type_list<InnerEs...>, OuterEs...> =
    (... && contains_v<InnerEs, OuterEs...>);

// --- Row flattening helpers -------------------------------------------------

// Concat two type_lists.
template <typename L1, typename L2> struct concat_lists;
template <typename... As, typename... Bs>
struct concat_lists<type_list<As...>, type_list<Bs...>> {
  using type = type_list<As..., Bs...>;
};

// Convert one Row-or-Effectful argument to a type_list of bare effects.
// If T has an ::effects member (i.e. it's a Row), expand it; otherwise wrap.
template <typename T> struct to_effect_list {
  using type = type_list<T>;
};
template <typename T>
  requires requires { typename T::effects; }
struct to_effect_list<T> {
  using type = typename T::effects;
};

// Fold a pack of (Effectful | Row)... into a single flat type_list.
template <typename... Ts> struct flatten_effects {
  using type = type_list<>;
};
template <typename T, typename... Rest> struct flatten_effects<T, Rest...> {
  using type =
      typename concat_lists<typename to_effect_list<T>::type,
                            typename flatten_effects<Rest...>::type>::type;
};
template <typename... Ts>
using flatten_effects_t = typename flatten_effects<Ts...>::type;

// Build a BasicRow (defined below) from a type_list of Effectful types.
template <typename List> struct row_from_list; // defined after BasicRow

// --- Return clause type traits ----------------------------------------------

// Does H have a on_return(InnerR) method?
template <typename H, typename InnerR>
concept HasReturnClause =
    requires(std::remove_cvref_t<H> &h, InnerR v) { h.on_return(std::move(v)); };

// What type does H::on_return(InnerR) produce?
template <typename H, typename InnerR>
using on_return_t =
    decltype(std::declval<std::remove_cvref_t<H> &>().on_return(std::declval<InnerR>()));

// Does this TypedHandler's operator()(E, TypedResume<E, InnerR>) return non-void?
// InnerR is the computation's actual result type at this point in the handler
// chain — threading it through here is what makes polymorphic-T operators work:
//
//   template <typename T>
//   auto operator()(E e, TypedResume<E, T> k) -> T { ... }  // passthrough: InnerR=T
//
//   auto operator()(E e, auto k) -> std::string { ... }     // fixed output type
//
template <typename H, typename InnerR>
concept HasDrivingOperatorFor =
    TypedHandler<H> &&
    !std::is_void_v<decltype(std::declval<std::remove_cvref_t<H> &>()(
        std::declval<typename std::remove_cvref_t<H>::effect_type>(),
        std::declval<TypedResume<typename std::remove_cvref_t<H>::effect_type,
                                 InnerR>>()))>;

// What type does that operator() return (given InnerR as T)?
template <typename H, typename InnerR>
  requires HasDrivingOperatorFor<H, InnerR>
using driving_return_for_t =
    decltype(std::declval<std::remove_cvref_t<H> &>()(
        std::declval<typename std::remove_cvref_t<H>::effect_type>(),
        std::declval<TypedResume<typename std::remove_cvref_t<H>::effect_type,
                                 InnerR>>()));

// Fold right over handler list: last handler (innermost) wraps T first.
// Priority: on_return > driving operator > identity.
template <typename H, typename InnerR,
          bool HasReturn  = HasReturnClause<H, InnerR>,
          bool HasDriving = HasDrivingOperatorFor<H, InnerR>>
struct compose_one { using type = InnerR; };
// on_return wins when present (handles both abort and success paths).
template <typename H, typename InnerR, bool HasDriving>
struct compose_one<H, InnerR, true, HasDriving> { using type = on_return_t<H, InnerR>; };
// No on_return but operator() returns non-void (drives via resume_and_get):
// the operator's return type IS the result — passthrough handlers produce InnerR,
// transform handlers produce whatever their return type is.
template <typename H, typename InnerR>
struct compose_one<H, InnerR, false, true> { using type = driving_return_for_t<H, InnerR>; };

template <typename T, typename... Hs> struct composed_return {
  using type = T;
};
template <typename T, typename H, typename... Hs>
struct composed_return<T, H, Hs...> {
  using inner = typename composed_return<T, Hs...>::type;
  using type  = typename compose_one<H, inner>::type;
};
template <typename T, typename... Hs>
using composed_return_t = typename composed_return<T, Hs...>::type;

} // namespace detail

/// Satisfied by handler objects that cover *multiple* effects at once.
/// Requires an `effect_types` alias (a `detail::type_list<Es...>`) and an
/// `operator()(Ei, auto resume)` overload for every `Ei` in that list.
///
/// Produced by `Row<Es...>::Handler<Derived>` or `handler<Row>(lambdas...)`.
/// Composite handlers are accepted by `.run()` just like single-effect ones.
template <typename H>
concept CompositeHandler =
    requires { typename std::remove_cvref_t<H>::effect_types; } &&
    detail::all_effects_handled_v<
        std::remove_cvref_t<H>, typename std::remove_cvref_t<H>::effect_types>;

// Forward-declare Fx so promise_type can reference it.
// PerformAwaitable is already forward-declared above (needed by Resume<E>).
template <typename T, Effectful... Es> class Fx;

namespace detail {

template <typename T, typename List> struct fx_from_list;
template <typename T, typename... Es> struct fx_from_list<T, type_list<Es...>> {
  using type = Fx<T, Es...>;
};
template <typename T, typename List>
using fx_from_list_t = typename fx_from_list<T, List>::type;

// Synchronous awaitable used when co_await-ing an inner Fx from another Fx.
// await_ready() returns true so the outer coroutine never actually suspends:
// the inner computation runs inside await_resume() using the already-installed
// handler stack from the outer .run() call.
template <typename F> struct FxAwaitable {
  F inner;
  bool await_ready() noexcept { return true; }
  void await_suspend(auto) noexcept {} // never reached
  decltype(auto) await_resume() { return inner._run(); }
};

// Shared promise_type base for Fx<T> and Fx<void>.
// effect_tag, payload_ptr, exception, and result_ptr live in PromiseAbortBase
// so resume_and_get can reach them through the non-templated abort_base_ ptr.
template <typename... Es> struct PromiseBase : PromiseAbortBase {

  std::suspend_always initial_suspend() noexcept { return {}; }
  std::suspend_always final_suspend() noexcept { return {}; }
  void unhandled_exception() { exception = std::current_exception(); }
  using declared_effects = type_list<Es...>;

  // Coroutine frame allocation — honours the active ScopedAllocator.
  // The memory resource pointer is appended after the frame so deallocation
  // can always route back to the same resource even if the allocator changes.
  static void *operator new(std::size_t n) {
    constexpr std::size_t kPtrSize = sizeof(std::pmr::memory_resource *);
    auto *mr = current_mr;
    std::size_t total = n + kPtrSize;
    void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
                   : ::operator new(total);
    // Store mr (or nullptr) immediately after the frame bytes.
    *reinterpret_cast<std::pmr::memory_resource **>(
        static_cast<std::byte *>(raw) + n) = mr;
    return raw;
  }

  static void operator delete(void *ptr, std::size_t n) noexcept {
    constexpr std::size_t kPtrSize = sizeof(std::pmr::memory_resource *);
    std::size_t total = n + kPtrSize;
    auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
        static_cast<std::byte *>(ptr) + n);
    if (mr)
      mr->deallocate(ptr, total, alignof(std::max_align_t));
    else
      ::operator delete(ptr, total);
  }

  // Declared effect — allowed.
  template <Effectful Eff>
    requires contains_in_list_v<Eff, type_list<Es...>>
  PerformAwaitable<Eff> await_transform(PerformAwaitable<Eff> a) noexcept {
    return a;
  }

  // Undeclared effect — deleted so IDEs squiggle at the perform() call site.
  // To fix: add E to the return type: E::Fx<T>  or  Row<..., E>::Fx<T>.
  template <Effectful Eff>
  PerformAwaitable<Eff> await_transform(PerformAwaitable<Eff>) = delete;

  // Inner Fx propagation — all inner effects are declared here, so allowed.
  template <typename T2, Effectful... InnerEs>
    requires all_in_v<type_list<InnerEs...>, Es...>
  FxAwaitable<Fx<T2, InnerEs...>>
  await_transform(Fx<T2, InnerEs...> inner) noexcept {
    return {std::move(inner)};
  }

  // Inner Fx has undeclared effects — deleted for IDE squiggles at co_await
  // site. To fix: add the missing effect(s) to the return type: Row<...,
  // E>::Fx<T>.
  template <typename T2, Effectful... InnerEs>
    requires(!all_in_v<type_list<InnerEs...>, Es...>)
  FxAwaitable<Fx<T2, InnerEs...>> await_transform(Fx<T2, InnerEs...>) = delete;
};

// RAII coroutine handle — owns the handle and destroys it on scope exit.
template <typename Promise> struct OwnedHandle {
  std::coroutine_handle<Promise> h;
  OwnedHandle() = default;
  explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
  OwnedHandle(OwnedHandle &&o) noexcept : h(std::exchange(o.h, {})) {}
  OwnedHandle &operator=(OwnedHandle &&o) noexcept {
    if (this != &o) {
      if (h)
        h.destroy();
      h = std::exchange(o.h, {});
    }
    return *this;
  }
  OwnedHandle(const OwnedHandle &) = delete;
  OwnedHandle &operator=(const OwnedHandle &) = delete;
  ~OwnedHandle() {
    if (h)
      h.destroy();
  }
};

} // namespace detail

template <Effectful E, typename T, Effectful... Es>
using remove_effect_t = detail::fx_from_list_t<
    T, typename detail::remove_from_list<E, detail::type_list<Es...>>::type>;

// --- ScopedHandler ----------------------------------------------------------

/// `ResultT` is the computation's result type at this handler's level.
/// When non-void (set by run_push for TypedHandlers), the dispatch lambda
/// passes a `TypedResume<E, ResultT>` so the handler's template operator()
/// can deduce T without an explicit template argument.
/// Composite handlers and handle<E>() use the default `void`, which falls
/// back to passing the plain `Resume<E>` (no driving-operator support needed).
template <Effectful E, typename H, typename ResultT = void>
  requires HandlerFor<H, E>
struct ScopedHandler {
  detail::HandlerNode node;
  detail::HandlerNode *saved;

  explicit ScopedHandler(H &h, void *group_id = nullptr) {
    node.effect_tag      = &detail::effect_tag_v<E>;
    node.real_handler_ptr = static_cast<void *>(&h);
    // handler_obj doubles as the abort-owner ID:
    //   • TypedHandler path  → group_id==nullptr → use &node (unique per instance)
    //   • CompositeHandler path → group_id supplied by run_push_composite → shared token
    node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
    node.dispatch = [](void *node_self, void *raw) {
      // node_self == the HandlerNode* itself (passed by dispatch_effect)
      auto *n  = reinterpret_cast<detail::HandlerNode *>(node_self);
      auto &hh = *reinterpret_cast<std::remove_reference_t<H> *>(n->real_handler_ptr);
      auto *pa = reinterpret_cast<PerformAwaitable<E> *>(raw);
      // Pass TypedResume<E, ResultT> when ResultT is known; fall back to
      // plain Resume<E> for composite handlers / handle<E>() (ResultT=void).
      using Token = std::conditional_t<std::is_void_v<ResultT>,
                                       Resume<E>, TypedResume<E, ResultT>>;
      using Ret = decltype(hh(pa->effect_, Token{pa}));
      if constexpr (std::is_void_v<Ret>) {
        hh(pa->effect_, Token{pa}); // calls r() → resumes coroutine
      } else {
        // Handler returned non-void: abort path. Must NOT call r().
        auto val = hh(pa->effect_, Token{pa});
        pa->abort_base_->aborted     = true;
        pa->abort_base_->abort_owner = n->handler_obj; // = &node or group_id
        pa->abort_base_->abort_value = std::any(std::move(val));
      }
    };
    saved = detail::stack_top;
    node.prev = saved;
    detail::stack_top = &node;
  }
  ~ScopedHandler() { detail::stack_top = saved; }
  ScopedHandler(const ScopedHandler &) = delete;
  ScopedHandler &operator=(const ScopedHandler &) = delete;
};

// --- ScopedAllocator --------------------------------------------------------

/// RAII guard that installs a `std::pmr::memory_resource` for the lifetime of
/// the object.  While a `ScopedAllocator` is alive, all `perform()` payload
/// allocations **and** coroutine frame allocations in the current thread use
/// the supplied resource instead of the global `operator new`.
///
/// Resources are saved and restored when scopes nest, so multiple
/// `ScopedAllocator` objects can be stacked safely.
///
/// Example — batch 10 000 performs through a 256 KiB arena:
/// @code
///   std::array<std::byte, 256*1024> buf;
///   std::pmr::monotonic_buffer_resource arena{buf.data(), buf.size(),
///                                             std::pmr::null_memory_resource()};
///   fx::ScopedAllocator alloc{&arena};
///   auto result = my_computation().run(my_handler);
/// @endcode
class ScopedAllocator {
public:
  explicit ScopedAllocator(std::pmr::memory_resource *mr) noexcept
      : prev_(detail::current_mr) {
    detail::current_mr = mr;
  }
  ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
  ScopedAllocator(const ScopedAllocator &) = delete;
  ScopedAllocator &operator=(const ScopedAllocator &) = delete;

private:
  std::pmr::memory_resource *prev_;
};

// --- Fx<T, Es...> -----------------------------------------------------------

/// Coroutine return type for a computation that produces `T` and may
/// perform any of the effects `Es...`.
///
/// Canonical spellings:
///   `E::Fx<T>`            — single effect E
///   `Row<E1,E2>::Fx<T>`   — named row of effects
///   `Fx<T>`               — pure (no effects); `.run()` takes no handlers
///
/// Inside a coroutine body, use `perform(e)` to raise an effect and receive
/// its resume value.  Use `co_await inner_fx` to call into another effectful
/// computation (all inner effects must appear in this Fx's effect list).
///
/// Move-only — cannot be copied.
template <typename T, Effectful... Es> class Fx {
public:
  struct promise_type : detail::PromiseBase<Es...> {
    std::optional<T> result;
    Fx get_return_object() noexcept;
    void return_value(T v) { result = std::move(v); }
  };
  using Handle = std::coroutine_handle<promise_type>;
  using value_type = T;
  using effect_list = detail::type_list<Es...>;

private:
  using OwnedHandle = detail::OwnedHandle<promise_type>;

  using Fn = std::move_only_function<T()>;
  using Impl = std::variant<OwnedHandle, Fn>;
  Impl impl_;

  // Access the non-templated abort slot in the promise (null for Fn variant).
  detail::PromiseAbortBase *get_abort_base() noexcept {
    if (auto *oh = std::get_if<OwnedHandle>(&impl_))
      return &oh->h.promise();
    return nullptr;
  }

  // Base: all handlers pushed; drive the coroutine.
  // Returns nullopt if a handler aborted (coroutine left suspended + destroyed).
  std::optional<T> run_push() {
    if (auto *fn = std::get_if<Fn>(&impl_))
      return (*fn)();
    auto &h = std::get<OwnedHandle>(impl_).h;
    h.resume();
    while (!h.done()) {
      auto &p = h.promise();
      detail::dispatch_effect(p.effect_tag, p.payload_ptr);
      if (h.promise().aborted) return std::nullopt;
    }
    auto &p = h.promise();
    if (p.exception) std::rethrow_exception(p.exception);
    return std::move(*p.result);
  }

  // Single TypedHandler: push onto thread-local stack, recurse.
  template <TypedHandler H, typename... Rest>
    requires(!CompositeHandler<std::remove_cvref_t<H>>)
  auto run_push(H &h, Rest &...rest)
      -> std::optional<detail::composed_return_t<T, H, Rest...>> {
    using Hb     = std::remove_cvref_t<H>;
    using InnerR = detail::composed_return_t<T, Rest...>;
    using R      = detail::composed_return_t<T, H, Rest...>;
    // Pass InnerR so the dispatch lambda can construct TypedResume<E, InnerR>
    // and the handler's template operator() can deduce T = InnerR.
    ScopedHandler<typename Hb::effect_type, Hb, InnerR> guard{h};
    auto inner = run_push(rest...);
    auto *ab   = get_abort_base();
    // Did THIS handler abort? Compare against the node's own address (unique
    // even when the handler object is an empty type and aliases another's addr).
    if (ab && ab->aborted && ab->abort_owner == static_cast<void *>(&guard.node)) {
      ab->aborted = false;
      return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
    }
    if (!inner) return std::nullopt; // abort still in flight for outer level
    // Normal path — apply return clause if declared.
    if constexpr (detail::HasReturnClause<Hb, InnerR>)
      return std::optional<R>{h.on_return(std::move(*inner))};
    else if constexpr (detail::HasDrivingOperatorFor<Hb, InnerR>)
      // Driving handler (uses resume_and_get) always aborts; if we reach here
      // the effect was never performed — that is a logic error.
      std::unreachable();
    else
      return inner; // R == InnerR, move the optional as-is
  }
  template <CompositeHandler H, typename... Rest>
  auto run_push(H &h, Rest &...rest)
      -> std::optional<detail::composed_return_t<T, H, Rest...>> {
    using Hb     = std::remove_cvref_t<H>;
    using InnerR = detail::composed_return_t<T, Rest...>;
    using R      = detail::composed_return_t<T, Hb, Rest...>;
    // Use a stack token as the group-abort-owner ID so every ScopedHandler
    // installed for this composite level shares the same unique identifier.
    char        group_token{};
    void *const group_id = &group_token;
    auto inner   = run_push_composite(h, group_id,
                     typename Hb::effect_types{}, rest...);
    auto *ab     = get_abort_base();
    if (ab && ab->aborted && ab->abort_owner == group_id) {
      ab->aborted = false;
      return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
    }
    if (!inner) return std::nullopt;
    if constexpr (detail::HasReturnClause<Hb, InnerR>)
      return std::optional<R>{h.on_return(std::move(*inner))};
    else
      return inner; // R == InnerR, move the optional as-is
  }

  // Helper: pushes one ScopedHandler per effect in the composite's type_list,
  // then falls through to run_push(rest...) for the remaining handlers.
  // Both overloads return the same type so the recursive case can deduce it.
  template <typename H, typename... Rest>
  auto run_push_composite([[maybe_unused]] H &h, void * /*group_id*/,
                          detail::type_list<>, Rest &...rest)
      -> std::optional<detail::composed_return_t<T, Rest...>> {
    return run_push(rest...);
  }

  template <typename H, Effectful First, Effectful... Rem, typename... Rest>
  auto run_push_composite(H &h, void *group_id,
                          detail::type_list<First, Rem...>, Rest &...rest)
      -> std::optional<detail::composed_return_t<T, Rest...>> {
    ScopedHandler<First, H> guard{h, group_id};
    return run_push_composite(h, group_id, detail::type_list<Rem...>{}, rest...);
  }

public:
  explicit Fx(Handle h) noexcept : impl_(OwnedHandle{h}) {}
  explicit Fx(Fn fn) : impl_(std::move(fn)) {}
  Fx(Fx &&) noexcept = default;
  Fx(const Fx &) = delete;
  Fx &operator=(const Fx &) = delete;

  /// Execute with handler types as template parameters (default-constructs
  /// each handler).  Compile error if any declared effect is unhandled.
  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
          && (std::default_initializable<Hs> && ...)
  auto run() {
    std::tuple<Hs...> locals{};
    return *std::apply(
        [this](auto &...hs) { return run_push(hs...); }, locals);
  }

  /// @cond — deleted fallback for run<Hs...>() when coverage is incomplete.
  template <typename... Hs>
    requires(!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  auto run() = delete;
  /// @endcond

  /// Execute with handler instances.  Compile error if any effect is unhandled.
  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  auto run(Hs &&...hs) {
    auto locals = std::make_tuple(std::forward<Hs>(hs)...);
    return *std::apply(
        [this](auto &...lhs) { return run_push(lhs...); }, locals);
  }

  /// @cond — deleted fallback; triggers IDE squiggle when a handler is missing.
  template <typename... Hs>
    requires(!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  auto run(Hs &&...) = delete;
  /// @endcond

  // Used by FxAwaitable (co_await inner_fx) and handle<E>().
  // Runs without abort support — abort handlers must be outermost.
  T _run() {
    if (auto *fn = std::get_if<Fn>(&impl_))
      return (*fn)();
    auto &h = std::get<OwnedHandle>(impl_).h;
    h.resume();
    while (!h.done()) {
      auto &p = h.promise();
      detail::dispatch_effect(p.effect_tag, p.payload_ptr);
    }
    auto &p = h.promise();
    if (p.exception)
      std::rethrow_exception(p.exception);
    return std::move(*p.result);
  }
};

template <typename T, Effectful... Es>
Fx<T, Es...> Fx<T, Es...>::promise_type::get_return_object() noexcept {
  this->result_ptr = &result; // lets resume_and_get retrieve T without knowing Es
  return Fx{Handle::from_promise(*this)};
}

// --- Fx<void, Es...> --------------------------------------------------------

template <Effectful... Es> class Fx<void, Es...> {
public:
  struct promise_type : detail::PromiseBase<Es...> {
    Fx get_return_object() noexcept;
    void return_void() {}
  };
  using Handle = std::coroutine_handle<promise_type>;
  using value_type = void;
  using effect_list = detail::type_list<Es...>;

private:
  using OwnedHandle = detail::OwnedHandle<promise_type>;

  using Fn = std::move_only_function<void()>;
  using Impl = std::variant<OwnedHandle, Fn>;
  Impl impl_;

  void run_push() { _run(); }

  template <TypedHandler H, typename... Rest>
    requires(!CompositeHandler<std::remove_cvref_t<H>>)
  void run_push(H &h, Rest &...rest) {
    using Hb = std::remove_cvref_t<H>;
    ScopedHandler<typename Hb::effect_type, Hb> guard{h};
    run_push(rest...);
  }

  template <CompositeHandler H, typename... Rest>
  void run_push(H &h, Rest &...rest) {
    run_push_composite(h,
        typename std::remove_cvref_t<H>::effect_types{}, rest...);
  }

  template <typename H, Effectful First, Effectful... Rem, typename... Rest>
  void run_push_composite(H &h, detail::type_list<First, Rem...>,
                          Rest &...rest) {
    ScopedHandler<First, H> guard{h};
    run_push_composite(h, detail::type_list<Rem...>{}, rest...);
  }

  template <typename H, typename... Rest>
  void run_push_composite([[maybe_unused]] H &h, detail::type_list<>,
                          Rest &...rest) {
    run_push(rest...);
  }

public:
  explicit Fx(Handle h) noexcept : impl_(OwnedHandle{h}) {}
  explicit Fx(Fn fn) : impl_(std::move(fn)) {}
  Fx(Fx &&) noexcept = default;
  Fx(const Fx &) = delete;
  Fx &operator=(const Fx &) = delete;

  /// Execute with handler types as template parameters (default-constructs each).
  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
          && (std::default_initializable<Hs> && ...)
  void run() {
    std::tuple<Hs...> locals{};
    std::apply([this](auto &...hs) { run_push(hs...); }, locals);
  }

  /// @cond deleted fallback for run<Hs...>() when coverage is incomplete.
  template <typename... Hs>
    requires(!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  void run() = delete;
  /// @endcond

  /// Execute with handler instances.
  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  void run(Hs &&...hs) {
    auto locals = std::make_tuple(std::forward<Hs>(hs)...);
    std::apply([this](auto &...lhs) { run_push(lhs...); }, locals);
  }

  /// @cond deleted fallback when a handler is missing.
  template <typename... Hs>
    requires(!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  void run(Hs &&...) = delete;
  /// @endcond

  void _run() {
    if (auto *fn = std::get_if<Fn>(&impl_)) {
      (*fn)();
      return;
    }
    auto &h = std::get<OwnedHandle>(impl_).h;
    h.resume();
    while (!h.done()) {
      auto &p = h.promise();
      detail::dispatch_effect(p.effect_tag, p.payload_ptr);
      if (h.promise().aborted) return;
    }
    if (h.promise().exception)
      std::rethrow_exception(h.promise().exception);
  }
};

template <Effectful... Es>
Fx<void, Es...> Fx<void, Es...>::promise_type::get_return_object() noexcept {
  return Fx{Handle::from_promise(*this)};
}

// --- AnyFx concept ----------------------------------------------------------

/// Matches any `Fx<T, Es...>` specialisation via structural detection.
/// Used internally to constrain `handle<E>` and `remove_effect_t`.
template <typename F>
concept AnyFx = requires {
  typename F::value_type;
  typename F::effect_list;
};

/// Satisfied when effect `E` is listed in `F`'s declared effect set.
/// Used to constrain `handle<E>()` — when violated, the concept name itself
/// describes the problem: "E is not declared in this computation's type."
template <typename E, typename F>
concept DeclaredIn = Effectful<E> && AnyFx<F> &&
                     detail::contains_in_list_v<E, typename F::effect_list>;

namespace detail {
// Given Fx<T, E1, E2, E3> and E to remove → Fx<T, E1, E3>.
template <Effectful E, AnyFx F>
using remove_effect_from_fx_t =
    fx_from_list_t<typename F::value_type,
                   typename remove_from_list<E, typename F::effect_list>::type>;
} // namespace detail

// --- perform(e) -------------------------------------------------------------

/// Internal awaitable produced by `perform(e)`.  Suspends the coroutine,
/// dispatches the effect value to the nearest matching handler on the thread-
/// local stack, and resumes with the handler's reply value.
/// Use the `perform(e)` macro rather than constructing this directly.
/// Awaitable produced by `perform(e)`.  Stores all per-perform state
/// directly in this object (which lives on the coroutine frame) — no
/// heap allocation.  `await_suspend` just records the caller handle and
/// the effect tag; the `_run()` dispatch loop does the actual dispatch.
template <Effectful E> class [[nodiscard]] PerformAwaitable {
public:
  explicit PerformAwaitable(E e) : effect_(std::move(e)) {}

  bool await_ready() const noexcept { return false; }

  template <typename Promise>
  void await_suspend(std::coroutine_handle<Promise> caller) noexcept {
    caller_      = caller;
    abort_base_  = &caller.promise(); // Promise inherits PromiseAbortBase
    caller.promise().effect_tag  = &detail::effect_tag_v<E>;
    caller.promise().payload_ptr = this; // points into coroutine frame
  }

  typename E::result_type await_resume() { return std::move(result_); }

  // Public so ScopedHandler::dispatch and any static-dispatch helper
  // can access them without friendship boilerplate.
  E effect_;
  typename E::result_type result_{};
  std::coroutine_handle<> caller_{};
  detail::PromiseAbortBase *abort_base_ = nullptr; // set in await_suspend
};

// Out-of-line body for Resume<E>::operator() — needs PerformAwaitable complete.
template <Effectful E>
void Resume<E>::operator()(typename E::result_type v) const {
  pa->result_ = std::move(v);
  pa->caller_.resume();
}

/// Resume the coroutine with `v`, drive it to completion through the
/// already-installed handler stack, and return its final result as `T`.
///
/// Use this inside a handler's `operator()` instead of calling `k(v)` when
/// you want to observe the computation's result inline — Koka-style:
///
///   struct Intercept : Ask::Handler<Intercept> {
///     auto operator()(Ask e, auto k) -> std::string {
///       int len = fx::resume_and_get<int>(k, "hello");
///       return "prompt=[" + e.prompt + "] len=" + std::to_string(len);
///     }
///   };
///
/// The value returned from `operator()` becomes the final `.run()` result,
/// exactly as if an `on_return` clause had produced it.  No `on_return` is
/// needed when using `resume_and_get`.
///
/// Preconditions:
///   - `T` must be the non-void return type of the enclosing `Fx<T, ...>`.
///   - `k` must not have been called already (single-shot).
///   - If a nested handler aborts during the drive, `std::runtime_error` is thrown.
template <typename T, Effectful E>
  requires (!std::is_void_v<T>)
T resume_and_get(Resume<E> k, typename E::result_type v) {
  k.pa->result_ = std::move(v);
  auto *ab = k.pa->abort_base_;
  k.pa->caller_.resume();
  while (!k.pa->caller_.done()) {
    detail::dispatch_effect(ab->effect_tag, ab->payload_ptr);
    if (ab->aborted)
      throw std::runtime_error(
          "fx::resume_and_get: computation aborted by a nested handler");
  }
  if (ab->exception) std::rethrow_exception(ab->exception);
  return std::move(**static_cast<std::optional<T> *>(ab->result_ptr));
}

// Out-of-line body for TypedResume<E,T>::resume_and_get.
// Must be defined after fx::resume_and_get since it delegates to it.
template <Effectful E, typename T>
T TypedResume<E, T>::resume_and_get(typename E::result_type v) const {
  return ::fx::resume_and_get<T>(*this, std::move(v));
}

namespace detail {
template <Effectful E> auto perform_impl(E e) {
  return PerformAwaitable<E>{std::move(e)};
}
} // namespace detail

// --- handle<E>(comp, h) -----------------------------------------------------

/// Partially handles effect `E` inside `comp`, returning a new `Fx` with
/// `E` removed from the effect list.  The returned computation is lazy —
/// `h` is not invoked until `.run()` (or another `handle`) is called.
///
/// Compile error (`DeclaredIn` constraint) if `E` is not declared in
/// `comp`'s effect list.
///
///   // Fail::Fx<int>  →  Fx<int>  (no remaining effects)
///   auto result = handle<Fail>(safe_div(10, 0),
///                   handler<Fail>([](Fail, auto r) { r(-1); }))
///                 .run();
template <Effectful E, AnyFx F, typename H>
  requires HandlerFor<H, E> && DeclaredIn<E, F>
auto handle(F comp, H h) -> detail::remove_effect_from_fx_t<E, F> {
  using RetFx = detail::remove_effect_from_fx_t<E, F>;
  using Hb = std::remove_cvref_t<H>;
  return RetFx{std::move_only_function<typename F::value_type()>{
      [comp = std::move(comp), h = std::move(h)]() mutable {
        Hb local_h = std::move(h);
        ScopedHandler<E, Hb> guard{local_h};
        return comp._run();
      }}};
}

/// Groups several effects (or other rows) into a named row.
///
/// Arguments may be bare `Effectful` types, other `Row` aliases, or a mix —
/// nested rows are flattened automatically:
///
///   using IO  = Row<Ask, Log>;
///   using All = Row<IO, Fail>;   // same as Row<Ask, Log, Fail>
///
/// Provides:
///   `IO::Fx<T>`            — coroutine return type for all row effects
///   `IO::Handler<Derived>` — CRTP base for composite handler structs
template <Effectful... Es> struct BasicRow {
  template <typename T> using Fx = ::fx::Fx<T, Es...>;

  using effects = detail::type_list<Es...>;

  /// CRTP base for composite handler structs.
  /// Inherit as: `struct MyHandler : IO::Handler<MyHandler> { ... }`
  /// then provide `operator()(Ei, auto resume)` for every `Ei` in the row.
  /// Use `VALIDATE_HANDLER(MyHandler)` to get a definition-time error if
  /// any overload is missing.
  template <typename Derived> struct Handler {
    using effect_types = detail::type_list<Es...>;
  };
};

namespace detail {
template <typename List> struct row_from_list;
template <Effectful... Es> struct row_from_list<type_list<Es...>> {
  using type = BasicRow<Es...>;
};
template <typename List>
using row_from_list_t = typename row_from_list<List>::type;
} // namespace detail

/// `Row<Ts...>` accepts bare `Effectful` types, other `Row` aliases, or a
/// mix — nested rows are flattened at compile time.
///
///   using IO  = Row<Ask, Log>;
///   using All = Row<IO, Fail>;   // flattens to BasicRow<Ask, Log, Fail>
template <typename... Ts>
using Row = detail::row_from_list_t<detail::flatten_effects_t<Ts...>>;

/// Satisfied by `Row<Es...>` specialisations (and anything else that
/// exposes an `::effects` type alias).  Used to constrain `handler<R>()`.
template <typename R>
concept RowType = requires { typename R::effects; };

namespace detail {

// True if at least one of Lambdas can handle effect E (by invocability,
// no effect_type alias required — plain lambdas work).
template <typename E, typename... Lambdas>
inline constexpr bool any_handles_v = (HandlerFor<Lambdas, E> || ...);

// True if every effect in the list is handled by at least one lambda.
template <typename EffectList, typename... Lambdas>
inline constexpr bool all_lambda_handled_v = false;
template <typename... Es, typename... Lambdas>
inline constexpr bool all_lambda_handled_v<type_list<Es...>, Lambdas...> =
    (any_handles_v<Es, Lambdas...> && ...);

} // namespace detail

/// Composite handler built by `handler<Row>(lambdas...)`.
/// Satisfies `CompositeHandler` — dispatches each incoming effect to the
/// first lambda whose call signature matches.  Prefer constructing via
/// `handler<R>(...)` rather than directly.
template <RowType R, typename... Lambdas> struct CompositeLambdaHandler {
  using effect_types = typename R::effects;
  std::tuple<Lambdas...> fns;

  template <Effectful E>
  void operator()(E e, auto r) {
    std::apply(
        [&](auto &...fn) {
          (... || [&]() -> bool {
            if constexpr (HandlerFor<std::remove_cvref_t<decltype(fn)>, E>) {
              fn(std::move(e), std::move(r));
              return true;
            }
            return false;
          }());
        },
        fns);
  }
};

/// Builds an inline `CompositeHandler` for a `Row`, matching lambdas to
/// effects by argument type (first matching lambda wins).
///
/// Compile error if any effect in `R` has no matching lambda.
///
///   auto h = handler<IO>(
///     [](Ask, auto r) { r("hello"); },
///     [](Log e, auto r) { std::cout << e.message; r({}); }
///   );
///   greet().run(h);
template <RowType R, typename... Lambdas>
  requires detail::all_lambda_handled_v<typename R::effects,
                                        std::decay_t<Lambdas>...>
auto handler(Lambdas &&...lambdas) {
  return CompositeLambdaHandler<R, std::decay_t<Lambdas>...>{
      std::make_tuple(std::forward<Lambdas>(lambdas)...)};
}

/// CRTP base for a single-effect type.
///
/// Inherit to define an effect:
///
///   struct Ask : Effect<Ask> {
///     using result_type = std::string;
///     std::string prompt;
///   };
///
/// Provides:
///   `Ask::Fx<T>`            — coroutine return type
///   `Ask::Handler<Derived>` — CRTP base for handler structs
template <typename Self> struct Effect {
  template <typename T> using Fx = ::fx::Fx<T, Self>;

  /// CRTP base for single-effect handler structs.
  ///
  ///   struct StdinAsk : Ask::Handler<StdinAsk> {
  ///     void operator()(Ask e, auto r) { ... }
  ///   };
  ///   VALIDATE_HANDLER(StdinAsk);
  template <typename Derived> struct Handler {
    using effect_type = Self;
  };
};

} // namespace fx

/// Raises effect `e` inside a coroutine and suspends until a handler resumes
/// it.  The expression evaluates to `E::result_type`.
///
///   std::string name = perform(Ask{.prompt = "Name: "});
///
/// Compile error (IDE squiggle) if `E` is not listed in the coroutine's
/// return type.  Fix: add `E` to the effect list: `E::Fx<T>` or
/// `Row<..., E>::Fx<T>`.
#define perform(e) co_await ::fx::detail::perform_impl(e)

/// Asserts at definition time that handler struct `H` provides an
/// `operator()` overload for every effect it declares.
///
/// Place this immediately after the struct definition:
///
///   struct WarnFail : Fail::Handler<WarnFail> {
///     void operator()(Fail e, auto r) { std::cerr << e.reason; r(-1); }
///   };
///   VALIDATE_HANDLER(WarnFail);
///
/// Works for both single-effect (`Effect::Handler`) and row
/// (`Row::Handler`) bases.  Produces an IDE squiggle on this line (not
/// at the usage site) when an overload is missing.
#define VALIDATE_HANDLER(H)                                                    \
  static_assert(                                                               \
      ::fx::TypedHandler<H> || ::fx::CompositeHandler<H>,                      \
      "'" #H "' is missing operator() for one or more of its declared "        \
      "effects. Each effect E requires: void operator()(E, auto resume) "      \
      "{ ... }")
