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
// fx::perform involves: coroutine frame allocation (one per Fx construction),
// a linear handler stack walk, and a coroutine resume.  Per-perform payload
// allocation is zero — effect state lives inline on the coroutine frame.
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

struct IncrementHandler : Handler<Increment> {
  void handle(Increment e, auto r) { r(e.value + 1); }
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
            << "  Fx: one coroutine-frame alloc per iteration; zero per-perform allocs.\n\n";

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

  // 4. fx::perform — named handler struct, one perform per Fx computation
  {
    int sink = 0;
    print_result(bench("fx::perform (1 perform / coroutine)", N,
                       [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
    do_not_optimize(sink);
  }

  std::cout
      << "\nNote: perform() overhead is dominated by the coroutine frame alloc.\n"
      << "      Use b2_batch to see the amortised cost across many performs.\n";
  return 0;
}
