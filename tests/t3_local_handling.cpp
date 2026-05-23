// t3_local_handling.cpp — absorbing effects locally with handle<E>
//
// handle<E>(comp, handler) installs a handler for E and returns a new Fx
// with E stripped from the effect list.  The caller never sees E.
// This is how you give a function a cleaner public signature than its
// internal implementation would otherwise require.
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

let ask_once(std::string prompt) -> Ask::Fx<std::string> {
  co_return perform(Ask{.prompt = std::move(prompt)});
}

let ask_and_log(std::string label, std::string prompt) -> IO::Fx<std::string> {
  perform(Log{.message = "asking: " + label});
  let ans = co_await ask_once(std::move(prompt));
  perform(Log{.message = "got: " + ans});
  co_return ans;
}

let safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0) co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}

let safe_div_logged(int a, int b) -> Row<Log, Fail>::Fx<int> {
  perform(Log{.message = std::to_string(a) + " / " + std::to_string(b)});
  let q = co_await safe_div(a, b);
  perform(Log{.message = "= " + std::to_string(q)});
  co_return q;
}

// ---- Pattern 1a: absorb Log, propagate Ask ---------------------------------
//
//   ask_and_log : IO::Fx<string>
//   return type : Ask::Fx<string>   ← Log gone, discarded inside

let ask_silently(std::string label, std::string prompt) -> Ask::Fx<std::string> {
  return handle<Log>(ask_and_log(std::move(label), std::move(prompt)),
                     handler<Log>([](Log, auto r) { r({}); }));
}

// ---- Pattern 1b: recover from Fail, propagate Log --------------------------
//
//   safe_div_logged : Row<Log, Fail>::Fx<int>
//   return type     : Log::Fx<int>   ← Fail gone, replaced with 0

let safe_div_or_zero(int a, int b) -> Log::Fx<int> {
  return handle<Fail>(safe_div_logged(a, b),
                      handler<Fail>([](Fail, auto r) { r(0); }));
}

// ---- Pattern 2: absorb all effects → pure Fx<int> --------------------------
//
//   safe_div_logged : Row<Log, Fail>::Fx<int>
//   handle<Fail>    : Log::Fx<int>
//   handle<Log>     : Fx<int>            ← zero effects; .run() needs nothing

let silent_div(int a, int b) -> Fx<int> {
  return handle<Log>(handle<Fail>(safe_div_logged(a, b),
                                  handler<Fail>([](Fail, auto r) { r(0); })),
                     handler<Log>([](Log, auto r) { r({}); }));
}

// ---- Pattern 3: coroutine absorbs Fail, adds Ask ---------------------------
//
//   safe_div_logged : Row<Log, Fail>::Fx<int>
//   handle<Fail>    : Log::Fx<int>          ← Fail absorbed inside
//   co_await that   : valid (Log ⊆ {Ask, Log})
//   ask_once (×2)   : adds Ask to the effect set
//
//   Net return type : IO::Fx<int>
//     Ask  — new (this function reads the operands)
//     Log  — propagated from safe_div_logged
//     Fail — gone (absorbed with 0 fallback; caller never sees it)

let prompted_div() -> IO::Fx<int> {
  let num = std::stoi(co_await ask_once("Numerator:   "));
  let den = std::stoi(co_await ask_once("Denominator: "));
  co_return co_await handle<Fail>(safe_div_logged(num, den),
                                  handler<Fail>([](Fail, auto r) { r(0); }));
}

// ---- Tests -----------------------------------------------------------------

int main() {
  let log_sink  = handler<Log>([](Log, auto r) { r({}); });
  let ask_const = [](std::string val) {
    return handler<Ask>([val](Ask, auto r) { r(val); });
  };

  // 1a. ask_silently: Log absorbed, caller only provides Ask.
  let r1a = ask_silently("city", "City: ").run(ask_const("London"));
  assert(r1a == "London");
  std::cout << "1a. ask_silently: \"" << r1a << "\"  (Log never reached caller)\n";

  // 1b. safe_div_or_zero: Fail absorbed, caller only provides Log.
  std::vector<std::string> logged;
  let log_cap = handler<Log>([&](Log e, auto r) { logged.push_back(e.message); r({}); });
  let r1b_ok  = safe_div_or_zero(10, 2).run(log_cap);
  let r1b_bad = safe_div_or_zero(10, 0).run(log_cap);
  assert(r1b_ok  == 5);
  assert(r1b_bad == 0);
  std::cout << "1b. safe_div_or_zero: 10/2=" << r1b_ok
            << ", 10/0=" << r1b_bad << "  (Fail absorbed, Log logged "
            << logged.size() << " msgs)\n";

  // 2. silent_div: all effects absorbed; pure Fx<int>.
  assert(silent_div(8, 4).run() == 2);
  assert(silent_div(8, 0).run() == 0);
  std::cout << "2. silent_div: 8/4=" << silent_div(8, 4).run()
            << ", 8/0=" << silent_div(8, 0).run() << "  (no handlers)\n";

  // 3. prompted_div: Fail absorbed inside; Ask + Log reach the caller.
  std::array<const char *, 2> inputs{"8", "4"};
  int idx = 0;
  let r3a = prompted_div().run(
      handler<Ask>([&](Ask, auto r) { r(std::string{inputs[idx++]}); }),
      log_sink);
  assert(r3a == 2);
  std::cout << "3. prompted_div 8/4=" << r3a << "  (Fail gone, Ask+Log remain)\n";

  // 3b. Division by zero: Fail absorbed inside prompted_div, caller sees 0.
  inputs = {"8", "0"};
  idx = 0;
  let r3b = prompted_div().run(
      handler<Ask>([&](Ask, auto r) { r(std::string{inputs[idx++]}); }),
      log_sink);
  assert(r3b == 0);
  std::cout << "3b. prompted_div 8/0=" << r3b << "  (fallback, Fail not visible)\n";

  // 4. Chaining: two handle<E> calls strip effects one at a time.
  //   ask_and_log : IO::Fx<string>  →  handle<Log> : Ask::Fx<string>
  //                                 →  handle<Ask> : Fx<string>  (pure)
  let fully_stripped =
      handle<Ask>(handle<Log>(ask_and_log("x", "x: "),
                              handler<Log>([](Log, auto r) { r({}); })),
                  handler<Ask>([](Ask, auto r) { r(std::string{"stripped"}); }));
  let r4 = fully_stripped.run();  // no handlers needed
  assert(r4 == "stripped");
  std::cout << "4. chained handle<E>: \"" << r4 << "\"  (pure Fx<string>)\n";

  std::cout << "All tests passed.\n";
}
