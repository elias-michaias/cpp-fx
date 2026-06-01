
#include "../../effects.hpp"
#include "bench.hpp"
#include <iostream>


struct Tick : fx::Effect<Tick> {
  using result_type = int;
};

struct CountHandler : fx::Handler<Tick> {
  int n = 0;
  void handle(Tick, auto resume) { resume(n++); }
};


static constexpr int BATCH   = 5'000;
static constexpr int REPS    = 2'000;
static constexpr int SP_REPS = 500'000;

using BatchFx = fx::Row<Tick>::Fx<long long>;
using SpFx    = fx::Row<Tick>::Fx<int>;

static auto make_batch_coro() -> BatchFx {
  long long sum = 0;
  for (int i = 0; i < BATCH; ++i)
    sum += perform(Tick{});
  co_return sum;
}

static auto make_sp_coro() -> SpFx {
  co_return perform(Tick{});
}


int main() {
  section("b7 — StackFx vs allocator strategies");
  std::cout << "  frame_size_v<BatchFx> = " << fx::frame_size_v<BatchFx>
            << " bytes\n";
  std::cout << "  frame_size_v<SpFx>    = " << fx::frame_size_v<SpFx>
            << " bytes\n";
  std::cout << "  Batch : " << BATCH << " performs × " << REPS
            << " coroutines\n";
  std::cout << "  Single: 1 perform × " << SP_REPS << " coroutines\n";
  std::cout << "  (StackFx storage lives entirely in the caller's stack "
               "frame.)\n";


  // ----------------------------------------------------------------
  section("Batch (5 000 performs — frame alloc fully amortised)");

  // 1. Default TLS slab (baseline — what you get with no setup)
  print_result(bench("1. Default (TLS slab)", REPS, [&] {
    CountHandler h;
    do_not_optimize(make_batch_coro().run(h));
  }));

  // 2. ScopedFreeList with exact frame size
  {
    fx::ScopedFreeList<fx::frame_size_v<BatchFx>, 1> pool;
    print_result(bench("2. ScopedFreeList<frame_size_v,1>", REPS, [&] {
      pool.reset();
      CountHandler h;
      do_not_optimize(make_batch_coro().run(h));
    }));
  }

  // 3. StackFx — inline storage, no allocator lookup
  print_result(bench("3. StackFx / make_stack_fx", REPS, [&] {
    CountHandler h;
    do_not_optimize(fx::make_stack_fx(make_batch_coro).run(h));
  }));


  // ----------------------------------------------------------------
  section("Single-perform (frame alloc dominates; worst-case amortisation)");

  // 1s. Default TLS slab (baseline)
  print_result(bench("1s. Default (TLS slab)", SP_REPS, [&] {
    CountHandler h;
    do_not_optimize(make_sp_coro().run(h));
  }));

  // 2s. ScopedFreeList with exact frame size
  {
    fx::ScopedFreeList<fx::frame_size_v<SpFx>, 1> pool;
    print_result(bench("2s. ScopedFreeList<frame_size_v,1>", SP_REPS, [&] {
      pool.reset();
      CountHandler h;
      do_not_optimize(make_sp_coro().run(h));
    }));
  }

  // 3s. StackFx — inline storage, no allocator lookup
  print_result(bench("3s. StackFx / make_stack_fx", SP_REPS, [&] {
    CountHandler h;
    do_not_optimize(fx::make_stack_fx(make_sp_coro).run(h));
  }));


  // ----------------------------------------------------------------
  section("StackFx sizing (bytes on the caller stack per coroutine type)");
  std::cout << "  sizeof(fx::StackFx<SpFx>)    = "
            << sizeof(fx::StackFx<SpFx>) << " bytes\n";
  std::cout << "  sizeof(fx::StackFx<BatchFx>) = "
            << sizeof(fx::StackFx<BatchFx>) << " bytes\n";

  std::cout << '\n';
  return 0;
}
