// t4_generic_effects.cpp — parameterised (template) effects: Emit<T>
//
// Emit<T> is a template effect; Emit<int> and Emit<std::string> are
// completely distinct effects with no type relationship — each needs its
// own handler.  This makes Emit a lightweight push-based streaming primitive.
//
// Covers:
//   • Emit<T>::Fx<void> for value-producing coroutines
//   • Collect into a vector via handle<Emit<T>>
//   • Emit<int> and Emit<string> as separate, independent effects
//   • Local absorption → pure Fx<T> (sum, collect)
//   • Propagation alongside other effects (Log)
//   • Transform and filter patterns using the handler's resume callback

#include "common.hpp"

#include <cassert>
#include <numeric>

// ---- Emit-based computations -----------------------------------------------

// Emits every integer in [lo, hi).
let range(int lo, int hi) -> Emit<int>::Fx<void> {
  for (int i = lo; i < hi; ++i)
    perform(Emit<int>{.value = i});
}

// Emits i² and a label string for each i in [lo, hi).
// Emit<int> and Emit<std::string> are distinct — both must be handled.
let squares(int lo, int hi) -> Row<Emit<int>, Emit<std::string>>::Fx<void> {
  for (int i = lo; i < hi; ++i) {
    perform(Emit<int>{.value = i * i});
    perform(Emit<std::string>{.value = std::to_string(i) + "²"});
  }
}

// Logs a header, emits the range, logs a footer.
// Emit<int> and Log propagate up together.
let range_logged(int lo, int hi) -> Row<Emit<int>, Log>::Fx<void> {
  perform(Log{.message = "emitting [" + std::to_string(lo) + ", " +
                         std::to_string(hi) + ")"});
  co_await range(lo, hi);
  perform(Log{.message = "done"});
}

// Absorbs Emit<int> locally and returns the sum.  Caller sees pure Fx<int>.
let sum_range(int lo, int hi) -> Fx<int> {
  int total = 0;
  co_await handle<Emit<int>>(
      range(lo, hi),
      handler<Emit<int>>([&total](Emit<int> e, auto r) {
        total += e.value;
        r({});
      }));
  co_return total;
}

// Absorbs Emit<int> locally into a vector.  Caller sees pure Fx<vector<int>>.
let collect_range(int lo, int hi) -> Fx<std::vector<int>> {
  std::vector<int> out;
  co_await handle<Emit<int>>(
      range(lo, hi),
      handler<Emit<int>>([&out](Emit<int> e, auto r) {
        out.push_back(e.value);
        r({});
      }));
  co_return out;
}

// ---- Tests -----------------------------------------------------------------

int main() {
  // 1. Collect Emit<int> into a vector at the call site.
  std::vector<int> nums;
  range(1, 6).run(handler<Emit<int>>([&](Emit<int> e, auto r) {
    nums.push_back(e.value);
    r({});
  }));
  assert((nums == std::vector{1, 2, 3, 4, 5}));
  std::cout << "1. range [1,6):";
  for (int v : nums) std::cout << " " << v;
  std::cout << "\n";

  // 2. Emit<int> and Emit<string> are distinct effects — two handlers required.
  std::vector<int>         sq_vals;
  std::vector<std::string> sq_labels;
  squares(1, 5).run(
      handler<Emit<int>>([&](Emit<int> e, auto r) {
        sq_vals.push_back(e.value);
        r({});
      }),
      handler<Emit<std::string>>([&](Emit<std::string> e, auto r) {
        sq_labels.push_back(e.value);
        r({});
      }));
  assert((sq_vals   == std::vector{1, 4, 9, 16}));
  assert(sq_labels.size() == 4);
  std::cout << "2. squares [1,5): vals =";
  for (int v : sq_vals) std::cout << " " << v;
  std::cout << "  labels =";
  for (auto &s : sq_labels) std::cout << " " << s;
  std::cout << "\n";

  // 3. Local absorption → pure Fx<int>; .run() needs no handlers.
  assert(sum_range(1, 6).run()  == 15);
  assert(sum_range(1, 11).run() == 55);
  std::cout << "3. sum_range: [1,6)=" << sum_range(1, 6).run()
            << "  [1,11)=" << sum_range(1, 11).run() << "  (pure, no handlers)\n";

  // 4. collect_range: Emit<int> absorbed locally, vector returned.
  let v4 = collect_range(3, 8).run();
  assert((v4 == std::vector{3, 4, 5, 6, 7}));
  std::cout << "4. collect_range [3,8): size=" << v4.size() << "\n";

  // 5. Propagation alongside Log: both Emit<int> and Log reach the caller.
  std::vector<int> propagated;
  int log_count = 0;
  range_logged(1, 4).run(
      handler<Emit<int>>([&](Emit<int> e, auto r) {
        propagated.push_back(e.value);
        r({});
      }),
      handler<Log>([&](Log, auto r) { ++log_count; r({}); }));
  assert((propagated == std::vector{1, 2, 3}));
  assert(log_count == 2);  // header + footer
  std::cout << "5. range_logged [1,4): " << propagated.size()
            << " values, " << log_count << " log messages\n";

  // 6. Transform via the handler: double each emitted value.
  std::vector<int> doubled;
  range(1, 5).run(handler<Emit<int>>([&](Emit<int> e, auto r) {
    doubled.push_back(e.value * 2);
    r({});
  }));
  assert((doubled == std::vector{2, 4, 6, 8}));
  std::cout << "6. transform (×2):";
  for (int v : doubled) std::cout << " " << v;
  std::cout << "\n";

  // 7. Filter via the handler: only keep even values.
  std::vector<int> evens;
  range(1, 9).run(handler<Emit<int>>([&](Emit<int> e, auto r) {
    if (e.value % 2 == 0) evens.push_back(e.value);
    r({});
  }));
  assert((evens == std::vector{2, 4, 6, 8}));
  std::cout << "7. filter (even):";
  for (int v : evens) std::cout << " " << v;
  std::cout << "\n";

  // 8. Absorb Emit<int> mid-chain from range_logged; Log still propagates.
  //    handle<Emit<int>>(range_logged(...), ...) → Log::Fx<void>
  std::vector<int> mid;
  int mid_logs = 0;
  handle<Emit<int>>(
      range_logged(2, 5),
      handler<Emit<int>>([&](Emit<int> e, auto r) { mid.push_back(e.value); r({}); }))
      .run(handler<Log>([&](Log, auto r) { ++mid_logs; r({}); }));
  assert((mid == std::vector{2, 3, 4}));
  assert(mid_logs == 2);
  std::cout << "8. mid-chain absorb: " << mid.size() << " values collected, "
            << mid_logs << " log messages still reached caller\n";

  std::cout << "All tests passed.\n";
}
