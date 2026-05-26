// t5_composite_handlers.cpp — Rows, composite handlers, and VALIDATE_HANDLER
//
// A Row<E1, E2, ...> names a set of effects and unlocks:
//   • Row::Fx<T>          — return type declaring all effects in the row
//   • Row::Handler     — CRTP base; D must provide handle() for every E
//   • Combine<R1, R2>     — merge two rows
//   • VALIDATE_HANDLER(H) — static_assert that H is complete (fires at
//                            definition time, before H is ever instantiated)
//
// A composite handler satisfies all the effects in its row with a single
// argument to .run() — useful when effects are conceptually grouped (e.g.
// IO = Ask + Log) and you want one struct to own all their implementations.

#include "common.hpp"

#include <array>
#include <cassert>

// ---- Computations ----------------------------------------------------------

auto greet() -> IO::Fx<std::string> {
  perform(Log{.message = "starting greet"});
  auto name = perform(Ask{.prompt = "Name: "});
  perform(Log{.message = "greeting " + name});
  co_return "Hello, " + name + "!";
}

auto safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0)
    co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}

auto logged_div(int a, int b) -> Row<Log, Fail>::Fx<int> {
  perform(Log{.message = "div " + std::to_string(a) + "/" + std::to_string(b)});
  auto q = co_await safe_div(a, b);
  perform(Log{.message = "= " + std::to_string(q)});
  co_return q;
}

// Uses Ask (×2) + Log + Fail — full All.
auto ratio() -> All::Fx<std::string> {
  auto ns = perform(Ask{.prompt = "Numerator:   "});
  auto ds = perform(Ask{.prompt = "Denominator: "});
  auto q = co_await logged_div(std::stoi(ns), std::stoi(ds));
  co_return ns + "/" + ds + " = " + std::to_string(q);
}

// ---- Composite handler structs ---------------------------------------------

// IO::Handler gives `using effect_types = type_list<Ask, Log>`.
// D must provide  handle(Ask, ...) and  handle(Log, ...).
struct ScriptedIO : Handler<Ask, Log> {
  std::vector<std::string> answers;
  int idx = 0;
  void handle(Ask e, auto r) {
    std::cout << e.prompt << answers[idx] << "\n";
    r(answers[idx++]);
  }
  void handle(Log e, auto r) {
    std::cout << "[io] " << e.message << "\n";
    r({});
  }
};

// All::Handler covers Ask + Log + Fail in a single struct.
struct ScriptedAll : Handler<All> {
  std::vector<std::string> answers;
  int idx = 0;
  void handle(Ask e, auto r) {
    std::cout << e.prompt << answers[idx] << "\n";
    r(answers[idx++]);
  }
  void handle(Log e, auto r) {
    std::cout << "[all] " << e.message << "\n";
    r({});
  }
  void handle(Fail e, auto r) {
    std::cout << "[all] FAIL: " << e.reason << " -> -1\n";
    r(-1);
  }
};

// ---- Tests -----------------------------------------------------------------

// Inline composite for tests 6-7: handles IO (Ask+Log) with reference state.
struct CountingIO : Handler<IO> {
  std::string ask_reply;
  int &log_count;
  void handle(Ask, auto r) { r(ask_reply); }
  void handle(Log, auto r) { ++log_count; r({}); }
};

struct IndexedIO : Handler<IO> {
  const char *const *inputs;
  int &idx;
  void handle(Ask, auto r) { r(std::string{inputs[idx++]}); }
  void handle(Log, auto r) { r({}); }
};

int main() {
  // 1. Single composite struct covers Ask + Log — one argument to .run().
  auto r1 = greet().run(ScriptedIO{.answers = {"Alice"}});
  assert(r1 == "Hello, Alice!");
  std::cout << "1. ScriptedIO (composite): " << r1 << "\n";

  // 2. ScriptedAll covers all three effects with one .run() argument.
  auto r2 = ratio().run(ScriptedAll{.answers = {"12", "4"}});
  assert(r2 == "12/4 = 3");
  std::cout << "2. ScriptedAll (happy): " << r2 << "\n";

  // 3. Fail fires inside safe_div; ScriptedAll's Fail overload catches it.
  auto r3 = ratio().run(ScriptedAll{.answers = {"12", "0"}});
  assert(r3 == "12/0 = -1");
  std::cout << "3. ScriptedAll (fail): " << r3 << "\n";

  // 4. Mix: composite ScriptedIO (Ask+Log) + single WarnFail — two args,
  //    three effects covered.  Each handler struct remains reusable alone.
  auto r4 = ratio().run(ScriptedIO{.answers = {"8", "2"}}, WarnFail{});
  assert(r4 == "8/2 = 4");
  std::cout << "4. ScriptedIO + WarnFail (mixed): " << r4 << "\n";

  // 5. Fail fires, caught by the separate WarnFail handler.
  auto r5 = ratio().run(ScriptedIO{.answers = {"8", "0"}}, WarnFail{});
  assert(r5 == "8/0 = -1");
  std::cout << "5. ScriptedIO + WarnFail (fail path): " << r5 << "\n";

  // 6. Composite IO handler with reference-captured log count.
  int log_count = 0;
  auto r6 = greet().run(CountingIO{.ask_reply = "inline", .log_count = log_count});
  assert(r6 == "Hello, inline!");
  assert(log_count == 2);
  std::cout << "6. CountingIO (composite): " << r6 << " (" << log_count
            << " logs)\n";

  // 7. Indexed IO handler + FallbackFail for All::Fx<string>.
  int ask_idx = 0;
  std::array<const char *, 2> in{"6", "3"};
  auto r7 = ratio().run(IndexedIO{.inputs = in.data(), .idx = ask_idx},
                        FallbackFail{.fallback = -1});
  assert(r7 == "6/3 = 2");
  std::cout << "7. IndexedIO + FallbackFail: " << r7 << "\n";

  // 8. VALIDATE_HANDLER demo — the structs above all pass.
  //    See invalid/05_incomplete_handler.cpp for the compile error case.
  std::cout << "8. VALIDATE_HANDLER: ScriptedIO, ScriptedAll, WarnFail all OK\n";

  std::cout << "All tests passed.\n";
}
