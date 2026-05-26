# Composition

## `.bind()` — local handling

`fx.bind(h...)` pre-installs one or more handlers and returns a `BoundFx` with those effects stripped from the remaining effect list. The computation is still lazy — handlers are not invoked until the result is run or awaited.

```cpp
// safe_div_logged : Row<Log, Fail>::Fx<int>
auto partial = safe_div_logged(10, 2).bind(FallbackFail{.fallback = 0});
// partial : BoundFx with remaining effect Log only
```

`BoundFx` has two constraints enforced at compile time:
1. Each `H` in `bind(H...)` must be a valid handler for its declared effect
2. The handlers must cover effects actually declared in the computation

Violating either is a build error.

## Stripping all effects with chained `.bind()`

Pass all handlers to `.bind()` at once, or chain multiple `.bind()` calls, to reduce an effectful computation to a pure `BoundFx`:

```cpp
// starts as Row<Ask, Log, Fail>::Fx<int>
auto pure = compute()
    .bind(ScriptedAsk{.answers = {"test"}},
          SilentLog{},
          FallbackFail{.fallback = -1});
// pure : BoundFx with no remaining effects
int result = pure.run();  // no handlers needed
```

Or chain `.bind()` incrementally:

```cpp
auto step1 = compute().bind(SilentLog{});        // absorb Log
auto step2 = step1.bind(FallbackFail{0});         // absorb Fail
int result = step2.run(ScriptedAsk{.answers={"x"}}); // absorb Ask at run-time
```

## Running with handlers via `.run()`

`.run(h1, h2, ...)` on an `Fx` handles all effects at once. It validates at compile time that every declared effect has a handler:

```cpp
StdinAsk  ask;
StdoutLog log;
WarnFail  fail;

int result = compute().run(ask, log, fail);
```

`.run()` can also be called on a `BoundFx` to supply any remaining handlers:

```cpp
auto partial = compute().bind(SilentLog{});
int result = partial.run(StdinAsk{}, WarnFail{});
```

## Absorbing effects inside another coroutine

`.bind()` is useful inside a coroutine to absorb effects from an inner computation before they propagate outward:

```cpp
// outer only propagates Log — Fail is absorbed internally
Row<Log>::Fx<int> safe_outer() {
    // bind absorbs Fail; co_await the BoundFx — Log remains
    auto result = co_await safe_div_logged(10, 0).bind(FallbackFail{.fallback = 0});
    co_return result;
}
```

`co_await` on a `BoundFx` works just like `co_await` on an `Fx` — remaining effects must be declared in the outer coroutine.

## `Handler<Row>` — composite handlers as a unit

A `Handler<IO>` struct can be passed to `.run()` as a single argument that covers all effects in the row:

```cpp
struct ScriptedIO : Handler<IO> {
    void handle(Ask, auto r)  { r("scripted answer"); }
    void handle(Log e, auto r) { /* discard */ r({}); }
};

// one handler covers both Ask and Log
compute().run(ScriptedIO{});
```

Equivalently, list the effects individually: `Handler<Ask, Log>` and `Handler<IO>` are identical.

## Summary: composition patterns

| Pattern | Code | Use case |
|---------|------|----------|
| Handle all at once | `fx.run(h1, h2, ...)` | Top-level call site |
| Pre-bind some, run rest | `fx.bind(h1).run(h2)` | Partially abstract a function |
| Pre-bind all | `fx.bind(h1, h2).run()` | Fully self-contained helper |
| Absorb inside coroutine | `co_await inner.bind(h)` | Hide implementation effects |
| Composite struct | `Handler<IO>` covers Ask+Log | Group related effects |
