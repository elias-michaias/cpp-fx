// b2_batch.cpp — amortised per-perform cost
//
// A single Fx coroutine that performs N effects amortises the one-time
// coroutine-frame allocation across all N performs.  This benchmark isolates
// the per-perform cost (Payload alloc + handler dispatch + resume) from the
// per-coroutine cost measured in b1_dispatch.
//
// Comparisons:
//   1. Direct tight loop (baseline — no indirection)
//   2. std::function called N times per outer iteration
//   3. fx::perform called N times inside one coroutine
//
// The "ns per perform" row at the bottom divides the Fx result by BATCH to
// give a fair per-call comparison against the others.

#include "../common.hpp"
#include "bench.hpp"

#include <functional>

// ---- effect ----------------------------------------------------------------

struct Tick : Effect<Tick> {
  using result_type = int;
  // No payload — just a counter tick.
};

// ---- Fx computation: sum BATCH ticks ---------------------------------------

static auto sum_ticks(int n) -> Tick::Fx<long long> {
  long long total = 0;
  for (int i = 0; i < n; ++i)
    total += perform(Tick{});
  co_return total;
}

// ---- main ------------------------------------------------------------------

int main() {
  constexpr int   BATCH = 10'000; // performs per outer iteration
  constexpr std::size_t REPS  = 2'000;  // outer iterations

  section("b2: amortised per-perform cost  (batch=" + std::to_string(BATCH) +
          ", reps=" + std::to_string(REPS) + ")");
  std::cout
      << "  Each iteration runs a loop of " << BATCH << " dispatches.\n"
      << "  Fx: one coroutine frame per iteration, " << BATCH << " Payload allocs.\n\n";

  BenchResult direct_r, stdfn_r, fx_r;

  // 1. Direct loop
  {
    long long sink = 0;
    int counter = 0;
    direct_r = bench("direct loop", REPS, [&] {
      long long total = 0;
      for (int i = 0; i < BATCH; ++i) total += ++counter;
      sink += total;
    });
    print_result(direct_r);
    do_not_optimize(sink);
  }

  // 2. std::function loop
  {
    long long sink = 0;
    int counter = 0;
    std::function<int()> fn = [&] { return ++counter; };
    stdfn_r = bench("std::function loop", REPS, [&] {
      long long total = 0;
      for (int i = 0; i < BATCH; ++i) total += fn();
      sink += total;
    });
    print_result(stdfn_r);
    do_not_optimize(sink);
  }

  // 3. fx::perform loop (one coroutine, BATCH performs)
  {
    long long sink = 0;
    int counter = 0;
    auto h = handler<Tick>([&](Tick, auto r) { r(++counter); });
    fx_r = bench("fx::perform in batch coroutine", REPS, [&] {
      sink += sum_ticks(BATCH).run(h);
    });
    print_result(fx_r);
    do_not_optimize(sink);
  }

  // Derived: ns per individual perform call
  std::cout << "\n  --- amortised per-call breakdown ---\n";
  auto per = [&](const BenchResult &r) {
    return r.ns_per_iter() / BATCH;
  };
  std::cout << "  " << std::setw(44) << std::left << "direct loop  (per call)"
            << " " << std::setw(10) << std::right << std::fixed
            << std::setprecision(2) << per(direct_r) << " ns/call\n";
  std::cout << "  " << std::setw(44) << std::left << "std::function (per call)"
            << " " << std::setw(10) << std::right << std::fixed
            << std::setprecision(2) << per(stdfn_r) << " ns/call\n";
  std::cout << "  " << std::setw(44) << std::left << "fx::perform  (per call)"
            << " " << std::setw(10) << std::right << std::fixed
            << std::setprecision(2) << per(fx_r) << " ns/call\n";

  std::cout
      << "\nNote: the Fx overhead vs direct is mainly the Payload heap alloc.\n"
      << "      Replacing the per-perform heap alloc with a pool would close\n"
      << "      most of the gap.\n";
  return 0;
}
