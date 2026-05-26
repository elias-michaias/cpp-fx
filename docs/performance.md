# Performance

Benchmarks run at `-O3` on x86-64 Linux, GCC 13, `glibc` allocator.  
All benchmark source is in [`tests/benchmarks/`](../tests/benchmarks/).

## Key numbers

| Metric | Cost |
|--------|------|
| `perform()` — single perform per coroutine | ~19 ns |
| `perform()` — amortised over 10 000 per coroutine | ~5.8 ns |
| Extra `co_await` level (propagation depth) | ~16 ns |
| Coroutine frame (once per `Fx` construction) | ~200–400 bytes |
| With `ScopedFreeList` (best allocator strategy) | ~22 ns single / ~5 ns amortised |

For context: a `std::function` call is ~1.9 ns, a virtual dispatch is ~1.2 ns. The `perform()` overhead is almost entirely one coroutine suspend/resume round-trip — **no heap allocation per perform**.

## Where allocations happen

**Per `perform()` call: zero heap allocations.**

All per-perform state lives in `PerformAwaitable<E>`, which is a member of the coroutine's `promise_type` and therefore lives on the **coroutine frame** — allocated once when the `Fx` object is first created, freed when `.run()` returns.

**Per `Fx<T>` construction: one heap allocation:**

- **Coroutine frame** (~200–400 bytes, compiler-dependent) — allocated when the coroutine is first called. Freed when `.run()` returns.

By default this allocation goes through the **thread-local free-list slab** installed automatically by the library. No user setup is required.

## Default TLS slab

A `thread_local FreeListResource<256, 16>` is installed on every thread before any computation runs. Coroutine frame allocations use this O(1) slab by default — no configuration needed. The slab handles frames up to 256 bytes; larger frames fall through to `operator new`.

To override the allocator for a scope, wrap with any of the arena types below.

## `ScopedAllocator` and arena ergonomics

`fx::ScopedAllocator` redirects coroutine frame allocations to any `std::pmr::memory_resource`. Three convenience wrappers are provided:

### `ScopedArena<N>` — monotonic stack buffer

```cpp
fx::ScopedArena<4096> arena;   // 4 KiB inline buffer
auto result = my_computation().run(my_handler);
// frame allocated from arena, zero global new/delete
```

### `ScopedFreeList<BlockSize, Capacity>` — reusable O(1) pool

```cpp
fx::ScopedFreeList<256, 16> pool;   // 16 × 256 B pool
for (auto& task : tasks) {
    task().run(handler);
    // pool.reset() if needed between outer loops
}
```

### Manual `ScopedAllocator`

```cpp
std::array<std::byte, 256*1024> buf;
std::pmr::monotonic_buffer_resource arena{buf.data(), buf.size(),
                                          std::pmr::null_memory_resource()};
fx::ScopedAllocator alloc{&arena};
my_computation().run(my_handler);
```

Allocators nest — `ScopedAllocator` saves and restores the previous resource on scope exit.

## Allocator strategy comparison (b6, 5 000 performs × 2 000 iterations)

Single-coroutine batch throughput:

| Strategy | ns/call (÷5000) | Notes |
|----------|----------------|-------|
| Default (TLS slab) | ~5.1 ns | automatic; no setup |
| `ScopedFreeList` | ~5.0 ns | explicit pool; `reset()` between runs |
| `ScopedArena` (stack buffer) | ~5.0 ns | monotonic; no reset needed |
| `std::pmr::monotonic_buffer_resource` | ~5.1 ns | same as ScopedArena manually |
| `std::pmr::unsynchronized_pool_resource` | ~5.1 ns | no clear win at this scale |

**PMR pool is no faster** than heap at this allocation scale — the batch numbers are essentially flat across all strategies (~25 µs/coroutine). The real win comes from the single-perform case where frame alloc dominates: `ScopedFreeList` cuts that from ~26 ns to ~22 ns.

## Error handling comparison (b3)

| Strategy | 0% errors | 10% errors | 100% errors |
|----------|-----------|------------|-------------|
| Exceptions | ~22.6 µs | ~600 µs | ~5 841 µs |
| `std::optional` | ~25.9 µs | ~25.6 µs | ~8.5 µs |
| `Fail` effect | ~73 µs | ~89 µs | ~147 µs |

The `Fail` effect has near-uniform cost regardless of failure rate (overhead is the suspend/resume round-trip, not allocation). Exceptions are cheap on the happy path but blow up under high failure rates. `std::optional` is fastest for pure zero-allocation checking, but requires manual propagation through every call site. The `Fail` effect gives automatic propagation with no manual `.value_or()` plumbing.

Note: `FX_NO_EXCEPTIONS` strips the `exception_ptr` field from every coroutine frame (saves 8 bytes/frame) and replaces `unhandled_exception()` with `std::terminate()`.

## Generator comparison (b4, N = 5 000)

| Strategy | Cost |
|----------|------|
| Direct `push_back` loop | ~1.86 µs |
| Template callback (inlined) | ~2.00 µs |
| `std::function` callback | ~9.9 µs |
| Raw `co_yield` generator | ~10.9 µs |
| `Emit<int>` effect | ~31.3 µs |

`Emit<int>` is slower than raw `co_yield` because each emit is a full coroutine suspend/resume. The key advantage of `Emit` over `co_yield` is that **the handler is swappable without touching the producer** — the same coroutine can push to a vector, stream to stdout, or filter values depending on which handler is installed at the call site. Use `ScopedFreeList` to bring the cost down toward `co_yield` for tight loops.

## Propagation depth scaling (b5)

| Depth | Fx cost | Direct cost |
|-------|---------|------------|
| 1 | ~15.5 ns | ~0 ns (inlined) |
| 3 | ~48 ns | ~0 ns |
| 5 | ~85 ns | ~0 ns |
| 8 | ~157 ns | ~0 ns |

Each level adds ~16 ns — one coroutine frame allocation plus a suspend/resume. The ratio between levels is constant, confirming there's no hidden O(n) overhead in handler dispatch or stack walking.

## O(1) handler dispatch

Effect dispatch uses a compile-time index (`effect_index`, a `uint8_t` stored in `PromiseAbortBase`) set at `await_suspend` time. When `.run()` starts, it builds a small stack-local dispatch table (`HandlerNode*[sizeof...(Es)]`). Each `perform()` indexes directly into this table — O(1) regardless of how many effects are declared.

## Compiler frame elision (HALO)

GCC and Clang can sometimes stack-allocate coroutine frames when they can prove the frame doesn't escape (`-O2`/`-O3`). This eliminates the frame allocation entirely. The library is written to encourage this where possible (frames are always tied to an `Fx` value on the stack), but HALO is not guaranteed. Wrapping with `ScopedArena` or `ScopedFreeList` is the reliable alternative for heap-less invariants.

---

## Heap-less strategies in depth

This section explains the full allocation model and shows concrete code patterns for each strategy, from "I just want zero `new`/`delete` calls" to "I'm targeting a bare-metal device with no heap at all".

### What actually allocates

| Site | When | Size | Avoidable? |
|------|------|------|------------|
| Coroutine frame | Once per `Fx<T>` construction | ~200–400 B | ✅ via HALO or arena |
| `PerformAwaitable<E>` | Lives *inside* the frame | 0 extra | — (already free) |
| `AbortContext` / `SmallAny` | Only on abort path | stack-local | — (already free) |
| `on_return` FIFO chain | Compile-time depth, inline | 0 extra | — (already free) |

There is **no per-`perform()` heap allocation**. Once a coroutine frame exists, every `perform()` call is a stack-local suspend/resume — no `operator new` is involved.

### Strategy 1 — Do nothing (default TLS slab)

Out of the box, every thread gets a `FreeListResource<256, 16>` — a 16-slot, O(1) free-list backed by a 4 KiB inline buffer. Frame allocations that fit in 256 bytes are served from this slab at ~25 ns/allocation with no setup required.

```cpp
// No setup needed — TLS slab is installed automatically.
auto result = my_computation().run(MyHandler{});
```

If your frame is larger than 256 bytes the slab falls through to `operator new`. Check the size estimate with `FX_SMALL_ANY_SIZE` / compile-time `sizeof` inspection, or run b6 to compare strategies.

### Strategy 2 — `ScopedFreeList` (O(1) pool, explicit)

`ScopedFreeList<BlockSize, Capacity>` is a stack-allocated free-list pool. It overrides the TLS slab for its lifetime and is the fastest option for short-lived coroutines called in a tight loop.

```cpp
// Declare outside the hot loop — the pool lives on the C++ stack.
fx::ScopedFreeList<512, 4> pool;   // 4 × 512 B = 2 KiB on the stack

for (const auto& item : work_items) {
    pool.reset();                          // return any lingering blocks
    CountHandler h;
    auto result = process(item).run(h);    // frame comes from pool
    use(result);
}
```

- `BlockSize` should be ≥ the coroutine frame size + `sizeof(void*)` (one extra pointer stored by `operator new` machinery). 512 bytes is a safe default; 256 bytes works for simple effects.
- `Capacity` is the maximum number of live frames at once. For sequential loops, 1–4 is enough.
- `reset()` returns freed blocks to the pool head — call it between loop iterations if you want to reuse slots without releasing to the parent allocator.

### Strategy 3 — `ScopedArena` (monotonic stack buffer)

`ScopedArena<N>` is a monotonic bump-pointer allocator backed by an `N`-byte inline buffer. It never frees individual blocks — it only releases everything at once when the arena goes out of scope. Use this when you run many coroutines inside a bounded scope and don't need to reclaim frame memory mid-scope.

```cpp
{
    fx::ScopedArena<8192> arena;    // 8 KiB on the stack, never heap
    for (int i = 0; i < 16; ++i) {
        auto r = compute(i).run(MyHandler{});
        // Each frame bump-allocated from arena; no individual frees.
        process(r);
    }
}   // arena destroyed; all 16 frames released at once
```

`ScopedArena` has zero per-allocation overhead (no free-list pointer, no lock) making it the lowest-overhead option for predictable access patterns. The downside is that you need to size the buffer for peak concurrent usage — one coroutine at a time needs only `sizeof(one frame)` bytes, but overlapping coroutines (e.g. `co_await inner.run(h)` before outer returns) each consume space until the scope unwinds.

### Strategy 4 — Manual PMR resource

For more control — or to integrate with an existing PMR allocator in your codebase — use `ScopedAllocator` directly:

```cpp
// Example: shared monotonic arena across multiple subsystems
std::array<std::byte, 64 * 1024> scratch;
std::pmr::monotonic_buffer_resource arena{
    scratch.data(), scratch.size(),
    std::pmr::null_memory_resource()  // crash on overflow rather than heap-fallback
};
fx::ScopedAllocator guard{arena};

// All Fx coroutines in this scope allocate from scratch[].
auto r1 = step_one().run(h1);
auto r2 = step_two(r1).run(h2);
```

`std::pmr::null_memory_resource()` as the upstream makes arena overflow a hard error at runtime rather than a silent heap fallback — useful during development.

### Strategy 5 — `no_heap` guard (assert heap-free)

`fx::no_heap` is a `ScopedAllocator` that installs `null_memory_resource`. Any frame allocation that would reach `operator new` will throw `std::bad_alloc` (or abort under `FX_NO_EXCEPTIONS`). Use it in tests or CI to assert that your computation never escapes your chosen arena:

```cpp
fx::ScopedArena<4096> arena;   // supply the real memory
fx::no_heap guard;             // then forbid any fallback to the heap

// If this throws bad_alloc, your frame estimate was too small.
auto result = my_computation().run(MyHandler{});
```

You can flip this around to audit usage: comment out the arena, leave `no_heap`, and run your test suite. Any test that fails is allocating from the heap.

### Strategy 6 — `FX_NO_TLS` (embedded / no thread-local storage)

On platforms without thread-local storage (some embedded targets, certain WebAssembly toolchains), define `FX_NO_TLS` before including the header:

```cpp
#define FX_NO_TLS
#include "effects.hpp"
```

This replaces all `thread_local` variables with plain `static` globals. The default TLS slab is disabled; you must supply an allocator explicitly via `ScopedFreeList`, `ScopedArena`, or a custom `ScopedAllocator` before running any computation. Without one, frames fall through to `operator new`.

```cpp
#define FX_NO_TLS
#include "effects.hpp"

// Must be set up manually — no TLS slab.
static fx::ScopedFreeList<512, 4> global_pool;

int main() {
    auto result = my_computation().run(MyHandler{});
    // ...
}
```

### Sizing the frame slot

The coroutine frame size is compiler-dependent but typically 200–400 bytes for simple effects. To measure it precisely, check the output of `b6` or print `sizeof` the promise type:

```cpp
// In a translation unit that includes effects.hpp:
using MyPromise = fx::Fx<int, Ask, Log>::promise_type;
static_assert(sizeof(MyPromise) <= 512, "frame larger than expected");
```

A rule of thumb for `ScopedFreeList<BlockSize, ...>`:

```
BlockSize = round_up_to_power_of_2(sizeof(promise_type) + sizeof(void*))
```

The extra `sizeof(void*)` accounts for the allocator pointer stored by `PromiseBase::operator new` to find the right `memory_resource` at deallocation time.

### Choosing a strategy

| Situation | Recommended strategy |
|-----------|---------------------|
| General use, performance not critical | Default TLS slab (do nothing) |
| Tight loop, one coroutine at a time | `ScopedFreeList<BlockSize, 2>` outside the loop |
| Bounded scope, multiple coroutines | `ScopedArena<N>` around the scope |
| Integration with existing PMR allocator | `ScopedAllocator{your_resource}` |
| Hard "no heap" invariant | `ScopedArena` + `no_heap` guard |
| No thread-local storage (embedded) | `FX_NO_TLS` + explicit `ScopedFreeList` or `ScopedArena` |
