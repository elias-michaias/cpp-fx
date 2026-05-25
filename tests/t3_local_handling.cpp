// t3_local_handling.cpp — absorbing effects locally with .bind()
//
// .bind(h...) pre-installs handlers and returns a BoundFx with those effects
// stripped from the remaining effect list.  The caller never sees those
// effects.  This is how you give a function a cleaner public signature than
// its internal implementation would otherwise require.
//
// Three patterns:
//
//   1a. Regular function absorbs one effect, propagates the rest.
//   1b. Regular function recovers from Fail, propagates Log.
//    2. Regular function absorbs all effects → pure Fx<T>.
//    3. Coroutine absorbs an inner effect and introduces a new one.

#include "common.hpp"

#include <cassert>

// ---- Leaf computations -----------------------------------------------------

auto ask_once(std::string prompt) -> Ask::Fx<std::string> {
  co_return perform(Ask{.prompt = std::move(prompt)});
}

auto ask_and_log(std::string label, std::string prompt) -> IO::Fx<std::string> {
  perform(Log{.message = "asking: " + label});
  auto ans = co_await ask_once(std::move(prompt));
  perform(Log{.message = "got: " + ans});
  co_return ans;
}

auto safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0)
    co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}

auto safe_div_logged(int a, int b) -> Row<Log, Fail>::Fx<int> {
  perform(Log{.message = std::to_string(a) + " / " + std::to_string(b)});
  auto q = co_await safe_div(a, b);
  perform(Log{.message = "= " + std::to_string(q)});
  co_return q;
}

// ---- Pattern 1a: absorb Log, propagate Ask ---------------------------------
//
//   ask_and_log : IO::Fx<string>
//   return type : BoundFx with remaining effect Ask only
//   caller:       .run(ScriptedAsk{...})  — only Ask needed

auto ask_silently(std::string label, std::string prompt) {
  return ask_and_log(std::move(label), std::move(prompt)).bind(SilentLog{});
}

// ---- Pattern 1b: recover from Fail, propagate Log --------------------------
//
//   safe_div_logged : Row<Log, Fail>::Fx<int>
//   return type     : BoundFx with remaining effect Log only
//   caller:           .run(log_handler)

auto safe_div_or_zero(int a, int b) {
  return safe_div_logged(a, b).bind(FallbackFail{.fallback = 0});
}

// ---- Pattern 2: absorb all effects → pure BoundFx --------------------------
//
//   safe_div_logged : Row<Log, Fail>::Fx<int>
//   .bind(Fail, Log) : no remaining effects; .run() needs nothing

auto silent_div(int a, int b) {
  return safe_div_logged(a, b).bind(FallbackFail{.fallback = 0}, SilentLog{});
}

// ---- Pattern 3: coroutine absorbs Fail, adds Ask ---------------------------
//
//   safe_div_logged : Row<Log, Fail>::Fx<int>
//   .bind(Fail)     : BoundFx with remaining effect Log
//   co_await that   : valid (Log ⊆ {Ask, Log})
//   ask_once (×2)   : adds Ask to the effect set
//
//   Net return type : IO::Fx<int>
//     Ask  — new (this function reads the operands)
//     Log  — propagated from safe_div_logged
//     Fail — gone (absorbed with 0 fallback; caller never sees it)

auto prompted_div() -> IO::Fx<int> {
  auto num = std::stoi(co_await ask_once("Numerator:   "));
  auto den = std::stoi(co_await ask_once("Denominator: "));
  co_return co_await safe_div_logged(num, den).bind(
      FallbackFail{.fallback = 0});
}

// ---- Tests -----------------------------------------------------------------

struct ScriptedAskFixed : Ask::Handler<ScriptedAskFixed> {
  std::string answer;
  void handle(Ask, auto r) { r(answer); }
};
VALIDATE_HANDLER(ScriptedAskFixed);

struct RecordLog : Log::Handler<RecordLog> {
  std::vector<std::string> &msgs;
  void handle(Log e, auto r) {
    msgs.push_back(e.message);
    r({});
  }
};
VALIDATE_HANDLER(RecordLog);

struct IndexedAsk : Ask::Handler<IndexedAsk> {
  const char *const *inputs;
  int &idx;
  void handle(Ask, auto r) { r(std::string{inputs[idx++]}); }
};
VALIDATE_HANDLER(IndexedAsk);

int main() {
  // 1a. ask_silently: Log absorbed, caller only provides Ask.
  auto r1a =
      ask_silently("city", "City: ").run(ScriptedAskFixed{.answer = "London"});
  assert(r1a == "London");
  std::cout << "1a. ask_silently: \"" << r1a
            << "\"  (Log never reached caller)\n";

  // 1b. safe_div_or_zero: Fail absorbed, caller only provides Log.
  std::vector<std::string> logged;
  auto r1b_ok = safe_div_or_zero(10, 2).run(RecordLog{.msgs = logged});
  auto r1b_bad = safe_div_or_zero(10, 0).run(RecordLog{.msgs = logged});
  assert(r1b_ok == 5);
  assert(r1b_bad == 0);
  std::cout << "1b. safe_div_or_zero: 10/2=" << r1b_ok << ", 10/0=" << r1b_bad
            << "  (Fail absorbed, Log logged " << logged.size() << " msgs)\n";

  // 2. silent_div: all effects absorbed; pure BoundFx.
  assert(silent_div(8, 4).run() == 2);
  assert(silent_div(8, 0).run() == 0);
  std::cout << "2. silent_div: 8/4=" << silent_div(8, 4).run()
            << ", 8/0=" << silent_div(8, 0).run() << "  (no handlers)\n";

  // 3. prompted_div: Fail absorbed inside; Ask + Log reach the caller.
  std::array<const char *, 2> inputs{"8", "4"};
  int idx = 0;
  auto r3a = prompted_div().run(IndexedAsk{.inputs = inputs.data(), .idx = idx},
                                SilentLog{});
  assert(r3a == 2);
  std::cout << "3. prompted_div 8/4=" << r3a
            << "  (Fail gone, Ask+Log remain)\n";

  // 3b. Division by zero: Fail absorbed inside prompted_div, caller sees 0.
  inputs = {"8", "0"};
  idx = 0;
  auto r3b = prompted_div().run(IndexedAsk{.inputs = inputs.data(), .idx = idx},
                                SilentLog{});
  assert(r3b == 0);
  std::cout << "3b. prompted_div 8/0=" << r3b
            << "  (fallback, Fail not visible)\n";

  // 4. Chaining: two .bind() calls strip effects one at a time.
  //   ask_and_log : IO::Fx<string>
  //   .bind(Log)  : BoundFx — remaining: Ask
  //   .bind(Ask)  : BoundFx — remaining: (none)  →  .run() needs nothing
  auto r4 = ask_and_log("x", "x: ")
                .bind(SilentLog{})
                .bind(ScriptedAskFixed{.answer = "stripped"})
                .run();
  assert(r4 == "stripped");
  std::cout << "4. chained bind: \"" << r4 << "\"  (pure BoundFx)\n";

  std::cout << "All tests passed.\n";
}
