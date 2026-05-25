#pragma once
// fx/raise.hpp — Non-resumable structured failure
//
// Raise<E>{.error = e}   — abort the computation with error e; never resumes
// run_expected(fx)       — convenience for Fx<T, Raise<E>>; returns std::expected<T,E>
// catch_raise<E>(fx, hs...) — handles Raise<E> alongside other handlers
//
// The escape mechanism uses the return-clause abort: the handler returns
// std::unexpected<E> without calling r(), which unwinds the effect stack
// without any exception overhead. No catch(...) caveat.
// Cost: zero on the happy path; one std::any move on the failure path.
//
// For single-effect computations use run_expected:
//
//   auto r = fx::raise::run_expected(safe_div(a, b));
//   if (!r) std::println("error: {}", r.error());
//
// For multi-effect computations:
//
//   auto r = fx::raise::catch_raise<MyError>(fx, handler1, handler2, ...);

#include "../../effects.hpp"
#include <expected>

namespace fx::raise {

template <typename E = std::string>
struct Raise : fx::Effect<Raise<E>> {
    E error;
    using result_type = std::monostate; // never resumed
};

namespace detail {

template <typename E, typename InnerR>
struct RaiseHandler : Raise<E>::Handler {
    auto on_return(InnerR val) -> std::expected<InnerR, E> {
        return std::expected<InnerR, E>{std::move(val)};
    }
    auto  handle(Raise<E> e, auto /*r*/) -> std::expected<InnerR, E> {
        return std::unexpected(std::move(e.error));
    }
};

} // namespace detail

// Convenience for single-effect Fx<T, Raise<E>>.
// Returns std::expected<T, E>.
template <typename T, typename E>
std::expected<T, E> run_expected(fx::Fx<T, Raise<E>> fx) {
    return std::move(fx).run(detail::RaiseHandler<E, T>{});
}

// Multi-effect variant: handle Raise<E> alongside other handlers.
// RaiseHandler is pushed outermost; it wraps whatever the inner handlers produce.
// Specify E explicitly: catch_raise<MyError>(fx, handler1, handler2, ...).
template <typename E, typename T, Effectful... Es, typename... Hs>
auto catch_raise(fx::Fx<T, Es...> fx, Hs &&...hs) {
    using InnerR = fx::detail::composed_return_t<T, std::remove_cvref_t<Hs>...>;
    auto locals = std::make_tuple(detail::RaiseHandler<E, InnerR>{},
                                  std::forward<Hs>(hs)...);
    return std::apply([&fx](auto &...args) { return fx.run(args...); }, locals);
}

} // namespace fx::raise
