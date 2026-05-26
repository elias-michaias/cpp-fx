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

### `fx::EffectOrRow<T>`
Satisfied when `T` is `Effectful` **or** exposes an `::effects` type alias (i.e., is a `Row`). Used to constrain `Handler<...>` template arguments.

### `fx::HandlerFor<H, E>`
Satisfied when `H` provides a `handle` method callable as `h.handle(e, r)` where `e : E` and `r` is a `Cont<E, int>` token.

```cpp
template <typename H, typename E>
concept HandlerFor = Effectful<E> &&
    requires(H& h, E e, Cont<E, int> r) { h.handle(e, r); };
```

### `fx::TypedHandler<H>`
Satisfied by single-effect handlers that advertise their target via an `effect_type` alias. Produced by `Handler<E>`.

### `fx::CompositeHandler<H>`
Satisfied by handlers that cover multiple effects via an `effect_types` alias. Produced by `Handler<E1, E2, ...>` or `Handler<Row>`.

---

## Core types

### `fx::Effect<R>`
Base for effect types. `R` is the resume/reply type — the value a handler must supply back to the coroutine.

```cpp
template <typename R> struct Effect {
    using result_type = R;
    template <typename T> using Fx = ::fx::Fx<T, /*Self*/>;
};
```

Derive from it to define a new effect:

```cpp
struct Ask : Effect<std::string> {
    std::string prompt;
};
```

**Provides:**
- `result_type` — the reply type
- `Self::Fx<T>` — coroutine return type spelling shorthand

### `fx::Handler<Es...>`
Base for handler structs. `Es...` may be bare `Effectful` types, `Row` aliases, or a mix — they are flattened at compile time. Provide one `handle(E, auto r)` overload per effect.

```cpp
// single effect
struct StdinAsk : Handler<Ask> {
    void handle(Ask e, auto r) { r("Alice"); }
};

// multiple effects (explicit list or via Row)
struct ScriptedIO : Handler<Ask, Log> { /* two handle overloads */ };
struct CountingIO : Handler<IO> { /* same — IO = Row<Ask,Log> */ };
```

Sets `effect_type` (single) or `effect_types` (composite) alias consumed by `.run()` validation.

### `fx::Resume<E>`
Lightweight resume token passed to `handle` when the handler does not need to drive the computation to completion. Calling `r(value)` resumes the coroutine and delivers the reply.

### `fx::Cont<E, T>`
Extended resume token for Koka-style driving handlers. `k.resume(value)` drives the coroutine all the way to its final `T` result (including applying any inner `on_return` clauses) and returns that result.

```cpp
struct AnnotatedAsk : Handler<Ask> {
    template <typename T>
    std::string handle(Ask, Cont<Ask, T> k) {
        T result = k.resume("hello");  // T deduced from context
        return "got=" + std::to_string(result);
    }
};
```

### `fx::Fx<T, Es...>`
Coroutine return type. `T` is the produced value; `Es...` are the declared effects.

```cpp
template <typename T, Effectful... Es> class Fx;
```

Move-only. Lazy — the coroutine body doesn't run until `.run()` or `co_await`.

**Member functions:**

```cpp
// Run the computation with handler instances.
// Compile error (= delete fallback) if any effect in Es... lacks a handler.
auto run(Hs&&... handlers)
    requires all_handled_v<type_list<Es...>, Hs...>;

// Pre-bind some handlers; returns BoundFx<Fx, Hs...>.
// Remaining effects are handled later via BoundFx::run() or BoundFx::bind().
auto bind(Hs&&... handlers);
```

**Aliases:**
- `Fx<T>` — pure computation, no effects; `.run()` takes no handlers
- `E::Fx<T>` — single effect (from `Effect<R>`)
- `Row<E1,E2>::Fx<T>` — multiple effects

### `fx::BoundFx<InnerFx, PreHs...>`
A computation with some handlers pre-bound. Zero-overhead — no type erasure, no variant; handlers sit in a `std::tuple`. Move-only.

Produced by `Fx::bind(hs...)` or `BoundFx::bind(more...)`.

**Member functions:**

```cpp
// Run; remaining effects must be covered by remaining_hs + pre-bound handlers.
auto run(remaining_hs&&...);

// Append more pre-bound handlers; returns new BoundFx (tuple concatenated).
auto bind(more_hs&&...);
```

Can also be used with `co_await` inside another coroutine — remaining effects propagate to the outer effect list.

### `fx::Row<Ts...>`
Groups effects into a named row. Arguments may be bare `Effectful` types, other `Row` aliases, or a mix — nested rows are flattened at compile time.

**Provides:**
- `Row<...>::Fx<T>` — coroutine return type for the full effect set
- `Row<...>::Handler` — expands to `Handler<flattened effects>` for convenience

```cpp
using IO  = Row<Ask, Log>;
using All = Row<IO, Fail>;   // flat: Ask, Log, Fail

struct MyIO : Handler<IO> { /* handle Ask and Log */ };
struct MyAll : Handler<All> { /* handle Ask, Log, Fail */ };
```

---

## Allocator types

### `fx::ScopedAllocator`
RAII guard that installs a `std::pmr::memory_resource` for the current thread. While active, all coroutine frame allocations in the current thread use the supplied resource.

```cpp
class ScopedAllocator {
public:
    explicit ScopedAllocator(std::pmr::memory_resource* mr) noexcept;
    explicit ScopedAllocator(std::pmr::memory_resource& mr) noexcept;
    ~ScopedAllocator() noexcept;
    // non-copyable, non-movable
};
```

Nestable — saves and restores the previous resource on construction/destruction. A thread-local free-list slab is installed by default; `ScopedAllocator` lets you override it.

### `fx::MonotonicResource<N>`
Inline monotonic bump-allocator backed by an N-byte buffer. Overflow (buffer exhausted) throws `std::bad_alloc`. Deallocation is a no-op.

```cpp
fx::MonotonicResource<4096> mr;
fx::ScopedAllocator alloc{mr};
computation().run(handler);
```

### `fx::ScopedArena<N>`
One-liner combination of `MonotonicResource<N>` + `ScopedAllocator`. Scoped to the enclosing block.

```cpp
fx::ScopedArena<4096> arena;   // 4 KiB stack buffer active until scope exit
computation().run(handler);
```

### `fx::FreeListResource<BlockSize, Capacity>`
O(1) free-list allocator for fixed-size blocks. `Capacity` blocks of `BlockSize` bytes are kept in an inline array. Allocations larger than `BlockSize` fall through to a configurable upstream resource. `reset()` returns all blocks to the free list.

```cpp
fx::FreeListResource<256, 16> mr;  // 16 × 256 B blocks
fx::ScopedAllocator alloc{mr};
for (auto& task : tasks) {
    task().run(handler);
    mr.reset();  // reuse blocks for next task
}
```

### `fx::ScopedFreeList<BlockSize, Capacity>`
One-liner combination of `FreeListResource<BlockSize, Capacity>` + `ScopedAllocator`.

```cpp
fx::ScopedFreeList<256, 16> pool;
for (auto& task : tasks)
    task().run(handler);
pool.reset();
```

### `fx::no_heap`
RAII guard that makes coroutine frame allocation a hard error in the current scope (installs `null_memory_resource`). Any allocation attempt throws `std::bad_alloc`. Useful for enforcing heap-less invariants in tests.

```cpp
fx::no_heap guard;
my_computation().run(handler);   // throws if any allocation occurs
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

---

## Compile-time flags

Define any of these before `#include "effects.hpp"`:

| Flag | Default | Effect |
|------|---------|--------|
| `FX_NO_TLS` | undefined | Replace `thread_local` storage with plain globals (for single-threaded embedded targets) |
| `FX_NO_EXCEPTIONS` | undefined | Strip `exception_ptr` from promise types; replace `unhandled_exception()` with `std::terminate()`. Saves 8 bytes per coroutine frame |
| `FX_SMALL_ANY_SIZE` | `48` | Override inline buffer size (bytes) for `SmallAny`. Increase if `on_return` result types exceed 48 bytes |

---

## Internal types (not public API)

These are implementation details. They appear in error messages but should not be constructed directly.

| Type | Role |
|------|------|
| `detail::PromiseBase<Es...>` | Shared `promise_type` base; hosts `await_transform` overloads |
| `detail::PromiseAbortBase` | Abort state: `aborted` flag, `effect_index`, `abort_ctx` pointer, `payload_ptr` |
| `detail::ScopedHandler<E, H>` | RAII node on the thread-local handler stack |
| `detail::PerformAwaitable<E>` | Awaitable returned by `perform_impl`; drives suspend/resume; lives on the coroutine frame (zero per-perform heap alloc) |
| `detail::HandlerNode` | Intrusive linked-list node on the handler stack |
| `detail::AbortContext` | Abort payload + `SmallAny` value; lives inside `ScopedHandler` on the C++ call stack |
| `detail::SmallAny<N>` / `AnyVal` | Fixed-size (never-heap) type-erased container; used for abort values and `on_return` FIFO chain |
| `detail::current_mr` | Thread-local active `pmr::memory_resource*` |
