

#include "common.hpp"

#include <array>
#include <cassert>


auto greet() -> IO::Fx<std::string> {
  perform(Log{.message = "starting greet"});
  auto name = perform(Ask{.prompt = "Name: "});
  perform(Log{.message = "greeting " + name});
  co_return "Hello, " + name + "!";
}

auto safe_div(int a, int b) -> Row<Fail>::Fx<int> {
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


auto ratio() -> All::Fx<std::string> {
  auto ns = perform(Ask{.prompt = "Numerator:   "});
  auto ds = perform(Ask{.prompt = "Denominator: "});
  auto q = co_await logged_div(std::stoi(ns), std::stoi(ds));
  co_return ns + "/" + ds + " = " + std::to_string(q);
}


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


struct CountingIO : Handler<IO> {
  std::string ask_reply;
  int &log_count;
  void handle(Ask, auto r) { r(ask_reply); }
  void handle(Log, auto r) {
    ++log_count;
    r({});
  }
};

struct IndexedIO : Handler<IO> {
  const char *const *inputs;
  int &idx;
  void handle(Ask, auto r) { r(std::string{inputs[idx++]}); }
  void handle(Log, auto r) { r({}); }
};

int main() {

  auto r1 = greet().run(ScriptedIO{.answers = {"Alice"}});
  assert(r1 == "Hello, Alice!");
  std::cout << "1. ScriptedIO (composite): " << r1 << "\n";


  auto r2 = ratio().run(ScriptedAll{.answers = {"12", "4"}});
  assert(r2 == "12/4 = 3");
  std::cout << "2. ScriptedAll (happy): " << r2 << "\n";


  auto r3 = ratio().run(ScriptedAll{.answers = {"12", "0"}});
  assert(r3 == "12/0 = -1");
  std::cout << "3. ScriptedAll (fail): " << r3 << "\n";


  auto r4 = ratio().run(ScriptedIO{.answers = {"8", "2"}}, WarnFail{});
  assert(r4 == "8/2 = 4");
  std::cout << "4. ScriptedIO + WarnFail (mixed): " << r4 << "\n";


  auto r5 = ratio().run(ScriptedIO{.answers = {"8", "0"}}, WarnFail{});
  assert(r5 == "8/0 = -1");
  std::cout << "5. ScriptedIO + WarnFail (fail path): " << r5 << "\n";


  int log_count = 0;
  auto r6 =
      greet().run(CountingIO{.ask_reply = "inline", .log_count = log_count});
  assert(r6 == "Hello, inline!");
  assert(log_count == 2);
  std::cout << "6. CountingIO (composite): " << r6 << " (" << log_count
            << " logs)\n";


  int ask_idx = 0;
  std::array<const char *, 2> in{"6", "3"};
  auto r7 = ratio().run(IndexedIO{.inputs = in.data(), .idx = ask_idx},
                        FallbackFail{.fallback = -1});
  assert(r7 == "6/3 = 2");
  std::cout << "7. IndexedIO + FallbackFail: " << r7 << "\n";


  std::cout
      << "8. VALIDATE_HANDLER: ScriptedIO, ScriptedAll, WarnFail all OK\n";

  std::cout << "All tests passed.\n";
}
