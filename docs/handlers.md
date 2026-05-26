# Handlers

A handler is a named struct that inherits from `Handler<E>` and provides a `handle` method. The `handle` method receives the effect value and a lightweight resume token, and calls the token exactly once to supply the reply value.

## Single-effect handler

Inherit from `Handler<E>` and implement `handle`:

```cpp
struct StdinAsk : Handler<Ask> {
    void handle(Ask e, auto r) {
        std::cout << e.prompt;
        std::string s;
        std::getline(std::cin, s);
        r(s);
    }
};
```

The `auto r` parameter is a `Resume<E>` — a lightweight stack pointer token, not a `std::function`. Calling `r(value)` delivers the reply and resumes the coroutine. No heap allocation occurs for the resume callback.

## Composite handler (multiple effects)

Handle several effects in a single struct. Pass all effect types (or a row alias) to `Handler<...>`:

```cpp
// explicit effect list
struct ScriptedIO : Handler<Ask, Log> {
    std::queue<std::string> answers;
    std::vector<std::string> log;

    void handle(Ask, auto r) { r(answers.front()); answers.pop(); }
    void handle(Log e, auto r) { log.push_back(e.message); r({}); }
};

// or via a Row alias — equivalent, effects are flattened at compile time
struct CountingIO : Handler<IO> {   // IO = Row<Ask, Log>
    int ask_count = 0, log_count = 0;
    void handle(Ask, auto r) { ++ask_count; r("scripted"); }
    void handle(Log, auto r) { ++log_count; r({}); }
};
```

`Handler<IO>` and `Handler<Ask, Log>` are identical at the type level — `Row<E1,E2>` expands to its flat effect list inside `Handler`.

## Passing handlers to `.run()`

`.run()` accepts any mix of single-effect and composite handlers. Every effect declared in the `Fx` type must be covered; a missing handler is a **compile error** (the `= delete` overload fires):

```cpp
StdinAsk  ask;
StdoutLog log;
WarnFail  fail;

int result = my_computation().run(ask, log, fail);

// one composite handler also works
ScriptedIO io;
WarnFail fail;
int result2 = my_computation().run(io, fail);
```

## Driving handlers (`on_return` and `Cont<E, T>`)

A handler can transform the computation's final result by adding an `on_return` method. Returning a non-void value from `handle` (via `Cont<E, T>`) drives the coroutine to completion and receives the result.

### `on_return` — result transformation

`on_return(v)` is called exactly once after all `perform()` calls complete, allowing the handler to wrap or convert the result:

```cpp
// Converts int result to std::string on success; aborts to nullopt on Fail.
struct FailToOpt : Handler<Fail> {
    std::optional<int> on_return(int v) { return v; }
    void handle(Fail, auto r) { /* abort — do not call r */ }
};

auto result = safe_div(10, 2).run(FailToOpt{});
// result : std::optional<int>
```

When a handler aborts (returns without calling `r`), `on_return` is **still called** on the abort path for any outer handlers that have one, preserving FIFO composition order (see below).

### `Cont<E, T>` — driving handlers

When `handle` takes `Cont<E, T>` instead of `Resume<E>`, calling `k.resume(v)` drives the coroutine all the way to completion and returns the result `T`:

```cpp
struct AnnotatedAsk : Handler<Ask> {
    template <typename T>
    std::string handle(Ask e, Cont<Ask, T> k) {
        T inner_result = k.resume("Alice");   // drives coroutine to T
        return "result=" + std::to_string(inner_result);
    }
};
// return type of .run() is std::string, not T
```

## FIFO `on_return` composition order

When multiple handlers each have `on_return`, they fire **innermost-first** (FIFO from the installation order). The handler installed closest to the computation sees its `on_return` applied first; outermost handlers see the already-transformed result:

```cpp
// Inner: int → string
struct IntToStr : Handler<Fail> {
    std::string on_return(int v) { return std::to_string(v); }
    void handle(Fail, auto r) { r(0); }
};

// Outer: string → pair<string, int>
struct AddLen : Handler<Log> {
    std::pair<std::string, int> on_return(std::string s) {
        return {s, (int)s.size()};
    }
    void handle(Log, auto r) { r({}); }
};

// Chain: int → (IntToStr) → string → (AddLen) → pair<string,int>
auto res = logged_div(10, 2).run(IntToStr{}, AddLen{});
// res : pair<string, int>
```

This order holds on both the happy path and the abort path.

## Handler lifetime

Handlers are stored by pointer on a thread-local stack inside `ScopedHandler`. They must **outlive** the `.run()` call. This is always satisfied when handler objects are passed directly as arguments to `.run()` or pre-bound via `.bind()` — the most common patterns.
