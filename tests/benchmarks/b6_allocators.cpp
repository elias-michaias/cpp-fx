// b6_allocators.cpp — coroutine frame allocation strategies
//
// Per-perform Payload allocation no longer exists: perform() stores all
// per-effect state inline in PerformAwaitable on the coroutine frame.
//
// The only remaining hot allocation site is:
//
//   • Coroutine frame  — one allocation when the Fx<T> is constructed.
//
// This benchmark compares frame-allocation strategies:
//
//  0. Global operator new / delete  (explicit baseline)
//  1. Default (TLS fx::FreeListResource<256,16> — zero annotation)
//  2. PMR monotonic_buffer_resource backed by a heap buffer (reset per iter)
//  3. fx::ScopedArena — stack-local monotonic buffer (reset per iter)
//  4. PMR unsynchronized_pool_resource (steady-state block reuse)
//  5. fx::ScopedFreeList — O(1) free-list pool

#include "../../effects.hpp"
#include "bench.hpp"
#include <cstddef>
#include <iostream>
#include <memory_resource>
#include <vector>

// ── Effect under test ────────────────────────────────────────────────────────

struct Tick : fx::Effect<Tick> {
  using result_type = int;
};

// ── Frame size constants ─────────────────────────────────────────────────────

// Rough upper bound on a coroutine frame for Tick::Fx<long long>.
// Actual size is compiler-dependent (~200-400 bytes); 512 is safe.
static constexpr std::size_t kFrameEst = 512;

// One extra pointer stored after the frame by PromiseBase::operator new.
static constexpr std::size_t kFrameSlot = kFrameEst + sizeof(void *);

// ── Benchmark parameters ─────────────────────────────────────────────────────

static constexpr int BATCH = 5'000; // performs per coroutine
static constexpr int REPS = 2'000;  // coroutine invocations

// Arena must hold one frame per invocation (performs are zero-alloc now).
static constexpr std::size_t kArena = kFrameSlot + 65536;

// ── Handler ──────────────────────────────────────────────────────────────────

struct CountHandler : fx::Handler<Tick> {
  int n = 0;
  void handle(Tick, auto resume) { resume(n++); }
};

// ── Inner coroutine ──────────────────────────────────────────────────────────

static auto make_batch_coro() -> Tick::Fx<long long> {
  long long sum = 0;
  for (int i = 0; i < BATCH; ++i) {
    sum += perform(Tick{});
  }
  co_return sum;
}

// ── Main ─────────────────────────────────────────────────────────────────────

int main() {
  section("b6 — Coroutine frame allocator strategies");
  std::cout << "  Frame estimate     : " << kFrameEst << " bytes\n";
  std::cout << "  Arena budget       : " << kArena / 1024 << " KiB\n";
  std::cout << "  Batch              : " << BATCH << " performs (zero-alloc) × "
            << REPS << " coroutines\n";
  std::cout << "  Note: per-perform payload allocation eliminated;\n"
            << "        only coroutine frame allocation is benchmarked.\n";

  section("Batch cost (per-coroutine ns)");

  // ── 0. Explicit global new/delete (baseline) ────────────────────────────
  {
    fx::ScopedAllocator alloc{std::pmr::new_delete_resource()};
    print_result(bench("0. Global new/delete (baseline)", REPS, [&] {
      CountHandler h;
      do_not_optimize(make_batch_coro().run(h));
    }));
  }

  // ── 1. Default (TLS free-list slab — zero annotation) ───────────────────
  print_result(bench("1. Default (TLS slab)", REPS, [&] {
    CountHandler h;
    do_not_optimize(make_batch_coro().run(h));
  }));

  // ── 2. PMR monotonic — heap buffer, reset each iter ─────────────────────
  {
    std::vector<std::byte> buf(kArena);
    print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
      std::pmr::monotonic_buffer_resource arena{
          buf.data(), buf.size(), std::pmr::null_memory_resource()};
      fx::ScopedAllocator alloc{arena};
      CountHandler h;
      do_not_optimize(make_batch_coro().run(h));
    }));
  }

  // ── 3. fx::ScopedArena — stack-local monotonic buffer, reset each iter ───
  print_result(bench("3. ScopedArena<kArena> (stack buf, reset/iter)", REPS, [&] {
    fx::ScopedArena<kArena> arena;
    CountHandler h;
    do_not_optimize(make_batch_coro().run(h));
  }));

  // ── 4. PMR pool — steady-state reuse ────────────────────────────────────
  {
    std::vector<std::byte> pbuf(kArena);
    std::pmr::monotonic_buffer_resource backing{
        pbuf.data(), pbuf.size(), std::pmr::null_memory_resource()};
    std::pmr::unsynchronized_pool_resource pool{&backing};
    fx::ScopedAllocator alloc{pool};

    print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
      CountHandler h;
      do_not_optimize(make_batch_coro().run(h));
    }));
  }

  // ── 5. fx::ScopedFreeList — O(1) free-list pool ──────────────────────────
  {
    fx::ScopedFreeList<kFrameSlot, 4> pool;
    print_result(bench("5. ScopedFreeList (O(1) pool)", REPS, [&] {
      pool.reset();
      CountHandler h;
      do_not_optimize(make_batch_coro().run(h));
    }));
  }

  // ── Per-perform breakdown ────────────────────────────────────────────────
  section("Per-perform cost (÷ " + std::to_string(BATCH) + ")");
  std::cout
      << "  Per-perform payload alloc: ZERO (stored in coroutine frame)\n";
  std::cout << "  (Divide per-coroutine ns above by " << BATCH
            << " for residual per-perform overhead.)\n";

  // ── Single-perform worst case ────────────────────────────────────────────
  section("Single-perform coroutine (worst-case frame amortisation)");

  static constexpr int SP_REPS = 500'000;

  auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };

  // 0s. Global new/delete (baseline)
  {
    fx::ScopedAllocator alloc{std::pmr::new_delete_resource()};
    print_result(bench("0s. Global new/delete (baseline)", SP_REPS, [&] {
      CountHandler h;
      do_not_optimize(sp_make().run(h));
    }));
  }

  // 1s. Default (TLS free-list slab)
  print_result(bench("1s. Default (TLS slab)", SP_REPS, [&] {
    CountHandler h;
    do_not_optimize(sp_make().run(h));
  }));

  // 4s. PMR pool (steady-state)
  {
    std::vector<std::byte> pbuf2(65536);
    std::pmr::monotonic_buffer_resource b2{pbuf2.data(), pbuf2.size(),
                                           std::pmr::null_memory_resource()};
    std::pmr::unsynchronized_pool_resource pool2{&b2};
    fx::ScopedAllocator a2{&pool2};
    print_result(bench("4s. PMR pool", SP_REPS, [&] {
      CountHandler h;
      do_not_optimize(sp_make().run(h));
    }));
  }

  // 5s. fx::ScopedFreeList (2 slots — one frame at a time)
  {
    fx::ScopedFreeList<kFrameSlot, 2> mini_pool;
    print_result(bench("5s. ScopedFreeList (O(1) pool)", SP_REPS, [&] {
      mini_pool.reset();
      CountHandler h;
      do_not_optimize(sp_make().run(h));
    }));
  }

  std::cout << '\n';
  return 0;
}
