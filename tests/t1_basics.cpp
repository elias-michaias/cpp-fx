// t1_basics.cpp — core vocabulary: Effect<Self>, perform, handlers, run
//
// Covers:
//   • E::Fx<T> return type from the Effect<Self> CRTP base
//   • perform(e) yields control to whatever handler is installed
//   • E::Handler CRTP for reusable named handler structs
//   • Fx<T> (pure, zero effects) — .run() needs no arguments
//   • The same computation runs unchanged under different handlers

#include "common.hpp"

#include <cassert>

// ---- Computations ----------------------------------------------------------

// No effects — always returns the same value.  .run() needs no handlers.
auto meaning_of_life() -> Fx<int> { co_return 42; }

// Performs a single Ask; return type declares the effect.
auto greet() -> Ask::Fx<std::string> {
  auto name = perform(Ask{.prompt = "Your name: "});
  co_return "Hello, " + name + "!";
}

// Collects n answers from Ask, logging each step.
auto collect(int n) -> IO::Fx<std::vector<std::string>> {
  std::vector<std::string> out;
  for (int i = 0; i < n; ++i) {
    perform(Log{.message = "asking #" + std::to_string(i + 1)});
    out.push_back(
        perform(Ask{.prompt = "Input " + std::to_string(i + 1) + ": "}));
  }
  perform(Log{.message = "done, got " + std::to_string(n) + " answers"});
  co_return out;
}

// Returns a / b, or performs Fail if b is zero.
auto safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0)
    co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}

// ---- Named handler structs --------------------------------------------------

// Always answers with the same scripted string.
struct ScriptedAsk : Handler<Ask> {
  std::string answer;
  void handle(Ask, auto r) { r(answer); }
};

// Counts how many times Ask fires; side-channel via reference.
struct CountingAsk : Handler<Ask> {
  int &count;
  std::string reply;
  void handle(Ask, auto r) { ++count; r(reply); }
};

// Records log messages via reference.
struct RecordLog : Handler<Log> {
  std::vector<std::string> &msgs;
  void handle(Log e, auto r) { msgs.push_back(e.message); r({}); }
};

// Fail handler that prints a warning then resumes with a fallback.
struct VerboseFail : Handler<Fail> {
  int fallback;
  void handle(Fail e, auto r) {
    std::cout << "   [warn] " << e.reason << "\n";
    r(fallback);
  }
};

// ---- Tests -----------------------------------------------------------------

int main() {
  // 1. Pure computation — no handlers needed.
  assert(meaning_of_life().run() == 42);
  std::cout << "1. pure Fx<int>: " << meaning_of_life().run() << "\n";

  // 2. Named handler struct.
  auto r2 = greet().run(ScriptedAsk{.answer = "World"});
  assert(r2 == "Hello, World!");
  std::cout << "2. named handler: " << r2 << "\n";

  // 3. Same computation under a different named handler.
  auto r3 = greet().run(ScriptedAsk{.answer = "Alice"});
  assert(r3 == "Hello, Alice!");
  std::cout << "3. named handler (Alice): " << r3 << "\n";

  // 4. The same computation under a different handler — Ask is a plug point,
  //    not hard-coded I/O.
  auto r4a = greet().run(ScriptedAsk{.answer = "Bob"});
  auto r4b = greet().run(ScriptedAsk{.answer = "Carol"});
  assert(r4a == "Hello, Bob!");
  assert(r4b == "Hello, Carol!");
  std::cout << "4. swappable handlers: \"" << r4a << "\" / \"" << r4b << "\"\n";

  // 5. Capture side effects: record prompts and logs without changing the
  //    computation.
  int ask_count = 0;
  std::vector<std::string> log_msgs;
  auto r5 = collect(3).run(CountingAsk{.count = ask_count, .reply = "x"},
                           RecordLog{.msgs = log_msgs});
  assert(r5.size() == 3);
  assert(ask_count == 3);
  assert(log_msgs.size() == 4); // 3 "asking" + 1 "done"
  std::cout << "5. collect(3): " << ask_count << " asks, " << log_msgs.size()
            << " log entries\n";

  // 6. Fail — handler resumes with a fallback value.
  auto ok = safe_div(10, 2).run(FallbackFail{.fallback = -1});
  auto bad = safe_div(10, 0).run(FallbackFail{.fallback = -1});
  assert(ok == 5);
  assert(bad == -1);
  std::cout << "6. safe_div: 10/2=" << ok << ", 10/0=" << bad << "\n";

  // 7. Different Fail handlers — same computation, different recovery policy.
  auto zero_fallback = safe_div(10, 0).run(FallbackFail{.fallback = 0});
  auto print_fallback = safe_div(10, 0).run(VerboseFail{.fallback = 99});
  assert(zero_fallback == 0);
  assert(print_fallback == 99);
  std::cout << "7. swapped Fail handler: 0-fallback=" << zero_fallback
            << ", 99-fallback=" << print_fallback << "\n";

  std::cout << "All tests passed.\n";
}
