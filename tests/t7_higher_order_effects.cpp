// t7_higher_order_effects.cpp — effects as first-class abstractions
//
// Higher-order effects: patterns where the handler carries the meaning of a
// computation.  The same coroutine can produce entirely different results
// depending on the handler it is run with — the handler IS the semantics.
// Where t5 shows composite handlers and t6 shows on_return/Cont pipelines,
// t7 demonstrates patterns that treat computations themselves as values:
//
//   • State (Get/Put)   — mutable state threaded by the handler, not the code
//   • Reader (ReadEnv)  — implicit environment propagated without parameters
//   • Writer (Tell)     — side-channel accumulation returned via on_return
//   • Choose            — nondeterminism: handler decides every branch outcome
//   • Higher-order fns  — coroutines parameterised by computation factories
//   • Effect interception — handler transforms performs before resuming
//
// Tests:
//  1.  State (Get/Put): handler threads int state across multiple performs
//  2.  State + on_return: handler exposes (result, final_state) as a pair
//  3.  Reader (ReadEnv): implicit environment propagated without parameters
//  4.  Writer (Tell) + on_return: (result, accumulated log) returned together
//  5.  Choose — AlwaysTrue vs AlwaysFalse: same computation, two outcomes
//  6.  Choose — scripted sequence: handler answers a list of boolean choices
//  7.  Higher-order function: template that co_awaits a computation factory twice
//  8.  Interleaved state + Ask: two independent effect threads in one computation
//  9.  Effect interceptor: handler transforms every Get result before resuming
// 10.  Pure state via bind: Get/Put absorbed locally; caller needs no handlers

#include "common.hpp"

#include <cassert>
#include <string>
#include <utility>
#include <vector>

using namespace std::string_literals;

#define PASS(msg) (std::cout << "  [pass] " << (msg) << "\n")

// ── Effects (local to this test) ──────────────────────────────────────────────

struct Get    : Effect<int>            {};
struct Put    : Effect<std::monostate> { int value; };
struct ReadEnv: Effect<std::string>    {};
struct Tell   : Effect<std::monostate> { std::string msg; };
struct Choose : Effect<bool>           {};

using StateRow = Row<Get, Put>;

// ── Handler structs ───────────────────────────────────────────────────────────

// 1. Simple mutable state.
struct StateH : Handler<Get, Put> {
  int s = 0;
  void handle(Get,   auto r) { r(s); }
  void handle(Put e, auto r) { s = e.value; r({}); }
};

// 2. State + on_return: exposes (result, final_state) as a pair.
struct StateHRet : Handler<Get, Put> {
  int s = 0;
  void handle(Get,   auto r) { r(s); }
  void handle(Put e, auto r) { s = e.value; r({}); }
  auto on_return(int v) -> std::pair<int, int> { return {v, s}; }
};

// 3. Reader: provides a fixed string environment for every ReadEnv perform.
struct EnvH : Handler<ReadEnv> {
  std::string env;
  void handle(ReadEnv, auto r) { r(env); }
};

// 4. Writer: accumulates Tell messages; on_return packages (result, log).
struct TellH : Handler<Tell> {
  std::vector<std::string> log;
  void handle(Tell e, auto r) { log.push_back(e.msg); r({}); }
  auto on_return(int v) -> std::pair<int, std::vector<std::string>> {
    return {v, log};
  }
};

// 5/6. Choose handlers: the handler decides what every Choose perform returns.
struct AlwaysTrueH  : Handler<Choose> { void handle(Choose, auto r) { r(true);  } };
struct AlwaysFalseH : Handler<Choose> { void handle(Choose, auto r) { r(false); } };

struct ScriptedChooseH : Handler<Choose> {
  std::vector<bool> choices;
  int idx = 0;
  void handle(Choose, auto r) { r(choices[idx++ % (int)choices.size()]); }
};

// 8. Composite: handles Get + Put + Ask in a single struct.
struct StatePlusAskH : Handler<Get, Put, Ask> {
  int         state  = 0;
  std::string answer;
  void handle(Get,   auto r) { r(state); }
  void handle(Put e, auto r) { state = e.value; r({}); }
  void handle(Ask,   auto r) { r(answer); }
};

// 9. Biased Get interceptor: adds a bias to every Get result before resuming.
//    The computation is unaware of the bias — the handler owns the semantics.
struct BiasedGetH : Handler<Get, Put> {
  int s    = 0;
  int bias = 0;
  void handle(Get,   auto r) { r(s + bias); }   // transforms before resuming
  void handle(Put e, auto r) { s = e.value; r({}); }  // stores raw value
};

// ── Computations ──────────────────────────────────────────────────────────────

// Increments state n times and returns the final state value.
static auto count_up(int n) -> StateRow::Fx<int> {
  for (int i = 0; i < n; ++i) {
    int s = perform(Get{});
    perform(Put{.value = s + 1});
  }
  co_return perform(Get{});
}

// Reads the environment and returns a greeting string.
static auto greet_env() -> Row<ReadEnv>::Fx<std::string> {
  auto env = perform(ReadEnv{});
  co_return "Hello from " + env + "!";
}

// Reads the environment twice to confirm it is stable.
static auto double_env() -> Row<ReadEnv>::Fx<std::string> {
  auto a = perform(ReadEnv{});
  auto b = perform(ReadEnv{});
  co_return a + "/" + b;
}

// Emits three Tell messages and returns 42.
static auto logged_work() -> Row<Tell>::Fx<int> {
  perform(Tell{.msg = "start"});
  perform(Tell{.msg = "middle"});
  perform(Tell{.msg = "end"});
  co_return 42;
}

// Returns "left" or "right" based on a single Choose.
static auto choose_path() -> Row<Choose>::Fx<std::string> {
  co_return perform(Choose{}) ? "left" : "right";
}

// Makes two independent Choose calls and combines the results.
static auto choose_multi() -> Row<Choose>::Fx<int> {
  int a = perform(Choose{}) ? 10 : 1;
  int b = perform(Choose{}) ? 20 : 2;
  co_return a + b;
}

// Higher-order: calls any computation factory twice and returns both results.
// The factory is a callable that produces Row<Ask>::Fx<int> on each call.
template<typename F>
static auto duplicate(F make) -> Row<Ask>::Fx<std::pair<int, int>> {
  int a = co_await make();
  int b = co_await make();
  co_return std::pair{a, b};
}

// Reads state, asks for a name, updates state by name length, reads state again.
static auto state_plus_ask() -> Row<Get, Put, Ask>::Fx<std::string> {
  int  s    = perform(Get{});
  auto name = perform(Ask{.prompt = "name?"});
  perform(Put{.value = s + static_cast<int>(name.size())});
  int  s2   = perform(Get{});
  co_return name + "@" + std::to_string(s2);
}

// Reads state twice without modifying it — used to show bias interception.
static auto get_and_add() -> StateRow::Fx<int> {
  int a = perform(Get{});
  int b = perform(Get{});
  co_return a + b;
}

// ── Tests ─────────────────────────────────────────────────────────────────────

int main() {
  // 1. State: Get/Put handler threads int state across N performs.
  {
    StateH h{.s = 0};
    auto r = count_up(3).run(h);
    assert(r == 3);
    assert(h.s == 3);
    PASS("1. State: count_up(3) from 0 → 3; h.s == 3");
  }

  // 2. State + on_return: (result, final_state) returned together.
  //    count_up(5) starting from 10: state goes 10→11→…→15; final Get = 15.
  {
    auto [val, fs] = count_up(5).run(StateHRet{.s = 10});
    assert(val == 15);
    assert(fs  == 15);
    PASS("2. State+on_return: count_up(5) from 10 → (15, 15)");
  }

  // 3. Reader: same environment is delivered to every ReadEnv perform.
  {
    auto r3a = greet_env().run(EnvH{.env = "production"});
    assert(r3a == "Hello from production!");

    auto r3b = double_env().run(EnvH{.env = "test"});
    assert(r3b == "test/test");

    PASS("3. Reader: env stable across multiple reads");
  }

  // 4. Writer/Tell + on_return: side-channel log packaged alongside result.
  {
    auto [val, log] = logged_work().run(TellH{});
    assert(val == 42);
    assert(log.size() == 3);
    assert(log[0] == "start" && log[1] == "middle" && log[2] == "end");
    PASS("4. Writer/Tell: result=42, log=[start, middle, end]");
  }

  // 5. Choose — same computation, two different handler interpretations.
  //    The computation has no intrinsic meaning for "left"/"right" —
  //    the handler decides.
  {
    auto r5a = choose_path().run(AlwaysTrueH{});
    auto r5b = choose_path().run(AlwaysFalseH{});
    assert(r5a == "left");
    assert(r5b == "right");
    PASS("5. Choose: AlwaysTrue→\"left\", AlwaysFalse→\"right\"");
  }

  // 6. Choose — scripted sequence of choices.
  //    choose_multi: first choice selects 10 or 1; second selects 20 or 2.
  {
    auto r6a = choose_multi().run(ScriptedChooseH{.choices = {true,  false}});
    assert(r6a == 12);  // 10 + 2

    auto r6b = choose_multi().run(ScriptedChooseH{.choices = {false, true}});
    assert(r6b == 21);  // 1 + 20

    auto r6c = choose_multi().run(AlwaysTrueH{});
    assert(r6c == 30);  // 10 + 20

    PASS("6. Choose-scripted: {T,F}→12, {F,T}→21, {T,T}→30");
  }

  // 7. Higher-order function: template coroutine that runs a computation
  //    factory twice and returns both results as a pair.
  //    The factory is itself a computation; duplicate doesn't know its source.
  {
    auto ask_int = []() -> Row<Ask>::Fx<int> {
      auto s = perform(Ask{.prompt = "n: "});
      co_return std::stoi(s);
    };

    auto [a, b] = duplicate(ask_int)
                    .run(ScriptedAskCycling{.answers = {"3", "7"}});
    assert(a == 3 && b == 7);
    PASS("7. Higher-order duplicate: factory run twice → (3, 7)");
  }

  // 8. Interleaved state + Ask: two independent effect threads in one
  //    computation.  State and Ask are completely orthogonal — each is
  //    handled separately via a composite handler.
  {
    StatePlusAskH h{.state = 5, .answer = "Alice"};
    auto r8 = state_plus_ask().run(h);
    // s=5, name="Alice" (len 5), new state=10; result="Alice@10"
    assert(r8 == "Alice@10");
    assert(h.state == 10);
    PASS("8. Interleaved Get/Put+Ask: \"Alice@10\", h.state==10");
  }

  // 9. Effect interceptor: handler transforms every Get result before resuming.
  //    The same computation reads different values depending on the bias — the
  //    computation never changes; the handler controls what "Get" means.
  {
    // Unbiased: each Get returns the raw stored state.
    auto r9a = get_and_add().run(StateH{.s = 7});
    assert(r9a == 14);  // 7 + 7

    // Biased: each Get returns state + 10, so 17 + 17 = 34.
    auto r9b = get_and_add().run(BiasedGetH{.s = 7, .bias = 10});
    assert(r9b == 34);  // 17 + 17

    PASS("9. Interceptor: bias=0→14, bias=10→34 (same computation)");
  }

  // 10. Pure state via bind: Get/Put absorbed locally so the caller never
  //     sees state effects.  The function presents a pure interface regardless
  //     of its internal implementation.
  {
    auto r10a = count_up(5).bind(StateH{.s = 0}).run();
    assert(r10a == 5);

    // Different initial state, same computation.
    auto r10b = count_up(5).bind(StateH{.s = 100}).run();
    assert(r10b == 105);

    PASS("10. Pure via bind: count_up(5) from 0→5, from 100→105");
  }

  std::cout << "All tests passed.\n";
}
