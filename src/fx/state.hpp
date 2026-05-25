#pragma once
// fx/state.hpp — Mutable state threaded through pure computations
//
// Get<S>              — resume with a copy of the current state
// Put<S>{.value = v}  — replace state with v; resumes with monostate
// StateRow<S>         — Row<Get<S>, Put<S>> convenience alias
// state_handler(s)    — composite handler; reads/writes s by pointer
// run_state(fx, init) — convenience for single-effect Fx; returns {result, final_state}
//
// state_handler(s) stores a raw pointer to s.
// s must outlive the run() call.  After run() returns, s holds the final state.
//
// For multi-effect computations use state_handler(s) with run() directly:
//
//   int s = 0;
//   auto result = my_fx.run(fx::state::state_handler(s), other_handler);
//   // s is now the final state
//
// For single-effect computations, use run_state for brevity:
//
//   auto [result, final] = fx::state::run_state(my_fx, 0);

#include "../../effects.hpp"
#include <utility>

namespace fx::state {

template <typename S>
struct Get : fx::Effect<Get<S>> {
    using result_type = S;
};

template <typename S>
struct Put : fx::Effect<Put<S>> {
    S value;
    using result_type = std::monostate;
};

template <typename S>
using State = fx::Row<Get<S>, Put<S>>;

// --- Handler implementation (opaque; users never name this type) -------------

namespace detail {

// Composite handler for Get<S> and Put<S>.
// Stores a raw pointer to the live state so copies of the handler
// (made by run()) all see the same variable.
template <typename S>
struct StateHandler : State<S>::Handler {
    S *ptr;
    void  handle(Get<S>,    auto r) const { r(*ptr); }
    void  handle(Put<S> p,  auto r)       { *ptr = std::move(p.value); r({}); }
};

} // namespace detail

template <typename S>
auto state_handler(S &s) -> detail::StateHandler<S> {
    return {.ptr = &s};
}

// Convenience: only for Fx<T, Get<S>, Put<S>> (no other effects).
// Returns {computation_result, final_state}.
template <typename T, typename S>
std::pair<T, S> run_state(fx::Fx<T, Get<S>, Put<S>> fx, S init) {
    S state = std::move(init);
    T val   = std::move(fx).run(state_handler(state));
    return {std::move(val), std::move(state)};
}

} // namespace fx::state
