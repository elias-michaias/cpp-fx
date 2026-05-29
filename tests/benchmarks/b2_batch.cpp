

#include "../common.hpp"
#include "bench.hpp"

#include <functional>


struct Tick : Effect<Tick> {
  using result_type = int;

};


static auto sum_ticks(int n) -> Row<Tick>::Fx<long long> {
  long long total = 0;
  for (int i = 0; i < n; ++i)
    total += perform(Tick{});
  co_return total;
}

struct TickCounter : Handler<Tick> {
  int &counter;
  void handle(Tick, auto r) { r(++counter); }
};


int main() {
  constexpr int BATCH = 10'000;       // performs per outer iteration
  constexpr std::size_t REPS = 2'000;

  section("b2: amortised per-perform cost  (batch=" + std::to_string(BATCH) +
          ", reps=" + std::to_string(REPS) + ")");
  std::cout << "  Each iteration runs a loop of " << BATCH << " dispatches.\n"
            << "  Fx: one coroutine frame per iteration; " << BATCH
            << " performs are zero-alloc.\n\n";

  BenchResult direct_r, stdfn_r, fx_r;


  {
    long long sink = 0;
    int counter = 0;
    direct_r = bench("direct loop", REPS, [&] {
      long long total = 0;
      for (int i = 0; i < BATCH; ++i)
        total += ++counter;
      sink += total;
    });
    print_result(direct_r);
    do_not_optimize(sink);
  }


  {
    long long sink = 0;
    int counter = 0;
    std::function<int()> fn = [&] { return ++counter; };
    stdfn_r = bench("std::function loop", REPS, [&] {
      long long total = 0;
      for (int i = 0; i < BATCH; ++i)
        total += fn();
      sink += total;
    });
    print_result(stdfn_r);
    do_not_optimize(sink);
  }


  {
    long long sink = 0;
    int counter = 0;
    fx_r = bench("fx::perform in batch coroutine", REPS, [&] {
      sink += sum_ticks(BATCH).run(TickCounter{.counter = counter});
    });
    print_result(fx_r);
    do_not_optimize(sink);
  }


  std::cout << "\n  --- amortised per-call breakdown ---\n";
  auto per = [&](const BenchResult &r) { return r.ns_per_iter() / BATCH; };
  std::cout << "  " << std::setw(44) << std::left << "direct loop  (per call)"
            << " " << std::setw(10) << std::right << std::fixed
            << std::setprecision(2) << per(direct_r) << " ns/call\n";
  std::cout << "  " << std::setw(44) << std::left << "std::function (per call)"
            << " " << std::setw(10) << std::right << std::fixed
            << std::setprecision(2) << per(stdfn_r) << " ns/call\n";
  std::cout << "  " << std::setw(44) << std::left << "fx::perform  (per call)"
            << " " << std::setw(10) << std::right << std::fixed
            << std::setprecision(2) << per(fx_r) << " ns/call\n";

  std::cout << "\nNote: the Fx overhead vs direct is the handler stack walk + "
               "resume\n"
            << "      per perform, plus the one-time coroutine frame alloc "
               "amortised\n"
            << "      across all " << BATCH << " performs.\n";
  return 0;
}
