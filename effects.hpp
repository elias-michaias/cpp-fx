#pragma once
// effects.hpp -- Algebraic Effects & Handlers in C++23
// Compile: g++ -std=c++23 -fcoroutines -O2   (GCC 13+)
//      or: clang++ -std=c++23 -O2 -fcoroutines (Clang 17+)
//
// --- API -------------------------------------------------------------------
//
//  Effect<T> -- CRTP base; gives E::Fx<R>. Use: struct MyEff : Effect<MyEff> {} struct with  `using result_type = T;`
//  Handler H -- callable  (E, std::function<void(E::result_type)>) -> void
//               plus a   `using effect_type = E;`  alias for deduction
//
//  Fx<T, E1, E2, ...>       -- coroutine return type; declares performed
//  effects perform(e)               -- co_await inside an Fx<T, ...>
//  handle<E>(comp, h)       -- install h for E; returns Fx<T, remaining...>
//                              compile error if E is not in comp's declared
//                              effects
//  comp.run(h1, h2, ...)    -- validate ALL declared effects are handled, run
//                              compile error if any declared effect lacks a
//                              handler
//  run_with(comp, h1, h2..) -- same as .run(), kept for backward compatibility
//  handler<E>(lambda)       -- wrap a plain lambda as a TypedHandler
//  Computation<T>           -- alias for Fx<T> (zero declared effects,
//  back-compat)

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

// True if at least one handler in Hs... covers effect E.
template <typename E, typename... Hs>
inline constexpr bool effect_is_handled_v =
    (std::is_same_v<E, typename std::remove_cvref_t<Hs>::effect_type> || ...);

// True if every effect in the list has a matching handler.
template <typename EffectList, typename... Hs>
inline constexpr bool all_handled_v = false;
template <typename... Es, typename... Hs>
inline constexpr bool all_handled_v<type_list<Es...>, Hs...> =
    (... && effect_is_handled_v<Es, Hs...>);

// True if every effect in InnerList appears in OuterEs... (for propagation
// checks).
template <typename InnerList, typename... OuterEs>
inline constexpr bool all_in_v = false;
template <typename... InnerEs, typename... OuterEs>
inline constexpr bool all_in_v<type_list<InnerEs...>, OuterEs...> =
    (... && contains_v<InnerEs, OuterEs...>);

} // namespace detail

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
  struct promise_type {
    std::optional<T> result;
    std::exception_ptr exception;
    const void *effect_tag = nullptr;
    void *payload_ptr = nullptr;

    Fx get_return_object() noexcept;
    std::suspend_always initial_suspend() noexcept { return {}; }
    std::suspend_always final_suspend() noexcept { return {}; }
    void return_value(T v) { result = std::move(v); }
    void unhandled_exception() { exception = std::current_exception(); }
    using declared_effects = detail::type_list<Es...>;

    // Valid: effect is declared in this Fx's return type.
    template <Effectful Eff>
      requires detail::contains_in_list_v<Eff, detail::type_list<Es...>>
    PerformAwaitable<Eff> await_transform(PerformAwaitable<Eff> a) noexcept {
      return a;
    }

    // Invalid: effect not declared — deleted so IDEs squiggle at the perform()
    // call. To fix: add the effect to the return type: Fx<T, ..., EffectType>.
    template <Effectful Eff>
    PerformAwaitable<Eff> await_transform(PerformAwaitable<Eff>) = delete;

    // co_await inner_fx: run an inner effectful computation, propagating its
    // effects. All of the inner Fx's effects must appear in this function's
    // return type.
    template <typename T2, Effectful... InnerEs>
      requires detail::all_in_v<detail::type_list<InnerEs...>, Es...>
    detail::FxAwaitable<Fx<T2, InnerEs...>>
    await_transform(Fx<T2, InnerEs...> inner) noexcept {
      return {std::move(inner)};
    }

    // Missing propagation: inner Fx has an effect not declared here — IDE
    // squiggle. To fix: add the missing effect(s) to this function's return
    // type.
    template <typename T2, Effectful... InnerEs>
      requires(!detail::all_in_v<detail::type_list<InnerEs...>, Es...>)
    detail::FxAwaitable<Fx<T2, InnerEs...>>
        await_transform(Fx<T2, InnerEs...>) = delete;
  };
  using Handle = std::coroutine_handle<promise_type>;
  using value_type = T;
  using effect_list = detail::type_list<Es...>;

private:
  struct OwnedHandle {
    Handle h;
    OwnedHandle() = default;
    explicit OwnedHandle(Handle h) noexcept : h(h) {}
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

  using Fn = std::move_only_function<T()>;
  using Impl = std::variant<OwnedHandle, Fn>;
  Impl impl_;

  // Recursive handler installation; base case drives the coroutine.
  T run_impl() { return _run(); }

  template <TypedHandler H, TypedHandler... Rest>
  T run_impl(H &h, Rest &...rest) {
    using Hb = std::remove_cvref_t<H>;
    using E = typename Hb::effect_type;
    ScopedHandler<E, Hb> guard{h};
    return run_impl(rest...);
  }

public:
  explicit Fx(Handle h) noexcept : impl_(OwnedHandle{h}) {}
  explicit Fx(Fn fn) : impl_(std::move(fn)) {}
  Fx(Fx &&) noexcept = default;
  Fx(const Fx &) = delete;
  Fx &operator=(const Fx &) = delete;

  // Runs the computation. Every effect declared in Es... must be covered by
  // a provided TypedHandler; a missing handler is a compile error.
  // With no declared effects, call as .run() with no arguments.
  template <TypedHandler... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  T run(Hs &&...hs) {
    auto locals = std::make_tuple(std::forward<Hs>(hs)...);
    return std::apply(
        [this](auto &...local_hs) -> T { return run_impl(local_hs...); },
        locals);
  }

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
  struct promise_type {
    std::exception_ptr exception;
    const void *effect_tag = nullptr;
    void *payload_ptr = nullptr;

    Fx get_return_object() noexcept;
    std::suspend_always initial_suspend() noexcept { return {}; }
    std::suspend_always final_suspend() noexcept { return {}; }
    void return_void() {}
    void unhandled_exception() { exception = std::current_exception(); }
    using declared_effects = detail::type_list<Es...>;

    template <Effectful Eff>
      requires detail::contains_in_list_v<Eff, detail::type_list<Es...>>
    PerformAwaitable<Eff> await_transform(PerformAwaitable<Eff> a) noexcept {
      return a;
    }

    template <Effectful Eff>
    PerformAwaitable<Eff> await_transform(PerformAwaitable<Eff>) = delete;

    template <typename T2, Effectful... InnerEs>
      requires detail::all_in_v<detail::type_list<InnerEs...>, Es...>
    detail::FxAwaitable<Fx<T2, InnerEs...>>
    await_transform(Fx<T2, InnerEs...> inner) noexcept {
      return {std::move(inner)};
    }

    template <typename T2, Effectful... InnerEs>
      requires(!detail::all_in_v<detail::type_list<InnerEs...>, Es...>)
    detail::FxAwaitable<Fx<T2, InnerEs...>>
        await_transform(Fx<T2, InnerEs...>) = delete;
  };
  using Handle = std::coroutine_handle<promise_type>;
  using value_type = void;
  using effect_list = detail::type_list<Es...>;

private:
  struct OwnedHandle {
    Handle h;
    OwnedHandle() = default;
    explicit OwnedHandle(Handle h) noexcept : h(h) {}
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

  using Fn = std::move_only_function<void()>;
  using Impl = std::variant<OwnedHandle, Fn>;
  Impl impl_;

  void run_impl() { _run(); }

  template <TypedHandler H, TypedHandler... Rest>
  void run_impl(H &h, Rest &...rest) {
    using Hb = std::remove_cvref_t<H>;
    using E = typename Hb::effect_type;
    ScopedHandler<E, Hb> guard{h};
    run_impl(rest...);
  }

public:
  explicit Fx(Handle h) noexcept : impl_(OwnedHandle{h}) {}
  explicit Fx(Fn fn) : impl_(std::move(fn)) {}
  Fx(Fx &&) noexcept = default;
  Fx(const Fx &) = delete;
  Fx &operator=(const Fx &) = delete;

  template <TypedHandler... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  void run(Hs &&...hs) {
    auto locals = std::make_tuple(std::forward<Hs>(hs)...);
    std::apply([this](auto &...local_hs) { run_impl(local_hs...); }, locals);
  }

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

template <typename T, Effectful... Es, TypedHandler... Hs>
T run_with(Fx<T, Es...> comp, Hs &&...hs) {
  return comp.run(std::forward<Hs>(hs)...);
}

template <Effectful... Es, TypedHandler... Hs>
void run_with(Fx<void, Es...> comp, Hs &&...hs) {
  comp.run(std::forward<Hs>(hs)...);
}

template <Effectful... Es> struct Row {
  template <typename T> using Fx = ::fx::Fx<T, Es...>;
};

template <typename R1, typename R2> struct combine_rows_t;
template <Effectful... A, Effectful... B>
struct combine_rows_t<Row<A...>, Row<B...>> {
  using type = Row<A..., B...>;
};
template <typename R1, typename R2>
using Combine = typename combine_rows_t<R1, R2>::type;

template <typename Self> struct Effect {
  template <typename T> using Fx = ::fx::Fx<T, Self>;
};

} // namespace fx

#define perform(e) co_await ::fx::detail::perform_impl(e)
