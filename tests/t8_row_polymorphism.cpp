

#include "common.hpp"

#include <cassert>
#include <string>
#include <utility>
#include <vector>

using namespace std::string_literals;

#define PASS(msg) (std::cout << "  [pass] " << (msg) << "\n")


template<typename F, typename T, typename... Es>
auto fmap(F f, Fx<T, Es...> comp) -> Fx<std::invoke_result_t<F, T>, Es...> {
  co_return f(co_await std::move(comp));
}


template<typename T, typename U, typename... Es>
auto seq(Fx<T, Es...> first, Fx<U, Es...> second) -> Fx<U, Es...> {
  co_await std::move(first);
  co_return co_await std::move(second);
}


template<typename T, typename U, typename... Es>
auto both(Fx<T, Es...> a, Fx<U, Es...> b) -> Fx<std::pair<T, U>, Es...> {
  auto ra = co_await std::move(a);
  auto rb = co_await std::move(b);
  co_return std::pair{ra, rb};
}


template<typename T, typename... Es>
auto with_log_wrap(std::string label, Fx<T, Es...> comp) -> Fx<T, Log, Es...> {
  perform(Log{.message = label + ": start"});
  T r = co_await std::move(comp);
  perform(Log{.message = label + ": end"});
  co_return r;
}


template<typename E>
concept InIO = std::same_as<E, Ask> || std::same_as<E, Log>;


template<typename T, typename... Es>
  requires (InIO<Es> && ...)
auto io_only(Fx<T, Es...> comp) -> Fx<T, Es...> {
  return std::move(comp);
}


template<typename T, fx::FxMapper<T> F>
auto filter_fx(std::vector<T> xs, F pred)
    -> fx::Rebind<fx::FxOf<F, T>, std::vector<T>> {
  std::vector<T> out;
  for (auto& x : xs)
    if (co_await pred(x))
      out.push_back(x);
  co_return out;
}


template<typename T, fx::FxMapper<T> F>
auto fmap_list(std::vector<T> xs, F f)
    -> fx::Rebind<fx::FxOf<F, T>, std::vector<fx::FxValue<F, T>>> {
  std::vector<fx::FxValue<F, T>> out;
  for (auto& x : xs)
    out.push_back(co_await f(x));
  co_return out;
}


static auto pure_int(int v) -> Fx<int> { co_return v; }

static auto ask_int() -> Row<Ask>::Fx<int> {
  co_return std::stoi(perform(Ask{.prompt = "n: "}));
}

static auto ask_str() -> Row<Ask>::Fx<std::string> {
  co_return std::string(perform(Ask{.prompt = "s: "}));
}

static auto log_int(int v) -> Row<Log>::Fx<int> {
  perform(Log{.message = "value: " + std::to_string(v)});
  co_return v;
}


static auto widened() -> IO::Fx<int> {
  perform(Log{.message = "before ask"});
  int n = co_await ask_int();
  perform(Log{.message = "after ask: " + std::to_string(n)});
  co_return n;
}


struct FixedAsk : Handler<Ask> {
  std::string ans;
  void handle(Ask, auto r) { r(ans); }
};

struct CountLog : Handler<Log> {
  int& count;
  void handle(Log, auto r) { ++count; r({}); }
};

struct FixedAskCountLog : Handler<Ask, Log> {
  std::string ans;
  int& count;
  void handle(Ask, auto r) { r(ans); }
  void handle(Log, auto r) { ++count; r({}); }
};


struct CountingScriptedAsk : Handler<Ask> {
  int& count;
  std::vector<std::string> answers;
  int idx = 0;
  void handle(Ask, auto r) { ++count; r(answers[idx++]); }
};


int main() {


  {

    auto r1a = fmap([](int n) { return std::to_string(n); }, ask_int())
                 .run(ScriptedAskCycling{.answers = {"42"}});
    assert(r1a == "42");


    auto r1b = fmap([](int n) { return n * 2; }, pure_int(7)).run();
    assert(r1b == 14);


    int lc = 0;
    auto r1c = fmap([](int n) { return n + 1; }, log_int(5))
                 .run(CountLog{.count = lc});
    assert(r1c == 6 && lc == 1);

    PASS("1. fmap: row preserved for Ask, Log, and pure computations");
  }


  {
    int n_asks = 0;

    auto r2 = seq(ask_str(), ask_int())
                .run(CountingScriptedAsk{
                  .count   = n_asks,
                  .answers = {"ignored", "99"},
                });
    assert(r2 == 99 && n_asks == 2);
    PASS("2. seq: both computations run; first result discarded; row shared");
  }


  {
    auto [a, b] = both(ask_int(), ask_str())
                    .run(ScriptedAskCycling{.answers = {"5", "hello"}});
    assert(a == 5 && b == "hello");
    PASS("3. both: results paired; same Ask row required for both arguments");
  }


  {
    int lc = 0;
    auto r4 = widened().run(FixedAskCountLog{.ans = "21", .count = lc});
    assert(r4 == 21 && lc == 2);
    PASS("4. Row widening: {Ask} comp co_awaited inside IO ({Ask,Log})");
  }


  {
    auto run_pure = [](Fx<int> comp) { return comp.run(); };
    assert(run_pure(pure_int(99)) == 99);


    PASS("5. Pure-only: Fx<int> accepted; effectful computations rejected");
  }


  {
    auto run_ask_only = [](Fx<int, Ask> comp, std::string ans) {
      return comp.run(FixedAsk{.ans = std::move(ans)});
    };
    assert(run_ask_only(ask_int(), "7") == 7);


    PASS("6. Exact-row: Fx<int,Ask> accepted; pure and Log rejected");
  }


  {
    static_assert(InIO<Ask> && InIO<Log>);
    static_assert(!InIO<Fail>);


    auto r7a = io_only(ask_int()).run(FixedAsk{.ans = "3"});
    assert(r7a == 3);


    int lc = 0;
    auto r7b = io_only(log_int(5)).run(CountLog{.count = lc});
    assert(r7b == 5 && lc == 1);


    int lc2 = 0;
    auto r7c = io_only(widened()).run(FixedAskCountLog{.ans = "9", .count = lc2});
    assert(r7c == 9 && lc2 == 2);


    PASS("7. At-most-IO: {Ask}, {Log}, {Ask,Log} pass; Fail rejected");
  }


  {

    auto r8a = filter_fx(
                 std::vector{1, 2, 3, 4, 5},
                 [](int x) -> Fx<bool> { co_return x % 2 == 0; }
               ).run();
    assert((r8a == std::vector{2, 4}));


    auto confirm = [](int x) -> Row<Ask>::Fx<bool> {
      auto ans = perform(Ask{.prompt = "keep " + std::to_string(x) + "?"});
      co_return ans == "yes";
    };
    auto r8b = filter_fx(std::vector{1, 2, 3}, confirm)
                 .run(ScriptedAskCycling{.answers = {"yes", "no", "yes"}});
    assert((r8b == std::vector{1, 3}));

    PASS("8. filter_fx: pure pred → no effects; Ask pred → row {Ask}");
  }


  {

    auto r9a = fmap_list(
                 std::vector{1, 2, 3},
                 [](int x) -> Fx<std::string> {
                   co_return std::to_string(x * x);
                 }
               ).run();
    assert((r9a == std::vector<std::string>{"1", "4", "9"}));


    auto ask_mul = [](int x) -> Row<Ask>::Fx<int> {
      auto s = perform(Ask{.prompt = "factor for " + std::to_string(x) + ": "});
      co_return x * std::stoi(s);
    };
    auto r9b = fmap_list(std::vector{2, 3, 4}, ask_mul)
                 .run(ScriptedAskCycling{.answers = {"10"}});
    assert((r9b == std::vector{20, 30, 40}));

    PASS("9. fmap_list: pure fn → no effects; Ask fn → row {Ask}");
  }


  {

    int lc = 0;
    auto r10a = with_log_wrap("pure", pure_int(42))
                  .run(CountLog{.count = lc});
    assert(r10a == 42 && lc == 2);


    lc = 0;
    auto r10b = with_log_wrap("ask", ask_int())
                  .run(CountLog{.count = lc}, FixedAsk{.ans = "7"});
    assert(r10b == 7 && lc == 2);

    PASS("10. with_log_wrap: Log added to pure row and {Ask} row");
  }

  std::cout << "All tests passed.\n";
}
