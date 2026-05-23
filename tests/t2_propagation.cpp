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
#include <memory>

// ---- Three-level call chain ------------------------------------------------

// Level 1: leaf.  Performs a single Ask.
let ask_number(std::string what) -> Ask::Fx<int> {
  let s = perform(Ask{.prompt = std::move(what) + ": "});
  co_return std::stoi(s);
}

// Level 1: leaf.  May perform Fail.
let safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0)
    co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}

// Level 2: calls safe_div (Fail propagates up) and wraps it in Log.
let logged_div(int a, int b) -> Row<Log, Fail>::Fx<int> {
  perform(Log{.message =
                  "computing " + std::to_string(a) + "/" + std::to_string(b)});
  let q = co_await safe_div(a, b);
  perform(Log{.message = "result: " + std::to_string(q)});
  co_return q;
}

// Level 3: calls ask_number (Ask propagates) and logged_div (Log+Fail
// propagate). Own effect list = Ask ∪ Log ∪ Fail = All.  The caller supplies
// all three handlers.
let compute_ratio() -> All::Fx<std::string> {
  let num = co_await ask_number("Numerator  ");
  let den = co_await ask_number("Denominator");
  let q = co_await logged_div(num, den);
  co_return std::to_string(num) + "/" + std::to_string(den) + " = " +
      std::to_string(q);
}

// ---- Tests -----------------------------------------------------------------

int main() {
  // Helper: scripted Ask responder cycling through the given answers.
  auto scripted_ask = [](std::vector<std::string> answers) {
    auto idx = std::make_shared<int>(0);
    return handler<Ask>([answers, idx](Ask, auto r) { r(answers[(*idx)++]); });
  };
  auto silent_log = handler<Log>([](Log, auto r) { r({}); });
  auto fail_neg1 = handler<Fail>([](Fail, auto r) { r(-1); });

  // 1. Happy path: effects from all three levels handled at the top.
  let r1 =
      compute_ratio().run(scripted_ask({"12", "4"}), silent_log, fail_neg1);
  assert(r1 == "12/4 = 3");
  std::cout << "1. happy path: " << r1 << "\n";

  // 2. Fail fires inside safe_div (level 1) and propagates up two levels
  //    before the top-level handler catches it.
  std::string caught_reason;
  let r2 = compute_ratio().run(scripted_ask({"6", "0"}), silent_log,
                               handler<Fail>([&](Fail e, auto r) {
                                 caught_reason = e.reason;
                                 r(-1);
                               }));
  assert(caught_reason == "division by zero");
  std::cout << "2. fail propagated: " << caught_reason << "\n";

  // 3. Transcript capture — record every Ask prompt and Log message.
  //    The computation is unchanged; only the handlers differ.
  std::vector<std::string> prompts, log_entries;
  compute_ratio().run(handler<Ask>([&](Ask e, auto r) {
                        prompts.push_back(e.prompt);
                        r("1"); // answer with "1" so stoi succeeds
                      }),
                      handler<Log>([&](Log e, auto r) {
                        log_entries.push_back(e.message);
                        r({});
                      }),
                      fail_neg1);
  assert(prompts.size() == 2);
  assert(log_entries.size() == 2); // one in logged_div before + one after
  std::cout << "3. transcript: " << prompts.size() << " prompts, "
            << log_entries.size() << " log entries\n";

  // 4. Pure replay — deterministic test with no I/O.  Running the same
  //    computation twice with different scripted inputs gives different
  //    results.
  let r4a =
      compute_ratio().run(scripted_ask({"10", "2"}), silent_log, fail_neg1);
  let r4b =
      compute_ratio().run(scripted_ask({"7", "7"}), silent_log, fail_neg1);
  assert(r4a == "10/2 = 5");
  assert(r4b == "7/7 = 1");
  std::cout << "4. replay A: " << r4a << ", replay B: " << r4b << "\n";

  // 5. Counting handler — count how many times each effect fires.
  int ask_fires = 0, log_fires = 0, fail_fires = 0;
  compute_ratio().run(handler<Ask>([&](Ask, auto r) {
                        ++ask_fires;
                        r("0");
                      }),
                      handler<Log>([&](Log, auto r) {
                        ++log_fires;
                        r({});
                      }),
                      handler<Fail>([&](Fail, auto r) {
                        ++fail_fires;
                        r(-1);
                      }));
  assert(ask_fires == 2);  // numerator + denominator
  assert(log_fires == 2);  // before + after logged_div
  assert(fail_fires == 1); // division by zero (denominator was "0")
  std::cout << "5. effect counts: Ask=" << ask_fires << " Log=" << log_fires
            << " Fail=" << fail_fires << "\n";

  std::cout << "All tests passed.\n";
}
