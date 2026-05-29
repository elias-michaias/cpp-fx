

#include "../../effects.hpp"
#include "bench.hpp"
#include <cstddef>
#include <iostream>
#include <memory_resource>
#include <vector>


struct Tick : fx::Effect<Tick> {
  using result_type = int;
};


static constexpr std::size_t kFrameEst = 512;


static constexpr std::size_t kFrameSlot = kFrameEst + sizeof(void *);


static constexpr int BATCH = 5'000; // performs per coroutine
static constexpr int REPS = 2'000;


static constexpr std::size_t kArena = kFrameSlot + 65536;


struct CountHandler : fx::Handler<Tick> {
  int n = 0;
  void handle(Tick, auto resume) { resume(n++); }
};


static auto make_batch_coro() -> fx::Row<Tick>::Fx<long long> {
  long long sum = 0;
  for (int i = 0; i < BATCH; ++i) {
    sum += perform(Tick{});
  }
  co_return sum;
}


int main() {
  section("b6 — Coroutine frame allocator strategies");
  std::cout << "  Frame estimate     : " << kFrameEst << " bytes\n";
  std::cout << "  Arena budget       : " << kArena / 1024 << " KiB\n";
  std::cout << "  Batch              : " << BATCH << " performs (zero-alloc) × "
            << REPS << " coroutines\n";
  std::cout << "  Note: per-perform payload allocation eliminated;\n"
            << "        only coroutine frame allocation is benchmarked.\n";

  section("Batch cost (per-coroutine ns)");


  {
    fx::ScopedAllocator alloc{std::pmr::new_delete_resource()};
    print_result(bench("0. Global new/delete (baseline)", REPS, [&] {
      CountHandler h;
      do_not_optimize(make_batch_coro().run(h));
    }));
  }


  print_result(bench("1. Default (TLS slab)", REPS, [&] {
    CountHandler h;
    do_not_optimize(make_batch_coro().run(h));
  }));


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


  print_result(
      bench("3. ScopedArena<kArena> (stack buf, reset/iter)", REPS, [&] {
        fx::ScopedArena<kArena> arena;
        CountHandler h;
        do_not_optimize(make_batch_coro().run(h));
      }));


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


  {
    fx::ScopedFreeList<kFrameSlot, 4> pool;
    print_result(bench("5. ScopedFreeList (O(1) pool)", REPS, [&] {
      pool.reset();
      CountHandler h;
      do_not_optimize(make_batch_coro().run(h));
    }));
  }


  section("Per-perform cost (÷ " + std::to_string(BATCH) + ")");
  std::cout
      << "  Per-perform payload alloc: ZERO (stored in coroutine frame)\n";
  std::cout << "  (Divide per-coroutine ns above by " << BATCH
            << " for residual per-perform overhead.)\n";


  section("Single-perform coroutine (worst-case frame amortisation)");

  static constexpr int SP_REPS = 500'000;

  auto sp_make = []() -> fx::Row<Tick>::Fx<int> { co_return perform(Tick{}); };

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
