# Effects & Rows

## Defining an effect

An effect is a struct that inherits from `fx::Effect<Self>` (CRTP) and declares a `result_type`:

```cpp
// type param = what the handler sends back
struct Ask : Effect<std::string> {
    std::string prompt;               // payload carried to the handler
};
```

`T` in `Effect<T>` is the value received by the coroutine after `perform()` resumes. It can be any type: `int`, `std::string`, `std::monostate`, a custom struct, etc.

## Using an effect inside a coroutine

```cpp
auto greet() -> Row<Ask>::Fx<std::string> {
    // 'perform' suspends the coroutine and passes Ask to the handler.
    // Execution resumes when the handler calls r(value).
    auto name = perform(Ask{.prompt = "Your name: "});
    co_return "Hello, " + name + "!";
}
```

`perform(e)` is a macro that expands to `co_await ::fx::detail::perform_impl(e)`. The coroutine suspends, the effect value travels to the nearest matching handler on the thread-local stack, and resumes with whatever value the handler provides.

## Performing multiple effects

List all effects in the return type. Every `perform(E{...})` call inside the body must be for an effect declared in the return type — undeclared effects are a **compile error with an IDE squiggle**.

```cpp
// Performs both Ask and Log
auto prompt_logged() -> Row<Ask, Log>::Fx<std::string> {
    perform(Log{.message = "about to ask"});
    auto name = perform(Ask{.prompt = "Name: "});
    perform(Log{.message = "got: " + name});
    co_return name;
}
```

## Rows

A `Row` groups effects into a named alias:

```cpp
using IO  = Row<Ask, Log>;
using All = Row<Ask, Log, Fail>;
```

Use `IO::Fx<T>` as the return type:

```cpp
auto prompt_logged() -> IO::Fx<std::string>  { ... }
```

### Nested rows

Rows can contain other rows — they flatten at compile time:

```cpp
using IO  = fx::Row<Ask, Log>;
using All = fx::Row<IO, Fail>;   // equivalent to Row<Ask, Log, Fail>
```

This means you can build layered row aliases and combine them freely without any wrapping overhead.

### Checking what a row contains

You can inspect the effects of a `Row<...>` via `::effects` (a `detail::type_list`), but in practice you interact with rows through `::Fx<T>` and `Handler<...>`.

## Generic effects

Effects can be templated. `Emit<T>` and `Emit<U>` are completely separate effects at the type level, each requiring its own handler:

```cpp
template <typename T>
struct Emit : Effect<std::monostate> {
    T value;
};

auto range(int lo, int hi) -> Emit<int>::Fx<void> {
    for (int i = lo; i < hi; ++i)
        perform(Emit<int>{.value = i});
    co_return;
}
```

## Pure computations

`Fx<T>` with no effect arguments is a pure suspended computation — `.run()` takes no handlers:

```cpp
auto pure_sum(int n) -> Fx<int> {
    co_return n * (n + 1) / 2;
}

int result = pure_sum(10).run();  // no handlers needed
```
