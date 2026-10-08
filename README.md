<p align="center">
  <h1 align="center">cpp-fx</h1>
  <p align="center">A single-header algebraic effects library for C++23.</p>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/implementation-header--only-brightgreen" alt="header-only">
  <img src="https://img.shields.io/badge/standard-C%2B%2B23-blue" alt="C++23">
  <a href="LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue" alt="MIT license"></a>
  <a href="https://github.com/elias-michaias/cpp-fx"><img src="https://img.shields.io/github/stars/elias-michaias/cpp-fx?style=social" alt="GitHub stars"></a>
</p>

<p align="center">
  <a href="#quick-start">Quick Start</a> &bull;
  <a href="#documentation">Documentation</a> &bull;
  <a href="docs/api-reference.md">API Reference</a> &bull;
  <a href="#overview">Overview</a> &bull;
  <a href="#tests">Tests</a>
</p>

<p align="center">
  <a href="https://www.emskeirik.dev/blog/algebraic-effects-in-cpp/#gh-dark-mode-only" target="_blank" rel="noopener noreferrer">
    <img src="docs/assets/article-button-dark.svg" width="280" height="60" alt="Read the article here!">
  </a>
  <a href="https://www.emskeirik.dev/blog/algebraic-effects-in-cpp/#gh-light-mode-only" target="_blank" rel="noopener noreferrer">
    <img src="docs/assets/article-button-light.svg" width="280" height="60" alt="Read the article here!">
  </a>
</p>

---

Effects let you write effectful code — I/O, failure, logging, async, generators — in a direct style, while keeping the *implementation* of those effects completely separate from the code that performs them. Handlers are swappable at the call site without changing the coroutine body.

```cpp
struct Ask : Effect<std::string> {
    std::string prompt;
};

auto greet() -> Row<Ask>::Fx<std::string> {
    auto name = perform(Ask{.prompt = "Name: "});
    co_return "Hello, " + name + "!";
}

struct AskHandler : Handler<Ask> {
    void handle(Ask e, auto r) {
        r("Alice");
    }
}

int main() {
    std::cout << greet().run(AskHandler{}) << "\n";  // Hello, Alice!
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
struct Log : Effect<std::monostate> {
    std::string message;
};

// 2. Write effectful code
auto counted_sum(int n) -> Row<Log>::Fx<int> {
    int total = 0;
    for (int i = 1; i <= n; ++i) {
        perform(Log{.message = "adding " + std::to_string(i)});
        total += i;
    }
    co_return total;
}

struct LogHandler : Handler<Log> {
    void handle(Log e, auto r) {
        std::cout << e.message << "\n";
        r({});
    }
}

// 3. Run with a handler
int main() {
    int result = counted_sum(3).run(LogHandler{});  // prints 3 lines, returns 6
}
```

## Documentation

| Topic | Description |
|-------|-------------|
| [Effects & Rows](docs/effects-and-rows.md) | Defining effects, grouping them into rows, nested rows |
| [Handlers](docs/handlers.md) | Named handlers, lambda handlers, composite handlers, `VALIDATE_HANDLER` |
| [Propagation](docs/propagation.md) | How effects flow through `co_await` chains automatically |
| [Composition](docs/composition.md) | `.bind()`, local handling, stripping effects mid-chain |
| [Validation](docs/validation.md) | Compile-time checks, IDE diagnostics, the deleted-function pattern |
| [Performance](docs/performance.md) | Benchmark results, `ScopedAllocator`, PMR strategies, allocator guide |
| [Row Polymorphism](docs/polymorphism.md) | HOF patterns, `AnyFx`, `FxMapper`, `Rebind`, `FxOf`, `FxValue` |
| [API Reference](docs/api-reference.md) | Complete listing of every public type, function, concept, and macro |

## Overview

### Effect types

```cpp

// type param = the value the handler sends back
struct Fail : Effect<int> {
    std::string reason;
};
```

### Multiple effects with Row

```cpp
using IO = fx::Row<Ask, Log>;

auto prompt_and_log() -> IO::Fx<std::string> {
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
struct StdinAsk : Handler<Ask> {
    void handle(Ask e, auto r) {
        std::cout << e.prompt;
        std::string s; std::getline(std::cin, s);
        r(s);
    }
};
```

## Tests

```sh
cd tests
make run          # run all 5 test files
make check-invalid  # verify all 6 invalid test files are correctly rejected
make bench        # run all benchmarks (O3)
```

## License

[MIT](LICENSE.md)
