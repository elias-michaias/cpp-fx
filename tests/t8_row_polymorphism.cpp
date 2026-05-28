// t8_row_polymorphism.cpp — higher-order effect inference and row polymorphism
//
// Row polymorphism: higher-order functions whose effect rows are determined
// entirely by their argument types rather than hardcoded.  The same HOF works
// uniformly over any effect row that satisfies a structural constraint.
//
// Key concepts:
//   • Effect inference — a HOF's row is deduced from its arguments' Fx types
//   • Row widening     — a narrower computation is valid in a wider context
//   • Row extension    — a HOF can add effects to any computation's row
//   • Row constraints  — requires-clauses (exact or bounded) reject bad rows
//
// Library utilities used (all in the fx:: namespace, defined in effects.hpp):
//   fx::AnyFx<T>         — concept: T is some Fx<V, Es...>
//   fx::FxMapper<F, T>   — concept: F(T) returns some Fx type
//   fx::Rebind<FxT, NewT>— same effect row, new value type
//
// Tests:
//  1.  fmap      — pure function mapped over result; row preserved (inference)
//  2.  seq       — two same-row computations sequenced; first result discarded
//  3.  both      — two same-row computations run; results paired
//  4.  Row widening: Ask-only computation co_awaited inside IO (Ask+Log)
//  5.  Pure-only constraint: HOF rejecting any effectful computation
//  6.  Exact-row constraint: HOF accepting only Fx<T, Ask>
//  7.  At-most-IO concept: accepts {Ask}, {Log}, {Ask,Log}; rejects Fail
//  8.  filter_fx  — row inferred from predicate (pure pred → none; Ask pred → Ask)
//  9.  fmap_list  — row inferred from mapping function (same inference pattern)
// 10.  with_log_wrap — Log added to any computation's existing row

#include "common.hpp"

#include <cassert>
#include <string>
#include <utility>
#include <vector>

using namespace std::string_literals;

#define PASS(msg) (std::cout << "  [pass] " << (msg) << "\n")

// fx::AnyFx, fx::FxMapper, and fx::Rebind are provided by effects.hpp.

// ── Row-polymorphic HOFs ──────────────────────────────────────────────────────

// 1. fmap: apply a pure function to the result of any effectful computation.
//    Effect row is fully inferred from comp; the row passes through unchanged.
template<typename F, typename T, typename... Es>
auto fmap(F f, Fx<T, Es...> comp) -> Fx<std::invoke_result_t<F, T>, Es...> {
  co_return f(co_await std::move(comp));
}

// 2. seq: run two same-row computations; discard the first result.
//    Both arguments must have the same Es... — the type system enforces this.
template<typename T, typename U, typename... Es>
auto seq(Fx<T, Es...> first, Fx<U, Es...> second) -> Fx<U, Es...> {
  co_await std::move(first);
  co_return co_await std::move(second);
}

// 3. both: run two same-row computations and pair their results.
template<typename T, typename U, typename... Es>
auto both(Fx<T, Es...> a, Fx<U, Es...> b) -> Fx<std::pair<T, U>, Es...> {
  auto ra = co_await std::move(a);
  auto rb = co_await std::move(b);
  co_return std::pair{ra, rb};
}

// 10. with_log_wrap: prepend and append Log messages around any computation.
//     Log is added to whatever row comp already has — the row is extended.
template<typename T, typename... Es>
auto with_log_wrap(std::string label, Fx<T, Es...> comp) -> Fx<T, Log, Es...> {
  perform(Log{.message = label + ": start"});
  T r = co_await std::move(comp);
  perform(Log{.message = label + ": end"});
  co_return r;
}

// 7. Concept: E is a member of the IO row (Ask or Log only).
template<typename E>
concept InIO = std::same_as<E, Ask> || std::same_as<E, Log>;

// io_only: accepts only computations whose entire effect row ⊆ {Ask, Log}.
// A computation with Fail or any other effect is rejected at the call site.
template<typename T, typename... Es>
  requires (InIO<Es> && ...)
auto io_only(Fx<T, Es...> comp) -> Fx<T, Es...> {
  return std::move(comp);
}

// 8. filter_fx: row-polymorphic filter — row inferred from predicate's return type.
//    pred : T → Fx<bool, Es...>   (any effect row, including none)
//    result:   Fx<vector<T>, Es...>
template<typename T, fx::FxMapper<T> F>
auto filter_fx(std::vector<T> xs, F pred)
    -> fx::Rebind<fx::FxOf<F, T>, std::vector<T>> {
  std::vector<T> out;
  for (auto& x : xs)
    if (co_await pred(x))
      out.push_back(x);
  co_return out;
}

// 9. fmap_list: row-polymorphic list map — row inferred from mapping function.
//    f     : T → Fx<U, Es...>   (any effect row, including none)
//    result:   Fx<vector<U>, Es...>
template<typename T, fx::FxMapper<T> F>
auto fmap_list(std::vector<T> xs, F f)
    -> fx::Rebind<fx::FxOf<F, T>, std::vector<fx::FxValue<F, T>>> {
  std::vector<fx::FxValue<F, T>> out;
  for (auto& x : xs)
    out.push_back(co_await f(x));
  co_return out;
}

// ── Computations ──────────────────────────────────────────────────────────────

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

// Demonstrates row widening: an Ask-only computation is co_awaited inside
// an IO (Ask + Log) coroutine.  Ask ⊆ IO is checked at compile time.
static auto widened() -> IO::Fx<int> {
  perform(Log{.message = "before ask"});
  int n = co_await ask_int();  // Row<Ask>::Fx<int>; {Ask} ⊆ {Ask,Log} ✓
  perform(Log{.message = "after ask: " + std::to_string(n)});
  co_return n;
}

// ── Handlers ──────────────────────────────────────────────────────────────────

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

// For test 2: counts how many times Ask fires alongside scripted answers.
struct CountingScriptedAsk : Handler<Ask> {
  int& count;
  std::vector<std::string> answers;
  int idx = 0;
  void handle(Ask, auto r) { ++count; r(answers[idx++]); }
};

// ── Tests ─────────────────────────────────────────────────────────────────────

int main() {
  // 1. fmap: row is preserved exactly — the HOF inherits whatever row comp has.
  //    The effect pack Es... is deduced from comp's type at the call site.
  {
    // Ask computation → fmap result also has row {Ask}.
    auto r1a = fmap([](int n) { return std::to_string(n); }, ask_int())
                 .run(ScriptedAskCycling{.answers = {"42"}});
    assert(r1a == "42");

    // Pure computation → fmap result is also pure; .run() needs no handlers.
    auto r1b = fmap([](int n) { return n * 2; }, pure_int(7)).run();
    assert(r1b == 14);

    // Log computation → fmap result has row {Log}.
    int lc = 0;
    auto r1c = fmap([](int n) { return n + 1; }, log_int(5))
                 .run(CountLog{.count = lc});
    assert(r1c == 6 && lc == 1);

    PASS("1. fmap: row preserved for Ask, Log, and pure computations");
  }

  // 2. seq: both computations run with the same row; first result is discarded.
  //    If the two arguments had different rows, template deduction would fail
  //    and the call would be a compile error.
  {
    int n_asks = 0;
    // First ask fires (result ignored by seq), second ask fires and is returned.
    auto r2 = seq(ask_str(), ask_int())
                .run(CountingScriptedAsk{
                  .count   = n_asks,
                  .answers = {"ignored", "99"},
                });
    assert(r2 == 99 && n_asks == 2);
    PASS("2. seq: both computations run; first result discarded; row shared");
  }

  // 3. both: results from two same-row computations paired into std::pair.
  {
    auto [a, b] = both(ask_int(), ask_str())
                    .run(ScriptedAskCycling{.answers = {"5", "hello"}});
    assert(a == 5 && b == "hello");
    PASS("3. both: results paired; same Ask row required for both arguments");
  }

  // 4. Row widening via co_await: a computation with row {Ask} is used inside
  //    a computation with row IO = {Ask, Log}.  The subset check is structural:
  //    {Ask} ⊆ {Ask, Log} is verified at compile time.  The narrower comp's
  //    effects do not need to list Log — they simply don't use it.
  {
    int lc = 0;
    auto r4 = widened().run(FixedAskCountLog{.ans = "21", .count = lc});
    assert(r4 == 21 && lc == 2);  // two Log messages: "before" and "after"
    PASS("4. Row widening: {Ask} comp co_awaited inside IO ({Ask,Log})");
  }

  // 5. Pure-only constraint: the lambda accepts only Fx<T> (empty effect pack).
  //    A computation with any effect would fail to match the parameter type.
  {
    auto run_pure = [](Fx<int> comp) { return comp.run(); };
    assert(run_pure(pure_int(99)) == 99);

    // Would not compile — effect packs don't match:
    //   run_pure(ask_int());   // Fx<int,Ask> ≠ Fx<int>
    //   run_pure(log_int(1));  // Fx<int,Log> ≠ Fx<int>

    PASS("5. Pure-only: Fx<int> accepted; effectful computations rejected");
  }

  // 6. Exact-row constraint: only Fx<T, Ask> — no more, no fewer effects.
  //    A pure Fx<T> or a Fx<T, Log> both fail to match.
  {
    auto run_ask_only = [](Fx<int, Ask> comp, std::string ans) {
      return comp.run(FixedAsk{.ans = std::move(ans)});
    };
    assert(run_ask_only(ask_int(), "7") == 7);

    // Would not compile:
    //   run_ask_only(pure_int(1), "x");  // Fx<int>     ≠ Fx<int,Ask>
    //   run_ask_only(log_int(1),  "x");  // Fx<int,Log> ≠ Fx<int,Ask>

    PASS("6. Exact-row: Fx<int,Ask> accepted; pure and Log rejected");
  }

  // 7. At-most-IO concept: the effect pack must be a subset of {Ask, Log}.
  //    This is strictly broader than test 6: Ask-only, Log-only, and Ask+Log
  //    all satisfy the constraint; Fail does not.
  {
    static_assert(InIO<Ask> && InIO<Log>);
    static_assert(!InIO<Fail>);

    // Ask-only: {Ask} ⊆ {Ask,Log} ✓
    auto r7a = io_only(ask_int()).run(FixedAsk{.ans = "3"});
    assert(r7a == 3);

    // Log-only: {Log} ⊆ {Ask,Log} ✓
    int lc = 0;
    auto r7b = io_only(log_int(5)).run(CountLog{.count = lc});
    assert(r7b == 5 && lc == 1);

    // IO (Ask+Log): {Ask,Log} ⊆ {Ask,Log} ✓
    int lc2 = 0;
    auto r7c = io_only(widened()).run(FixedAskCountLog{.ans = "9", .count = lc2});
    assert(r7c == 9 && lc2 == 2);

    // Would not compile — Fail ∉ {Ask,Log}:
    //   io_only(Row<Fail>::Fx<int>{});

    PASS("7. At-most-IO: {Ask}, {Log}, {Ask,Log} pass; Fail rejected");
  }

  // 8. filter_fx: the HOF's effect row is inferred from the predicate's type.
  //    A pure predicate (Fx<bool>) → filter has no effects; .run() is bare.
  //    An Ask predicate (Fx<bool,Ask>) → filter has row {Ask}; needs Ask handler.
  {
    // Pure predicate: keep even numbers.  filter_fx has no effects.
    auto r8a = filter_fx(
                 std::vector{1, 2, 3, 4, 5},
                 [](int x) -> Fx<bool> { co_return x % 2 == 0; }
               ).run();
    assert((r8a == std::vector{2, 4}));

    // Ask predicate: each element is confirmed via a scripted Ask.
    // filter_fx's row is inferred as {Ask} from the predicate's return type.
    auto confirm = [](int x) -> Row<Ask>::Fx<bool> {
      auto ans = perform(Ask{.prompt = "keep " + std::to_string(x) + "?"});
      co_return ans == "yes";
    };
    auto r8b = filter_fx(std::vector{1, 2, 3}, confirm)
                 .run(ScriptedAskCycling{.answers = {"yes", "no", "yes"}});
    assert((r8b == std::vector{1, 3}));

    PASS("8. filter_fx: pure pred → no effects; Ask pred → row {Ask}");
  }

  // 9. fmap_list: the HOF's effect row is inferred from the mapping function.
  //    Same pattern as filter_fx but the function transforms the element type.
  {
    // Pure mapping function: square each int as a string.  No effects.
    auto r9a = fmap_list(
                 std::vector{1, 2, 3},
                 [](int x) -> Fx<std::string> {
                   co_return std::to_string(x * x);
                 }
               ).run();
    assert((r9a == std::vector<std::string>{"1", "4", "9"}));

    // Ask mapping function: multiply each element by a handler-supplied factor.
    // fmap_list's row is inferred as {Ask}.
    auto ask_mul = [](int x) -> Row<Ask>::Fx<int> {
      auto s = perform(Ask{.prompt = "factor for " + std::to_string(x) + ": "});
      co_return x * std::stoi(s);
    };
    auto r9b = fmap_list(std::vector{2, 3, 4}, ask_mul)
                 .run(ScriptedAskCycling{.answers = {"10"}});
    assert((r9b == std::vector{20, 30, 40}));

    PASS("9. fmap_list: pure fn → no effects; Ask fn → row {Ask}");
  }

  // 10. with_log_wrap: Log is added to any computation's existing row.
  //     Pure Fx<T> → result is Fx<T, Log>.
  //     Fx<T, Ask> → result is Fx<T, Log, Ask>.
  //     The inner computation is unmodified; it simply gets wrapped.
  {
    // Wrap a pure computation: result gains row {Log}.
    int lc = 0;
    auto r10a = with_log_wrap("pure", pure_int(42))
                  .run(CountLog{.count = lc});
    assert(r10a == 42 && lc == 2);  // "pure: start" and "pure: end"

    // Wrap an Ask computation: result gains row {Log, Ask}.
    lc = 0;
    auto r10b = with_log_wrap("ask", ask_int())
                  .run(CountLog{.count = lc}, FixedAsk{.ans = "7"});
    assert(r10b == 7 && lc == 2);

    PASS("10. with_log_wrap: Log added to pure row and {Ask} row");
  }

  std::cout << "All tests passed.\n";
}
