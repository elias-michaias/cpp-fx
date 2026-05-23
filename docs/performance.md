# Performance

Benchmarks run at `-O3` on x86-64 Linux, GCC 13, `glibc` allocator.  
All benchmark source is in [`tests/benchmarks/`](../tests/benchmarks/).

## Key numbers

| Metric | Cost |
|--------|------|
| `perform()` — single perform per coroutine | ~34 ns |
| `perform()` — amortised over 10 000 per coroutine | ~31 ns |
| Extra `co_await` level (propagation depth) | ~32 ns |
| `Payload<E>` size | 24 bytes |
| With `ScopedAllocator` + slab | ~27 ns/perform |

For context: a `std::function` call is ~2 ns, a virtual dispatch is ~1.2 ns. The perform overhead is almost entirely one `malloc`/`free` round-trip per call.

## Where allocations happen

Each `perform()` call does **one** heap allocation:

- **`Payload<E>`** (24 bytes) — holds the effect value, the suspended `coroutine_handle`, and a pointer to the result slot. Allocated in `await_suspend`, freed when the handler calls `resume`.

Each `Fx<T>` construction does **one** heap allocation:

- **Coroutine frame** (~200–400 bytes, compiler-dependent) — allocated when the coroutine is first called. Freed when `.run()` returns.

The `std::function<void(R)>` passed to the user handler captures only one pointer (8 bytes) and is SBO-optimised — no additional heap allocation.

## `ScopedAllocator`

`fx::ScopedAllocator` redirects both `Payload` allocations and coroutine frame allocations to a `std::pmr::memory_resource`. Install it before running a computation:

```cpp
std::array<std::byte, 256*1024> buf;
std::pmr::monotonic_buffer_resource arena{buf.data(), buf.size(),
                                          std::pmr::null_memory_resource()};
fx::ScopedAllocator alloc{&arena};

auto result = my_computation().run(my_handler);
// all allocations went through 'arena', zero global new/delete
```

Allocators nest — a `ScopedAllocator` saves and restores the previous resource, so they are safe to stack.

## Allocator strategy comparison (b6, 5 000 performs × 2 000 iterations)

| Strategy | Per-coroutine | vs default |
|----------|--------------|-----------|
| 1. Default `new`/`delete` | ~144 µs | baseline |
| 2. Monotonic (heap buffer, reset/iter) | ~137 µs | −5% |
| 3. Monotonic (static buffer, reset/iter) | ~136 µs | −6% |
| 4. PMR pool (steady-state) | ~229 µs | +59% ⚠ |
| 5. Free-list slab (O(1), no virtual dispatch) | ~134 µs | −7% |

**Per-perform cost:** divide by 5 000 → ~27–29 ns with an allocator, ~29 ns default.

### Choosing a strategy

**Monotonic buffer** is the simplest win. Use it when you know an upper bound on the number of performs per computation:

```cpp
// 1 coroutine × N performs — buffer needs N * sizeof(Payload) + frame
static std::array<std::byte, N * 32 + 512> buf;
std::pmr::monotonic_buffer_resource arena{buf.data(), buf.size(),
                                          std::pmr::null_memory_resource()};
fx::ScopedAllocator alloc{&arena};
computation().run(handler);
// arena resets cheaply by re-constructing the resource object
```

**PMR pool (`unsynchronized_pool_resource`)** is *slower* than heap at small block sizes (24–48 bytes) due to size-class bookkeeping overhead. Avoid it for high-frequency perform loops.

**Free-list slab** is the fastest option and has zero virtual dispatch overhead for slab-sized allocations. Large allocations (coroutine frames) fall through to a configurable fallback resource automatically.

Example slab for payload-only acceleration:

```cpp
// Slab block size must match or exceed sizeof(Payload<E>)
// BATCH slots for steady-state perform loop
FreeListSlab<48, BATCH + 4> slab;  // defined in b6_allocators.cpp
fx::ScopedAllocator alloc{&slab};
computation().run(handler);
slab.reset();  // next iteration reuses same blocks
```

## Error handling comparison (b3)

| Strategy | 0% errors | 10% errors | 100% errors |
|----------|-----------|------------|-------------|
| Exceptions | ~23 µs | ~597 µs | ~5 874 µs |
| `std::optional` | ~26 µs | ~26 µs | ~9 µs |
| `Fail` effect | ~95 µs | ~122 µs | ~311 µs |

The `Fail` effect has uniform-ish cost regardless of failure rate (overhead is the per-perform allocation). Exceptions are cheap on the happy path but blow up under high failure rates. `std::optional` is the fastest for pure zero-allocation checking, but requires manual propagation through every call site. The `Fail` effect gives automatic propagation with no manual `.value_or()` plumbing.

## Generator comparison (b4, N = 5 000)

| Strategy | Cost |
|----------|------|
| Direct `push_back` loop | ~1.9 µs |
| Template callback (inlined) | ~1.9 µs |
| `std::function` callback | ~10 µs |
| Raw `co_yield` generator | ~11 µs |
| `Emit<int>` effect | ~224 µs |

`Emit<int>` is slower than raw `co_yield` because each emit allocates a Payload. Use `ScopedAllocator` to close most of this gap. The key advantage of `Emit` over `co_yield` is that the handler is **swappable without touching the producer** — the same coroutine can push to a vector, stream to stdout, or filter values depending on which handler is installed at the call site.

## Propagation depth scaling (b5)

| Depth | Fx cost | Direct cost |
|-------|---------|------------|
| 1 | ~42 ns | ~0 ns (inlined) |
| 3 | ~88 ns | ~0 ns |
| 5 | ~138 ns | ~0 ns |
| 8 | ~259 ns | ~0 ns |

Each level adds ~32 ns — one coroutine frame allocation plus a suspend/resume. The ratio between levels is constant, confirming there's no hidden O(n) overhead in handler dispatch or stack walking.

## Compiler frame elision (HALO)

GCC and Clang can sometimes stack-allocate coroutine frames when they can prove the frame doesn't escape (`-O2`/`-O3`). This eliminates the frame allocation entirely. The library is written to encourage this where possible (no raw `new Coro()` — frames are always tied to an `Fx` value on the stack), but HALO is not guaranteed. Wrapping with `ScopedAllocator` is the reliable alternative.
