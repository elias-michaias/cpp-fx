# Composition

## `handle<E>()` — local handling

`fx::handle<E>(comp, h)` installs handler `h` for effect `E` inside computation `comp` and returns a new `Fx` with `E` removed from the effect list. The returned computation is lazy — `h` is not invoked until the result is run or awaited.

```cpp
// safe_div : Row<Ask, Fail>::Fx<int>
auto partial = fx::handle<Fail>(
    safe_div(10, 0),
    fx::handler<Fail>([](Fail, auto r) { r(-1); })
);
// partial : Ask::Fx<int>  — Fail has been absorbed
```

`handle<E>` has two constraints enforced at compile time:
1. `H` must be a valid handler for `E` (`HandlerFor<H, E>`)
2. `E` must be declared in `comp`'s effect list (`DeclaredIn<E, F>`)

Violating either is a build error with a named concept in the diagnostic.

## Stripping all effects with chained `handle<E>`

Each call to `handle<E>` peels off one effect. Chain them to reduce an effectful computation to a pure `Fx<T>`:

```cpp
// starts as Row<Ask, Log, Fail>::Fx<int>
auto result = fx::handle<Ask>(
                  fx::handle<Log>(
                      fx::handle<Fail>(compute(),
                          fx::handler<Fail>([](Fail, auto r) { r(-1); })),
                      fx::handler<Log>([](Log, auto r) { r({}); })),
                  fx::handler<Ask>([](Ask, auto r) { r("test"); }))
              .run();  // pure Fx<int> — no handlers needed
```

## Running with handlers via `.run()`

`.run(h1, h2, ...)` is the idiomatic way to handle all effects at once. It validates at compile time that every declared effect has a handler:

```cpp
StdinAsk  ask;
StdoutLog log;
WarnFail  fail;

int result = compute().run(ask, log, fail);
```

The difference from `handle<E>` chains:
- `.run()` executes the computation immediately
- `handle<E>` returns a new lazy `Fx` that can be further composed or awaited

## Absorbing effects inside another coroutine

`handle<E>` is useful inside a coroutine to isolate failure handling:

```cpp
// outer only propagates Ask — Fail is handled internally
Ask::Fx<int> safe_outer() {
    auto inner_result = co_await fx::handle<Fail>(
        risky_inner(),
        fx::handler<Fail>([](Fail, auto r) { r(0); })
    );
    co_return inner_result;
}
```

## Row::Handler — composite handlers as a unit

A `Row::Handler<Derived>` struct can be passed to `.run()` as a single argument that covers all effects in the row:

```cpp
struct ScriptedIO : IO::Handler<ScriptedIO> {
    void operator()(Ask, auto r)  { r("scripted answer"); }
    void operator()(Log e, auto r) { /* discard */ r({}); }
};

// one handler covers both Ask and Log
compute().run(ScriptedIO{});
```

## handler<Row>() — inline composite

For one-off cases, build the composite inline:

```cpp
auto result = compute().run(
    fx::handler<IO>(
        [](Ask, auto r)  { r("hello"); },
        [](Log e, auto r) { std::cout << e.message; r({}); }
    ),
    fail_handler
);
```
