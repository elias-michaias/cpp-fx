# Propagation

Effects propagate automatically through `co_await` chains — no manual threading required.

## How it works

When a coroutine performs an effect, the library walks the thread-local handler stack looking for the nearest matching handler. If the calling coroutine doesn't handle it, the effect bubbles up to the next level until a handler is found or the stack is exhausted (which is a runtime error).

At the **type level**, this means inner effects must be declared in every outer coroutine's effect list that `co_await`s it:

```cpp
// inner: needs Ask
Ask::Fx<std::string> get_name() {
    co_return perform(Ask{.prompt = "Name: "});
}

// outer: co_awaits inner — must also declare Ask
Ask::Fx<std::string> greet() {
    auto name = co_await get_name();  // Ask propagates up
    co_return "Hello, " + name + "!";
}

// caller supplies the Ask handler once — covers both levels
greet().run(fx::handler<Ask>([](Ask, auto r) { r("Alice"); }));
```

The compiler enforces this. Trying to `co_await` an inner `Fx` whose effects are not all declared in the outer return type is a **compile error**.

## Propagating multiple effects

All inner effects must appear in the outer effect list:

```cpp
IO::Fx<int> inner() {
    perform(Log{.message = "inner"});
    auto s = perform(Ask{.prompt = "> "});
    co_return static_cast<int>(s.size());
}

// outer declares the same effects (or a superset)
IO::Fx<std::string> outer() {
    int n = co_await inner();          // both Ask and Log propagate
    co_return "length: " + std::to_string(n);
}
```

## Effect rows make propagation declarations concise

Without rows, deeply nested chains would require repeating every effect:

```cpp
// Without rows — verbose
Fx<int, Ask, Log, Fail> deep() { ... }
```

With named rows:

```cpp
using All = Row<Ask, Log, Fail>;
All::Fx<int> deep() { ... }
```

## Partial propagation

An outer coroutine can handle some effects locally and propagate the rest:

```cpp
// inner needs Ask and Fail
Row<Ask, Fail>::Fx<int> risky_query();

// outer handles Fail locally, propagates Ask to its caller
Ask::Fx<int> safe_query() {
    // absorb Fail here — only Ask remains
    auto partial = fx::handle<Fail>(risky_query(),
                       fx::handler<Fail>([](Fail, auto r) { r(-1); }));
    co_return co_await partial;
}
```

See [Composition](composition.md) for the full `handle<E>()` API.

## Compile-time propagation enforcement

Undeclared inner effects are caught at the `co_await` site:

```cpp
// WRONG — Ask is not declared in the outer return type
Log::Fx<int> outer() {
    int n = co_await inner();  // compile error: Ask not in Log::Fx<int>
    co_return n;
}
```

This fires as an IDE squiggle on the `co_await` line via the `= delete` `await_transform` overload in `PromiseBase`.

## Depth scaling

Each level of `co_await` adds one coroutine frame allocation. Benchmarks show this scales linearly — roughly 32 ns per extra level at O3. See [Performance](performance.md) for details.
