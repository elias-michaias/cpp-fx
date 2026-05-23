# cpp-fx

A single-header algebraic effects library for C++23.

Effects let you write effectful code — I/O, failure, logging, async, generators — in a direct style, while keeping the *implementation* of those effects completely separate from the code that performs them. Handlers are swappable at the call site without changing the coroutine body.

```cpp
struct Ask : fx::Effect<Ask> {
    using result_type = std::string;
    std::string prompt;
};

Ask::Fx<std::string> greet() {
    auto name = perform(Ask{.prompt = "Name: "});
    co_return "Hello, " + name + "!";
}

int main() {
    auto h = fx::handler<Ask>([](Ask e, auto r) { r("Alice"); });
    std::cout << greet().run(h) << "\n";  // Hello, Alice!
}
```

The **return type encodes every effect the function can perform**. Handlers are validated at compile time — missing one is a build error with an IDE diagnostic.

## Requirements

- C++23 (`-std=c++23`)
- GCC 13+ or Clang 17+
- Single header: `#include "effects.hpp"`

## Quick start

```cpp
#include "effects.hpp"

// 1. Define effects
struct Log : fx::Effect<Log> {
    using result_type = std::monostate;
    std::string message;
};

// 2. Write effectful code
Log::Fx<int> counted_sum(int n) {
    int total = 0;
    for (int i = 1; i <= n; ++i) {
        perform(Log{.message = "adding " + std::to_string(i)});
        total += i;
    }
    co_return total;
}

// 3. Run with a handler
int main() {
    auto h = fx::handler<Log>([](Log e, auto r) {
        std::cout << e.message << "\n";
        r({});
    });
    int result = counted_sum(3).run(h);  // prints 3 lines, returns 6
}
```

## Documentation

| Topic | Description |
|-------|-------------|
| [Effects & Rows](docs/effects-and-rows.md) | Defining effects, grouping them into rows, nested rows |
| [Handlers](docs/handlers.md) | Named handlers, lambda handlers, composite handlers, `VALIDATE_HANDLER` |
| [Propagation](docs/propagation.md) | How effects flow through `co_await` chains automatically |
| [Composition](docs/composition.md) | `handle<E>()`, local handling, stripping effects mid-chain |
| [Validation](docs/validation.md) | Compile-time checks, IDE diagnostics, the deleted-function pattern |
| [Performance](docs/performance.md) | Benchmark results, `ScopedAllocator`, PMR strategies, allocator guide |
| [API Reference](docs/api-reference.md) | Complete listing of every public type, function, concept, and macro |

## Overview

### Effect types

```cpp
struct Fail : fx::Effect<Fail> {
    using result_type = int;   // the value the handler sends back
    std::string reason;
};
```

### Multiple effects with Row

```cpp
using IO = fx::Row<Ask, Log>;

IO::Fx<std::string> prompt_and_log() {
    perform(Log{.message = "asking"});
    auto name = perform(Ask{.prompt = "Name: "});
    co_return name;
}
```

Rows can contain other rows — they flatten automatically:

```cpp
using All = fx::Row<IO, Fail>;   // same as Row<Ask, Log, Fail>
```

### Running with handlers

```cpp
// All declared effects must be handled — compile error otherwise
auto result = prompt_and_log().run(ask_handler, log_handler);
```

### Named handler structs

```cpp
struct StdinAsk : Ask::Handler<StdinAsk> {
    void operator()(Ask e, auto r) {
        std::cout << e.prompt;
        std::string s; std::getline(std::cin, s);
        r(s);
    }
};

// optionally validate at definition before usage
VALIDATE_HANDLER(StdinAsk);  // error here if operator() signature is wrong
```

### Local handling with `handle<E>()`

Strip a single effect without running the rest:

```cpp
// safe_div : Row<Ask, Fail>::Fx<int>
// handle<Fail> absorbs Fail, leaving Ask::Fx<int>
auto partial = fx::handle<Fail>(safe_div(10, 0),
                   fx::handler<Fail>([](Fail, auto r) { r(-1); }));
// partial is still an Ask::Fx<int> — caller must supply Ask handler
```

## Tests

```sh
cd tests
make run          # run all 5 test files
make check-invalid  # verify all 6 invalid test files are correctly rejected
make bench        # run all benchmarks (O3)
```

## License

MIT
