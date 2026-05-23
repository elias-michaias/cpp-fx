#include "effects.hpp"
#include <iostream>
#include <string>
#include <vector>

#define let auto

using namespace fx;

// --- 1. Effect declarations -------------------------------------------------

// Ask for user input; handler resumes with a std::string.
struct Ask {
  using result_type = std::string;
  std::string prompt;
};

// Fire-and-forget log line; handler resumes with monostate.
struct Log {
  using result_type = std::monostate;
  std::string message;
};

// Signal an error; handler may resume with a fallback int.
struct Fail {
  using result_type = int;
  std::string reason;
};

using IO = Row<Ask, Log>;
using All = Combine<IO, Row<Fail>>;

// --- 2. Computations --------------------------------------------------------
//
// Return types are now Fx<ReturnType, Effects...>.
// The declared effects are visible at every call site.

let greet() -> IO::Fx<std::string> {
  perform(Log{"Starting greet"});
  let name = perform(Ask{"Your name: "});
  perform(Log{"Got: " + name});
  co_return "Hello, " + name + "!";
}

let safe_div(int a, int b) -> Fx<int, Fail> {
  if (b == 0) {
    co_return perform(Fail{"division by zero"});
  } else {
    co_return a / b;
  }
}

let collect(int n) -> Fx<std::vector<std::string>, Ask> {
  std::vector<std::string> out;
  for (int i = 0; i < n; ++i)
    out.push_back(perform(Ask{"Name " + std::to_string(i + 1) + ": "}));
  co_return out;
}

// --- 3. Reusable handler structs --------------------------------------------

struct StdoutLog {
  using effect_type = Log;
  void operator()(Log e, auto resume) {
    std::cout << "[log] " << e.message << "\n";
    resume({});
  }
};

struct StdinAsk {
  using effect_type = Ask;
  void operator()(Ask e, auto resume) {
    std::cout << e.prompt;
    std::string line;
    std::getline(std::cin, line);
    resume(line);
  }
};

struct WarnFail {
  using effect_type = Fail;
  void operator()(Fail e, auto resume) {
    std::cout << "[warn] " << e.reason << " -> -1\n";
    resume(-1);
  }
};

// --- 5. Composition examples ------------------------------------------------
//
// Effects propagate upward: a function that co_awaits an inner Fx<T, Es...>
// must declare all of Es... in its own return type.
//
// Hierarchy used below:
//   ask_once          : Fx<string, Ask>
//   ask_and_log       : Fx<string, Ask, Log>   -- calls ask_once, adds Log
//   safe_div_logged   : Fx<int, Log, Fail>      -- calls safe_div, adds Log
//   compute_ratio     : Fx<string, Ask, Log, Fail> -- calls both of the above

// Leaf: just wraps a single Ask.
let ask_once(std::string prompt) -> Fx<std::string, Ask> {
  co_return perform(Ask{std::move(prompt)});
}

// Calls ask_once (Ask propagated) and adds its own Log.
let ask_and_log(std::string label, std::string prompt)
    -> Fx<std::string, Ask, Log> {
  perform(Log{"asking for " + label});
  let answer = co_await ask_once(std::move(prompt));
  perform(Log{"got " + label + ": " + answer});
  co_return answer;
}

// Calls safe_div (Fail propagated) and wraps it in Log.
let safe_div_logged(int a, int b) -> Fx<int, Log, Fail> {
  perform(Log{"computing " + std::to_string(a) + "/" + std::to_string(b)});
  let result = co_await safe_div(a, b);
  perform(Log{"result: " + std::to_string(result)});
  co_return result;
}

// Three-level chain: calls ask_and_log (Ask+Log) and safe_div_logged
// (Log+Fail). Own effect list is the union: Ask + Log + Fail.
let compute_ratio() -> Fx<std::string, Ask, Log, Fail> {
  let num = co_await ask_and_log("numerator", "Numerator:   ");
  let den = co_await ask_and_log("denominator", "Denominator: ");
  let ratio = co_await safe_div_logged(std::stoi(num), std::stoi(den));
  co_return num + "/" + den + " = " + std::to_string(ratio);
}

// --- Local effect handling --------------------------------------------------
//
// Effects can be absorbed inside a function with handle<E>, preventing them
// from appearing in the caller's effect list at all.  Three patterns:
//
//   Pattern 1 — absorb one, propagate the rest  (regular function)
//   Pattern 2 — absorb everything               (regular function → pure Fx<T>)
//   Pattern 3 — coroutine: absorb inner + add new effects of its own

// Pattern 1a: silence logs — handle<Log> strips Log before the caller sees it.
// ask_and_log : Fx<string, Ask, Log>
// return type : Fx<string, Ask>        ← Log gone
let ask_silently(std::string label, std::string prompt)
    -> Fx<std::string, Ask> {
  return handle<Log>(ask_and_log(std::move(label), std::move(prompt)),
                     handler<Log>([](Log, auto r) { r({}); }));
}

// Pattern 1b: recover from failure — handle<Fail> strips Fail, returns 0.
// safe_div_logged : Fx<int, Log, Fail>
// return type     : Fx<int, Log>       ← Fail gone, Log propagates
let safe_div_or_zero(int a, int b) -> Fx<int, Log> {
  return handle<Fail>(safe_div_logged(a, b),
                      handler<Fail>([](Fail, auto r) { r(0); }));
}

// Pattern 2: absorb all — chain two handle<> calls, return pure Fx<int>.
// safe_div_logged : Fx<int, Log, Fail>
// handle<Fail>    : Fx<int, Log>
// handle<Log>     : Fx<int>            ← no effects, .run() needs no handlers
let silent_safe_div(int a, int b) -> Fx<int> {
  return handle<Log>(handle<Fail>(safe_div_logged(a, b),
                                  handler<Fail>([](Fail, auto r) { r(0); })),
                     handler<Log>([](Log, auto r) { r({}); }));
}

// Pattern 3: coroutine that absorbs an inner effect and adds a new one.
//
// safe_div_logged : Fx<int, Log, Fail>
// handle<Fail>(...): Fx<int, Log>      ← Fail absorbed with 0 fallback
// co_await that  : valid (Log ⊆ {Ask, Log})
// ask_once       : adds Ask
//
// Net return type: Fx<int, Ask, Log>
//   Ask  — new (prompts for operands)
//   Log  — propagated from safe_div_logged
//   Fail — absorbed (never reaches caller)
let prompted_safe_div() -> Fx<int, Ask, Log> {
  let num = std::stoi(co_await ask_once("Numerator:   "));
  let den = std::stoi(co_await ask_once("Denominator: "));
  co_return co_await handle<Fail>(safe_div_logged(num, den),
                                  handler<Fail>([](Fail, auto r) { r(0); }));
}

// --- 6. Main ----------------------------------------------------------------

int main() {

  // Demo 1: Real I/O with named handler structs.
  std::cout << "=== Demo 1: Real I/O ===\n";
  {
    // greet() : Fx<string, Ask, Log>  -- both effects must be handled
    let result = greet().run(StdinAsk{}, StdoutLog{});
    std::cout << result << "\n\n";
  }

  // Demo 2: Mock handlers via handler<E>(lambda).
  std::cout << "=== Demo 2: Mock handlers (pure, no I/O) ===\n";
  {
    std::vector<std::string> inputs{"Alice", "Bob", "Carol"};
    let idx = 0;
    std::vector<std::string> captured;

    let ask_mock =
        handler<Ask>([&](Ask, auto resume) { resume(inputs[idx++]); });

    let log_mock = handler<Log>([&](Log e, auto resume) {
      captured.push_back(e.message);
      resume({});
    });

    // collect(3) : Fx<vector<string>, Ask>  -- only Ask needs a handler
    let names = collect(3).run(ask_mock, log_mock);

    std::cout << "Names:";
    for (let &n : names)
      std::cout << " " << n;
    std::cout << "\nLog entries: " << captured.size() << "\n\n";
  }

  // Demo 3: handle<E>() returns a reduced Fx with E removed from its type.
  //   safe_div(10, 0) : Fx<int, Fail>
  //   handle<Fail>(...)  : Fx<int>     (no effects left -- .run() available)
  std::cout << "=== Demo 3: handle<E> chaining ===\n";
  {
    //   safe_div(10, 0) : Fx<int, Fail>
    //   handle<Fail>(...)  : Fx<int>     (no effects left -- .run() available)
    std::cout << "10/0 = " << handle<Fail>(safe_div(10, 0), WarnFail{}).run()
              << "\n";
    std::cout << "10/2 = " << handle<Fail>(safe_div(10, 2), WarnFail{}).run()
              << "\n\n";
  }

  // Demo 4: Chain handle<E> calls to peel effects one at a time.
  //   greet() : Fx<string, Ask, Log>
  //   handle<Log>(...) : Fx<string, Ask>
  //   handle<Ask>(...) : Fx<string>       (.run() now available)
  std::cout << "=== Demo 4: Chained handle<E> calls ===\n";
  {
    let fully_handled =
        handle<Ask>(handle<Log>(greet(), StdoutLog{}),
                    handler<Ask>([](Ask, auto r) { r(std::string{"World"}); }));
    // fully_handled : Fx<string>  -- no effects, .run() is available
    std::cout << fully_handled.run() << "\n\n";
  }

  // Demo 5: Compile-time validation -- missing handler is a compile error.
  //   Uncomment to see the static_assert fire:
  //
  //   rgreet().run(StdinAsk{});
  //   // error: fx::run -- not all effects are handled.
  //   //        Provide a TypedHandler for every effect declared in Fx<T,
  //   Effects...>.
  //
  //   handle<Ask>(safe_div(10, 0), StdinAsk{});
  //   // error: constraint not satisfied -- Ask is not in Fx<int, Fail>'s
  //   effect set.
  std::cout << "=== Demo 5: Swappable interpretations ===\n";
  {
    std::vector<std::string> src{"X", "Y"};
    int i = 0;

    let h_list = handler<Ask>([&](Ask, auto r) { r(src[i++]); });
    let va = collect(2).run(h_list);
    std::cout << "a) " << va[0] << ", " << va[1] << "\n";

    let asks = 0;
    let h_count = handler<Ask>([&](Ask, auto r) {
      ++asks;
      r("?");
    });
    collect(2).run(h_count);
    std::cout << "b) Ask called " << asks << " times\n";

    let h_default =
        handler<Ask>([](Ask, auto r) { r(std::string{"default"}); });
    let vc = collect(2).run(h_default);
    std::cout << "c) " << vc[0] << ", " << vc[1] << "\n\n";
  }

  // Demo 6: Transcript capture.
  std::cout << "=== Demo 6: Transcript capture ===\n";
  {
    std::vector<std::string> transcript;

    let ask_stub = handler<Ask>([](Ask, auto r) { r(std::string{"Tester"}); });
    let log_cap = handler<Log>([&](Log e, auto r) {
      transcript.push_back(e.message);
      r({});
    });

    let result = greet().run(ask_stub, log_cap);
    std::cout << result << "\n";
    std::cout << "Transcript (" << transcript.size() << "):\n";
    for (auto &m : transcript)
      std::cout << "  - " << m << "\n";
  }

  // Demo 7: ask_and_log calls ask_once — Ask propagates one level up.
  std::cout << "=== Demo 7: One-level propagation (Ask -> Ask+Log) ===\n";
  {
    let mock_ask = handler<Ask>([](Ask e, auto r) {
      std::cout << e.prompt << "blue\n";
      r("blue");
    });
    let mock_log = handler<Log>([](Log e, auto r) {
      std::cout << "[log] " << e.message << "\n";
      r({});
    });
    let answer =
        ask_and_log("colour", "Favourite colour: ").run(mock_ask, mock_log);
    std::cout << "Answer: " << answer << "\n\n";
  }

  // Demo 8: safe_div_logged calls safe_div — Fail propagates one level up.
  std::cout << "=== Demo 8: One-level propagation (Fail -> Log+Fail) ===\n";
  {
    let mock_log = handler<Log>([](Log e, auto r) {
      std::cout << "[log] " << e.message << "\n";
      r({});
    });
    let mock_fail = handler<Fail>([](Fail e, auto r) {
      std::cout << "[fail] " << e.reason << " -> -1\n";
      r(-1);
    });
    std::cout << "10/2 = " << safe_div_logged(10, 2).run(mock_log, mock_fail)
              << "\n";
    std::cout << "10/0 = " << safe_div_logged(10, 0).run(mock_log, mock_fail)
              << "\n\n";
  }

  // Demo 9: compute_ratio — three-level chain, Ask+Log+Fail all propagated to
  // the top-level call site where a single .run() supplies all three handlers.
  std::cout << "=== Demo 9: Three-level chain (Ask+Log+Fail at the top) ===\n";
  {
    std::array inputs{"6", "2"};
    int idx = 0;
    let result = compute_ratio().run(
        handler<Ask>([&](Ask, auto r) { r(std::string{inputs[idx++]}); }),
        handler<Log>([](Log e, auto r) {
          std::cout << "[log] " << e.message << "\n";
          r({});
        }),
        handler<Fail>([](Fail e, auto r) {
          std::cout << "[fail] " << e.reason << "\n";
          r(-1);
        }));
    std::cout << "ratio: " << result << "\n\n";
  }

  // Demo 10: same chain, but divide-by-zero — Fail fires deep inside
  // safe_div_logged and bubbles up through compute_ratio to the top-level
  // handler.
  std::cout << "=== Demo 10: Fail fires three levels deep ===\n";
  {
    std::array inputs{"6", "0"};
    int idx = 0;
    compute_ratio().run(
        handler<Ask>([&](Ask, auto r) { r(std::string{inputs[idx++]}); }),
        handler<Log>([](Log e, auto r) {
          std::cout << "[log] " << e.message << "\n";
          r({});
        }),
        handler<Fail>([](Fail e, auto r) {
          std::cout << "[fail] " << e.reason << " -> -1\n";
          r(-1);
        }));
    std::cout << "\n";
  }

  // Demo 11: Pattern 1a — Log absorbed inside ask_silently; caller only needs
  // Ask.
  std::cout << "=== Demo 11: Absorb Log locally (Ask still propagates) ===\n";
  {
    // ask_silently : Fx<string, Ask>  — Log handled internally (silenced)
    let answer =
        ask_silently("city", "Your city: ").run(handler<Ask>([](Ask e, auto r) {
          std::cout << e.prompt << "London\n";
          r("London");
        }));
    std::cout << "Answer: " << answer << "\n\n";
  }

  // Demo 12: Pattern 1b — Fail absorbed inside safe_div_or_zero; caller only
  // needs Log.
  std::cout << "=== Demo 12: Absorb Fail locally (Log still propagates) ===\n";
  {
    // safe_div_or_zero : Fx<int, Log>  — Fail recovered with 0, Log propagates
    let log_h = handler<Log>([](Log e, auto r) {
      std::cout << "[log] " << e.message << "\n";
      r({});
    });
    std::cout << "10/2 = " << safe_div_or_zero(10, 2).run(log_h) << "\n";
    std::cout << "10/0 = " << safe_div_or_zero(10, 0).run(log_h)
              << " (fallback)\n\n";
  }

  // Demo 13: Pattern 2 — all effects absorbed; pure Fx<int>, .run() needs
  // nothing.
  std::cout << "=== Demo 13: Absorb all effects — pure Fx<int> ===\n";
  {
    // silent_safe_div : Fx<int>  — no effects, runs without any handlers
    std::cout << "10/2 = " << silent_safe_div(10, 2).run() << "\n";
    std::cout << "10/0 = " << silent_safe_div(10, 0).run() << " (fallback)\n\n";
  }

  // Demo 14: Pattern 3 — coroutine absorbs Fail, adds Ask, propagates Log.
  std::cout << "=== Demo 14: Absorb Fail, add Ask, propagate Log ===\n";
  {
    // prompted_safe_div : Fx<int, Ask, Log>
    //   Ask  propagates (this function asks for operands)
    //   Log  propagates (from safe_div_logged deep inside)
    //   Fail absorbed   (handled locally with 0 fallback — never reaches
    //   caller)
    let run = [](std::array<const char *, 2> inputs) {
      int idx = 0;
      return prompted_safe_div().run(handler<Ask>([&](Ask e, auto r) {
                                       std::cout << e.prompt << inputs[idx]
                                                 << "\n";
                                       r(std::string{inputs[idx++]});
                                     }),
                                     handler<Log>([](Log e, auto r) {
                                       std::cout << "[log] " << e.message
                                                 << "\n";
                                       r({});
                                     }));
    };
    std::cout << "8/4 = " << run({"8", "4"}) << "\n";
    std::cout << "8/0 = " << run({"8", "0"})
              << " (Fail absorbed, fallback 0)\n\n";
  }

  return 0;
}
