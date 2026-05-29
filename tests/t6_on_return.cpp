

#include "common.hpp"

#include <cassert>
#include <expected>
#include <optional>
#include <tuple>
#include <utility>
#include <vector>

using namespace std::string_literals;

#define PASS(msg) (std::cout << "  [pass] " << (msg) << "\n")


static auto safe_div(int a, int b) -> Row<Fail>::Fx<int> {
  if (b == 0)
    co_return perform(Fail{.reason = "div/0"});
  co_return a / b;
}


static auto logged_div(int a, int b) -> Row<Log, Fail>::Fx<int> {
  perform(Log{.message = "dividing"});
  if (b == 0)
    co_return perform(Fail{.reason = "div/0"});
  co_return a / b;
}


static auto ask_then_log() -> Row<Ask, Log>::Fx<int> {
  auto name = perform(Ask{.prompt = "?"});
  perform(Log{.message = "got " + name});
  co_return static_cast<int>(name.size());
}


static auto ask_log_div(int a, int b) -> Row<Ask, Log, Fail>::Fx<int> {
  auto s = perform(Ask{.prompt = "?"});
  perform(Log{.message = "div for " + s});
  if (b == 0)
    co_return perform(Fail{.reason = "div/0"});
  co_return a / b;
}


static auto ask_multiply(int a, int b) -> Row<Ask, Log>::Fx<int> {
  auto lbl = perform(Ask{.prompt = "label?"});
  perform(
      Log{.message = lbl + ":" + std::to_string(a) + "*" + std::to_string(b)});
  co_return a *b;
}


static auto multi_log(int n) -> Row<Log>::Fx<int> {
  for (int i = 0; i < n; ++i)
    perform(Log{.message = "step " + std::to_string(i)});
  co_return n;
}


static auto ask_then_multi_log(int n) -> Row<Ask, Log>::Fx<int> {
  perform(Ask{.prompt = "?"});
  for (int i = 0; i < n; ++i)
    perform(Log{.message = "item " + std::to_string(i)});
  co_return n;
}


struct IntToStr : Handler<Fail> {
  void handle(Fail, auto r) { r(0); }
  auto on_return(auto v) -> std::string { return std::to_string(v); }
};


struct FailToOpt : Handler<Fail> {
  auto handle(Fail, auto) -> std::optional<int> { return std::nullopt; }
  auto on_return(auto v) -> std::optional<int> { return v; }
};


struct FailToExp : Handler<Fail> {
  auto handle(Fail f, auto) -> std::expected<int, std::string> {
    return std::unexpected(f.reason);
  }
  auto on_return(int v) -> std::expected<int, std::string> { return v; }
};


struct Tagged {
  int value;
  bool ok;
};
struct FailToTagged : Handler<Fail> {
  auto handle(Fail, auto) -> Tagged { return {-1, false}; }
  auto on_return(int v) -> Tagged { return {v, true}; }
};


template <typename T> struct LogCount : Handler<Log> {
  int count = 0;
  void handle(Log, auto r) {
    ++count;
    r({});
  }
  auto on_return(T v) -> std::pair<T, int> { return {std::move(v), count}; }
};


struct LogSilent : Handler<Log> {
  int count = 0;
  void handle(Log, auto r) {
    ++count;
    r({});
  }
};


template <typename T> struct AskOpt : Handler<Ask> {
  std::string reply;
  void handle(Ask, auto r) { r(reply); }
  auto on_return(T v) -> std::optional<T> { return std::move(v); }
};


template <typename T> struct AskAbort : Handler<Ask> {
  auto handle(Ask, auto) -> std::optional<T> { return std::nullopt; }
  auto on_return(T v) -> std::optional<T> { return std::move(v); }
};


using AskLog = Row<Ask, Log>;
struct ScriptedAskLog : Handler<AskLog> {
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


struct CountLog : Handler<Log> {
  int &count;
  void handle(Log, auto r) {
    ++count;
    r({});
  }
};


struct RecordLog : Handler<Log> {
  std::vector<std::string> &msgs;
  void handle(Log e, auto r) {
    msgs.push_back(e.message);
    r({});
  }
};


struct CountAsk : Handler<Ask> {
  int &count;
  std::string reply;
  void handle(Ask, auto r) {
    ++count;
    r(reply);
  }
};


static void test_on_return_type_transform() {
  assert(safe_div(10, 2).run(IntToStr{}) == "5");

  assert(safe_div(10, 0).run(IntToStr{}) == "0");
  PASS("1. on_return: int→string on success; Fail-resume(0) also transformed");
}


static void test_abort_optional() {
  assert(safe_div(12, 3).run(FailToOpt{}) == std::optional{4});
  assert(safe_div(12, 0).run(FailToOpt{}) == std::nullopt);
  PASS("2. abort: operator()→nullopt aborts; on_return wraps success as "
       "optional");
}


static void test_abort_expected() {
  auto ok = safe_div(10, 2).run(FailToExp{});
  auto bad = safe_div(10, 0).run(FailToExp{});
  assert(ok.value() == 5);
  assert(!bad.has_value() && bad.error() == "div/0");
  PASS("3. abort: operator()→unexpected; on_return wraps success as expected");
}


static void test_abort_user_type() {
  auto ok = safe_div(9, 3).run(FailToTagged{});
  auto bad = safe_div(9, 0).run(FailToTagged{});
  assert(ok.ok && ok.value == 3);
  assert(!bad.ok && bad.value == -1);
  PASS("4. abort: user-defined Tagged wrapper — both abort and success return "
       "Tagged");
}


static void test_chain_two_on_returns() {

  {
    LogCount<std::optional<int>> lc;
    auto [val, cnt] = logged_div(10, 2).run(lc, FailToOpt{});
    assert(val == std::optional{5});
    assert(cnt == 1);
  }


  {
    LogCount<std::optional<int>> lc;
    auto [val, cnt] = logged_div(10, 0).run(lc, FailToOpt{});
    assert(val == std::nullopt);
    assert(cnt == 1);
  }
  PASS("5. chain: two on_return handlers compose "
       "int→opt<int>→pair<opt<int>,int>");
}


static void test_chain_three_on_returns() {
  using Inner = std::pair<std::optional<int>, int>;


  {
    LogCount<std::optional<int>> lc;
    AskOpt<Inner> ao{.reply = "Q"};
    auto result = ask_log_div(10, 2).run(ao, lc, FailToOpt{});

    assert(result.has_value());
    assert(result->first == std::optional{5});
    assert(result->second == 1);
  }

  {
    LogCount<std::optional<int>> lc;
    AskOpt<Inner> ao{.reply = "Q"};
    auto result = ask_log_div(10, 0).run(ao, lc, FailToOpt{});
    assert(result.has_value());
    assert(result->first == std::nullopt);
    assert(result->second == 1);
  }
  PASS("6. chain: three on_return handlers; int→opt<int>→pair→opt<pair>");
}


static void test_outer_abort_skips_inner() {
  int log_count = 0;
  AskAbort<int> aa;
  auto result = ask_then_log().run(aa, CountLog{.count = log_count});
  assert(result == std::nullopt);
  assert(log_count == 0);
  PASS(
      "7. outer abort: Ask aborts before Log fires; log handler never invoked");
}


static void test_outer_success_chain() {
  int log_count = 0;
  AskOpt<int> ao{.reply = "Hi"};
  auto result = ask_then_log().run(ao, CountLog{.count = log_count});
  assert(result == std::optional{2});
  assert(log_count == 1);
  PASS("8. outer success: Ask answers, Log fires, on_return wraps "
       "int→optional<int>");
}


static void test_run_default_construct() {

  auto r = safe_div(10, 0).run(IntToStr{});
  assert(r == "0");
  PASS("9. run(H{}): default-constructs handler; on_return still applied");
}


static void test_composite_handler_on_return() {
  {
    ScriptedAskLog sal{.name = "Bob", .logs = {}};
    auto [v, name, nlogs] = ask_then_log().run(sal);
    assert(v == 3);
    assert(name == "Bob");
    assert(nlogs == 1);
  }

  {
    ScriptedAskLog sal{.name = "Alice", .logs = {}};
    auto [v, name, nlogs] = ask_then_log().run(sal);
    assert(v == 5);
    assert(name == "Alice");
    assert(nlogs == 1);
  }
  PASS("10. composite handler on_return: Ask+Log handler wraps "
       "int→tuple<int,string,int>");
}


static auto prompt_length() -> Row<Ask>::Fx<int> {
  auto answer = perform(Ask{.prompt = "length of what?"});
  co_return static_cast<int>(answer.size());
}

struct AnnotatedAsk : Handler<Ask> {


  template <typename T> auto handle(Ask e, Cont<Ask, T> k) -> std::string {
    T len = k.resume("hello");
    return "Q=[" + e.prompt + "] A_len=" + std::to_string(len);
  }
};

static void test_capture_effect_then_on_return() {
  auto result = prompt_length().run(AnnotatedAsk{});
  static_assert(std::is_same_v<decltype(result), std::string>);
  assert(result == "Q=[length of what?] A_len=5");
  PASS(
      "11. Cont: template operator() deduces T; k.resume_and_get needs no <T>");
}


struct SpyAsk : Handler<Ask> {
  std::string answer;
  template <typename T> T handle(Ask, Cont<Ask, T> k) {
    return k.resume(answer);
  }
};


struct CaptureLog : Handler<Log> {
  std::vector<std::string> messages;
  void handle(Log e, auto r) {
    messages.push_back(e.message);
    r({});
  }
};


struct RecoverFail : Handler<Fail> {
  int fallback;
  void handle(Fail, auto r) { r(fallback); }
};


struct AnnotateCont : Handler<Ask> {
  std::string given;
  template <typename T> std::string handle(Ask e, Cont<Ask, T> k) {
    T v = k.resume(given);
    return "[" + e.prompt + "→" + given + "]=" + std::to_string(v);
  }
};


static void test_cont_spy_passthrough() {
  auto r = prompt_length().run(SpyAsk{.answer = "world"});
  static_assert(std::is_same_v<decltype(r), int>);
  assert(r == 5);
  PASS("12. Cont passthrough spy: T stays int; answer flows through k.resume "
       "unchanged");
}


static void test_spy_cont_then_on_return() {
  LogCount<int> lc;
  auto result = ask_then_log().run(lc, SpyAsk{.answer = "hello"});
  static_assert(std::is_same_v<decltype(result), std::pair<int, int>>);
  assert(result.first == 5);
  assert(result.second == 1);
  PASS("13. inner Cont spy (int→int) + outer on_return (int→pair): "
       "type evolves two layers");
}


static void test_cont_drives_resume_only_chain() {


  {
    std::vector<std::string> captured;
    auto r = ask_log_div(10, 2).run(AnnotateCont{.given = "hi"},
                                    RecordLog{.msgs = captured},
                                    RecoverFail{.fallback = -1});
    static_assert(std::is_same_v<decltype(r), std::string>);
    assert(r == "[?→hi]=5");
    assert(captured.size() == 1u);
    PASS("14a. outer Cont drives Log+Fail chain (happy path): int→string");
  }

  {
    std::vector<std::string> captured;
    auto r = ask_log_div(10, 0).run(AnnotateCont{.given = "hi"},
                                    RecordLog{.msgs = captured},
                                    RecoverFail{.fallback = -1});
    assert(r == "[?→hi]=-1");
    assert(captured.size() == 1u);
    PASS("14b. outer Cont drives Log+Fail chain (recovery path): int→string");
  }
}


static void test_three_level_cont_pipeline() {

  {
    SpyAsk spy{.answer = "input"};
    LogCount<int> lc;
    RecoverFail rf{.fallback = 0};
    auto result = ask_log_div(10, 5).run(lc, spy, rf);
    static_assert(std::is_same_v<decltype(result), std::pair<int, int>>);
    assert(result.first == 2);
    assert(result.second == 1);
  }

  {
    SpyAsk spy{.answer = "input"};
    LogCount<int> lc;
    RecoverFail rf{.fallback = 0};
    auto result = ask_log_div(10, 0).run(lc, spy, rf);
    assert(result.first == 0);
    assert(result.second == 1);
  }
  PASS("15. three-level: RecoverFail (passthrough) + Cont spy (int→int) + "
       "on_return (int→pair): int→int→pair<int,int>");
}

struct HandleLog : Handler<Log> {
  std::vector<std::string> captured;

  void handle(Log e, auto r) {
    captured.push_back(e.message);
    r({});
  };
};


static void test_same_comp_different_pipelines() {


  {
    HandleLog log_h;
    auto r = ask_multiply(3, 4).run(AnnotateCont{.given = "mul"}, log_h);
    static_assert(std::is_same_v<decltype(r), std::string>);
    assert(r == "[label?→mul]=12");
    assert(log_h.captured.size() == 1u);
    assert(log_h.captured[0] == "mul:3*4");
  }


  {
    LogCount<int> lc;
    auto r = ask_multiply(3, 4).run(lc, SpyAsk{.answer = "x"});
    static_assert(std::is_same_v<decltype(r), std::pair<int, int>>);
    assert(r.first ==
           12);
    assert(r.second == 1);
  }
  PASS("16. same computation, two pipelines: "
       "int→string (AnnotateCont) | int→pair<int,int> (spy+LogCount)");
}


static void test_sequential_cont_pipeline() {

  int step1 = prompt_length().run(SpyAsk{.answer = "hello"});
  assert(step1 == 5);


  int step2 = safe_div(step1 * 2, step1).run(RecoverFail{.fallback = -1});
  assert(step2 == 2);


  LogCount<int> lc;
  auto [val, logs] =
      ask_multiply(step1, step2).run(lc, SpyAsk{.answer = "prod"});
  assert(val == 10);
  assert(logs == 1);

  PASS("17. sequential pipeline: Cont results chain as inputs; "
       "each stage has its own handler pipeline");
}


struct LogAccumulate : Handler<Log> {
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


struct AskCount : Handler<Ask> {
  int n = 0;
  void handle(Ask, auto r) {
    ++n;
    r("Q");
  }
  template <typename T> auto on_return(T v) -> std::pair<T, int> {
    return {std::move(v), n};
  }
};


struct FailCount : Handler<Fail> {
  int n = 0;
  void handle(Fail, auto r) {
    ++n;
    r(-1);
  }
  template <typename T> auto on_return(T v) -> std::pair<T, int> {
    return {std::move(v), n};
  }
};


struct KokaWrap : Handler<Ask> {
  auto handle(Ask, auto k) { return k.resume("hello"); }
  auto on_return(int v) -> std::pair<int, std::string> {
    return {v, "len=" + std::to_string(v)};
  }
};


struct DriveAndStringify : Handler<Ask> {
  template <typename T> std::string handle(Ask, Cont<Ask, T> k) {
    T raw = k.resume("Q");
    return "result:" +
           std::to_string(static_cast<int>(raw));
  }
  auto on_return(std::string s) -> std::pair<std::string, int> {
    return {s, static_cast<int>(s.size())};
  }
};


struct KokaAnnotate : Handler<Ask> {
  auto handle(Ask e, auto k) -> std::pair<int, std::string> {
    auto [n, tag] = k.resume(e.prompt);
    return {n, e.prompt + ":" + tag};
  }
  auto on_return(int v) -> std::pair<int, std::string> {
    return {v, "len=" + std::to_string(v)};
  }
};


struct LogAddLarge : Handler<Log> {
  void handle(Log, auto r) { r({}); }
  auto on_return(int v) -> int { return v + 1000; }
};


static void test_handle_n_times_then_on_return() {
  auto [val, msgs] = multi_log(4).run(LogAccumulate{});
  assert(val == 4);
  assert(msgs.size() == 4u);
  assert(msgs[0] == "step 0");
  assert(msgs[3] == "step 3");

  PASS("18. void handle × 4 + on_return × 1: on_return observes all 4 "
       "accumulated messages (handle during execution, on_return after)");
}


static void test_two_handle_on_return_compose() {
  using Inner = std::pair<int, int>;
  using Final = std::pair<Inner, int>;


  {
    auto r = ask_log_div(10, 0).run(AskCount{}, LogSilent{}, FailCount{});
    static_assert(std::is_same_v<decltype(r), Final>);
    auto [inner, ask_n] = r;
    auto [val, fail_n] = inner;
    assert(ask_n == 1);
    assert(fail_n == 1);
    assert(val == -1);
  }


  {
    auto r = ask_log_div(10, 2).run(AskCount{}, LogSilent{}, FailCount{});
    auto [inner, ask_n] = r;
    auto [val, fail_n] = inner;
    assert(ask_n == 1);
    assert(fail_n == 0);
    assert(val == 5);
  }
  PASS("19. two handlers with handle+on_return: handles fire during execution; "
       "on_returns compose inner→outer; on_return unconditional (fail_n=0 when "
       "Fail never fires)");
}


static void test_temporal_ordering_handle_before_on_return() {
  int ask_count = 0;
  auto [val, msgs] = ask_then_multi_log(3).run(
      LogAccumulate{}, CountAsk{.count = ask_count, .reply = "Q"});
  static_assert(std::is_same_v<decltype(val), int>);


  assert(val == 3);
  assert(ask_count == 1);
  assert(msgs.size() == 3u);
  assert(msgs[0] == "item 0");
  assert(msgs[2] == "item 2");
  PASS("20. temporal ordering: 3× log_handle fire before on_return; "
       "msgs.size()==3 proves all handles preceded the single on_return call");
}


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

  assert(ask_n == 1);
  assert(fail_n == 0);
  assert(val == 4);
  assert(log_msgs.size() == 1u);
  assert(log_msgs[0] == "div for Q");
  PASS("21. three-handler chain: FailCount→LogAccumulate→AskCount bottom-up; "
       "all on_returns fire after coroutine; on_return unconditional "
       "(fail_n=0)");
}


static void test_koka_on_return_fires_inside_resume() {
  auto result = prompt_length().run(KokaWrap{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  assert(result.first == 5);
  assert(result.second ==
         "len=5");
  PASS("22. Koka semantics: on_return fires inside k.resume(); handle sees "
       "OutT=pair<int,string> directly — no manual cast needed");
}


static void test_drive_stringify_type_transform() {
  auto result = ask_log_div(12, 3).run(DriveAndStringify{}, LogSilent{},
                                       RecoverFail{.fallback = -1});
  static_assert(std::is_same_v<decltype(result), std::pair<std::string, int>>);
  assert(result.first == "result:4");
  assert(result.second == 8);
  PASS("23. non-Koka DrivingR path: handle returns string≠InnerR(int); "
       "on_return(DrivingR) chains to pair<string,int>");
}


static void test_fifo_on_return_inside_resume() {
  auto result = ask_then_log().run(KokaWrap{}, LogAddLarge{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  assert(result.first == 1005);
  assert(result.second == "len=1005");
  PASS("24. FIFO on_return inside k.resume(): LogAddLarge fires first (+1000), "
       "KokaWrap sees 1005 → {1005,\"len=1005\"}");
}


struct FailAddOffset : Handler<Fail> {
  void handle(Fail, auto r) { r(0); }
  auto on_return(int v) -> int { return v + 500; }
};

static auto ask_log_fail_comp(bool fail) -> Row<Ask, Log, Fail>::Fx<int> {
  auto name = perform(Ask{.prompt = "?"});
  perform(Log{.message = "got " + name});
  if (fail)
    co_return perform(Fail{.reason = "forced"});
  co_return static_cast<int>(name.size());
}


static void test_fifo_three_handlers_normal_path() {
  auto result =
      ask_log_fail_comp(false).run(KokaWrap{}, LogAddLarge{}, FailAddOffset{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  assert(result.first == 1505);
  assert(result.second == "len=1505");
  PASS("25. FIFO 3-handler stack (happy path): "
       "FailAddOffset(+500)→LogAddLarge(+1000)"
       "→KokaWrap.on_return; result={1505,\"len=1505\"}");
}


static void test_fifo_three_handlers_fail_resumption() {
  auto result =
      ask_log_fail_comp(true).run(KokaWrap{}, LogAddLarge{}, FailAddOffset{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);
  assert(result.first ==
         1500);
  assert(result.second == "len=1500");
  PASS("26. FIFO 3-handler stack (Fail resumption): "
       "Fail→resume(0)→on_return(0)=500"
       "→+1000→KokaWrap; result={1500,\"len=1500\"}");
}


struct LogMul2 : Handler<Log> {
  void handle(Log, auto r) { r({}); }
  auto on_return(int v) -> int { return v * 2; }
};


struct FailMul2 : Handler<Fail> {
  void handle(Fail, auto r) { r(0); }
  auto on_return(int v) -> int { return v * 2; }
};


static void test_fifo_composition_order_matters_a() {
  auto result =
      ask_log_fail_comp(false).run(KokaWrap{}, LogAddLarge{}, FailMul2{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);

  assert(result.first == 1010);
  assert(result.second == "len=1010");
  PASS("27a. FIFO order: KokaWrap(Ask), LogAddLarge(Log,+1000), "
       "FailMul2(Fail,×2)"
       " → ×2 fires first: 5→10→+1000=1010→{1010,\"len=1010\"}");
}


static void test_fifo_composition_order_matters_b() {
  auto result =
      ask_log_fail_comp(false).run(KokaWrap{}, FailMul2{}, LogAddLarge{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);

  assert(result.first == 2010);
  assert(result.second == "len=2010");
  PASS(
      "27b. FIFO order (reversed inner pair): KokaWrap(Ask), FailMul2(Fail,×2),"
      " LogAddLarge(Log,+1000)"
      " → +1000 fires first: 5→1005→×2=2010→{2010,\"len=2010\"}");
}


static void test_fifo_koka_annotate_with_inner_on_return() {
  auto result = ask_then_log().run(KokaAnnotate{}, LogAddLarge{});
  static_assert(std::is_same_v<decltype(result), std::pair<int, std::string>>);


  assert(result.first == 1001);
  assert(result.second == "?:len=1001");
  PASS("28. KokaAnnotate+LogAddLarge FIFO: LogAddLarge fires inside resume,"
       " KokaAnnotate sees {1001,\"len=1001\"}, re-annotates → "
       "{1001,\"?:len=1001\"}");
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
