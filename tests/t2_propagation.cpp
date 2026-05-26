// t2_propagation.cpp — effects float up through call stacks automatically
//
// When a coroutine co_awaits an inner Fx, every effect performed by the
// inner computation becomes visible in the outer function's return type.
// The outer function does not handle those effects — it merely declares
// them and lets them reach the top-level .run() call.
//
// Call chain used here:
//   ask_number          : Ask::Fx<int>
//   logged_div          : Row<Log, Fail>::Fx<int>
//   compute_ratio       : All::Fx<string>        (union of the above)
//
// All three effects (Ask, Log, Fail) surface at compute_ratio's call site.

#include "common.hpp"

#include <cassert>

// ---- Three-level call chain ------------------------------------------------

// Level 1: leaf.  Performs a single Ask.
auto ask_number(std::string what) -> Ask::Fx<int> {
  auto s = perform(Ask{.prompt = std::move(what) + ": "});
  co_return std::stoi(s);
}

// Level 1: leaf.  May perform Fail.
auto safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0)
    co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}

// Level 2: calls safe_div (Fail propagates up) and wraps it in Log.
auto logged_div(int a, int b) -> Row<Log, Fail>::Fx<int> {
  perform(Log{.message =
                  "computing " + std::to_string(a) + "/" + std::to_string(b)});
  auto q = co_await safe_div(a, b);
  perform(Log{.message = "result: " + std::to_string(q)});
  co_return q;
}

// Level 3: calls ask_number (Ask propagates) and logged_div (Log+Fail
// propagate). Own effect list = Ask ∪ Log ∪ Fail = All.  The caller supplies
// all three handlers.
auto compute_ratio() -> All::Fx<std::string> {
  auto num = co_await ask_number("Numerator  ");
  auto den = co_await ask_number("Denominator");
  auto q = co_await logged_div(num, den);
  co_return std::to_string(num) + "/" + std::to_string(den) + " = " +
      std::to_string(q);
}

// ---- Local handler structs -------------------------------------------------

// Records Ask prompts via reference; replies with a fixed value.
struct RecordAsk : Handler<Ask> {
  std::vector<std::string> &prompts;
  std::string reply;
  void handle(Ask e, auto r) { prompts.push_back(e.prompt); r(reply); }
};

// Records log messages via reference.
struct RecordLog : Handler<Log> {
  std::vector<std::string> &msgs;
  void handle(Log e, auto r) { msgs.push_back(e.message); r({}); }
};

// Records the Fail reason and resumes with fallback.
struct RecordingFail : Handler<Fail> {
  std::string &reason;
  int fallback;
  void handle(Fail e, auto r) { reason = e.reason; r(fallback); }
};

// Counting handlers for effect-fire counting.
struct CountAsk : Handler<Ask> {
  int &count;
  std::string reply;
  void handle(Ask, auto r) { ++count; r(reply); }
};

struct CountLog : Handler<Log> {
  int &count;
  void handle(Log, auto r) { ++count; r({}); }
};

struct CountFail : Handler<Fail> {
  int &count;
  int fallback;
  void handle(Fail, auto r) { ++count; r(fallback); }
};

// ---- Tests -----------------------------------------------------------------

int main() {
  // 1. Happy path: effects from all three levels handled at the top.
  auto r1 = compute_ratio().run(ScriptedAskCycling{.answers = {"12", "4"}},
                                SilentLog{}, FallbackFail{.fallback = -1});
  assert(r1 == "12/4 = 3");
  std::cout << "1. happy path: " << r1 << "\n";

  // 2. Fail fires inside safe_div (level 1) and propagates up two levels
  //    before the top-level handler catches it.
  std::string caught_reason;
  auto r2 =
      compute_ratio().run(ScriptedAskCycling{.answers = {"6", "0"}},
                          SilentLog{},
                          RecordingFail{.reason = caught_reason, .fallback = -1});
  assert(caught_reason == "division by zero");
  std::cout << "2. fail propagated: " << caught_reason << "\n";

  // 3. Transcript capture — record every Ask prompt and Log message.
  //    The computation is unchanged; only the handlers differ.
  std::vector<std::string> prompts, log_entries;
  compute_ratio().run(RecordAsk{.prompts = prompts, .reply = "1"},
                      RecordLog{.msgs = log_entries},
                      FallbackFail{.fallback = -1});
  assert(prompts.size() == 2);
  assert(log_entries.size() == 2); // one in logged_div before + one after
  std::cout << "3. transcript: " << prompts.size() << " prompts, "
            << log_entries.size() << " log entries\n";

  // 4. Pure replay — deterministic test with no I/O.  Running the same
  //    computation twice with different scripted inputs gives different results.
  auto r4a = compute_ratio().run(ScriptedAskCycling{.answers = {"10", "2"}},
                                 SilentLog{}, FallbackFail{.fallback = -1});
  auto r4b = compute_ratio().run(ScriptedAskCycling{.answers = {"7", "7"}},
                                 SilentLog{}, FallbackFail{.fallback = -1});
  assert(r4a == "10/2 = 5");
  assert(r4b == "7/7 = 1");
  std::cout << "4. replay A: " << r4a << ", replay B: " << r4b << "\n";

  // 5. Counting handler — count how many times each effect fires.
  int ask_fires = 0, log_fires = 0, fail_fires = 0;
  compute_ratio().run(CountAsk{.count = ask_fires, .reply = "0"},
                      CountLog{.count = log_fires},
                      CountFail{.count = fail_fires, .fallback = -1});
  assert(ask_fires == 2);  // numerator + denominator
  assert(log_fires == 2);  // before + after logged_div
  assert(fail_fires == 1); // division by zero (denominator was "0")
  std::cout << "5. effect counts: Ask=" << ask_fires << " Log=" << log_fires
            << " Fail=" << fail_fires << "\n";

  std::cout << "All tests passed.\n";
}
