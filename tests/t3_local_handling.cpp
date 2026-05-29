

#include "common.hpp"

#include <cassert>


auto ask_once(std::string prompt) -> Row<Ask>::Fx<std::string> {
  co_return perform(Ask{.prompt = std::move(prompt)});
}

auto ask_and_log(std::string label, std::string prompt) -> IO::Fx<std::string> {
  perform(Log{.message = "asking: " + label});
  auto ans = co_await ask_once(std::move(prompt));
  perform(Log{.message = "got: " + ans});
  co_return ans;
}

auto safe_div(int a, int b) -> Row<Fail>::Fx<int> {
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


auto ask_silently(std::string label, std::string prompt) {
  return ask_and_log(std::move(label), std::move(prompt)).bind(SilentLog{});
}


auto safe_div_or_zero(int a, int b) {
  return safe_div_logged(a, b).bind(FallbackFail{.fallback = 0});
}


auto silent_div(int a, int b) {
  return safe_div_logged(a, b).bind(FallbackFail{.fallback = 0}, SilentLog{});
}


auto prompted_div() -> IO::Fx<int> {
  auto num = std::stoi(co_await ask_once("Numerator:   "));
  auto den = std::stoi(co_await ask_once("Denominator: "));
  co_return co_await safe_div_logged(num, den).bind(
      FallbackFail{.fallback = 0});
}


struct ScriptedAskFixed : Handler<Ask> {
  std::string answer;
  void handle(Ask, auto r) { r(answer); }
};

struct RecordLog : Handler<Log> {
  std::vector<std::string> &msgs;
  void handle(Log e, auto r) {
    msgs.push_back(e.message);
    r({});
  }
};

struct IndexedAsk : Handler<Ask> {
  const char *const *inputs;
  int &idx;
  void handle(Ask, auto r) { r(std::string{inputs[idx++]}); }
};

int main() {

  auto r1a =
      ask_silently("city", "City: ").run(ScriptedAskFixed{.answer = "London"});
  assert(r1a == "London");
  std::cout << "1a. ask_silently: \"" << r1a
            << "\"  (Log never reached caller)\n";


  std::vector<std::string> logged;
  auto r1b_ok = safe_div_or_zero(10, 2).run(RecordLog{.msgs = logged});
  auto r1b_bad = safe_div_or_zero(10, 0).run(RecordLog{.msgs = logged});
  assert(r1b_ok == 5);
  assert(r1b_bad == 0);
  std::cout << "1b. safe_div_or_zero: 10/2=" << r1b_ok << ", 10/0=" << r1b_bad
            << "  (Fail absorbed, Log logged " << logged.size() << " msgs)\n";


  assert(silent_div(8, 4).run() == 2);
  assert(silent_div(8, 0).run() == 0);
  std::cout << "2. silent_div: 8/4=" << silent_div(8, 4).run()
            << ", 8/0=" << silent_div(8, 0).run() << "  (no handlers)\n";


  std::array<const char *, 2> inputs{"8", "4"};
  int idx = 0;
  auto r3a = prompted_div().run(IndexedAsk{.inputs = inputs.data(), .idx = idx},
                                SilentLog{});
  assert(r3a == 2);
  std::cout << "3. prompted_div 8/4=" << r3a
            << "  (Fail gone, Ask+Log remain)\n";


  inputs = {"8", "0"};
  idx = 0;
  auto r3b = prompted_div().run(IndexedAsk{.inputs = inputs.data(), .idx = idx},
                                SilentLog{});
  assert(r3b == 0);
  std::cout << "3b. prompted_div 8/0=" << r3b
            << "  (fallback, Fail not visible)\n";


  auto r4 = ask_and_log("x", "x: ")
                .bind(SilentLog{})
                .bind(ScriptedAskFixed{.answer = "stripped"})
                .run();
  assert(r4 == "stripped");
  std::cout << "4. chained bind: \"" << r4 << "\"  (pure BoundFx)\n";

  std::cout << "All tests passed.\n";
}
