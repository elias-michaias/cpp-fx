#pragma once
// fx/env.hpp — Read-only environment / dependency injection
//
// Ask<Env>        — perform returns a copy of the shared environment
// env_handler(e)  — installs e as the environment; zero allocation
//
// Usage:
//   struct Config { std::string_view prefix; };
//
//   auto greet(std::string_view name) -> fx::env::Ask<Config>::Fx<std::string> {
//     auto cfg = perform(Ask<Config>{});
//     co_return std::string(cfg.prefix) + std::string(name);
//   }
//
//   greet("world").run(fx::env::env_handler(Config{"Hello, "}));

#include "../../effects.hpp"

namespace fx::env {

template <typename Env>
struct Ask : fx::Effect<Ask<Env>> {
    using result_type = Env;
};

// Returns a TypedHandler that always resumes with a copy of `e`.
// The handler captures `e` by value; no references to the caller.
template <typename Env>
auto env_handler(Env e) {
    return fx::handler<Ask<Env>>([e = std::move(e)](Ask<Env>, auto r) { r(e); });
}

} // namespace fx::env
