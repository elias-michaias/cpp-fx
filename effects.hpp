#pragma once
// effects.hpp -- Algebraic Effects & Handlers in C++23
// Compile: g++ -std=c++23 -fcoroutines -O2   (GCC 13+)
//      or: clang++ -std=c++23 -O2 -fcoroutines (Clang 17+)
//
// --- API -------------------------------------------------------------------
//
//  Effect<Self>     -- CRTP base; gives Self::Fx<R> and Self::Handler<Derived>
//                      Use: struct MyEff : Effect<MyEff> { using result_type = T; };
//  Handler H        -- callable  (E, std::function<void(E::result_type)>) -> void
//
//  E::Fx<T>                 -- coroutine return type for a single effect E
//  Row<E1,E2>::Fx<T>        -- coroutine return type for multiple effects
//  Fx<T>                    -- pure computation, no effects (zero-arg .run())
//  perform(e)               -- co_await an effect inside an Fx
//  handle<E>(comp, h)       -- install h for E; returns Fx with E removed
//                              compile error if E is not in comp's declared effects
//  comp.run(h1, h2, ...)    -- validate ALL declared effects are handled, run
//                              compile error if any declared effect lacks a handler
//  run_with(comp, h1, h2..) -- same as .run(), kept for backward compatibility
//  handler<E>(lambda)       -- wrap a lambda as a single-effect TypedHandler
//  handler<Row>(l1, l2, ...) -- build an inline CompositeHandler for a Row
//  VALIDATE_HANDLER(H)      -- static_assert at definition site that H is complete
//  Computation<T>           -- alias for Fx<T> (back-compat)

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

template <typename E>
concept Effectful = requires { typename E::result_type; };

template <typename H, typename E>
concept HandlerFor =
    Effectful<E> &&
    std::is_invocable_v<H, E, std::function<void(typename E::result_type)>>;

template <typename H>
concept TypedHandler =
    requires { typename std::remove_cvref_t<H>::effect_type; } &&
    HandlerFor<std::remove_cvref_t<H>,
               typename std::remove_cvref_t<H>::effect_type>;

// --- handler<E>(lambda) wrapper ---------------------------------------------

template <Effectful E, typename F>
  requires HandlerFor<F, E>
struct LambdaHandler {
  using effect_type = E;
  F fn;
  void operator()(E e, std::function<void(typename E::result_type)> resume) {
    fn(std::move(e), std::move(resume));
  }
};

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

// single_covers_v / composite_covers_v: SFINAE-safe per-handler coverage checks.
template <typename E, typename H>
inline constexpr bool single_covers_v = false;
template <typename E, typename H>
  requires requires { typename H::effect_type; }
inline constexpr bool single_covers_v<E, H> =
    std::is_same_v<E, typename H::effect_type>;

template <typename E, typename H>
inline constexpr bool composite_covers_v = false;
template <typename E, typename H>
  requires requires { typename H::effect_types; }
inline constexpr bool composite_covers_v<E, H> =
    contains_in_list_v<E, typename H::effect_types>;

// True if at least one handler in Hs... covers effect E.
template <typename E, typename... Hs>
inline constexpr bool effect_is_handled_v =
    (... || (single_covers_v<E, std::remove_cvref_t<Hs>> ||
             composite_covers_v<E, std::remove_cvref_t<Hs>>));

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

// Thin adapter: lets a composite handler serve as a single-effect TypedHandler.
// Stored on the stack inside run_composite; H must outlive the adapter.
template <typename H, Effectful E>
struct EffectAdapter {
  using effect_type = E;
  H &h;
  void operator()(E e, std::function<void(typename E::result_type)> r) {
    h(std::move(e), std::move(r));
  }
};

} // namespace detail

// A CompositeHandler covers multiple effects declared as a type_list.
// Provides: using effect_types = detail::type_list<E1, E2, ...>;
// and operator()(Ei, auto resume) for every Ei in that list.
// Use Row<Es...>::Handler<Derived> as a CRTP base to get effect_types for free.
template <typename H>
concept CompositeHandler =
    requires { typename std::remove_cvref_t<H>::effect_types; } &&
    detail::all_effects_handled_v<std::remove_cvref_t<H>,
                                  typename std::remove_cvref_t<H>::effect_types>;

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

// always_false_v: dependent false for static_assert in constrained templates.
// Must depend on a template parameter so the assert only fires at instantiation.
template <typename...> inline constexpr bool always_false_v = false;

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
  await_transform(Fx<T2, InnerEs...> inner) noexcept { return {std::move(inner)}; }

  // Inner Fx has undeclared effects — deleted for IDE squiggles at co_await site.
  // To fix: add the missing effect(s) to the return type: Row<..., E>::Fx<T>.
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

  // Runs the computation. Each effect in Es... must have a matching handler.
  // All declared effects must have a matching handler.
  // If any effect is unhandled the deleted overload is selected, producing
  // an IDE squiggle and a "use of deleted function" error at the call site.
  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  T run(Hs &&...hs) {
    // Store handlers so temporaries outlive _run().
    auto locals = std::make_tuple(std::forward<Hs>(hs)...);
    return std::apply(
        [this](auto &...local_hs) -> T { return run_impl(local_hs...); },
        locals);
  }

  // Selected when any declared effect lacks a handler.
  // Add a handler for every effect listed in the return type.
  template <typename... Hs>
    requires (!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  T run(Hs &&...) = delete;

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
  void run_composite([[maybe_unused]] H &h, detail::type_list<>, Rest &...rest) {
    run_impl(rest...);
  }

public:
  explicit Fx(Handle h) noexcept : impl_(OwnedHandle{h}) {}
  explicit Fx(Fn fn) : impl_(std::move(fn)) {}
  Fx(Fx &&) noexcept = default;
  Fx(const Fx &) = delete;
  Fx &operator=(const Fx &) = delete;

  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  void run(Hs &&...hs) {
    auto locals = std::make_tuple(std::forward<Hs>(hs)...);
    std::apply([this](auto &...local_hs) { run_impl(local_hs...); }, locals);
  }

  // Selected when any declared effect lacks a handler.
  // Add a handler for every effect listed in the return type.
  template <typename... Hs>
    requires (!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  void run(Hs &&...) = delete;

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

// Backward-compatible alias.
template <typename T> using Computation = Fx<T>;

// --- AnyFx concept ----------------------------------------------------------
// Matches any Fx<T, Es...> instantiation via structural detection.

template <typename F>
concept AnyFx = requires {
  typename F::value_type;
  typename F::effect_list;
};

namespace detail {
// Given Fx<T, E1, E2, E3> and E to remove → Fx<T, E1, E3>.
template <Effectful E, AnyFx F>
using remove_effect_from_fx_t =
    fx_from_list_t<typename F::value_type,
                   typename remove_from_list<E, typename F::effect_list>::type>;
} // namespace detail

// --- perform(e) -------------------------------------------------------------

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
//
// Installs h for effect E and returns Fx<T, remaining effects...>.
// Compile error if E is not declared in the source Fx type.
// The returned Fx is lazy: h is not invoked until .run() is called.

template <Effectful E, AnyFx F, typename H>
  requires HandlerFor<H, E> &&
           detail::contains_in_list_v<E, typename F::effect_list>
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

// --- run_with -- backward-compatible free-function wrapper around .run() ----

template <typename T, Effectful... Es, typename... Hs>
T run_with(Fx<T, Es...> comp, Hs &&...hs) {
  return comp.run(std::forward<Hs>(hs)...);
}

template <Effectful... Es, typename... Hs>
void run_with(Fx<void, Es...> comp, Hs &&...hs) {
  comp.run(std::forward<Hs>(hs)...);
}

template <Effectful... Es> struct Row {
  template <typename T> using Fx = ::fx::Fx<T, Es...>;

  // Exposes the effect list for RowType concept and handler<R>().
  using effects = detail::type_list<Es...>;

  template <typename Derived>
  struct Handler {
    using effect_types = detail::type_list<Es...>;
  };
};

template <typename R1, typename R2> struct combine_rows_t;
template <Effectful... A, Effectful... B>
struct combine_rows_t<Row<A...>, Row<B...>> {
  using type = Row<A..., B...>;
};
template <typename R1, typename R2>
using Combine = typename combine_rows_t<R1, R2>::type;

// A Row type (has an ::effects type member).
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

// Composite lambda handler returned by handler<Row>(...).
// Dispatches each incoming effect to the first lambda whose argument type
// matches; satisfies CompositeHandler so it can be passed directly to .run().
template <RowType R, typename... Lambdas>
struct CompositeLambdaHandler {
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

// handler<Row>(lambda_for_E1, lambda_for_E2, ...)
//
// Builds a CompositeHandler covering every effect in Row.
// Lambdas are matched to effects by argument type (first matching wins).
// Compile error if any effect in the row has no matching lambda.
//
//   auto h = handler<IO>(
//     [](Ask e, auto r) { r("hello"); },
//     [](Log e, auto r) { std::cout << e.message; r({}); }
//   );
//   greet().run(h);  // Ask and Log both covered
//
template <RowType R, typename... Lambdas>
  requires detail::all_lambda_handled_v<typename R::effects,
                                        std::decay_t<Lambdas>...>
auto handler(Lambdas &&...lambdas) {
  return CompositeLambdaHandler<R, std::decay_t<Lambdas>...>{
      std::make_tuple(std::forward<Lambdas>(lambdas)...)};
}

template <typename Self> struct Effect {
  template <typename T> using Fx = ::fx::Fx<T, Self>;

  // CRTP base for single-effect handlers.
  // Inherit as:  struct MyHandler : MyEffect::Handler<MyHandler> { ... }
  // Then provide operator()(MyEffect, auto resume).
  // The TypedHandler concept validates the overload is present.
  template <typename Derived>
  struct Handler {
    using effect_type = Self;
  };
};

} // namespace fx

#define perform(e) co_await ::fx::detail::perform_impl(e)

// Place immediately after a Handler struct definition to get a compile error
// (and IDE squiggle) at definition time if any operator() overload is missing.
// Works for both single-effect (Effect::Handler) and row (Row::Handler) bases.
//
//   struct WarnFail : Fail::Handler<WarnFail> {
//     void operator()(Fail e, auto r) { r(-1); }
//   };
//   VALIDATE_HANDLER(WarnFail);
//
#define VALIDATE_HANDLER(H)                                                    \
  static_assert(                                                               \
      ::fx::TypedHandler<H> || ::fx::CompositeHandler<H>,                      \
      "'" #H "' is missing operator() for one or more of its declared "        \
      "effects. Each effect E requires: void operator()(E, auto resume) "      \
      "{ ... }")
