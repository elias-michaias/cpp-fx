// t1_basics.cpp — core vocabulary: Effect<Self>, perform, handlers, run
//
// Covers:
//   • E::Fx<T> return type from the Effect<Self> CRTP base
//   • perform(e) yields control to whatever handler is installed
//   • handler<E>(lambda) for ad-hoc inline handlers
//   • E::Handler<Derived> CRTP for reusable named handler structs
//   • Fx<T> (pure, zero effects) — .run() needs no arguments
//   • The same computation runs unchanged under different handlers

#include "common.hpp"

#include <cassert>

// ---- Computations ----------------------------------------------------------

// No effects — always returns the same value.  .run() needs no handlers.
auto meaning_of_life() -> Fx<int> {
  co_return 42;
}

// Performs a single Ask; return type declares the effect.
auto greet() -> Ask::Fx<std::string> {
  let name = perform(Ask{.prompt = "Your name: "});
  co_return "Hello, " + name + "!";
}

// Collects n answers from Ask, logging each step.
auto collect(int n) -> IO::Fx<std::vector<std::string>> {
  std::vector<std::string> out;
  for (int i = 0; i < n; ++i) {
    perform(Log{.message = "asking #" + std::to_string(i + 1)});
    out.push_back(perform(Ask{.prompt = "Input " + std::to_string(i + 1) + ": "}));
  }
  perform(Log{.message = "done, got " + std::to_string(n) + " answers"});
  co_return out;
}

// Returns a / b, or performs Fail if b is zero.
auto safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0) co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}

// ---- Named handler struct --------------------------------------------------

// Always answers with the same scripted string.
struct ScriptedAsk : Ask::Handler<ScriptedAsk> {
  std::string answer;
  void operator()(Ask, auto r) { r(answer); }
};
VALIDATE_HANDLER(ScriptedAsk);

// ---- Tests -----------------------------------------------------------------

int main() {
  // 1. Pure computation — no handlers needed.
  assert(meaning_of_life().run() == 42);
  std::cout << "1. pure Fx<int>: " << meaning_of_life().run() << "\n";

  // 2. Inline lambda handler.
  let r2 = greet().run(handler<Ask>([](Ask, auto r) { r("World"); }));
  assert(r2 == "Hello, World!");
  std::cout << "2. lambda handler: " << r2 << "\n";

  // 3. Named handler struct.
  let r3 = greet().run(ScriptedAsk{.answer = "Alice"});
  assert(r3 == "Hello, Alice!");
  std::cout << "3. named handler: " << r3 << "\n";

  // 4. The same computation under a different handler — Ask is a plug point,
  //    not hard-coded I/O.
  let r4a = greet().run(ScriptedAsk{.answer = "Bob"});
  let r4b = greet().run(ScriptedAsk{.answer = "Carol"});
  assert(r4a == "Hello, Bob!");
  assert(r4b == "Hello, Carol!");
  std::cout << "4. swappable handlers: \"" << r4a << "\" / \"" << r4b << "\"\n";

  // 5. Capture side effects: record prompts and logs without changing the
  //    computation.
  int ask_count = 0;
  std::vector<std::string> log_msgs;
  let r5 = collect(3).run(
      handler<Ask>([&](Ask, auto r) { ++ask_count; r("x"); }),
      handler<Log>([&](Log e, auto r) { log_msgs.push_back(e.message); r({}); }));
  assert(r5.size() == 3);
  assert(ask_count == 3);
  assert(log_msgs.size() == 4);  // 3 "asking" + 1 "done"
  std::cout << "5. collect(3): " << ask_count << " asks, "
            << log_msgs.size() << " log entries\n";

  // 6. Fail — handler resumes with a fallback value.
  let ok  = safe_div(10, 2).run(handler<Fail>([](Fail, auto r) { r(-1); }));
  let bad = safe_div(10, 0).run(handler<Fail>([](Fail, auto r) { r(-1); }));
  assert(ok  == 5);
  assert(bad == -1);
  std::cout << "6. safe_div: 10/2=" << ok << ", 10/0=" << bad << "\n";

  // 7. Different Fail handlers — same computation, different recovery policy.
  let zero_fallback  = safe_div(10, 0).run(handler<Fail>([](Fail, auto r) { r(0); }));
  let print_fallback = safe_div(10, 0).run(handler<Fail>([](Fail e, auto r) {
    std::cout << "   [warn] " << e.reason << "\n";
    r(99);
  }));
  assert(zero_fallback  == 0);
  assert(print_fallback == 99);
  std::cout << "7. swapped Fail handler: 0-fallback=" << zero_fallback
            << ", 99-fallback=" << print_fallback << "\n";

  std::cout << "All tests passed.\n";
}
