#pragma once
// fx/match.hpp — Exhaustive pattern matching on std::variant
//
// overload{f1, f2, ...}     — merged callable; inherits all operator() overloads
// match(v, f1, f2, ...)     — std::visit with an inline overload set
//
// The compiler enforces exhaustiveness: missing a case is a hard error.
//
// Example:
//   using Shape = std::variant<Circle, Rect, Triangle>;
//
//   float area = fx::match(shape,
//     [](Circle  c) { return c.r * c.r * 3.14159f; },
//     [](Rect    r) { return r.w * r.h; },
//     [](Triangle t) { return 0.5f * t.base * t.height; }
//   );

#include <variant>
#include <utility>

namespace fx {

// Aggregate of callable types; inherits all their operator() overloads.
// Constructed via brace-init: overload{lambda1, lambda2, ...}.
template <typename... Fs>
struct overload : Fs... {
    using Fs::operator()...;
};

// Exhaustive pattern match over a std::variant.
// Compile error if any variant alternative is unhandled.
template <typename V, typename... Fs>
decltype(auto) match(V &&v, Fs &&...fs) {
    return std::visit(
        overload<std::decay_t<Fs>...>{std::forward<Fs>(fs)...},
        std::forward<V>(v));
}

} // namespace fx
