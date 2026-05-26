# Validation

The library provides compile-time validation at three levels: effect declaration, handler completeness, and handler correctness. All three surface as IDE squiggles (not just build errors) via the `= delete` pattern.

## Undeclared `perform()` — IDE squiggle at the call site

If a coroutine tries to perform an effect that isn't in its return type, the `co_await` inside `perform()` resolves to a `= delete` `await_transform` overload:

```cpp
// WRONG
auto compute() -> Row<Log>::Fx<int> {
    auto name = perform(Ask{.prompt = "Name: "});  // ← squiggle here
    co_return 0;
}
// error: Ask is not in Row<Log>::Fx<int>'s effect list
// fix: change return type to Row<Ask, Log>::Fx<int>
```

## Missing handler at `.run()` — IDE squiggle at the call site

`.run()` has two overloads: one that requires all effects are covered (`all_handled_v<...>` constraint), and a `= delete` fallback selected when coverage is incomplete:

```cpp
Row<Ask, Log>::Fx<std::string> greet();

StdinAsk ask;
greet().run(ask);  // ← squiggle here — Log is not handled
```

The squiggle lands on `.run(...)`, not inside the library. The fix is to add the missing handler. The same validation applies to `.bind()` — binding a handler for an effect not in the computation's list is also a compile error.

## Composite handler missing a `handle` overload

The `CompositeHandler` concept requires a `handle` overload for every effect in the handler's `effect_types` list. A missing overload is caught when the struct is first used as a handler argument to `.run()` or `.bind()`:

```cpp
struct BadHandler : Handler<Ask, Log> {
    void handle(Ask, auto r) { r("hello"); }
    // Log handle missing
};

compute().run(BadHandler{});  // ← compile error here
// error: 'BadHandler' does not satisfy CompositeHandler
```

The error points to the `.run()` call site. Move the struct to a `.cpp` and use it early to catch the error at definition time rather than first use.

## Inner effects not propagated

Trying to `co_await` an inner `Fx` whose effects aren't all declared in the outer coroutine:

```cpp
IO::Fx<int> inner();   // performs Ask and Log

// WRONG — outer only declares Log
Log::Fx<int> outer() {
    int n = co_await inner();  // ← squiggle — Ask not declared in outer
    co_return n;
}
```

The `await_transform = delete` overload fires, naming the undeclared effect in the diagnostic.

## Handler type mismatch

`HandlerFor<H, E>` uses a `requires` expression that checks for the `.handle(e, r)` method:

```cpp
struct WrongHandler : Handler<Ask> {
    void handle(Ask e) { /* missing resume parameter */ }
};

greet().run(WrongHandler{});
// error: requires (H& h, Ask e, Cont<Ask, int> r) { h.handle(e, r); }
```

The requirement describes exactly what signature is needed.

## Summary of validation sites

| Problem | Where squiggle appears | Mechanism |
|---------|----------------------|-----------|
| `perform(E{})` on undeclared `E` | `perform(...)` call site | `await_transform = delete` |
| `.run()` with missing handler | `.run(...)` call site | `run() = delete` overload |
| Composite struct missing `handle` | `.run(...)` call site | `CompositeHandler` concept |
| `.bind()` with wrong effect | `.bind(...)` call site | `HandlerFor` concept |
| Inner `co_await` with undeclared effects | `co_await inner` site | `await_transform = delete` |
| Handler wrong signature | `.run(...)` or `.bind(...)` | `HandlerFor` concept |
