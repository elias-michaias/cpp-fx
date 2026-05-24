// b3_error_handling.cpp — error propagation strategies
//
// Compares three strategies for propagating errors through a computation:
//
//   1. C++ exceptions     — zero-cost on happy path; expensive at throw site
//   2. std::optional<T>   — explicit propagation; branch per call
//   3. Fail effect        — algebraic; automatic propagation; handler at top
//
// Scenario: divide N numbers, ~FAIL_PCT% have denominator 0.
// Each strategy substitutes -1 for the failure value and sums all results.
//
// Three sub-benchmarks per strategy:
//   a. 0% failure   — all happy path
//   b. 10% failure  — realistic mixed workload
//   c. 100% failure — stress the error path

#include "../common.hpp"
#include "bench.hpp"

#include <optional>
#include <stdexcept>
#include <vector>

// ---- shared data generation ------------------------------------------------

struct Pair { int a, b; };

static std::vector<Pair> make_pairs(int n, int fail_every) {
  std::vector<Pair> v;
  v.reserve(n);
  for (int i = 0; i < n; ++i) {
    int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
    v.push_back({i * 2 + 2, denom});
  }
  return v;
}

// ---- exception-based -------------------------------------------------------

[[gnu::noinline]] static int exc_div(int a, int b) {
  if (b == 0) throw std::runtime_error("div/0");
  return a / b;
}

static long long exc_sum(const std::vector<Pair> &pairs) {
  long long total = 0;
  for (auto [a, b] : pairs) {
    try { total += exc_div(a, b); }
    catch (...) { total -= 1; }
  }
  return total;
}

// ---- std::optional ---------------------------------------------------------

[[gnu::noinline]] static std::optional<int> opt_div(int a, int b) {
  if (b == 0) return std::nullopt;
  return a / b;
}

static long long opt_sum(const std::vector<Pair> &pairs) {
  long long total = 0;
  for (auto [a, b] : pairs)
    total += opt_div(a, b).value_or(-1);
  return total;
}

// ---- Fail effect -----------------------------------------------------------

static auto eff_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0) co_return perform(Fail{.reason = "div/0"});
  co_return a / b;
}

static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
  long long total = 0;
  for (auto [a, b] : pairs)
    total += co_await eff_div(a, b);
  co_return total;
}

// ---- helper ----------------------------------------------------------------

static void run_trio(const char *label, const std::vector<Pair> &pairs,
                     std::size_t reps) {
  std::cout << "  " << label << "\n";
  long long sink = 0;

  print_result(bench("  exceptions", reps, [&] {
    sink += exc_sum(pairs);
  }));
  do_not_optimize(sink);

  print_result(bench("  std::optional", reps, [&] {
    sink += opt_sum(pairs);
  }));
  do_not_optimize(sink);

  auto fail_h = handler<Fail>([](Fail, auto r) { r(-1); });
  print_result(bench("  Fail effect", reps, [&] {
    sink += eff_sum(pairs).run(fail_h);
  }));
  do_not_optimize(sink);
  std::cout << "\n";
}

// ---- main ------------------------------------------------------------------

int main() {
  constexpr int N = 5'000;
  constexpr std::size_t REPS = 500;

  section("b3: error handling strategies  (N=" + std::to_string(N) +
          " divisions, reps=" + std::to_string(REPS) + ")");
  std::cout
      << "  Each iteration sums N division results; errors replaced with -1.\n"
      << "  eff_sum co_awaits N eff_div calls inside a single coroutine.\n\n";

  auto p0   = make_pairs(N, 0);   // 0% failure  — denom always non-zero
  auto p10  = make_pairs(N, 10);  // 10% failure — every 10th is zero
  auto p100 = make_pairs(N, 1);   // 100% failure — all denominators zero

  run_trio("0% failure rate (happy path only):", p0,   REPS);
  run_trio("10% failure rate (mixed):",          p10,  REPS);
  run_trio("100% failure rate (all errors):",    p100, REPS);

  std::cout
      << "Notes:\n"
      << "  exceptions: fast on happy path; each throw is expensive.\n"
      << "  std::optional: uniform cost regardless of failure rate.\n"
      << "  Fail effect: also uniform; overhead is handler stack walk + resume.\n"
      << "               propagation is automatic — no manual .value_or() needed.\n";
  return 0;
}
