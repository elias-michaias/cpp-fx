// b1_dispatch.cpp — per-invocation dispatch overhead
//
// Measures the cost of a single "call + return" across four dispatch
// mechanisms, all computing the same thing (increment an integer):
//
//   1. Direct non-virtual function call          — baseline
//   2. std::function (type-erased callable)      — stdlib type erasure
//   3. Virtual dispatch (abstract class)         — classic OOP indirection
//   4. fx::perform (algebraic effect)            — our library
//
// fx::perform involves: coroutine frame allocation, one heap Payload
// allocation, a linear handler stack walk, and a coroutine resume.
// Each iteration creates a fresh Fx<> (worst case — includes frame alloc).
//
// Expected: perform() is slower than a raw call but in the same order of
// magnitude as virtual/std::function once the handler stack is warm.
// See b2_batch.cpp for the amortised cost across many performs.

#include "../common.hpp"
#include "bench.hpp"

#include <functional>
#include <memory>

// ---- effect used in this benchmark -----------------------------------------

struct Increment : Effect<Increment> {
  using result_type = int;
  int value;
};

// ---- baselines -------------------------------------------------------------

[[gnu::noinline]] static int direct_inc(int x) { return x + 1; }

// ---- Fx variant ------------------------------------------------------------

static auto fx_inc(int x) -> Increment::Fx<int> {
  co_return perform(Increment{.value = x});
}

// ---- main ------------------------------------------------------------------

int main() {
  constexpr std::size_t N = 1'000'000;

  section("b1: per-invocation dispatch overhead  (N = " + std::to_string(N) +
          " iterations)");
  std::cout << "  Each iteration dispatches once and returns an int.\n"
            << "  Fx includes coroutine-frame + Payload heap alloc per "
               "iteration.\n\n";

  // 1. Direct call
  {
    int sink = 0;
    print_result(
        bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
    do_not_optimize(sink);
  }

  // 2. std::function
  {
    std::function<int(int)> fn = [](int x) { return x + 1; };
    int sink = 0;
    print_result(bench("std::function", N, [&] { sink = fn(sink); }));
    do_not_optimize(sink);
  }

  // 3. Virtual dispatch
  {
    struct Base {
      virtual int inc(int x) = 0;
      virtual ~Base() = default;
    };
    struct Impl : Base {
      [[gnu::noinline]] int inc(int x) override { return x + 1; }
    };
    std::unique_ptr<Base> obj = std::make_unique<Impl>();
    int sink = 0;
    print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
    do_not_optimize(sink);
  }

  // 4. fx::perform — one perform per Fx computation (new frame each iter)
  {
    auto h = handler<Increment>([](Increment e, auto r) { r(e.value + 1); });
    int sink = 0;
    print_result(bench("fx::perform (1 perform / coroutine)", N,
                       [&] { sink = fx_inc(sink).run(h); }));
    do_not_optimize(sink);
  }

  std::cout
      << "\nNote: perform() overhead is dominated by heap allocs (frame + "
         "Payload).\n"
      << "      Use b2_batch to see amortised cost across many performs.\n";
  return 0;
}
