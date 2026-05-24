// t6_framework.cpp — Smoke tests for the src/fx/* micro-libraries
//
// Each section exercises one module in isolation, then a final section
// composes several together in a realistic pattern.

#include "../../fx.hpp"
#include <utility>

#include <cassert>
#include <iostream>
#include <variant>

#define PASS(name) std::cout << "  [pass] " name "\n"

// ============================================================================
// fx::env — Read-only environment injection
// ============================================================================

namespace test_env {

using namespace fx::env;

struct Config { int multiplier; };

static auto scale(int x) -> Ask<Config>::Fx<int> {
    auto cfg = perform(Ask<Config>{});
    co_return x * cfg.multiplier;
}

static void run() {
    assert(scale(7).run(env_handler(Config{.multiplier = 3})) == 21);
    assert(scale(7).run(env_handler(Config{.multiplier = 0})) == 0);
    PASS("env: Ask<Config> resolved from env_handler");
}

} // namespace test_env

// ============================================================================
// fx::state — Mutable state threading
// ============================================================================

namespace test_state {

using namespace fx::state;

static auto count_down(int n) -> State<int>::Fx<int> {
    int sum = 0;
    for (int i = 0; i < n; ++i) {
        int s = perform(Get<int>{});
        sum += s;
        perform(Put<int>{.value = s - 1});
    }
    co_return sum;
}

static void run() {
    // run_state convenience (single-effect)
    auto [result, final_s] = run_state(count_down(4), 10);
    assert(result  == 10 + 9 + 8 + 7);    // 34
    assert(final_s == 6);
    PASS("state: Get/Put threaded; run_state returns {result, final}");

    // state_handler with multi-effect run()
    int s = 5;
    auto h = state_handler(s);
    count_down(3).run(h);
    assert(s == 2);
    PASS("state: state_handler mutates caller variable");
}

} // namespace test_state

// ============================================================================
// fx::raise — Non-resumable structured failure
// ============================================================================

namespace test_raise {

using namespace fx::raise;

static auto safe_div(int a, int b) -> Raise<std::string>::Fx<int> {
    if (b == 0) {
        perform(Raise<std::string>{.error = "div/0"});
        std::unreachable(); // handler aborts without calling r(); coroutine never resumes
    }
    co_return a / b;
}

static void run() {
    auto ok  = run_expected(safe_div(10, 2));
    assert(ok.has_value() && *ok == 5);
    PASS("raise: happy path returns expected value");

    auto err = run_expected(safe_div(1, 0));
    assert(!err.has_value() && err.error() == "div/0");
    PASS("raise: Raise<E> captured as unexpected");
}

} // namespace test_raise

// ============================================================================
// fx::log — Structured logging
// ============================================================================

namespace test_log {

using namespace fx::log;

static auto do_work() -> Log::Fx<int> {
    perform(debug("starting"));
    perform(info("working"));
    co_return 42;
}

static void run() {
    // silent: no output, just verify it runs
    assert(do_work().run(silent_log()) == 42);
    PASS("log: silent_log discards all entries");

    // capture: inspect logged entries
    std::vector<Entry> entries;
    assert(do_work().run(capture_log(entries)) == 42);
    assert(entries.size() == 2);
    assert(entries[0].level   == Level::Debug);
    assert(entries[0].message == "starting");
    assert(entries[1].level   == Level::Info);
    assert(entries[1].message == "working");
    PASS("log: capture_log records level and message");
}

} // namespace test_log

// ============================================================================
// fx::chan — Emit / data pipelines
// ============================================================================

namespace test_chan {

using namespace fx::chan;

static auto iota(int n) -> Emit<int>::Fx<void> {
    for (int i = 0; i < n; ++i)
        perform(Emit<int>{.value = i});
    co_return;
}

static void run() {
    // collect
    std::vector<int> v;
    iota(5).run(collect_handler(v));
    assert((v == std::vector<int>{0, 1, 2, 3, 4}));
    PASS("chan: collect_handler builds vector");

    // each
    int sum = 0;
    iota(5).run(each_handler<int>([&sum](int x) { sum += x; }));
    assert(sum == 10);
    PASS("chan: each_handler iterates values");

    // fold
    int acc = 0;
    iota(5).run(fold_handler<int>(acc, [](int a, int b) { return a + b; }));
    assert(acc == 10);
    PASS("chan: fold_handler accumulates");
}

} // namespace test_chan

// ============================================================================
// fx::match — Exhaustive variant pattern matching
// ============================================================================

namespace test_match {

struct Circle  { float r; };
struct Rect    { float w, h; };
using Shape = std::variant<Circle, Rect>;

static void run() {
    Shape c = Circle{.r = 1.0f};
    Shape q = Rect{.w = 3.0f, .h = 4.0f};

    auto area = [](Shape &s) {
        return fx::match(s,
            [](Circle  c) { return c.r * c.r * 3.14159f; },
            [](Rect    r) { return r.w * r.h; });
    };

    assert(area(q) == 12.0f);
    (void)area(c); // float comparison; just check it compiles and runs
    PASS("match: exhaustive dispatch over variant alternatives");
}

} // namespace test_match

// ============================================================================
// Composition: env + state + log + raise in one computation
// ============================================================================

namespace test_composed {

using namespace fx::env;
using namespace fx::state;
using namespace fx::raise;
using namespace fx::log;

struct Config { int limit; };

using Row = fx::Row<Ask<Config>, fx::state::Get<int>, fx::state::Put<int>,
                    Log, Raise<std::string>>;

static auto pipeline(int n) -> Row::Fx<int> {
    auto cfg = perform(Ask<Config>{});
    int total = 0;
    for (int i = 0; i < n; ++i) {
        int s = perform(Get<int>{});
        if (s > cfg.limit) {
            perform(Raise<std::string>{.error = "limit exceeded"});
            std::unreachable(); // handler aborts; coroutine never resumes
        }
        perform(debug("tick"));
        perform(Put<int>{.value = s + 1});
        total += s;
    }
    co_return total;
}

static void run() {
    // happy path — catch_raise handles Raise<E> and any residual effects
    int s = 0;
    std::vector<Entry> logs;
    auto ok = catch_raise<std::string>(pipeline(3),
        env_handler(Config{.limit = 100}),
        state_handler(s),
        capture_log(logs));
    assert(ok.has_value());
    assert(*ok == 0 + 1 + 2);
    assert(s == 3);
    assert(logs.size() == 3);
    PASS("composed: env+state+log+raise — happy path");

    // failure path
    int s2 = 0;
    std::vector<Entry> logs2;
    auto err = catch_raise<std::string>(pipeline(10),
        env_handler(Config{.limit = 2}),
        state_handler(s2),
        capture_log(logs2));
    assert(!err.has_value());
    assert(err.error() == "limit exceeded");
    PASS("composed: Raise<string> captured on limit breach");
}

} // namespace test_composed

// ============================================================================
// Return clause — handler returns non-void to abort; on_return wraps value
// ============================================================================

namespace test_on_return {

struct Fail : fx::Effect<Fail> {
    std::string msg;
    using result_type = int; // never used on abort path
};

auto safe_div(int a, int b) -> Fail::Fx<int> {
    if (b == 0) perform(Fail{.msg = "div by zero"});
    co_return a / b;
}

struct FailToOpt : Fail::Handler<FailToOpt> {
    // Normal path: wrap the computation result in optional.
    auto on_return(int val) -> std::optional<int> { return val; }
    // Abort path: return nullopt without calling r().
    auto operator()(Fail, auto /*r*/) -> std::optional<int> { return std::nullopt; }
};

void run() {
    auto ok = safe_div(10, 2).run(FailToOpt{});
    static_assert(std::is_same_v<decltype(ok), std::optional<int>>);
    assert(ok.has_value() && *ok == 5);
    PASS("on_return: normal path wraps value via on_return");

    auto err = safe_div(1, 0).run(FailToOpt{});
    assert(!err.has_value());
    PASS("on_return: abort path returns nullopt without calling r()");
}

} // namespace test_on_return

// ============================================================================

int main() {
    std::cout << "=== t6: framework micro-libraries ===\n\n";

    std::cout << "[env]\n";     test_env::run();
    std::cout << "[state]\n";   test_state::run();
    std::cout << "[raise]\n";   test_raise::run();
    std::cout << "[log]\n";     test_log::run();
    std::cout << "[chan]\n";     test_chan::run();
    std::cout << "[match]\n";   test_match::run();
    std::cout << "[composed]\n"; test_composed::run();
    std::cout << "[on_return]\n"; test_on_return::run();

    std::cout << "\nAll tests passed.\n";
}
