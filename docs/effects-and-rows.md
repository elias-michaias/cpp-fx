# Effects & Rows

## Defining an effect

An effect is a struct that inherits from `fx::Effect<Self>` (CRTP) and declares a `result_type`:

```cpp
struct Ask : fx::Effect<Ask> {
    using result_type = std::string;  // what the handler sends back
    std::string prompt;               // payload carried to the handler
};
```

`result_type` is the value received by the coroutine after `perform()` resumes. It can be any type: `int`, `std::string`, `std::monostate`, a custom struct, etc.

`Effect<Self>` gives you two things for free:

| Name | What it is |
|------|-----------|
| `Ask::Fx<T>` | Coroutine return type — produces `T`, may perform `Ask` |
| `Ask::Handler<Derived>` | CRTP base for single-effect handler structs |

## Using an effect inside a coroutine

```cpp
Ask::Fx<std::string> greet() {
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
Row<Ask, Log>::Fx<std::string> prompt_logged() {
    perform(Log{.message = "about to ask"});
    auto name = perform(Ask{.prompt = "Name: "});
    perform(Log{.message = "got: " + name});
    co_return name;
}
```

## Rows

A `Row` groups effects into a named alias:

```cpp
using IO  = fx::Row<Ask, Log>;
using All = fx::Row<Ask, Log, Fail>;
```

Use `IO::Fx<T>` as the return type:

```cpp
IO::Fx<std::string> prompt_logged() { ... }
```

### Nested rows

Rows can contain other rows — they flatten at compile time:

```cpp
using IO  = fx::Row<Ask, Log>;
using All = fx::Row<IO, Fail>;   // equivalent to Row<Ask, Log, Fail>
```

This means you can build layered row aliases and combine them freely without any wrapping overhead.

### Checking what a row contains

Because `Row<...>` is a template alias for an internal `BasicRow`, you can inspect its effects via `::effects` (a `detail::type_list`), but in practice you interact with rows through `::Fx<T>` and `::Handler<Derived>`.

## Generic effects

Effects can be templated. `Emit<T>` and `Emit<U>` are completely separate effects at the type level, each requiring its own handler:

```cpp
template <typename T>
struct Emit : fx::Effect<Emit<T>> {
    T value;
    using result_type = std::monostate;
};

Emit<int>::Fx<void> range(int lo, int hi) {
    for (int i = lo; i < hi; ++i)
        perform(Emit<int>{.value = i});
    co_return;
}
```

## Pure computations

`Fx<T>` with no effect arguments is a pure computation — `.run()` takes no handlers:

```cpp
fx::Fx<int> pure_sum(int n) {
    co_return n * (n + 1) / 2;
}

int result = pure_sum(10).run();  // no handlers needed
```
