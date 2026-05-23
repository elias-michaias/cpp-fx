# Validation

The library provides compile-time validation at three levels: effect declaration, handler completeness, and handler correctness. All three surface as IDE squiggles (not just build errors) via the `= delete` pattern.

## Undeclared `perform()` — IDE squiggle at the call site

If a coroutine tries to perform an effect that isn't in its return type, the `co_await` inside `perform()` resolves to a `= delete` `await_transform` overload:

```cpp
// WRONG
Log::Fx<int> compute() {
    auto name = perform(Ask{.prompt = "Name: "});  // ← squiggle here
    co_return 0;
}
// error: Ask is not in Log::Fx<int>'s effect list
// fix: change return type to Row<Ask, Log>::Fx<int>
```

The deleted overload is selected eagerly by clangd, so the squiggle appears without building.

## Missing handler at `.run()` — IDE squiggle at the call site

`.run()` has two overloads: one that requires all effects are covered (`all_handled_v<...>` constraint), and a `= delete` fallback selected when coverage is incomplete:

```cpp
Row<Ask, Log>::Fx<std::string> greet();

auto ask = fx::handler<Ask>([](Ask, auto r) { r("Alice"); });
greet().run(ask);  // ← squiggle here — Log is not handled
```

The squiggle lands on `.run(...)`, not inside the library. The fix is to add the missing handler.

## Composite handler missing an overload — `VALIDATE_HANDLER`

For handler structs, `VALIDATE_HANDLER(H)` fires a `static_assert` at the **definition site** when an `operator()` overload is missing:

```cpp
struct BadHandler : IO::Handler<BadHandler> {
    void operator()(Ask, auto r) { r("hello"); }
    // Log operator() missing
};
VALIDATE_HANDLER(BadHandler);  // ← static_assert fires here
```

This gives a squiggle on the macro line, pinpointing the struct rather than its first usage.

## `handle<E>()` on a non-declared effect

`handle<E>(comp, h)` uses the `DeclaredIn<E, F>` concept to validate that `E` appears in `comp`'s effect list:

```cpp
Fail::Fx<int> safe_div(int a, int b);

// WRONG — Ask is not in Fail::Fx<int>
auto bad = fx::handle<Ask>(safe_div(10, 2), ask_handler);
// error: constraint 'DeclaredIn<Ask, Fail::Fx<int>>' not satisfied
```

The concept name `DeclaredIn` appears verbatim in the diagnostic, making the problem self-describing.

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

`HandlerFor<H, E>` uses a `requires` expression that shows the expected call shape in diagnostics:

```cpp
struct WrongHandler {
    void operator()(Ask e) { /* missing resume parameter */ }
};

greet().run(WrongHandler{});
// error: requires (H& h, Ask e, std::function<void(std::string)> r) { h(e, r); }
```

The requirement `{ h(e, r); }` describes exactly what signature is needed.

## Summary of validation sites

| Problem | Where squiggle appears | Mechanism |
|---------|----------------------|-----------|
| `perform(E{})` on undeclared `E` | `perform(...)` call site | `await_transform = delete` |
| `.run()` with missing handler | `.run(...)` call site | `run() = delete` overload |
| Composite struct missing overload | `VALIDATE_HANDLER(H)` line | `static_assert` |
| `handle<E>()` on non-declared `E` | `handle<E>(...)` call site | `DeclaredIn` concept |
| Inner `co_await` with undeclared effects | `co_await inner` site | `await_transform = delete` |
| Handler wrong signature | `.run(...)` or `handler<E>(...)` | `HandlerFor` concept |
