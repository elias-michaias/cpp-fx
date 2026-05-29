

#include "common.hpp"

#include <cassert>


auto meaning_of_life() -> Fx<int> { co_return 42; }


auto greet() -> Row<Ask>::Fx<std::string> {
  auto name = perform(Ask{.prompt = "Your name: "});
  co_return "Hello, " + name + "!";
}


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


auto safe_div(int a, int b) -> Row<Fail>::Fx<int> {
  if (b == 0)
    co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}


struct ScriptedAsk : Handler<Ask> {
  std::string answer;
  void handle(Ask, auto r) { r(answer); }
};


struct CountingAsk : Handler<Ask> {
  int &count;
  std::string reply;
  void handle(Ask, auto r) {
    ++count;
    r(reply);
  }
};


struct RecordLog : Handler<Log> {
  std::vector<std::string> &msgs;
  void handle(Log e, auto r) {
    msgs.push_back(e.message);
    r({});
  }
};


struct VerboseFail : Handler<Fail> {
  int fallback;
  void handle(Fail e, auto r) {
    std::cout << "   [warn] " << e.reason << "\n";
    r(fallback);
  }
};


int main() {

  assert(meaning_of_life().run() == 42);
  std::cout << "1. pure Fx<int>: " << meaning_of_life().run() << "\n";


  auto r2 = greet().run(ScriptedAsk{.answer = "World"});
  assert(r2 == "Hello, World!");
  std::cout << "2. named handler: " << r2 << "\n";


  auto r3 = greet().run(ScriptedAsk{.answer = "Alice"});
  assert(r3 == "Hello, Alice!");
  std::cout << "3. named handler (Alice): " << r3 << "\n";


  auto r4a = greet().run(ScriptedAsk{.answer = "Bob"});
  auto r4b = greet().run(ScriptedAsk{.answer = "Carol"});
  assert(r4a == "Hello, Bob!");
  assert(r4b == "Hello, Carol!");
  std::cout << "4. swappable handlers: \"" << r4a << "\" / \"" << r4b << "\"\n";


  int ask_count = 0;
  std::vector<std::string> log_msgs;
  auto r5 = collect(3).run(CountingAsk{.count = ask_count, .reply = "x"},
                           RecordLog{.msgs = log_msgs});
  assert(r5.size() == 3);
  assert(ask_count == 3);
  assert(log_msgs.size() == 4);
  std::cout << "5. collect(3): " << ask_count << " asks, " << log_msgs.size()
            << " log entries\n";


  auto ok = safe_div(10, 2).run(FallbackFail{.fallback = -1});
  auto bad = safe_div(10, 0).run(FallbackFail{.fallback = -1});
  assert(ok == 5);
  assert(bad == -1);
  std::cout << "6. safe_div: 10/2=" << ok << ", 10/0=" << bad << "\n";


  auto zero_fallback = safe_div(10, 0).run(FallbackFail{.fallback = 0});
  auto print_fallback = safe_div(10, 0).run(VerboseFail{.fallback = 99});
  assert(zero_fallback == 0);
  assert(print_fallback == 99);
  std::cout << "7. swapped Fail handler: 0-fallback=" << zero_fallback
            << ", 99-fallback=" << print_fallback << "\n";

  std::cout << "All tests passed.\n";
}
