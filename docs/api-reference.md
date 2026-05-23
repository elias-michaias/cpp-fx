# API Reference

Complete listing of every public type, function, concept, and macro in `effects.hpp`.

---

## Concepts

### `fx::Effectful<E>`
Satisfied by any type with a `result_type` member alias. Minimum requirement for an effect type.

```cpp
template <typename E>
concept Effectful = requires { typename E::result_type; };
```

### `fx::HandlerFor<H, E>`
Satisfied when `H` can be called as `h(e, resume)` where `e : E` and `resume : std::function<void(E::result_type)>`.

```cpp
template <typename H, typename E>
concept HandlerFor = Effectful<E> &&
    requires(H& h, E e, std::function<void(typename E::result_type)> r) { h(e, r); };
```

### `fx::TypedHandler<H>`
Satisfied by handlers that advertise their target effect via an `effect_type` alias. Produced by `Effect::Handler<Derived>` and `handler<E>(fn)`.

### `fx::CompositeHandler<H>`
Satisfied by handlers that cover multiple effects via an `effect_types` alias. Produced by `Row::Handler<Derived>` and `handler<R>(lambdas...)`.

### `fx::AnyFx<F>`
Satisfied by any `Fx<T, Es...>` specialisation. Used to constrain `handle<E>()` and related utilities.

### `fx::DeclaredIn<E, F>`
Satisfied when effect `E` is listed in `F`'s declared effect set. Used to constrain `handle<E>()`.

### `fx::RowType<R>`
Satisfied by `Row<...>` aliases and anything else exposing a `::effects` type alias.

---

## Core types

### `fx::Effect<Self>`
CRTP base for single-effect types.

```cpp
template <typename Self> struct Effect {
    template <typename T> using Fx = ::fx::Fx<T, Self>;

    template <typename Derived> struct Handler {
        using effect_type = Self;
    };
};
```

**Provides:**
- `Self::Fx<T>` — coroutine return type
- `Self::Handler<Derived>` — CRTP base for handler structs

### `fx::Fx<T, Es...>`
Coroutine return type. `T` is the produced value; `Es...` are the declared effects.

```cpp
template <typename T, Effectful... Es> class Fx;
```

Move-only. Lazy — the coroutine body doesn't run until `.run()` or `co_await`.

**Member functions:**

```cpp
// Run the computation. Validates all declared effects are handled.
// Compile error (IDE squiggle) if any effect in Es... lacks a handler.
T run(Hs&&... handlers)
    requires all_handled_v<type_list<Es...>, Hs...>;

// Deleted overload — selected when handler coverage is incomplete.
// Produces an IDE squiggle at the .run(...) call site.
T run(Hs&&... handlers) = delete;
```

**Aliases:**
- `Fx<T>` — pure computation, no effects; `.run()` takes no handlers
- `E::Fx<T>` — single effect (from `Effect<E>`)
- `Row<E1,E2>::Fx<T>` — multiple effects

### `fx::Row<Ts...>`
Template alias that groups effects into a named row. Arguments may be bare `Effectful` types, other `Row` aliases, or a mix — nested rows are flattened at compile time.

```cpp
template <typename... Ts>
using Row = /* BasicRow<flattened effects> */;
```

**Provides:**
- `Row<...>::Fx<T>` — coroutine return type for the full effect set
- `Row<...>::Handler<Derived>` — CRTP base for composite handler structs

### `fx::ScopedAllocator`
RAII guard that installs a `std::pmr::memory_resource` for the current thread. While active, all `Payload` allocations and coroutine frame allocations use the supplied resource.

```cpp
class ScopedAllocator {
public:
    explicit ScopedAllocator(std::pmr::memory_resource* mr) noexcept;
    ~ScopedAllocator() noexcept;
    // non-copyable, non-movable
};
```

Nestable — saves and restores the previous resource on construction/destruction.

---

## Handler wrappers

### `fx::LambdaHandler<E, F>`
Thin wrapper giving a lambda an `effect_type` alias. Satisfies `TypedHandler`. Prefer constructing via `handler<E>(fn)`.

### `fx::CompositeLambdaHandler<R, Lambdas...>`
Composite handler built from lambdas. Satisfies `CompositeHandler`. Prefer constructing via `handler<R>(lambdas...)`.

---

## Functions

### `fx::handler<E>(fn)`
Wraps `fn` as a `LambdaHandler<E>` so it can be passed to `.run()`.

```cpp
template <Effectful E, typename F>
    requires HandlerFor<F, E>
auto handler(F&& fn) -> LambdaHandler<E, decay_t<F>>;
```

```cpp
auto h = fx::handler<Ask>([](Ask e, auto r) { r("Alice"); });
```

### `fx::handler<R>(lambdas...)`
Builds an inline `CompositeHandler` for row `R`. Compile error if any effect in `R` has no matching lambda.

```cpp
template <RowType R, typename... Lambdas>
    requires all_lambda_handled_v<R::effects, decay_t<Lambdas>...>
auto handler(Lambdas&&... lambdas) -> CompositeLambdaHandler<R, decay_t<Lambdas>...>;
```

```cpp
auto h = fx::handler<IO>(
    [](Ask, auto r)  { r("hello"); },
    [](Log e, auto r) { std::cout << e.message; r({}); }
);
```

### `fx::handle<E>(comp, h)`
Partially handles effect `E` inside `comp`, returning a new `Fx` with `E` removed from the effect list. Lazy.

```cpp
template <Effectful E, AnyFx F, typename H>
    requires HandlerFor<H, E> && DeclaredIn<E, F>
auto handle(F comp, H h) -> Fx<F::value_type, /* Es... minus E */>;
```

```cpp
// Row<Ask, Fail>::Fx<int>  →  Ask::Fx<int>
auto partial = fx::handle<Fail>(safe_div(10, 0),
                   fx::handler<Fail>([](Fail, auto r) { r(-1); }));
```

---

## Macros

### `perform(e)`
Raises effect `e` inside a coroutine. Suspends until a handler resumes with a value.

```cpp
#define perform(e) co_await ::fx::detail::perform_impl(e)
```

Expands to a `co_await` expression. Must be used inside a coroutine whose return type declares `E`. Undeclared use is a compile error with an IDE squiggle.

```cpp
std::string name = perform(Ask{.prompt = "Name: "});
```

### `VALIDATE_HANDLER(H)`
`static_assert` that `H` satisfies `TypedHandler` or `CompositeHandler`. Place immediately after the struct closing brace.

```cpp
VALIDATE_HANDLER(MyHandler);
```

Fires at the definition site (not at first usage) if an `operator()` overload is missing or has the wrong signature.

---

## Internal types (not public API)

These are implementation details. They appear in error messages but should not be constructed directly.

| Type | Role |
|------|------|
| `detail::Payload<E>` | Per-perform allocation: holds effect value, coroutine handle, result pointer |
| `detail::PromiseBase<Es...>` | Shared `promise_type` base; hosts `await_transform` overloads |
| `detail::ScopedHandler<E, H>` | RAII node on the thread-local handler stack |
| `PerformAwaitable<E>` | Awaitable returned by `perform_impl`; drives suspend/resume |
| `detail::HandlerNode` | Intrusive linked-list node on the handler stack |
| `detail::current_mr` | Thread-local active `pmr::memory_resource*` |
