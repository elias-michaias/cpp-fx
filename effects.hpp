#pragma once
// effects.hpp -- Algebraic Effects & Handlers in C++23
//
// --- API -------------------------------------------------------------------
//
//  Effect<Self>     -- CRTP base; gives Self::Fx<R> and Self::Handler<Derived>
//                      Use: struct MyEff : Effect<MyEff> { using result_type =
//                      T; };
//  Handler H        -- callable  (E, std::function<void(E::result_type)>) ->
//  void
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
//  run_with(comp, h1, h2..) -- same as .run(), kept for backward compatibility
//  handler<E>(lambda)       -- wrap a lambda as a single-effect TypedHandler
//  handler<Row>(l1, l2, ...) -- build an inline CompositeHandler for a Row
//  VALIDATE_HANDLER(H)      -- static_assert at definition site that H is
//  complete Computation<T>           -- alias for Fx<T> (back-compat)
#include <coroutine>
#include <exception>
#include <functional>
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

/// Satisfied when H can be called as `h(e, resume)` where `e` is of type
/// `E` and `resume` is `std::function<void(E::result_type)>`.
/// The `requires` expression shows the expected call shape in diagnostics.
template <typename H, typename E>
concept HandlerFor =
    Effectful<E> &&
    requires(std::remove_cvref_t<H> &h, E e,
             std::function<void(typename E::result_type)> r) { h(e, r); };

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
  void operator()(E e, std::function<void(typename E::result_type)> resume) {
    fn(std::move(e), std::move(resume));
  }
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

// --- Thread-local handler stack ---------------------------------------------

namespace detail {

struct HandlerNode {
  const void *effect_tag = nullptr;
  void *handler_obj = nullptr;
  void (*dispatch)(void *handler_obj, void *payload) = nullptr;
  HandlerNode *prev = nullptr;
};

inline thread_local HandlerNode *stack_top = nullptr;

template <Effectful E> inline constexpr char effect_tag_v = 0;

template <Effectful E> struct Payload {
  E effect_value;
  std::function<void(typename E::result_type)> resume;
};

inline void dispatch_effect(const void *tag, void *payload_ptr) {
  for (auto *n = stack_top; n; n = n->prev) {
    if (n->effect_tag == tag) {
      n->dispatch(n->handler_obj, payload_ptr);
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
concept SingleCoversEffect =
    requires { typename H::effect_type; } &&
    std::is_same_v<E, typename H::effect_type>;

template <typename E, typename H>
concept CompositeCoversEffect =
    requires { typename H::effect_types; } &&
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
template <typename T>
struct to_effect_list { using type = type_list<T>; };
template <typename T>
  requires requires { typename T::effects; }
struct to_effect_list<T> { using type = typename T::effects; };

// Fold a pack of (Effectful | Row)... into a single flat type_list.
template <typename... Ts>
struct flatten_effects {
  using type = type_list<>;
};
template <typename T, typename... Rest>
struct flatten_effects<T, Rest...> {
  using type = typename concat_lists<
      typename to_effect_list<T>::type,
      typename flatten_effects<Rest...>::type>::type;
};
template <typename... Ts>
using flatten_effects_t = typename flatten_effects<Ts...>::type;

// Build a BasicRow (defined below) from a type_list of Effectful types.
template <typename List> struct row_from_list;  // defined after BasicRow

// Thin adapter: lets a composite handler serve as a single-effect TypedHandler.
// Stored on the stack inside run_composite; H must outlive the adapter.
template <typename H, Effectful E> struct EffectAdapter {
  using effect_type = E;
  H &h;
  void operator()(E e, std::function<void(typename E::result_type)> r) {
    h(std::move(e), std::move(r));
  }
};

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

// Forward-declare Fx and PerformAwaitable so promise_type can reference both.
template <typename T, Effectful... Es> class Fx;
template <Effectful E> class PerformAwaitable;

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
// Holds the coroutine state and all await_transform overloads in one place.
template <typename... Es> struct PromiseBase {
  std::exception_ptr exception;
  const void *effect_tag = nullptr;
  void *payload_ptr = nullptr;

  std::suspend_always initial_suspend() noexcept { return {}; }
  std::suspend_always final_suspend() noexcept { return {}; }
  void unhandled_exception() { exception = std::current_exception(); }
  using declared_effects = type_list<Es...>;

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

template <Effectful E, typename H>
  requires HandlerFor<H, E>
struct ScopedHandler {
  detail::HandlerNode node;
  detail::HandlerNode *saved;

  explicit ScopedHandler(H &h) {
    node.effect_tag = &detail::effect_tag_v<E>;
    node.handler_obj = static_cast<void *>(&h);
    node.dispatch = [](void *hobj, void *raw) {
      using R = typename E::result_type;
      auto &hh = *reinterpret_cast<std::remove_reference_t<H> *>(hobj);
      auto *pl = reinterpret_cast<detail::Payload<E> *>(raw);
      std::function<void(R)> resume = [pl](R v) {
        auto fn = std::move(pl->resume);
        delete pl;
        fn(std::move(v));
      };
      hh(pl->effect_value, std::move(resume));
    };
    saved = detail::stack_top;
    node.prev = saved;
    detail::stack_top = &node;
  }
  ~ScopedHandler() { detail::stack_top = saved; }
  ScopedHandler(const ScopedHandler &) = delete;
  ScopedHandler &operator=(const ScopedHandler &) = delete;
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

  // Base case: drives the coroutine.
  T run_impl() { return _run(); }

  // Single-effect handler.
  template <TypedHandler H, typename... Rest>
    requires(!CompositeHandler<std::remove_cvref_t<H>>)
  T run_impl(H &h, Rest &...rest) {
    using Hb = std::remove_cvref_t<H>;
    ScopedHandler<typename Hb::effect_type, Hb> guard{h};
    return run_impl(rest...);
  }

  // Composite handler: expand each effect in effect_types into an adapter.
  template <CompositeHandler H, typename... Rest>
  T run_impl(H &h, Rest &...rest) {
    return run_composite(h, typename std::remove_cvref_t<H>::effect_types{},
                         rest...);
  }

  template <typename H, Effectful First, Effectful... Rem, typename... Rest>
  T run_composite(H &h, detail::type_list<First, Rem...>, Rest &...rest) {
    detail::EffectAdapter<H, First> adapter{h};
    ScopedHandler<First, detail::EffectAdapter<H, First>> guard{adapter};
    return run_composite(h, detail::type_list<Rem...>{}, rest...);
  }

  template <typename H, typename... Rest>
  T run_composite([[maybe_unused]] H &h, detail::type_list<>, Rest &...rest) {
    return run_impl(rest...);
  }

public:
  explicit Fx(Handle h) noexcept : impl_(OwnedHandle{h}) {}
  explicit Fx(Fn fn) : impl_(std::move(fn)) {}
  Fx(Fx &&) noexcept = default;
  Fx(const Fx &) = delete;
  Fx &operator=(const Fx &) = delete;

  /// Executes the computation with the supplied handlers and returns `T`.
  ///
  /// A handler for every effect in `Es...` must be provided — either a
  /// `TypedHandler` (struct or `handler<E>(lambda)`) or a `CompositeHandler`
  /// (row handler struct or `handler<Row>(lambdas...)`).
  ///
  /// If any declared effect is unhandled this overload is removed from
  /// the candidate set; the deleted overload below is selected instead,
  /// giving an IDE squiggle and a "use of deleted function" error.
  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  T run(Hs &&...hs) {
    // Store handlers so temporaries outlive _run().
    auto locals = std::make_tuple(std::forward<Hs>(hs)...);
    return std::apply(
        [this](auto &...local_hs) -> T { return run_impl(local_hs...); },
        locals);
  }

  /// @cond — deleted fallback; triggers IDE squiggle when a handler is missing.
  /// Fix: supply a handler for every effect listed in the return type.
  template <typename... Hs>
    requires(!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  T run(Hs &&...) = delete;
  /// @endcond

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

  void run_impl() { _run(); }

  template <TypedHandler H, typename... Rest>
    requires(!CompositeHandler<std::remove_cvref_t<H>>)
  void run_impl(H &h, Rest &...rest) {
    using Hb = std::remove_cvref_t<H>;
    ScopedHandler<typename Hb::effect_type, Hb> guard{h};
    run_impl(rest...);
  }

  template <CompositeHandler H, typename... Rest>
  void run_impl(H &h, Rest &...rest) {
    run_composite(h, typename std::remove_cvref_t<H>::effect_types{}, rest...);
  }

  template <typename H, Effectful First, Effectful... Rem, typename... Rest>
  void run_composite(H &h, detail::type_list<First, Rem...>, Rest &...rest) {
    detail::EffectAdapter<H, First> adapter{h};
    ScopedHandler<First, detail::EffectAdapter<H, First>> guard{adapter};
    run_composite(h, detail::type_list<Rem...>{}, rest...);
  }

  template <typename H, typename... Rest>
  void run_composite([[maybe_unused]] H &h, detail::type_list<>,
                     Rest &...rest) {
    run_impl(rest...);
  }

public:
  explicit Fx(Handle h) noexcept : impl_(OwnedHandle{h}) {}
  explicit Fx(Fn fn) : impl_(std::move(fn)) {}
  Fx(Fx &&) noexcept = default;
  Fx(const Fx &) = delete;
  Fx &operator=(const Fx &) = delete;

  /// Same semantics as `Fx<T>::run()` — executes the computation.
  /// Every effect in `Es...` must have a matching handler.
  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  void run(Hs &&...hs) {
    auto locals = std::make_tuple(std::forward<Hs>(hs)...);
    std::apply([this](auto &...local_hs) { run_impl(local_hs...); }, locals);
  }

  /// @cond — deleted fallback; triggers IDE squiggle when a handler is missing.
  /// Fix: supply a handler for every effect listed in the return type.
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
    }
    if (h.promise().exception)
      std::rethrow_exception(h.promise().exception);
  }
};

template <Effectful... Es>
Fx<void, Es...> Fx<void, Es...>::promise_type::get_return_object() noexcept {
  return Fx{Handle::from_promise(*this)};
}

/// Back-compat alias — `Computation<T>` is the same as `Fx<T>` (no effects).
template <typename T> using Computation = Fx<T>;

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
concept DeclaredIn =
    Effectful<E> && AnyFx<F> &&
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
template <Effectful E> class [[nodiscard]] PerformAwaitable {
public:
  explicit PerformAwaitable(E e) : effect_(std::move(e)) {}

  bool await_ready() const noexcept { return false; }

  template <typename Promise>
  void await_suspend(std::coroutine_handle<Promise> caller) {
    using R = typename E::result_type;

    auto *payload =
        new detail::Payload<E>{.effect_value = std::move(effect_),
                               .resume = [this, caller](R v) mutable {
                                 result_ = std::move(v);
                                 caller.resume();
                               }};

    caller.promise().effect_tag = &detail::effect_tag_v<E>;
    caller.promise().payload_ptr = payload;

    for (auto *n = detail::stack_top; n; n = n->prev) {
      if (n->effect_tag == &detail::effect_tag_v<E>) {
        n->dispatch(n->handler_obj, payload);
        return;
      }
    }
    delete payload;
    throw std::runtime_error("fx::perform -- no handler for this effect type");
  }

  typename E::result_type await_resume() { return std::move(result_); }

private:
  E effect_;
  typename E::result_type result_{};
};

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

// --- run_with — backward-compatible free-function wrapper around .run() -----

/// Equivalent to `comp.run(hs...)`.  Kept for backward compatibility;
/// prefer the `.run()` member directly for new code.
template <typename T, Effectful... Es, typename... Hs>
T run_with(Fx<T, Es...> comp, Hs &&...hs) {
  return comp.run(std::forward<Hs>(hs)...);
}

template <Effectful... Es, typename... Hs>
void run_with(Fx<void, Es...> comp, Hs &&...hs) {
  comp.run(std::forward<Hs>(hs)...);
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
template <Effectful... Es>
struct row_from_list<type_list<Es...>> { using type = BasicRow<Es...>; };
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
  void operator()(E e, std::function<void(typename E::result_type)> r) {
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
