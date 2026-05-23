#include "effects.hpp"
#include <iostream>
#include <string>
#include <vector>

#define let auto

using namespace fx;

// --- 1. Effect declarations -------------------------------------------------

// Ask for user input; handler resumes with a std::string.
struct Ask : Effect<Ask> {
  using result_type = std::string;
  std::string prompt;
};

// Fire-and-forget log line; handler resumes with monostate.
struct Log : Effect<Log> {
  using result_type = std::monostate;
  std::string message;
};

// Signal an error; handler may resume with a fallback int.
struct Fail : Effect<Fail> {
  using result_type = int;
  std::string reason;
};

// Generic / parameterised effect.  Emit<int> and Emit<std::string> are
// *separate* effects: each needs its own handler.
// CRTP base gives Emit<T>::Fx<R> for free.
template <typename T> struct Emit : Effect<Emit<T>> {
  T value;
  using result_type = std::monostate;
};

using IO = Row<Ask, Log>;
using All = Combine<IO, Row<Fail>>;

// --- 2. Computations --------------------------------------------------------
//
// Return types use E::Fx<T> for a single effect, Row<Es...>::Fx<T> for
// multiple effects, or a named row alias (IO::Fx<T>, All::Fx<T>, etc.).
// The declared effects are visible at every call site.

let greet() -> IO::Fx<std::string> {
  perform(Log{.message = "Starting greet"});
  let name = perform(Ask{.prompt = "Your name: "});
  perform(Log{.message = "Got: " + name});
  co_return "Hello, " + name + "!";
}

let safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0) {
    co_return perform(Fail{.reason = "division by zero"});
  } else {
    co_return a / b;
  }
}

let collect(int n) -> Ask::Fx<std::vector<std::string>> {
  std::vector<std::string> out;
  for (int i = 0; i < n; ++i)
    out.push_back(
        perform(Ask{.prompt = "Name " + std::to_string(i + 1) + ": "}));
  co_return out;
}

// --- Generic-effect functions -----------------------------------------------
//
// Emit<T> is a template effect; Emit<T>::Fx<R> is just E::Fx<R> with a
// template type argument — identical to Fx<R, Emit<T>> under the hood.

// Leaf: emits every integer in [lo, hi).
let range(int lo, int hi) -> Emit<int>::Fx<void> {
  for (int i = lo; i < hi; ++i)
    perform(Emit<int>{.value = i});
}

// Propagation: calls range (Emit<int> propagates up) and adds its own Log.
let range_logged(int lo, int hi) -> Row<Emit<int>, Log>::Fx<void> {
  perform(Log{.message = "emitting [" + std::to_string(lo) + ", " +
                         std::to_string(hi) + ")"});
  co_await range(lo, hi);
  perform(Log{.message = "done"});
}

// Local absorption: Emit<int> is handled inside the body.
// Caller sees a pure Fx<int> — .run() needs no handlers.
let sum_range(int lo, int hi) -> Fx<int> {
  int total = 0;
  co_await handle<Emit<int>>(range(lo, hi),
                             handler<Emit<int>>([&total](Emit<int> e, auto r) {
                               total += e.value;
                               r({});
                             }));
  co_return total;
}

// Two distinct specialisations: Emit<int> and Emit<std::string> are
// completely separate effects and require separate handlers.
let annotate(int lo, int hi) -> Row<Emit<int>, Emit<std::string>>::Fx<void> {
  for (int i = lo; i < hi; ++i) {
    perform(Emit<int>{.value = i * i});
    perform(Emit<std::string>{.value = std::to_string(i) + "\xc2\xb2"});
  }
}

// --- Composite handler examples ---------------------------------------------

struct IOHandler : IO::Handler<IOHandler> {
  std::string fixed_answer;
  void operator()(Ask e, auto resume) {
    std::cout << e.prompt << fixed_answer << "\n";
    resume(fixed_answer);
  }
  void operator()(Log e, auto resume) {
    std::cout << "[io] " << e.message << "\n";
    resume({});
  }
};
VALIDATE_HANDLER(IOHandler);

struct AllHandler : All::Handler<AllHandler> {
  std::string answer;
  void operator()(Ask e, auto resume) {
    std::cout << e.prompt << answer << "\n";
    resume(answer);
  }
  void operator()(Log e, auto resume) {
    std::cout << "[all] " << e.message << "\n";
    resume({});
  }
  void operator()(Fail e, auto resume) {
    std::cout << "[all] FAIL: " << e.reason << " -> -1\n";
    resume(-1);
  }
};
VALIDATE_HANDLER(AllHandler);

struct ScriptedIO : IO::Handler<ScriptedIO> {
  std::vector<std::string> answers;
  int idx = 0;
  void operator()(Ask e, std::function<void(std::string)> r) {
    std::cout << e.prompt << answers[idx] << "\n";
    r(answers[idx++]);
  }
  void operator()(Log e, std::function<void(std::monostate)> r) {
    std::cout << "[io] " << e.message << "\n";
    r({});
  }
};
VALIDATE_HANDLER(ScriptedIO);

// --- 3. Reusable handler structs --------------------------------------------

struct StdoutLog : Log::Handler<StdoutLog> {
  void operator()(Log e, auto resume) {
    std::cout << "[log] " << e.message << "\n";
    resume({});
  }
};
VALIDATE_HANDLER(StdoutLog);

struct StdinAsk : Ask::Handler<StdinAsk> {
  void operator()(Ask e, auto resume) {
    std::cout << e.prompt;
    std::string line;
    std::getline(std::cin, line);
    resume(line);
  }
};
VALIDATE_HANDLER(StdinAsk);

struct WarnFail : Fail::Handler<WarnFail> {
  void operator()(Fail e, auto resume) {
    std::cout << "[warn] " << e.reason << " -> -1\n";
    resume(-1);
  }
};
VALIDATE_HANDLER(WarnFail);

// --- 5. Composition examples ------------------------------------------------
//
// Effects propagate upward: a function that co_awaits an inner Fx must
// declare all of the inner function's effects in its own return type.
//
// Hierarchy used below:
//   ask_once          : Ask::Fx<string>
//   ask_and_log       : IO::Fx<string>            -- calls ask_once, adds Log
//   safe_div_logged   : Row<Log, Fail>::Fx<int>   -- calls safe_div, adds Log
//   compute_ratio     : All::Fx<string>           -- calls both of the above

// Leaf: just wraps a single Ask.
let ask_once(std::string prompt) -> Ask::Fx<std::string> {
  co_return perform(Ask{.prompt = std::move(prompt)});
}

// Calls ask_once (Ask propagated) and adds its own Log.
let ask_and_log(std::string label, std::string prompt) -> IO::Fx<std::string> {
  perform(Log{.message = "asking for " + label});
  let answer = co_await ask_once(std::move(prompt));
  perform(Log{.message = "got " + label + ": " + answer});
  co_return answer;
}

// Calls safe_div (Fail propagated) and wraps it in Log.
let safe_div_logged(int a, int b) -> Row<Log, Fail>::Fx<int> {
  perform(Log{.message =
                  "computing " + std::to_string(a) + "/" + std::to_string(b)});
  let result = co_await safe_div(a, b);
  perform(Log{.message = "result: " + std::to_string(result)});
  co_return result;
}

// Three-level chain: calls ask_and_log (Ask+Log) and safe_div_logged
// (Log+Fail). Own effect list is the union: Ask + Log + Fail.
let compute_ratio() -> All::Fx<std::string> {
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
// ask_and_log : IO::Fx<string>
// return type : Ask::Fx<string>   ← Log gone
let ask_silently(std::string label, std::string prompt)
    -> Ask::Fx<std::string> {
  return handle<Log>(ask_and_log(std::move(label), std::move(prompt)),
                     handler<Log>([](Log, auto r) { r({}); }));
}

// Pattern 1b: recover from failure — handle<Fail> strips Fail, returns 0.
// safe_div_logged : Row<Log, Fail>::Fx<int>
// return type     : Log::Fx<int>   ← Fail gone, Log propagates
let safe_div_or_zero(int a, int b) -> Log::Fx<int> {
  return handle<Fail>(safe_div_logged(a, b),
                      handler<Fail>([](Fail, auto r) { r(0); }));
}

// Pattern 2: absorb all — chain two handle<> calls, return pure Fx<int>.
// safe_div_logged : Row<Log, Fail>::Fx<int>
// handle<Fail>    : Log::Fx<int>
// handle<Log>     : Fx<int>            ← no effects, .run() needs no handlers
let silent_safe_div(int a, int b) -> Fx<int> {
  return handle<Log>(handle<Fail>(safe_div_logged(a, b),
                                  handler<Fail>([](Fail, auto r) { r(0); })),
                     handler<Log>([](Log, auto r) { r({}); }));
}

// Pattern 3: coroutine that absorbs an inner effect and adds a new one.
//
// safe_div_logged : Row<Log, Fail>::Fx<int>
// handle<Fail>(...): Log::Fx<int>      ← Fail absorbed with 0 fallback
// co_await that  : valid (Log ⊆ {Ask, Log})
// ask_once       : adds Ask
//
// Net return type: IO::Fx<int>
//   Ask  — new (prompts for operands)
//   Log  — propagated from safe_div_logged
//   Fail — absorbed (never reaches caller)
let prompted_safe_div() -> IO::Fx<int> {
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
    // greet() : IO::Fx<string>  -- both effects must be handled
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

    // collect(3) : Ask::Fx<vector<string>>  -- only Ask needs a handler
    let names = collect(3).run(ask_mock, log_mock);

    std::cout << "Names:";
    for (let &n : names)
      std::cout << " " << n;
    std::cout << "\nLog entries: " << captured.size() << "\n\n";
  }

  // Demo 3: handle<E>() returns a reduced Fx with E removed from its type.
  //   safe_div(10, 0) : Fail::Fx<int>
  //   handle<Fail>(...)  : Fx<int>     (no effects left -- .run() available)
  std::cout << "=== Demo 3: handle<E> chaining ===\n";
  {
    //   safe_div(10, 0) : Fail::Fx<int>
    //   handle<Fail>(...)  : Fx<int>     (no effects left -- .run() available)
    std::cout << "10/0 = " << handle<Fail>(safe_div(10, 0), WarnFail{}).run()
              << "\n";
    std::cout << "10/2 = " << handle<Fail>(safe_div(10, 2), WarnFail{}).run()
              << "\n\n";
  }

  // Demo 4: Chain handle<E> calls to peel effects one at a time.
  //   greet()          : IO::Fx<string>
  //   handle<Log>(...) : Ask::Fx<string>
  //   handle<Ask>(...) : Fx<string>       (.run() now available)
  std::cout << "=== Demo 4: Chained handle<E> calls ===\n";
  {
    let fully_handled =
        handle<Ask>(handle<Log>(greet(), StdoutLog{}),
                    handler<Ask>([](Ask, auto r) { r(std::string{"World"}); }));
    // fully_handled : Fx<string>  -- no effects remain, .run() is available
    std::cout << fully_handled.run() << "\n\n";
  }

  // Demo 5: Compile-time validation -- missing handler is a compile error.
  //   Uncomment to see the static_assert fire:
  //
  //   greet().run(StdinAsk{});
  //   // error: fx::run -- not all effects are handled.
  //   //        Provide a handler for every effect in the return type.
  //
  //   handle<Ask>(safe_div(10, 0), StdinAsk{});
  //   // error: constraint not satisfied -- Ask is not in Fail::Fx<int>'s
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
    // ask_silently : Ask::Fx<string>  — Log handled internally (silenced)
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
    // safe_div_or_zero : Log::Fx<int>  — Fail recovered with 0, Log propagates
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
    // prompted_safe_div : IO::Fx<int>
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

  // Demo 15: Generic effect Emit<T>.
  //   range(1,6)        : Emit<int>::Fx<void>  (== Fx<void, Emit<int>>)
  //   handler collects emitted values into a vector.
  std::cout << "=== Demo 15: Generic effect Emit<T> ===\n";
  {
    std::vector<int> out;
    range(1, 6).run(handler<Emit<int>>([&](Emit<int> e, auto r) {
      out.push_back(e.value);
      r({});
    }));
    std::cout << "collected:";
    for (int v : out)
      std::cout << " " << v;
    std::cout << "\n\n";
  }

  // Demo 16: Emit<int> propagates through range_logged alongside Log.
  //   range_logged : Row<Emit<int>, Log>::Fx<void> — both effects reach the
  //   caller.
  std::cout << "=== Demo 16: Emit<int> propagates (alongside Log) ===\n";
  {
    std::vector<int> out;
    range_logged(1, 5).run(handler<Emit<int>>([&](Emit<int> e, auto r) {
                             out.push_back(e.value);
                             r({});
                           }),
                           handler<Log>([](Log e, auto r) {
                             std::cout << "[log] " << e.message << "\n";
                             r({});
                           }));
    std::cout << "emitted:";
    for (int v : out)
      std::cout << " " << v;
    std::cout << "\n\n";
  }

  // Demo 17: Emit<int> absorbed locally — caller sees a pure Fx<int>.
  //   sum_range : Fx<int>  — no effects, .run() needs no handlers.
  std::cout << "=== Demo 17: Absorb Emit<int> locally — pure Fx<int> ===\n";
  {
    std::cout << "sum [1,6)  = " << sum_range(1, 6).run() << "\n";
    std::cout << "sum [1,11) = " << sum_range(1, 11).run() << "\n\n";
  }

  // Demo 18: Emit<int> and Emit<std::string> are distinct effects.
  //   annotate : Row<Emit<int>, Emit<std::string>>::Fx<void>
  //   Each specialisation requires its own typed handler.
  std::cout << "=== Demo 18: Two Emit specialisations — distinct effects ===\n";
  {
    std::vector<int> nums;
    std::vector<std::string> labels;
    annotate(1, 5).run(
        handler<Emit<int>>([&](Emit<int> e, auto r) {
          nums.push_back(e.value);
          r({});
        }),
        handler<Emit<std::string>>([&](Emit<std::string> e, auto r) {
          labels.push_back(e.value);
          r({});
        }));
    std::cout << "squares:";
    for (int v : nums)
      std::cout << " " << v;
    std::cout << "\nlabels:";
    for (auto &s : labels)
      std::cout << " " << s;
    std::cout << "\n\n";
  }

  // Demo 19: Single composite handler covers an entire Row.
  //   IOHandler : IO::Handler<IOHandler>  — handles Ask + Log together.
  //   greet()   : IO::Fx<string>          — needs Ask and Log.
  //   .run(IOHandler{...}) satisfies both effects with one argument.
  std::cout << "=== Demo 19: Composite handler for IO row ===\n";
  {
    std::cout << greet().run(IOHandler{.fixed_answer = "Alice"}) << "\n\n";
  }

  // Demo 20: Composite handler mixed with a plain TypedHandler.
  //   compute_ratio : All::Fx<string>
  //   ScriptedIO (IO::Handler<ScriptedIO>) covers Ask+Log.
  //   WarnFail (Fail::Handler<WarnFail>) covers Fail.
  //   Two handler arguments — one composite, one single — satisfy all three.
  std::cout << "=== Demo 20: Composite IOHandler + plain WarnFail ===\n";
  {
    ScriptedIO io{.answers = {"12", "4"}};
    std::cout << "ratio: " << compute_ratio().run(io, WarnFail{}) << "\n\n";
  }

  // Demo 21: AllHandler covers Ask + Log + Fail in one struct.
  //   compute_ratio : All::Fx<string>
  //   AllHandler{} satisfies all three with a single .run() argument.
  //   Divide by zero fires Fail inside AllHandler.
  std::cout << "=== Demo 21: AllHandler covers all three effects ===\n";
  {
    std::cout << "12/4 = " << compute_ratio().run(AllHandler{.answer = "4"})
              << "\n";
    std::cout << "12/0 result: "
              << compute_ratio().run(AllHandler{.answer = "0"}) << "\n\n";
  }

  // Demo 22: Definition-time validation via VALIDATE_HANDLER.
  //   Place VALIDATE_HANDLER(H) right after the struct's closing brace.
  //   The static_assert fires immediately — before the type is ever used.
  //   Uncomment either block to see the error at the VALIDATE_HANDLER line:
  //
  //   struct BrokenIO : IO::Handler<BrokenIO> {
  //     void operator()(Ask e, auto r) { r("x"); }
  //     // Log overload missing
  //   };
  //   VALIDATE_HANDLER(BrokenIO);
  //   // error: 'BrokenIO' is missing operator() for one or more effects
  //
  //   struct BrokenFail : Fail::Handler<BrokenFail> {};
  //   VALIDATE_HANDLER(BrokenFail);
  //   // error: 'BrokenFail' is missing operator() for one or more effects

  // Demo 23: handler<Row>() — inline composite handler from lambdas.
  //   Lambdas are matched to effects by argument type; no struct needed.
  //   Compile error on the handler<IO>() call if any effect has no lambda.
  std::cout << "=== Demo 23: handler<IO> inline composite ===\n";
  {
    auto h = handler<IO>(
        [](Ask e, auto r) {
          std::cout << e.prompt << "inline\n";
          r("inline");
        },
        [](Log e, auto r) {
          std::cout << "[λ] " << e.message << "\n";
          r({});
        });
    std::cout << greet().run(h) << "\n\n";
  }

  // Demo 24: handler<IO> + handler<Fail> covers all three effects together.
  std::cout << "=== Demo 24: handler<IO> + handler<Fail> ===\n";
  {
    auto io = handler<IO>(
        [](Ask e, auto r) {
          std::cout << e.prompt << "4\n";
          r("4");
        },
        [](Log e, auto r) {
          std::cout << "[λ] " << e.message << "\n";
          r({});
        });
    auto fail = handler<Fail>([](Fail e, auto r) {
      std::cout << "[λ-fail] " << e.reason << "\n";
      r(-1);
    });
    std::cout << "ratio: " << compute_ratio().run(io, fail) << "\n\n";
  }

  // Demo 25: Missing lambda — compile error at the handler<IO>() call site.
  //   Uncomment to see the squiggle on handler<IO>(...):
  //
  //   auto h = handler<IO>(
  //     [](Ask e, auto r) { r("x"); }
  //     // Log lambda missing!
  //   );
  //   // error: constraint not satisfied — Log is not covered

  return 0;
}
