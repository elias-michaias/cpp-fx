

#include "common.hpp"

#include <cassert>
#include <string>
#include <utility>
#include <vector>

using namespace std::string_literals;

#define PASS(msg) (std::cout << "  [pass] " << (msg) << "\n")


struct Get    : Effect<int>            {};
struct Put    : Effect<std::monostate> { int value; };
struct ReadEnv: Effect<std::string>    {};
struct Tell   : Effect<std::monostate> { std::string msg; };
struct Choose : Effect<bool>           {};

using StateRow = Row<Get, Put>;


struct StateH : Handler<Get, Put> {
  int s = 0;
  void handle(Get,   auto r) { r(s); }
  void handle(Put e, auto r) { s = e.value; r({}); }
};


struct StateHRet : Handler<Get, Put> {
  int s = 0;
  void handle(Get,   auto r) { r(s); }
  void handle(Put e, auto r) { s = e.value; r({}); }
  auto on_return(int v) -> std::pair<int, int> { return {v, s}; }
};


struct EnvH : Handler<ReadEnv> {
  std::string env;
  void handle(ReadEnv, auto r) { r(env); }
};


struct TellH : Handler<Tell> {
  std::vector<std::string> log;
  void handle(Tell e, auto r) { log.push_back(e.msg); r({}); }
  auto on_return(int v) -> std::pair<int, std::vector<std::string>> {
    return {v, log};
  }
};


struct AlwaysTrueH  : Handler<Choose> { void handle(Choose, auto r) { r(true);  } };
struct AlwaysFalseH : Handler<Choose> { void handle(Choose, auto r) { r(false); } };

struct ScriptedChooseH : Handler<Choose> {
  std::vector<bool> choices;
  int idx = 0;
  void handle(Choose, auto r) { r(choices[idx++ % (int)choices.size()]); }
};


struct StatePlusAskH : Handler<Get, Put, Ask> {
  int         state  = 0;
  std::string answer;
  void handle(Get,   auto r) { r(state); }
  void handle(Put e, auto r) { state = e.value; r({}); }
  void handle(Ask,   auto r) { r(answer); }
};


struct BiasedGetH : Handler<Get, Put> {
  int s    = 0;
  int bias = 0;
  void handle(Get,   auto r) { r(s + bias); }
  void handle(Put e, auto r) { s = e.value; r({}); }
};


static auto count_up(int n) -> StateRow::Fx<int> {
  for (int i = 0; i < n; ++i) {
    int s = perform(Get{});
    perform(Put{.value = s + 1});
  }
  co_return perform(Get{});
}


static auto greet_env() -> Row<ReadEnv>::Fx<std::string> {
  auto env = perform(ReadEnv{});
  co_return "Hello from " + env + "!";
}


static auto double_env() -> Row<ReadEnv>::Fx<std::string> {
  auto a = perform(ReadEnv{});
  auto b = perform(ReadEnv{});
  co_return a + "/" + b;
}


static auto logged_work() -> Row<Tell>::Fx<int> {
  perform(Tell{.msg = "start"});
  perform(Tell{.msg = "middle"});
  perform(Tell{.msg = "end"});
  co_return 42;
}


static auto choose_path() -> Row<Choose>::Fx<std::string> {
  co_return perform(Choose{}) ? "left" : "right";
}


static auto choose_multi() -> Row<Choose>::Fx<int> {
  int a = perform(Choose{}) ? 10 : 1;
  int b = perform(Choose{}) ? 20 : 2;
  co_return a + b;
}


template<typename F>
static auto duplicate(F make) -> Row<Ask>::Fx<std::pair<int, int>> {
  int a = co_await make();
  int b = co_await make();
  co_return std::pair{a, b};
}


static auto state_plus_ask() -> Row<Get, Put, Ask>::Fx<std::string> {
  int  s    = perform(Get{});
  auto name = perform(Ask{.prompt = "name?"});
  perform(Put{.value = s + static_cast<int>(name.size())});
  int  s2   = perform(Get{});
  co_return name + "@" + std::to_string(s2);
}


static auto get_and_add() -> StateRow::Fx<int> {
  int a = perform(Get{});
  int b = perform(Get{});
  co_return a + b;
}


int main() {

  {
    StateH h{.s = 0};
    auto r = count_up(3).run(h);
    assert(r == 3);
    assert(h.s == 3);
    PASS("1. State: count_up(3) from 0 → 3; h.s == 3");
  }


  {
    auto [val, fs] = count_up(5).run(StateHRet{.s = 10});
    assert(val == 15);
    assert(fs  == 15);
    PASS("2. State+on_return: count_up(5) from 10 → (15, 15)");
  }


  {
    auto r3a = greet_env().run(EnvH{.env = "production"});
    assert(r3a == "Hello from production!");

    auto r3b = double_env().run(EnvH{.env = "test"});
    assert(r3b == "test/test");

    PASS("3. Reader: env stable across multiple reads");
  }


  {
    auto [val, log] = logged_work().run(TellH{});
    assert(val == 42);
    assert(log.size() == 3);
    assert(log[0] == "start" && log[1] == "middle" && log[2] == "end");
    PASS("4. Writer/Tell: result=42, log=[start, middle, end]");
  }


  {
    auto r5a = choose_path().run(AlwaysTrueH{});
    auto r5b = choose_path().run(AlwaysFalseH{});
    assert(r5a == "left");
    assert(r5b == "right");
    PASS("5. Choose: AlwaysTrue→\"left\", AlwaysFalse→\"right\"");
  }


  {
    auto r6a = choose_multi().run(ScriptedChooseH{.choices = {true,  false}});
    assert(r6a == 12);

    auto r6b = choose_multi().run(ScriptedChooseH{.choices = {false, true}});
    assert(r6b == 21);

    auto r6c = choose_multi().run(AlwaysTrueH{});
    assert(r6c == 30);

    PASS("6. Choose-scripted: {T,F}→12, {F,T}→21, {T,T}→30");
  }


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


  {
    StatePlusAskH h{.state = 5, .answer = "Alice"};
    auto r8 = state_plus_ask().run(h);

    assert(r8 == "Alice@10");
    assert(h.state == 10);
    PASS("8. Interleaved Get/Put+Ask: \"Alice@10\", h.state==10");
  }


  {

    auto r9a = get_and_add().run(StateH{.s = 7});
    assert(r9a == 14);


    auto r9b = get_and_add().run(BiasedGetH{.s = 7, .bias = 10});
    assert(r9b == 34);

    PASS("9. Interceptor: bias=0→14, bias=10→34 (same computation)");
  }


  {
    auto r10a = count_up(5).bind(StateH{.s = 0}).run();
    assert(r10a == 5);


    auto r10b = count_up(5).bind(StateH{.s = 100}).run();
    assert(r10b == 105);

    PASS("10. Pure via bind: count_up(5) from 0→5, from 100→105");
  }

  std::cout << "All tests passed.\n";
}
