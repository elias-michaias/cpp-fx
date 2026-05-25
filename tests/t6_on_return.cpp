// t6_on_return.cpp — on_return transformations, abort mechanism, and Cont
// pipelines
//
// Tests:
//  1.  on_return converts the result type on the normal (happy) path
//  2.  Non-void operator() aborts — coroutine left suspended, on_return skipped
//  3.  Dual-mode: operator() aborts on failure, on_return wraps on success
//  4.  on_return with std::expected — structured error propagation
//  5.  on_return with a user-defined wrapper type
//  6.  Two chained on_return handlers — types compose outward
//  7.  Three-handler chain — inner abort consumed, two outer on_returns applied
//  8.  Outer handler aborts before inner is ever reached — inner on_return
//  skipped
//  9.  Outer handler succeeds — inner on_return applied first, then outer
// 10.  run<H>() syntax with default-constructed handler
// 11.  Composite (Row) handler with on_return
// 12.  Cont passthrough spy: T stays T, handler records side-channel data
// 13.  Inner Cont spy (T→T) + outer on_return (T→pair): two-layer type
// evolution
// 14.  Outer Cont drives through multiple resume-only inner handlers
// 15.  Three-level pipeline: resume-only + Cont spy + on_return compose to pair
// 16.  Same computation, two different handler pipelines, two distinct result
// types
// 17.  Sequential pipeline: Cont-handled results feed forward as inputs
// 18.  void handle fires N times; on_return fires once, observes all
// accumulated state
// 19.  Two handlers each with void handle + on_return; on_returns compose
// inner→outer
// 20.  Explicit temporal ordering: handle fires N times BEFORE on_return fires
// once
// 21.  Three handlers stacked; all void handle + on_return; chain runs
// bottom-up
// 22.  Koka-style driving handler: on_return fires inside k.resume(); handle
//      sees OutT (already-wrapped) directly — no manual type conversion needed
// 23.  Non-void handle where DrivingR ≠ InnerR (classic DrivingR path, no
// Koka):
//      handle produces string from int; on_return(DrivingR) chains to pair
// 24.  Koka outer handler + inner void handle+on_return: FIFO semantics —
//      inner on_return fires inside k.resume() before outer Koka handler sees result
// 25.  Three-handler FIFO stack (happy path): 3 on_returns chain innermost-first
// 26.  Three-handler FIFO stack (Fail resumption): Fail resumed, all on_returns fire
// 27a. FIFO composition order: LogAddLarge(Log,+1000) outer, FailMul2(Fail,×2) inner
// 27b. FIFO composition order reversed: +1000 fires before ×2 → different result
// 28.  KokaAnnotate + LogAddLarge: inner on_return fires inside k.resume(),
//      KokaAnnotate.handle sees already-transformed pair

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
  if (b == 0)
    co_return perform(Fail{.reason = "div/0"});
  co_return a / b;
}

// Emits one Log then divides; uses both Log and Fail.
static auto logged_div(int a, int b) -> Row<Log, Fail>::Fx<int> {
  perform(Log{.message = "dividing"});
  if (b == 0)
    co_return perform(Fail{.reason = "div/0"});
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
  if (b == 0)
    co_return perform(Fail{.reason = "div/0"});
  co_return a / b;
}

// Asks for a label, logs "label:a*b", returns a*b.
static auto ask_multiply(int a, int b) -> Row<Ask, Log>::Fx<int> {
  auto lbl = perform(Ask{.prompt = "label?"});
  perform(
      Log{.message = lbl + ":" + std::to_string(a) + "*" + std::to_string(b)});
  co_return a *b;
}

// Performs Log n times, returns n.
static auto multi_log(int n) -> Log::Fx<int> {
  for (int i = 0; i < n; ++i)
    perform(Log{.message = "step " + std::to_string(i)});
  co_return n;
}

// Asks once, then logs n times, returns n.
static auto ask_then_multi_log(int n) -> Row<Ask, Log>::Fx<int> {
  perform(Ask{.prompt = "?"});
  for (int i = 0; i < n; ++i)
    perform(Log{.message = "item " + std::to_string(i)});
  co_return n;
}

// ---- Handlers ---------------------------------------------------------------

// Handles Fail by resuming with 0; on_return converts int → string.
struct IntToStr : Fail::Handler<IntToStr> {
  void handle(Fail, auto r) { r(0); }
  auto on_return(auto v) -> std::string { return std::to_string(v); }
};
VALIDATE_HANDLER(IntToStr);

// Dual-mode: abort (→ nullopt) on Fail; on_return wraps success int →
// optional<int>.
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
  int value;
  bool ok;
};
struct FailToTagged : Fail::Handler<FailToTagged> {
  auto handle(Fail, auto) -> Tagged { return {-1, false}; }
  auto on_return(int v) -> Tagged { return {v, true}; }
};
VALIDATE_HANDLER(FailToTagged);

// Counts Log messages; on_return wraps any T → pair<T, log_count>.
template <typename T> struct LogCount : Log::Handler<LogCount<T>> {
  int count = 0;
  void handle(Log, auto r) {
    ++count;
    r({});
  }
  auto on_return(T v) -> std::pair<T, int> { return {std::move(v), count}; }
};

// Counts Log messages but has no on_return — purely side-effectful.
struct LogSilent : Log::Handler<LogSilent> {
  int count = 0;
  void handle(Log, auto r) {
    ++count;
    r({});
  }
};
VALIDATE_HANDLER(LogSilent);

// Handles Ask with a fixed reply; wraps T → optional<T> on return.
template <typename T> struct AskOpt : Ask::Handler<AskOpt<T>> {
  std::string reply;
  void handle(Ask, auto r) { r(reply); }
  auto on_return(T v) -> std::optional<T> { return std::move(v); }
};

// Handles Ask by always aborting; on_return wraps T → optional<T> (never
// called).
template <typename T> struct AskAbort : Ask::Handler<AskAbort<T>> {
  auto handle(Ask, auto) -> std::optional<T> { return std::nullopt; }
  auto on_return(T v) -> std::optional<T> { return std::move(v); }
};

// Composite handler: handles both Ask and Log, wraps int → tuple<int, string,
// int>.
using AskLog = Row<Ask, Log>;
struct ScriptedAskLog : AskLog::Handler<ScriptedAskLog> {
  std::string name;
  std::vector<std::string> logs;
  void handle(Ask, auto r) { r(name); }
  void handle(Log e, auto r) {
    logs.push_back(e.message);
    r({});
  }
  auto on_return(int v) -> std::tuple<int, std::string, int> {
    return {v, name, static_cast<int>(logs.size())};
  }
};
VALIDATE_HANDLER(ScriptedAskLog);

// Reference-counting Log handler for inline test assertions.
struct CountLog : Log::Handler<CountLog> {
  int &count;
  void handle(Log, auto r) { ++count; r({}); }
};
VALIDATE_HANDLER(CountLog);

// Reference-recording Log handler (captures log messages by ref).
struct RecordLog : Log::Handler<RecordLog> {
  std::vector<std::string> &msgs;
  void handle(Log e, auto r) { msgs.push_back(e.message); r({}); }
};
VALIDATE_HANDLER(RecordLog);

// Reference-counting Ask handler with a fixed reply.
struct CountAsk : Ask::Handler<CountAsk> {
  int &count;
  std::string reply;
  void handle(Ask, auto r) { ++count; r(reply); }
};
VALIDATE_HANDLER(CountAsk);

// ---- Tests ------------------------------------------------------------------

// 1. on_return on the normal path converts int → string.
//    Fail is still handled (by resuming with 0), so on_return fires in both
//    cases.
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
  PASS("2. abort: operator()→nullopt aborts; on_return wraps success as "
       "optional");
}

// 3. Structured error via std::expected; abort carries the error reason.
static void test_abort_expected() {
  auto ok = safe_div(10, 2).run(FailToExp{});
  auto bad = safe_div(10, 0).run(FailToExp{});
  assert(ok.value() == 5);
  assert(!bad.has_value() && bad.error() == "div/0");
  PASS("3. abort: operator()→unexpected; on_return wraps success as expected");
}

// 4. User-defined wrapper type — both paths return the same Tag struct.
static void test_abort_user_type() {
  auto ok = safe_div(9, 3).run(FailToTagged{});
  auto bad = safe_div(9, 0).run(FailToTagged{});
  assert(ok.ok && ok.value == 3);
  assert(!bad.ok && bad.value == -1);
  PASS("4. abort: user-defined Tagged wrapper — both abort and success return "
       "Tagged");
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
  // Fail path: FailToOpt aborts with nullopt; that nullopt flows into
  // LogCount's on_return.
  {
    LogCount<std::optional<int>> lc;
    auto [val, cnt] = logged_div(10, 0).run(lc, FailToOpt{});
    assert(val == std::nullopt);
    assert(cnt == 1); // Log was emitted before the Fail check
  }
  PASS("5. chain: two on_return handlers compose "
       "int→opt<int>→pair<opt<int>,int>");
}

// 6. Three-handler chain across Ask + Log + Fail:
//      int → (FailToOpt) opt<int> → (LogCount) pair<opt<int>,int>
//          → (AskOpt) optional<pair<opt<int>,int>>
static void test_chain_three_on_returns() {
  using Inner = std::pair<std::optional<int>, int>;

  // Happy path.
  {
    LogCount<std::optional<int>> lc;
    AskOpt<Inner> ao{.reply = "Q"};
    auto result = ask_log_div(10, 2).run(ao, lc, FailToOpt{});
    // result : optional<pair<optional<int>, int>>
    assert(result.has_value());
    assert(result->first == std::optional{5});
    assert(result->second == 1);
  }
  // Fail path: inner abort value (nullopt) flows through both outer on_returns.
  {
    LogCount<std::optional<int>> lc;
    AskOpt<Inner> ao{.reply = "Q"};
    auto result = ask_log_div(10, 0).run(ao, lc, FailToOpt{});
    assert(result.has_value());
    assert(result->first == std::nullopt);
    assert(result->second == 1); // Log fired before the Fail check
  }
  PASS("6. chain: three on_return handlers; int→opt<int>→pair→opt<pair>");
}

// 7. Outer handler aborts before the inner effect is ever reached.
//    ask_then_log() performs Ask THEN Log; when AskAbort fires on Ask,
//    the coroutine never reaches Log — the log handler is never invoked.
//    Composed return type: int → (LogSilent: passthrough) → (AskAbort)
//    optional<int>.
static void test_outer_abort_skips_inner() {
  int log_count = 0;
  AskAbort<int> aa;
  auto result = ask_then_log().run(aa, CountLog{.count = log_count});
  assert(result == std::nullopt);
  assert(log_count == 0); // Log was never performed
  PASS(
      "7. outer abort: Ask aborts before Log fires; log handler never invoked");
}

// 8. Outer handler succeeds — inner on_return applied first, then outer.
//    Same layout but Ask answers "Hi" instead of aborting.
static void test_outer_success_chain() {
  int log_count = 0;
  AskOpt<int> ao{.reply = "Hi"};
  auto result = ask_then_log().run(ao, CountLog{.count = log_count});
  assert(result == std::optional{2}); // "Hi".size() == 2
  assert(log_count == 1);             // Log fired once
  PASS("8. outer success: Ask answers, Log fires, on_return wraps "
       "int→optional<int>");
}

// 9. Default-construct handler via .run(H{}).
static void test_run_default_construct() {
  // IntToStr is default-constructible; handles Fail by resuming with 0.
  auto r = safe_div(10, 0).run(IntToStr{});
  assert(r == "0");
  PASS("9. run(H{}): default-constructs handler; on_return still applied");
}

// 10. Composite (Row) handler with on_return.
//     ScriptedAskLog handles both Ask and Log in one struct.
//     Its on_return(int) → tuple<int, string, int> captures name + log count.
static void test_composite_handler_on_return() {
  {
    ScriptedAskLog sal{.name = "Bob", .logs = {}};
    auto [v, name, nlogs] = ask_then_log().run(sal);
    assert(v == 3); // "Bob".size() == 3
    assert(name == "Bob");
    assert(nlogs == 1);
  }
  // Verify with a different name.
  {
    ScriptedAskLog sal{.name = "Alice", .logs = {}};
    auto [v, name, nlogs] = ask_then_log().run(sal);
    assert(v == 5); // "Alice".size() == 5
    assert(name == "Alice");
    assert(nlogs == 1);
  }
  PASS("10. composite handler on_return: Ask+Log handler wraps "
       "int→tuple<int,string,int>");
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
  template <typename T> auto handle(Ask e, Cont<Ask, T> k) -> std::string {
    T len = k.resume("hello"); // T deduced, no explicit <int>
    return "Q=[" + e.prompt + "] A_len=" + std::to_string(len);
  }
};
VALIDATE_HANDLER(AnnotatedAsk);

static void test_capture_effect_then_on_return() {
  auto result = prompt_length().run(AnnotatedAsk{});
  static_assert(std::is_same_v<decltype(result), std::string>);
  assert(result == "Q=[length of what?] A_len=5");
  PASS(
      "11. Cont: template operator() deduces T; k.resume_and_get needs no <T>");
}

// Cont passthrough spy: drives k with a given answer, returns T unchanged.
// T is deduced — works for any computation return type.
struct SpyAsk : Ask::Handler<SpyAsk> {
  std::string answer;
  template <typename T> T handle(Ask, Cont<Ask, T> k) {
    return k.resume(answer); // drive to completion, T→T
  }
};
VALIDATE_HANDLER(SpyAsk);

// Resume-only log capture: records messages but has no on_return.
struct CaptureLog : Log::Handler<CaptureLog> {
  std::vector<std::string> messages;
  void handle(Log e, auto r) {
    messages.push_back(e.message);
    r({});
  }
};
VALIDATE_HANDLER(CaptureLog);

// Resume-only Fail recovery: resumes with a fixed fallback; no on_return.
struct RecoverFail : Fail::Handler<RecoverFail> {
  int fallback;
  void handle(Fail, auto r) { r(fallback); }
};
VALIDATE_HANDLER(RecoverFail);

// Cont Ask handler: drives computation and annotates the result as a string.
// T→string type transform.
struct AnnotateCont : Ask::Handler<AnnotateCont> {
  std::string given;
  template <typename T> std::string handle(Ask e, Cont<Ask, T> k) {
    T v = k.resume(given);
    return "[" + e.prompt + "→" + given + "]=" + std::to_string(v);
  }
};
VALIDATE_HANDLER(AnnotateCont);

// ---- Tests 12-17 ------------------------------------------------------------

// 12. Cont passthrough spy: T (int) stays int; the answer feeds through
// k.resume
//     and becomes the computation's result without any type change.
//     prompt_length(): Ask::Fx<int>
//     run(SpyAsk{"world"}) → int (T→T)
static void test_cont_spy_passthrough() {
  auto r = prompt_length().run(SpyAsk{.answer = "world"});
  static_assert(std::is_same_v<decltype(r), int>);
  assert(r == 5); // "world".size() == 5, proved spy was called with answer
  PASS("12. Cont passthrough spy: T stays int; answer flows through k.resume "
       "unchanged");
}

// 13. Inner Cont spy (int→int) + outer on_return (int→pair<int,int>).
//     Two-layer type composition: spy drives through the Log effect (inside
//     k.resume), LogCount's on_return is applied at the run_push boundary.
//     ask_then_log(): Row<Ask,Log>::Fx<int>
//     run(LogCount<int>, SpyAsk{"hello"}) → pair<int,int>
static void test_spy_cont_then_on_return() {
  LogCount<int> lc;
  auto result = ask_then_log().run(lc, SpyAsk{.answer = "hello"});
  static_assert(std::is_same_v<decltype(result), std::pair<int, int>>);
  assert(result.first == 5);  // "hello".size() == 5 — spy answered "hello"
  assert(result.second == 1); // one Log fired during spy's k.resume()
  PASS("13. inner Cont spy (int→int) + outer on_return (int→pair): "
       "type evolves two layers");
}

// 14. Outer Cont drives through a chain of resume-only inner handlers.
//     All three effects are covered; AnnotateCont transforms int→string
//     by driving through the Log and Fail handlers.
//     ask_log_div(a,b): Row<Ask,Log,Fail>::Fx<int>
//     run(AnnotateCont{"hi"}, log_handler, RecoverFail{-1}) → string
//
//     Note: .run() copies handler objects into a local tuple, so side-channel
//     state changes (e.g. captured log messages) must be observed via
//     reference- capturing lambdas rather than struct members.
static void test_cont_drives_resume_only_chain() {
  // Happy path: no Fail.  Use a reference-capture struct to observe
  // that Log was handled inside k.resume().
  {
    std::vector<std::string> captured;
    auto r = ask_log_div(10, 2).run(AnnotateCont{.given = "hi"},
                                    RecordLog{.msgs = captured},
                                    RecoverFail{.fallback = -1});
    static_assert(std::is_same_v<decltype(r), std::string>);
    assert(r == "[?→hi]=5");
    assert(captured.size() == 1u); // Log fired inside AnnotateCont's k.resume()
    PASS("14a. outer Cont drives Log+Fail chain (happy path): int→string");
  }
  // Recovery path: Fail fires, RecoverFail resumes with -1.
  {
    std::vector<std::string> captured;
    auto r = ask_log_div(10, 0).run(AnnotateCont{.given = "hi"},
                                    RecordLog{.msgs = captured},
                                    RecoverFail{.fallback = -1});
    assert(r == "[?→hi]=-1");
    assert(captured.size() == 1u); // Log still fires before Fail
    PASS("14b. outer Cont drives Log+Fail chain (recovery path): int→string");
  }
}

// 15. Three-level pipeline: resume-only Fail (passthrough) + Cont spy
//     (int→int) + on_return Log (int→pair).
//     Type evolution: int → int (spy) → pair<int,int> (LogCount.on_return).
//     ask_log_div(10,5): Row<Ask,Log,Fail>::Fx<int>
//     run(LogCount<int>, SpyAsk{"input"}, RecoverFail{0}) → pair<int,int>
static void test_three_level_cont_pipeline() {
  // Happy path.
  {
    SpyAsk spy{.answer = "input"};
    LogCount<int> lc;
    RecoverFail rf{.fallback = 0};
    auto result = ask_log_div(10, 5).run(lc, spy, rf);
    static_assert(std::is_same_v<decltype(result), std::pair<int, int>>);
    assert(result.first == 2);  // 10/5 == 2
    assert(result.second == 1); // one Log fired inside spy's k.resume()
  }
  // Recovery path: Fail fires; RecoverFail provides 0.
  {
    SpyAsk spy{.answer = "input"};
    LogCount<int> lc;
    RecoverFail rf{.fallback = 0};
    auto result = ask_log_div(10, 0).run(lc, spy, rf);
    assert(result.first == 0);  // Fail → RecoverFail → 0
    assert(result.second == 1); // Log still fired before Fail
  }
  PASS("15. three-level: RecoverFail (passthrough) + Cont spy (int→int) + "
       "on_return (int→pair): int→int→pair<int,int>");
}

struct HandleLog : Log::Handler<HandleLog> {
  std::vector<std::string> captured;

  void handle(Log e, auto r) {
    captured.push_back(e.message);
    r({});
  };
};

// 16. Same computation, two completely different handler pipelines.
//     Demonstrates that the handler pipeline — not the computation — determines
//     the result type; swapping handlers changes the type at compile time.
//     ask_multiply(3,4): Row<Ask,Log>::Fx<int>
//     Pipeline A: AnnotateCont + CaptureLog → string
//     Pipeline B: LogCount<int> + SpyAsk    → pair<int,int>
static void test_same_comp_different_pipelines() {
  // Pipeline A: Cont annotator drives through a pre-instantiated log struct
  // with persisting state; int→string.
  {
    HandleLog log_h;
    auto r = ask_multiply(3, 4).run(AnnotateCont{.given = "mul"}, log_h);
    static_assert(std::is_same_v<decltype(r), std::string>);
    assert(r == "[label?→mul]=12");
    assert(log_h.captured.size() == 1u);
    assert(log_h.captured[0] == "mul:3*4");
  }
  // Pipeline B: inner spy (T→T) + outer LogCount (on_return);
  // int→pair<int,int>.
  {
    LogCount<int> lc;
    auto r = ask_multiply(3, 4).run(lc, SpyAsk{.answer = "x"});
    static_assert(std::is_same_v<decltype(r), std::pair<int, int>>);
    assert(r.first ==
           12); // 3*4 — spy answered "x", which doesn't affect product
    assert(r.second == 1); // one Log
  }
  PASS("16. same computation, two pipelines: "
       "int→string (AnnotateCont) | int→pair<int,int> (spy+LogCount)");
}

// 17. Sequential pipeline: each Cont-handled computation's result becomes the
//     input to the next, demonstrating value-level composition across runs.
//     Step 1: prompt_length()        + SpyAsk{"hello"}          → int 5
//     Step 2: safe_div(step1*2,step1)+ RecoverFail{-1}          → int 2
//     Step 3: ask_multiply(step1,step2)+LogCount<int>+SpyAsk    → pair{10,1}
static void test_sequential_cont_pipeline() {
  // Step 1: spy answers "hello", prompt_length returns 5.
  int step1 = prompt_length().run(SpyAsk{.answer = "hello"});
  assert(step1 == 5);

  // Step 2: step1 feeds the numerator; no Fail fires.
  int step2 = safe_div(step1 * 2, step1).run(RecoverFail{.fallback = -1});
  assert(step2 == 2); // (5*2) / 5 == 2

  // Step 3: multiply step1 × step2 with a two-handler pipeline.
  LogCount<int> lc;
  auto [val, logs] =
      ask_multiply(step1, step2).run(lc, SpyAsk{.answer = "prod"});
  assert(val == 10); // 5 * 2 == 10
  assert(logs == 1); // one Log message fired

  PASS("17. sequential pipeline: Cont results chain as inputs; "
       "each stage has its own handler pipeline");
}

// Accumulates log messages during execution (handle fires N times), then
// packages them all with the final result (on_return fires once at the end).
// Template on_return so it wraps ANY inner type T.
struct LogAccumulate : Log::Handler<LogAccumulate> {
  std::vector<std::string> msgs;
  void handle(Log e, auto r) {
    msgs.push_back(e.message);
    r({});
  }
  template <typename T>
  auto on_return(T v) -> std::pair<T, std::vector<std::string>> {
    return {std::move(v), std::move(msgs)};
  }
};

// Counts Ask invocations during execution; appends count to result on_return.
// Template on_return so it composes with any inner result type T.
struct AskCount : Ask::Handler<AskCount> {
  int n = 0;
  void handle(Ask, auto r) {
    ++n;
    r("Q");
  }
  template <typename T> auto on_return(T v) -> std::pair<T, int> {
    return {std::move(v), n};
  }
};
VALIDATE_HANDLER(AskCount);

// Counts Fail invocations during execution; appends count to result on_return.
struct FailCount : Fail::Handler<FailCount> {
  int n = 0;
  void handle(Fail, auto r) {
    ++n;
    r(-1);
  }
  template <typename T> auto on_return(T v) -> std::pair<T, int> {
    return {std::move(v), n};
  }
};
VALIDATE_HANDLER(FailCount);

// ---- Handlers for tests 22-24 -----------------------------------------------

// Koka-style driving handler: on_return fires INSIDE k.resume() so the handle
// function sees OutT = pair<int,string> rather than raw int.
// Handle simply passes the already-wrapped value through.
struct KokaWrap : Ask::Handler<KokaWrap> {
  auto handle(Ask, auto k) { return k.resume("hello"); }
  auto on_return(int v) -> std::pair<int, std::string> {
    return {v, "len=" + std::to_string(v)};
  }
};
VALIDATE_HANDLER(KokaWrap);

// Non-void handle where DrivingR ≠ InnerR (old DrivingR path, no Koka).
// Has on_return(string), NOT on_return(int), so HasReturnClause<H,int>=false.
// Drive path: handle drives k.resume("Q") → raw int → converts to string.
// on_return wraps DrivingR=string → pair<string,int>.
struct DriveAndStringify : Ask::Handler<DriveAndStringify> {
  template <typename T> std::string handle(Ask, Cont<Ask, T> k) {
    T raw = k.resume("Q");
    return "result:" +
           std::to_string(static_cast<int>(raw)); // DrivingR = string
  }
  auto on_return(std::string s) -> std::pair<std::string, int> {
    return {s, static_cast<int>(s.size())};
  }
};
VALIDATE_HANDLER(DriveAndStringify);

// Koka handler that ALSO uses the OutT value from k.resume() in handle,
// performing a further transformation of its own before returning.
// on_return(int → pair<int,string>); handle unpacks pair and re-annotates.
struct KokaAnnotate : Ask::Handler<KokaAnnotate> {
  auto handle(Ask e, auto k) -> std::pair<int, std::string> {
    auto [n, tag] = k.resume(e.prompt); // OutT = pair<int,string>
    return {n, e.prompt + ":" + tag};   // re-annotate with prompt
  }
  auto on_return(int v) -> std::pair<int, std::string> {
    return {v, "len=" + std::to_string(v)};
  }
};
VALIDATE_HANDLER(KokaAnnotate);

// Void handle + on_return: handles Log normally, then adds 1000 to the result
// via on_return.  Used in test 24 to show this on_return is bypassed when an
// outer Koka driving handler's abort propagates past this level.
struct LogAddLarge : Log::Handler<LogAddLarge> {
  void handle(Log, auto r) { r({}); }
  auto on_return(int v) -> int { return v + 1000; }
};
VALIDATE_HANDLER(LogAddLarge);

// ---- Tests 18-21 ------------------------------------------------------------

// 18. void handle fires N times; on_return fires exactly once and captures
//     all N accumulated messages.  Proves that handle runs during coroutine
//     execution and on_return runs after the coroutine finishes.
//     multi_log(4): Log::Fx<int>
//     run(LogAccumulate{}) → pair<int, vector<string>>
static void test_handle_n_times_then_on_return() {
  auto [val, msgs] = multi_log(4).run(LogAccumulate{});
  assert(val == 4); // co_return n
  assert(msgs.size() == 4u);
  assert(msgs[0] == "step 0");
  assert(msgs[3] == "step 3");
  // on_return received ALL 4 messages — it fired after all 4 handle calls.
  PASS("18. void handle × 4 + on_return × 1: on_return observes all 4 "
       "accumulated messages (handle during execution, on_return after)");
}

// 19. Two handlers each with void handle + on_return on different effects.
//     Execution: handles fire when effects are performed (Ask then Fail).
//     After: on_returns compose inner→outer (FailCount wraps first, AskCount
//     wraps the result of FailCount).
//     Also verifies that on_return fires unconditionally — FailCount.on_return
//     runs even when Fail never fires (happy path, n=0).
//
//     ask_log_div(a, b): Row<Ask,Log,Fail>::Fx<int>
//     run(AskCount{}, LogSilent{}, FailCount{})
//
//     Type chain (inner → outer):
//       int  →  pair<int,int>  (FailCount.on_return{val, fail_n})
//            →  pair<int,int>  (LogSilent: passthrough, no on_return)
//            →  pair<pair<int,int>,int>  (AskCount.on_return{inner, ask_n})
static void test_two_handle_on_return_compose() {
  using Inner = std::pair<int, int>;
  using Final = std::pair<Inner, int>;

  // Fail path: both Ask and Fail fire once.
  {
    auto r = ask_log_div(10, 0).run(AskCount{}, LogSilent{}, FailCount{});
    static_assert(std::is_same_v<decltype(r), Final>);
    auto [inner, ask_n] = r;
    auto [val, fail_n] = inner;
    assert(ask_n == 1);  // Ask fired once
    assert(fail_n == 1); // Fail fired once
    assert(val == -1);   // FailCount resumed with -1
  }
  // Happy path: Ask fires, Fail DOES NOT.
  // on_return still fires for FailCount with n=0.
  {
    auto r = ask_log_div(10, 2).run(AskCount{}, LogSilent{}, FailCount{});
    auto [inner, ask_n] = r;
    auto [val, fail_n] = inner;
    assert(ask_n == 1);  // Ask fired
    assert(fail_n == 0); // Fail never fired — on_return still called with n=0
    assert(val == 5);    // 10/2 == 5
  }
  PASS("19. two handlers with handle+on_return: handles fire during execution; "
       "on_returns compose inner→outer; on_return unconditional (fail_n=0 when "
       "Fail never fires)");
}

// 20. Explicit temporal ordering: handle fires N times, on_return fires once
//     AFTER all N handles.  The on_return value carries the total count from
//     all N handle invocations.
//
//     ask_then_multi_log(3): Row<Ask,Log>::Fx<int>
//       performs: Ask × 1, then Log × 3, returns 3
//     run(LogAccumulate{}, handler<Ask>(...)):
//       LogAccumulate.handle fires 3 times  → msgs grows to 3 entries
//       LogAccumulate.on_return fires once  → result carries all 3 msgs
//       Ask lambda fires once (reference-captured, observable)
static void test_temporal_ordering_handle_before_on_return() {
  int ask_count = 0;
  auto [val, msgs] = ask_then_multi_log(3).run(LogAccumulate{},
                                               CountAsk{.count = ask_count, .reply = "Q"});
  static_assert(std::is_same_v<decltype(val), int>);

  // handle × 3 then on_return × 1: on_return sees all 3 messages.
  assert(val == 3);
  assert(ask_count == 1);    // lambda observed via reference: Ask fired once
  assert(msgs.size() == 3u); // all 3 log-handles happened before on_return
  assert(msgs[0] == "item 0");
  assert(msgs[2] == "item 2");
  PASS("20. temporal ordering: 3× log_handle fire before on_return; "
       "msgs.size()==3 proves all handles preceded the single on_return call");
}

// 21. Three handlers stacked; all have void handle + on_return.
//     on_return chain runs bottom-up after the coroutine finishes.
//     ask_log_div(12, 3): Row<Ask,Log,Fail>::Fx<int>
//     run(AskCount{}, LogAccumulate{}, FailCount{})
//
//     Type chain (innermost → outermost):
//       int
//       → pair<int,int>                   FailCount.on_return  {val, fail_n}
//       → pair<pair<int,int>,vec<string>>  LogAccumulate.on_return
//       → pair<pair<pair<int,int>,vec>,int> AskCount.on_return {inner, ask_n}
//
//     Execution: Ask fires (n=1), Log fires (msgs=["div for Q"]), Fail does
//     not. FailCount.on_return(4)        → {4, 0}  (fail_n=0: handle never ran)
//     LogAccumulate.on_return({4,0})→ {{4,0}, ["div for Q"]}
//     AskCount.on_return(...)       → {{{4,0},["div for Q"]}, 1}
static void test_on_return_chain_bottom_up() {
  using Fail1 = std::pair<int, int>;
  using Log2 = std::pair<Fail1, std::vector<std::string>>;
  using Final = std::pair<Log2, int>;

  auto result =
      ask_log_div(12, 3).run(AskCount{}, LogAccumulate{}, FailCount{});
  static_assert(std::is_same_v<decltype(result), Final>);

  auto &[log_layer, ask_n] = result;
  auto &[fail_layer, log_msgs] = log_layer;
  auto &[val, fail_n] = fail_layer;

  assert(ask_n == 1);            // Ask fired once
  assert(fail_n == 0);           // Fail never fired; on_return ran with n=0
  assert(val == 4);              // 12/3 == 4
  assert(log_msgs.size() == 1u); // one Log message
  assert(log_msgs[0] == "div for Q"); // Ask answered "Q"
  PASS("21. three-handler chain: FailCount→LogAccumulate→AskCount bottom-up; "
       "all on_returns fire after coroutine; on_return unconditional "
       "(fail_n=0)");
}

// ---- Tests 22-24 ------------------------------------------------------------

// 22. Koka-style driving handler: on_return(int → pair<int,string>) fires
//     INSIDE k.resume() so handle sees the already-wrapped OutT directly.
//     Handle simply passes the result through — no manual type conversion.
//
//     prompt_length(): Ask::Fx<int>
//     KokaWrap.on_return(5) = {5, "len=5"} fires inside k.resume("hello")
//     handle returns {5, "len=5"} unchanged → pair<int,string>
static void test_koka_on_return_fires_inside_resume() {
  auto result = prompt_length().run(KokaWrap{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  assert(result.first == 5); // "hello".size() == 5
  assert(result.second ==
         "len=5"); // on_return(5) = {5,"len=5"} from inside resume
  PASS("22. Koka semantics: on_return fires inside k.resume(); handle sees "
       "OutT=pair<int,string> directly — no manual cast needed");
}

// 23. Non-void handle where DrivingR ≠ InnerR (classic DrivingR path; no Koka).
//     DriveAndStringify has on_return(string), NOT on_return(int), so
//     HasReturnClause<H,InnerR=int>=false → falls through to DrivingR path.
//     handle drives k.resume("Q") → raw int 4 (12/3) → string "result:4"
//     on_return("result:4") = {"result:4", 8} via pair<string,int>.
//     ask_log_div(12, 3): Row<Ask,Log,Fail>::Fx<int>
//     run(DriveAndStringify{}, LogSilent{}, RecoverFail{-1}) → pair<string,
//     int>
static void test_drive_stringify_type_transform() {
  auto result = ask_log_div(12, 3).run(DriveAndStringify{}, LogSilent{},
                                       RecoverFail{.fallback = -1});
  static_assert(std::is_same_v<decltype(result), std::pair<std::string, int>>);
  assert(result.first == "result:4"); // k.resume("Q") → 12/3=4 → "result:4"
  assert(result.second == 8);         // length of "result:4"
  PASS("23. non-Koka DrivingR path: handle returns string≠InnerR(int); "
       "on_return(DrivingR) chains to pair<string,int>");
}

// 24. Koka handler (KokaWrap) drives ask_then_log() through an inner
//     LogAddLarge handler.  FIFO on_return semantics: LogAddLarge.on_return
//     fires first (inside k.resume(), before KokaWrap sees the result):
//       inner int 5 → LogAddLarge.on_return(5) = 1005
//       then KokaWrap.on_return(1005) = {1005, "len=1005"}
//
//     ask_then_log(): Row<Ask,Log>::Fx<int>
//     run(KokaWrap{}, LogAddLarge{}) → pair<int,string>
static void test_fifo_on_return_inside_resume() {
  auto result = ask_then_log().run(KokaWrap{}, LogAddLarge{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  assert(result.first == 1005);           // LogAddLarge.on_return(5)=1005
  assert(result.second == "len=1005");    // KokaWrap.on_return(1005)
  PASS("24. FIFO on_return inside k.resume(): LogAddLarge fires first (+1000), "
       "KokaWrap sees 1005 → {1005,\"len=1005\"}");
}

// ---- Tests 25-28: FIFO on_return composition --------------------------------

// 25. Two inner void-handle+on_return handlers beneath a Koka driver.
//     ask_then_multi_log(3): Row<Ask,Log>::Fx<int> (returns 3)
//     run(KokaWrap{}, LogAddLarge{}, LogCount{})
//       LogCount.on_return(3)        → pair<int,int>{3,3}  (int → pair<int,int>)
//       ... but LogCount returns pair<int,int>, not int, so KokaWrap needs
//     a different setup.
//
//     To test a 3-deep FIFO walk, use two LogAddLarge-style handlers both on
//     Log, but they can't both handle Log without compositing. Instead: use a
//     single-effect computation (Log::Fx<int>) with three stacked handlers that
//     each have on_return: two plain LogAdd-style handlers + KokaWrap (on Ask).
//
//     multi_log(2): Log::Fx<int> → int 2
//     Arrangement: run(KokaAsk{driver}, LogAddSmall{}, LogAdd1{})
//       where KokaAsk handles Ask (but multi_log never asks, so it just drives
//       the coroutine to completion from the ask side)... this doesn't fire.
//
//     Better: use ask_then_log() with two inner handlers each with on_return:
//       run(KokaWrap{}, LogAdd1{}, LogAdd10{})
//       Execution: KokaWrap.handle fires, k.resume("hello") drives:
//         - Log fires → LogAdd1.handle dispatches r({})
//         - Log fires... but ask_then_log only logs once
//       After coroutine completes, FIFO walk:
//         LogAdd10.on_return(5) = 15   (stack top = LogAdd10)
//         LogAdd1.on_return(15) = 16
//         KokaWrap.on_return(16) = {16, "len=16"}
//
//     But wait: LogAdd1 and LogAdd10 both handle Log — we can't stack two
//     handlers for the same effect in a plain run() call.
//
//     Use: ask_then_log() with separate effects for each inner handler:
//       Row<Ask, Log, Fail>::Fx<int>-style computation? Too complex.
//
//     Simplest valid 3-level FIFO: use a 3-effect computation.
//     safe_fail_add(): Row<Ask,Log,Fail>::Fx<int>
//     run(KokaWrap{}, LogAddLarge{}, FailToOpt{})
//       FailToOpt.on_return(3)  → optional<int>{3}
//       ... but types would mismatch (LogAddLarge expects int, gets optional).
//
//     The only clean N>2 FIFO test requires handlers on DIFFERENT effects so
//     they can all be stacked.  KokaWrap(Ask) + LogAddLarge(Log) stacked
//     already gives 2 levels — that's test 24.  For a clean 3rd level, add
//     FailToOpt(Fail) as the innermost; the computation must perform Fail.
//
//     But if Fail fires FailToOpt aborts, so on_return wouldn't run.
//     We need Fail to NOT abort — i.e. handle Fail by resuming normally.
//
//     Use FailResume: handles Fail by resuming with a sentinel; on_return wraps
//     result in optional.  Then:
//       safe_fail_add(10,2): perform Fail never fires → on_return applies
//       run(KokaWrap, LogAddLarge, FailAddOffset)
//       FailAddOffset.on_return(5) = 500+5=505
//       LogAddLarge.on_return(505) = 1505
//       KokaWrap.on_return(1505) = {1505, "len=1505"}
//
//     safe_fail_add_comp(): Row<Ask,Log,Fail>::Fx<int>
//       performs Ask, Log, returns name.size() when b!=0; Fail when b==0
//     run(KokaWrap, LogAddLarge, FailAddOffset) with happy path (b=2):
//       int result = "hello".size() = 5
//       FailAddOffset.on_return(5) = 505
//       LogAddLarge.on_return(505) = 1505
//       KokaWrap.on_return(1505) = {1505,"len=1505"}

struct FailAddOffset : Fail::Handler<FailAddOffset> {
  void handle(Fail, auto r) { r(0); } // resume with 0 on error
  auto on_return(int v) -> int { return v + 500; }
};
VALIDATE_HANDLER(FailAddOffset);

static auto ask_log_fail_comp(bool fail) -> Row<Ask, Log, Fail>::Fx<int> {
  auto name = perform(Ask{.prompt = "?"});
  perform(Log{.message = "got " + name});
  if (fail)
    co_return perform(Fail{.reason = "forced"});
  co_return static_cast<int>(name.size());
}

// 25. Three stacked handlers with on_return: FIFO walk visits them innermost
//     first.  ask_log_fail_comp(false) = "hello".size() = 5 (happy path).
//     FailAddOffset.on_return(5)=505, LogAddLarge.on_return(505)=1505,
//     KokaWrap.on_return(1505)={1505,"len=1505"}
static void test_fifo_three_handlers_normal_path() {
  auto result = ask_log_fail_comp(false).run(KokaWrap{}, LogAddLarge{}, FailAddOffset{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  assert(result.first == 1505);
  assert(result.second == "len=1505");
  PASS("25. FIFO 3-handler stack (happy path): FailAddOffset(+500)→LogAddLarge(+1000)"
       "→KokaWrap.on_return; result={1505,\"len=1505\"}");
}

// 26. Same 3-handler stack, but the innermost (FailAddOffset) aborts via Fail.
//     ask_log_fail_comp(true): Fail fires → FailAddOffset.handle resumes with 0.
//     Then the computation returns 0.
//     FIFO: FailAddOffset.on_return(0)=500, LogAddLarge.on_return(500)=1500,
//           KokaWrap.on_return(1500)={1500,"len=1500"}
static void test_fifo_three_handlers_fail_resumption() {
  auto result = ask_log_fail_comp(true).run(KokaWrap{}, LogAddLarge{}, FailAddOffset{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  assert(result.first == 1500);   // FailAddOffset resumes with 0 → on_return(0)=500
  assert(result.second == "len=1500");
  PASS("26. FIFO 3-handler stack (Fail resumption): Fail→resume(0)→on_return(0)=500"
       "→+1000→KokaWrap; result={1500,\"len=1500\"}");
}

// 27. Composition order matters: swapping inner handlers changes type shape.
//     run(KokaWrap, FailAddOffset, LogAddLarge)
//     Innermost = LogAddLarge (on_return int→int, +1000)
//     Middle    = FailAddOffset (on_return int→int, +500)
//     KokaWrap  = outer (on_return int→pair<int,string>)
//
//     FailAddOffset's InnerR = int (= T = Fx<int>'s T, same as before).
//     LogAddLarge's InnerR = int too (same Fx<int>).
//     FIFO walk: LogAddLarge first (+1000), then FailAddOffset (+500).
//     ask_log_fail_comp(false): 5 → (+1000)=1005 → (+500)=1505 → {1505,"len=1505"}
//
//     Hmm, same result.  To show ORDER matters, we need non-commutative ops.
//     Use: OuterAdd (×2) and InnerAdd (+1000).  5→1000+5=1005→×2=2010 vs
//          5→×2=10→+1000=1010.
//
//     LogMul2: void handle Log, on_return(int v) → int { return v * 2; }

struct LogMul2 : Log::Handler<LogMul2> {
  void handle(Log, auto r) { r({}); }
  auto on_return(int v) -> int { return v * 2; }
};
VALIDATE_HANDLER(LogMul2);

// run(KokaWrap, LogAddLarge, LogMul2) — two handlers for Log… wait, can't
// have two handlers for the same effect.  Use a computation with Log and Fail:
// run(KokaWrap, LogAddLarge(Log), LogMul2(Log)) — same effect, not allowed.
//
// Use instead: ask_log_fail_comp with KokaWrap(Ask), LogAddLarge(Log),
// FailAddOffset(Fail) vs re-ordered KokaWrap(Ask), FailAddOffset(Fail),
// LogAddLarge(Log).  These share same effect-per-handler set, just different
// ordering between two inner non-Koka handlers.
//
// For ask_log_fail_comp(false)=5:
//   run(KokaWrap, LogAddLarge, FailAddOffset):
//     walk: FailAddOffset(+500) first, LogAddLarge(+1000) second → 5+500+1000=1505
//   run(KokaWrap, FailAddOffset, LogAddLarge):
//     walk: LogAddLarge(+1000) first, FailAddOffset(+500) second → 5+1000+500=1505
// Both sum to 1505 (addition is commutative). Use multiply for non-commutativity:
//   FailAddOffset: +500 → result 505
//   LogMul2: ×2 → need a handler for a DIFFERENT effect but that uses int
//
// Use Ask and Fail (same computation), with KokaWrap(Ask) and two inner handlers
// FailAddOffset(Fail) and something else... but we only have Ask/Log/Fail.
// Create AskMul3: handles Ask by resuming "hey" (3 chars), on_return(int) ×3.
// run(KokaWrap, AskMul3, FailAddOffset) on ask_log_fail_comp:
//   Two handlers for Ask — illegal.
//
// The simplest non-trivial demonstration: a computation with 3 distinct effects
// and 3 handlers each with on_return, where one is the Koka driver.
// Use a 2-non-koka stack with ops that compose differently:
// For 5: (+500 then *2) = 1010; (*2 then +500) = 510.
// We need a MulHandler on Fail and AddHandler on Log, or vice versa.

struct FailMul2 : Fail::Handler<FailMul2> {
  void handle(Fail, auto r) { r(0); }
  auto on_return(int v) -> int { return v * 2; }
};
VALIDATE_HANDLER(FailMul2);

// run(KokaWrap, LogAddLarge, FailMul2) on ask_log_fail_comp(false)=5:
//   FIFO walk (innermost first):
//     FailMul2.on_return(5)   = 10
//     LogAddLarge.on_return(10) = 1010
//     KokaWrap.on_return(1010) = {1010,"len=1010"}
static void test_fifo_composition_order_matters_a() {
  auto result = ask_log_fail_comp(false).run(KokaWrap{}, LogAddLarge{}, FailMul2{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  // FIFO: FailMul2(×2)=10, then LogAddLarge(+1000)=1010
  assert(result.first == 1010);
  assert(result.second == "len=1010");
  PASS("27a. FIFO order: KokaWrap(Ask), LogAddLarge(Log,+1000), FailMul2(Fail,×2)"
       " → ×2 fires first: 5→10→+1000=1010→{1010,\"len=1010\"}");
}

// run(KokaWrap, FailMul2, LogAddLarge) on ask_log_fail_comp(false)=5:
//   FIFO walk (innermost first = LogAddLarge, then FailMul2):
//     LogAddLarge.on_return(5)  = 1005
//     FailMul2.on_return(1005)  = 2010
//     KokaWrap.on_return(2010)  = {2010,"len=2010"}
static void test_fifo_composition_order_matters_b() {
  auto result = ask_log_fail_comp(false).run(KokaWrap{}, FailMul2{}, LogAddLarge{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  // FIFO: LogAddLarge(+1000)=1005, then FailMul2(×2)=2010
  assert(result.first == 2010);
  assert(result.second == "len=2010");
  PASS("27b. FIFO order (reversed inner pair): KokaWrap(Ask), FailMul2(Fail,×2),"
       " LogAddLarge(Log,+1000)"
       " → +1000 fires first: 5→1005→×2=2010→{2010,\"len=2010\"}");
}

// 28. KokaAnnotate (drives ask, re-annotates pair with prompt) + LogAddLarge.
//     KokaAnnotate.on_return(int) → pair<int,string>{"v","len=v"}
//     KokaAnnotate.handle(Ask e, k) → auto [n,tag]=k.resume(e.prompt) → re-annotate
//     ask_then_log(): Row<Ask,Log>::Fx<int>
//     run(KokaAnnotate{}, LogAddLarge{})
//
//     ask_then_log() with ask prompt "?", answer "?":
//       name = "?" (1 char), int result = 1
//     FIFO: LogAddLarge.on_return(1) = 1001
//     KokaAnnotate sees pair {1001,"len=1001"}, re-annotates → {1001,"?:len=1001"}
static void test_fifo_koka_annotate_with_inner_on_return() {
  auto result = ask_then_log().run(KokaAnnotate{}, LogAddLarge{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  // LogAddLarge.on_return("?".size()=1) = 1001
  // KokaAnnotate.handle receives pair{1001,"len=1001"}, prompt="?":
  //   returns {1001, "?:len=1001"}
  assert(result.first == 1001);
  assert(result.second == "?:len=1001");
  PASS("28. KokaAnnotate+LogAddLarge FIFO: LogAddLarge fires inside resume,"
       " KokaAnnotate sees {1001,\"len=1001\"}, re-annotates → {1001,\"?:len=1001\"}");
}


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
  test_cont_spy_passthrough();
  test_spy_cont_then_on_return();
  test_cont_drives_resume_only_chain();
  test_three_level_cont_pipeline();
  test_same_comp_different_pipelines();
  test_sequential_cont_pipeline();
  test_handle_n_times_then_on_return();
  test_two_handle_on_return_compose();
  test_temporal_ordering_handle_before_on_return();
  test_on_return_chain_bottom_up();
  test_koka_on_return_fires_inside_resume();
  test_drive_stringify_type_transform();
  test_fifo_on_return_inside_resume();
  test_fifo_three_handlers_normal_path();
  test_fifo_three_handlers_fail_resumption();
  test_fifo_composition_order_matters_a();
  test_fifo_composition_order_matters_b();
  test_fifo_koka_annotate_with_inner_on_return();
  std::cout << "\nAll tests passed.\n";
}
