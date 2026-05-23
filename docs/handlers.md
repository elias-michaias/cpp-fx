# Handlers

A handler is any callable that accepts `(E effect, std::function<void(E::result_type)> resume)` and calls `resume` exactly once to provide the reply value. Three styles are supported.

## Named handler struct

Inherit from `E::Handler<Derived>` (CRTP), implement `operator()`, then call `VALIDATE_HANDLER` immediately after:

```cpp
struct StdinAsk : Ask::Handler<StdinAsk> {
    void operator()(Ask e, auto r) {
        std::cout << e.prompt;
        std::string s;
        std::getline(std::cin, s);
        r(s);
    }
};
VALIDATE_HANDLER(StdinAsk);
```

`VALIDATE_HANDLER` fires a `static_assert` at the **definition site** (not at the first usage) if the `operator()` signature is missing or wrong. This gives an IDE squiggle on the struct immediately.

The `auto r` parameter type is the `std::function<void(E::result_type)>` resume callback. Using `auto` is idiomatic and keeps the signature concise.

## Lambda handler

Wrap a lambda with `fx::handler<E>()`:

```cpp
auto h = fx::handler<Ask>([](Ask e, auto r) {
    r("Alice");
});
greet().run(h);
```

`handler<E>(fn)` returns a `LambdaHandler<E, F>` which satisfies `TypedHandler` — the same concept as named handler structs. Both can be passed to `.run()` interchangeably.

## Composite handler (for rows)

Handle all effects in a `Row` with a single struct — inherit from `Row::Handler<Derived>` and provide one `operator()` per effect:

```cpp
struct ScriptedIO : IO::Handler<ScriptedIO> {
    std::queue<std::string> answers;
    std::vector<std::string> log;

    void operator()(Ask e, auto r) { r(answers.front()); answers.pop(); }
    void operator()(Log e, auto r) { log.push_back(e.message); r({}); }
};
VALIDATE_HANDLER(ScriptedIO);
```

`IO::Handler<Derived>` sets the `effect_types` alias to the full effects list of the row. `.run()` and `VALIDATE_HANDLER` use this to verify every effect has an overload.

## Inline composite handler

Build a composite handler on the fly from lambdas using `fx::handler<Row>(...)`:

```cpp
auto h = fx::handler<IO>(
    [](Ask e, auto r) { r("Bob"); },
    [](Log e, auto r) { std::cout << e.message; r({}); }
);
greet_logged().run(h);
```

The lambdas are matched to effects by argument type — first matching lambda wins. A compile error fires if any effect in the row has no matching lambda.

## Passing multiple handlers to `.run()`

`.run()` accepts any mix of single-effect handlers, composite handlers, and `LambdaHandler`s:

```cpp
StdinAsk ask;
StdoutLog log;
WarnFail  fail;

result = my_computation().run(ask, log, fail);
```

Every effect declared in the `Fx` type must be covered. A missing handler is a **compile error** — the `= delete` overload of `.run()` is selected, giving an IDE squiggle at the call site.

## The `VALIDATE_HANDLER` macro

```cpp
VALIDATE_HANDLER(MyHandler);
```

Expands to a `static_assert` that checks `TypedHandler<MyHandler> || CompositeHandler<MyHandler>`. Place it directly after the struct closing brace.

Works for:
- Single-effect structs (`Effect::Handler<Derived>`)
- Composite structs (`Row::Handler<Derived>`)

Does **not** work for bare lambdas — use `handler<E>(fn)` and let the `requires` clause validate at construction.

## Handler lifetime

Handlers are stored by pointer on a thread-local stack inside `ScopedHandler`. They must **outlive** the `.run()` call. This is always guaranteed when passing handler objects as arguments to `.run()` (the most common pattern). When using `fx::handle<E>()` to partially handle inline, the handler is moved into a lambda that owns it.
