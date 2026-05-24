#pragma once
// fx/raise.hpp — Non-resumable structured failure
//
// Raise<E>{.error = e}   — abort the computation with error e; never resumes
// raise_handler(out)     — stores the error in out, escapes via internal exception
// run_expected(fx)       — convenience for Fx<T, Raise<E>>; returns std::expected<T,E>
//
// The escape mechanism is a private C++ exception that no user code can name.
// Cost: zero on the happy path; one throw on the failure path.
//
// Caveat: do not use catch(...) inside a coroutine that performs Raise<E> —
// it will intercept the internal escape before run_expected can catch it.
//
// For multi-effect computations combine raise_handler with run() directly:
//
//   std::optional<MyError> err;
//   auto result = my_fx.run(fx::raise::raise_handler(err), other_handler);
//   if (err) { /* handle */ }
//
// For single-effect computations use run_expected:
//
//   auto r = fx::raise::run_expected(safe_div(a, b));
//   if (!r) std::println("error: {}", r.error());

#include "../../effects.hpp"
#include <expected>
#include <optional>

namespace fx::raise {

template <typename E = std::string>
struct Raise : fx::Effect<Raise<E>> {
    E error;
    using result_type = std::monostate; // never resumed
};

namespace detail {
// Private tag type — not derived from std::exception so it won't be caught
// by catch(std::exception&).  Only run_expected / raise_handler catch this.
struct Escape {};
} // namespace detail

// Returns a TypedHandler that stores the error and throws an internal escape.
// `out` must outlive the run() call.
template <typename E>
auto raise_handler(std::optional<E> &out) {
    return fx::handler<Raise<E>>([&out](Raise<E> e, auto /*never called*/) {
        out = std::move(e.error);
        throw detail::Escape{};
    });
}

// Convenience for single-effect Fx<T, Raise<E>>.
// Returns std::expected<T, E>.
template <typename T, typename E>
std::expected<T, E> run_expected(fx::Fx<T, Raise<E>> fx) {
    std::optional<E> err;
    try {
        return std::move(fx).run(raise_handler<E>(err));
    } catch (detail::Escape &) {
        return std::unexpected(std::move(*err));
    }
}

// Multi-effect variant: handle Raise<E> alongside other handlers.
// The Raise<E> effect may appear anywhere in the Fx effect list.
// Specify E explicitly: catch_raise<MyError>(fx, handler1, handler2, ...).
template <typename E, typename T, Effectful... Es, typename... Hs>
std::expected<T, E> catch_raise(fx::Fx<T, Es...> fx, Hs &&...hs) {
    std::optional<E> err;
    try {
        return fx.run(raise_handler<E>(err), std::forward<Hs>(hs)...);
    } catch (detail::Escape &) {
        return std::unexpected(std::move(*err));
    }
}

} // namespace fx::raise
