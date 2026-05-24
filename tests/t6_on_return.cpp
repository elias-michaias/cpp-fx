// t6_on_return.cpp — on_return transformations and abort mechanism
//
// Tests:
//  1.  on_return converts the result type on the normal (happy) path
//  2.  Non-void operator() aborts — coroutine left suspended, on_return skipped
//  3.  Dual-mode: operator() aborts on failure, on_return wraps on success
//  4.  on_return with std::expected — structured error propagation
//  5.  on_return with a user-defined wrapper type
//  6.  Two chained on_return handlers — types compose outward
//  7.  Three-handler chain — inner abort consumed, two outer on_returns applied
//  8.  Outer handler aborts before inner is ever reached — inner on_return skipped
//  9.  Outer handler succeeds — inner on_return applied first, then outer
// 10.  run<H>() syntax with default-constructed handler
// 11.  Composite (Row) handler with on_return

#include "common.hpp"

#include <cassert>
#include <expected>
#include <optional>
#include <tuple>
#include <utility>
#include <vector>

using namespace std::string_literals;

#define PASS(msg) (std::cout << "  [pass] " << (msg) << "\n")

// ---- Computations -----------------------------------------------------------

// Returns a/b, or performs Fail if b==0.
static auto safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0) co_return perform(Fail{.reason = "div/0"});
  co_return a / b;
}

// Emits one Log then divides; uses both Log and Fail.
static auto logged_div(int a, int b) -> Row<Log, Fail>::Fx<int> {
  perform(Log{.message = "dividing"});
  if (b == 0) co_return perform(Fail{.reason = "div/0"});
  co_return a / b;
}

// Asks for a name, logs it, returns name length.
static auto ask_then_log() -> Row<Ask, Log>::Fx<int> {
  auto name = perform(Ask{.prompt = "?"});
  perform(Log{.message = "got " + name});
  co_return static_cast<int>(name.size());
}

// Asks for a name, logs, then divides; uses Ask + Log + Fail.
static auto ask_log_div(int a, int b) -> Row<Ask, Log, Fail>::Fx<int> {
  auto s = perform(Ask{.prompt = "?"});
  perform(Log{.message = "div for " + s});
  if (b == 0) co_return perform(Fail{.reason = "div/0"});
  co_return a / b;
}

// ---- Handlers ---------------------------------------------------------------

// Handles Fail by resuming with 0; on_return converts int → string.
struct IntToStr : Fail::Handler<IntToStr> {
  void handle(Fail, auto r) { r(0); }
  auto on_return(auto v) -> std::string { return std::to_string(v); }
};
VALIDATE_HANDLER(IntToStr);

// Dual-mode: abort (→ nullopt) on Fail; on_return wraps success int → optional<int>.
struct FailToOpt : Fail::Handler<FailToOpt> {
  auto handle(Fail, auto) -> std::optional<int> { return std::nullopt; }
  auto on_return(auto v) -> std::optional<int> { return v; }
};
VALIDATE_HANDLER(FailToOpt);

// Abort on Fail with reason; on_return wraps success → expected<int, string>.
struct FailToExp : Fail::Handler<FailToExp> {
  auto handle(Fail f, auto) -> std::expected<int, std::string> {
    return std::unexpected(f.reason);
  }
  auto on_return(int v) -> std::expected<int, std::string> { return v; }
};
VALIDATE_HANDLER(FailToExp);

// User-defined wrapper; both abort and success path return Tagged.
struct Tagged {
  int  value;
  bool ok;
};
struct FailToTagged : Fail::Handler<FailToTagged> {
  auto handle(Fail, auto) -> Tagged { return {-1, false}; }
  auto on_return(int v) -> Tagged { return {v, true}; }
};
VALIDATE_HANDLER(FailToTagged);

// Counts Log messages; on_return wraps any T → pair<T, log_count>.
template <typename T>
struct LogCount : Log::Handler<LogCount<T>> {
  int count = 0;
  void handle(Log, auto r) { ++count; r({}); }
  auto on_return(T v) -> std::pair<T, int> { return {std::move(v), count}; }
};

// Counts Log messages but has no on_return — purely side-effectful.
struct LogSilent : Log::Handler<LogSilent> {
  int count = 0;
  void handle(Log, auto r) { ++count; r({}); }
};
VALIDATE_HANDLER(LogSilent);

// Handles Ask with a fixed reply; wraps T → optional<T> on return.
template <typename T>
struct AskOpt : Ask::Handler<AskOpt<T>> {
  std::string reply;
  void  handle(Ask, auto r) { r(reply); }
  auto on_return(T v) -> std::optional<T> { return std::move(v); }
};

// Handles Ask by always aborting; on_return wraps T → optional<T> (never called).
template <typename T>
struct AskAbort : Ask::Handler<AskAbort<T>> {
  auto  handle(Ask, auto) -> std::optional<T> { return std::nullopt; }
  auto on_return(T v) -> std::optional<T> { return std::move(v); }
};

// Composite handler: handles both Ask and Log, wraps int → tuple<int, string, int>.
using AskLog = Row<Ask, Log>;
struct ScriptedAskLog : AskLog::Handler<ScriptedAskLog> {
  std::string              name;
  std::vector<std::string> logs;
  void  handle(Ask, auto r) { r(name); }
  void  handle(Log e, auto r) { logs.push_back(e.message); r({}); }
  auto on_return(int v) -> std::tuple<int, std::string, int> {
    return {v, name, static_cast<int>(logs.size())};
  }
};
VALIDATE_HANDLER(ScriptedAskLog);

// ---- Tests ------------------------------------------------------------------

// 1. on_return on the normal path converts int → string.
//    Fail is still handled (by resuming with 0), so on_return fires in both cases.
static void test_on_return_type_transform() {
  assert(safe_div(10, 2).run(IntToStr{}) == "5");
  // Fail → r(0) → on_return(0) = "0"
  assert(safe_div(10, 0).run(IntToStr{}) == "0");
  PASS("1. on_return: int→string on success; Fail-resume(0) also transformed");
}

// 2. Non-void operator() aborts; coroutine is left suspended.
//    on_return is only reached on the success path.
static void test_abort_optional() {
  assert(safe_div(12, 3).run(FailToOpt{}) == std::optional{4});
  assert(safe_div(12, 0).run(FailToOpt{}) == std::nullopt);
  PASS("2. abort: operator()→nullopt aborts; on_return wraps success as optional");
}

// 3. Structured error via std::expected; abort carries the error reason.
static void test_abort_expected() {
  auto ok  = safe_div(10, 2).run(FailToExp{});
  auto bad = safe_div(10, 0).run(FailToExp{});
  assert(ok.value() == 5);
  assert(!bad.has_value() && bad.error() == "div/0");
  PASS("3. abort: operator()→unexpected; on_return wraps success as expected");
}

// 4. User-defined wrapper type — both paths return the same Tag struct.
static void test_abort_user_type() {
  auto ok  = safe_div(9, 3).run(FailToTagged{});
  auto bad = safe_div(9, 0).run(FailToTagged{});
  assert(ok.ok && ok.value == 3);
  assert(!bad.ok && bad.value == -1);
  PASS("4. abort: user-defined Tagged wrapper — both abort and success return Tagged");
}

// 5. Two chained on_return handlers; the types compose outward:
//      int → (FailToOpt) optional<int> → (LogCount) pair<optional<int>, int>
static void test_chain_two_on_returns() {
  // Happy path: divide succeeds; FailToOpt wraps first, then LogCount.
  {
    LogCount<std::optional<int>> lc;
    auto [val, cnt] = logged_div(10, 2).run(lc, FailToOpt{});
    assert(val == std::optional{5});
    assert(cnt == 1);
  }
  // Fail path: FailToOpt aborts with nullopt; that nullopt flows into LogCount's on_return.
  {
    LogCount<std::optional<int>> lc;
    auto [val, cnt] = logged_div(10, 0).run(lc, FailToOpt{});
    assert(val == std::nullopt);
    assert(cnt == 1);  // Log was emitted before the Fail check
  }
  PASS("5. chain: two on_return handlers compose int→opt<int>→pair<opt<int>,int>");
}

// 6. Three-handler chain across Ask + Log + Fail:
//      int → (FailToOpt) opt<int> → (LogCount) pair<opt<int>,int>
//          → (AskOpt) optional<pair<opt<int>,int>>
static void test_chain_three_on_returns() {
  using Inner = std::pair<std::optional<int>, int>;

  // Happy path.
  {
    LogCount<std::optional<int>> lc;
    AskOpt<Inner>                ao{.reply = "Q"};
    auto result = ask_log_div(10, 2).run(ao, lc, FailToOpt{});
    // result : optional<pair<optional<int>, int>>
    assert(result.has_value());
    assert(result->first == std::optional{5});
    assert(result->second == 1);
  }
  // Fail path: inner abort value (nullopt) flows through both outer on_returns.
  {
    LogCount<std::optional<int>> lc;
    AskOpt<Inner>                ao{.reply = "Q"};
    auto result = ask_log_div(10, 0).run(ao, lc, FailToOpt{});
    assert(result.has_value());
    assert(result->first == std::nullopt);
    assert(result->second == 1);  // Log fired before the Fail check
  }
  PASS("6. chain: three on_return handlers; int→opt<int>→pair→opt<pair>");
}

// 7. Outer handler aborts before the inner effect is ever reached.
//    ask_then_log() performs Ask THEN Log; when AskAbort fires on Ask,
//    the coroutine never reaches Log — the log handler is never invoked.
//    Composed return type: int → (LogSilent: passthrough) → (AskAbort) optional<int>.
static void test_outer_abort_skips_inner() {
  int          log_count = 0;
  AskAbort<int> aa;
  auto result = ask_then_log().run(
      aa,
      handler<Log>([&](Log, auto r) { ++log_count; r({}); }));
  assert(result == std::nullopt);
  assert(log_count == 0);  // Log was never performed
  PASS("7. outer abort: Ask aborts before Log fires; log handler never invoked");
}

// 8. Outer handler succeeds — inner on_return applied first, then outer.
//    Same layout but Ask answers "Hi" instead of aborting.
static void test_outer_success_chain() {
  int         log_count = 0;
  AskOpt<int> ao{.reply = "Hi"};
  auto result = ask_then_log().run(
      ao,
      handler<Log>([&](Log, auto r) { ++log_count; r({}); }));
  assert(result == std::optional{2});  // "Hi".size() == 2
  assert(log_count == 1);              // Log fired once
  PASS("8. outer success: Ask answers, Log fires, on_return wraps int→optional<int>");
}

// 9. run<H>() default-constructs the handler.
static void test_run_default_construct() {
  // IntToStr is default-constructible; handles Fail by resuming with 0.
  auto r = safe_div(10, 0).run<IntToStr>();
  assert(r == "0");
  PASS("9. run<H>(): default-constructs handler; on_return still applied");
}

// 10. Composite (Row) handler with on_return.
//     ScriptedAskLog handles both Ask and Log in one struct.
//     Its on_return(int) → tuple<int, string, int> captures name + log count.
static void test_composite_handler_on_return() {
  {
    ScriptedAskLog sal{.name = "Bob", .logs = {}};
    auto [v, name, nlogs] = ask_then_log().run(sal);
    assert(v == 3);           // "Bob".size() == 3
    assert(name == "Bob");
    assert(nlogs == 1);
  }
  // Verify with a different name.
  {
    ScriptedAskLog sal{.name = "Alice", .logs = {}};
    auto [v, name, nlogs] = ask_then_log().run(sal);
    assert(v == 5);           // "Alice".size() == 5
    assert(name == "Alice");
    assert(nlogs == 1);
  }
  PASS("10. composite handler on_return: Ask+Log handler wraps int→tuple<int,string,int>");
}

// 11. Intercepting handler using TypedResume — Koka-style polymorphic T.
//
//     operator() is a function template: T is deduced from the TypedResume
//     token passed by the framework, so the handler doesn't need to know T
//     upfront.  This enables patterns like JSON::deserialize<T>(), caching,
//     metrics, etc. that are generic over whatever the computation returns.
static auto prompt_length() -> Ask::Fx<int> {
  auto answer = perform(Ask{.prompt = "length of what?"});
  co_return static_cast<int>(answer.size());
}

struct AnnotatedAsk : Ask::Handler<AnnotatedAsk> {
  // T is deduced as `int` here (the computation returns int).
  // The handler never mentions int — it works for any non-void T.
  template <typename T>
  auto handle(Ask e, Continuation<Ask, T> k) -> std::string {
    T len = k.resume("hello");   // T deduced, no explicit <int>
    return "Q=[" + e.prompt + "] A_len=" + std::to_string(len);
  }
};
VALIDATE_HANDLER(AnnotatedAsk);

static void test_capture_effect_then_on_return() {
  auto result = prompt_length().run(AnnotatedAsk{});
  static_assert(std::is_same_v<decltype(result), std::string>);
  assert(result == "Q=[length of what?] A_len=5");
  PASS("11. TypedResume: template operator() deduces T; k.resume_and_get needs no <T>");
}

// ---- Main -------------------------------------------------------------------

int main() {
  std::cout << "[t6_on_return]\n";
  test_on_return_type_transform();
  test_abort_optional();
  test_abort_expected();
  test_abort_user_type();
  test_chain_two_on_returns();
  test_chain_three_on_returns();
  test_outer_abort_skips_inner();
  test_outer_success_chain();
  test_run_default_construct();
  test_composite_handler_on_return();
  test_capture_effect_then_on_return();
  std::cout << "\nAll tests passed.\n";
}
