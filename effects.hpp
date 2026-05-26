#pragma once
// effects.hpp -- Algebraic Effects & Handlers in C++23
//
// --- API -------------------------------------------------------------------
//
//  Effect<Self>     -- CRTP base; gives Self::Fx<R> and Self::Handler
//                      Use: struct MyEff : Effect<MyEff> { using result_type =
//                      T; };
//  Handler H        -- struct with handle(E, fx::Resume<E>) -> void
//                      Resume<E> is a lightweight resume token; r(value)
//                      resumes the suspended perform.  Use `auto r` in the
//                      signature.
//
//  E::Fx<T>                 -- coroutine return type for a single effect E
//  Row<E1,E2>::Fx<T>        -- coroutine return type for multiple effects
//                              Row accepts bare effects or other rows:
//                              Row<IO, Fail>  flattens to Row<Ask, Log, Fail>
//  Fx<T>                    -- pure computation, no effects (zero-arg .run())
//  perform(e)               -- co_await an effect inside an Fx
//  comp.run(h1, h2, ...)    -- validate ALL declared effects are handled, run
//                              compile error if any declared effect lacks a
//                              handler
//  comp.bind(h1, h2, ...)   -- pre-bind handlers; returns BoundFx<Fx, Hs...>
//                              BoundFx::run(remaining...) fills the rest
//                              BoundFx::bind(more...) adds further handlers

#include <any>
#include <coroutine>
#include <exception>
#include <memory_resource>
#include <optional>
#include <stdexcept>
#include <type_traits>
#include <utility>

#ifndef FX_SMALL_ANY_SIZE
#define FX_SMALL_ANY_SIZE 48
#endif

/// Define FX_NO_TLS before including effects.hpp to replace thread_local
/// storage for the handler stack and allocator with plain globals.  Use this
/// on single-threaded embedded targets where the OS provides no TLS support
/// (and where emulated TLS would add a function call per stack access).
// #define FX_NO_TLS

/// Define FX_NO_EXCEPTIONS before including effects.hpp to strip
/// std::exception_ptr from every coroutine frame and replace
/// unhandled_exception() with std::terminate().  Use this on targets compiled
/// with -fno-exceptions or where the 8-byte per-frame overhead is undesirable.
/// Note: logical-error throws (unhandled effect, nested abort) remain — handle
/// them by overriding dispatch_effect or catch at the outermost boundary.
// #define FX_NO_EXCEPTIONS

namespace fx {

// --- Concepts ---------------------------------------------------------------

/// Satisfied by any type that declares a `result_type` member.
/// This is the minimum requirement for an effect type — `result_type`
/// is the value the coroutine receives back after `perform(e)` resumes.
///
///   struct Ask : Effect<Ask> { using result_type = std::string; };
template <typename E>
concept Effectful = requires { typename E::result_type; };

/// Satisfied by bare effects (`Effectful`) or row aliases (`Row<...>`).
/// These are the only valid template arguments for `Handler<...>`.
template <typename T>
concept EffectOrRow = Effectful<T> || requires { typename T::effects; };

// Forward-declare PerformAwaitable so Resume<E> can hold a pointer to it.
// Full definition is in the perform() section below.
template <Effectful E> class PerformAwaitable;

namespace detail {
struct HandlerNode; // forward declaration for Cont<E,T>

// --- SmallAny: fixed-size, heap-free type-erased container ----------------
// Per-type identity tag used by has_type<T>().
template <typename T> inline constexpr char small_any_type_tag_v = 0;

/// Fixed-size type-erased container that never heap-allocates.
/// Types larger than N bytes or with alignment > max_align_t cause a
/// static_assert at emplace() time.  Move-only.
template <std::size_t N> class SmallAny {
  alignas(std::max_align_t) std::byte buf_[N]{};
  void (*destroy_)(void *) noexcept = nullptr;
  void (*move_construct_)(void *dst, void *src) noexcept = nullptr;
  const void *type_tag_ = nullptr;

  void steal(SmallAny &o) noexcept {
    if (o.destroy_) {
      o.move_construct_(buf_, o.buf_);
      destroy_ = o.destroy_;
      move_construct_ = o.move_construct_;
      type_tag_ = o.type_tag_;
      o.destroy_ = nullptr;
      o.move_construct_ = nullptr;
      o.type_tag_ = nullptr;
    }
  }

public:
  SmallAny() noexcept = default;
  ~SmallAny() noexcept { reset(); }
  SmallAny(const SmallAny &) = delete;
  SmallAny &operator=(const SmallAny &) = delete;
  SmallAny(SmallAny &&o) noexcept { steal(o); }
  SmallAny &operator=(SmallAny &&o) noexcept {
    if (this != &o) {
      reset();
      steal(o);
    }
    return *this;
  }

  template <typename T> void emplace(T &&val) {
    using Tb = std::decay_t<T>;
    static_assert(sizeof(Tb) <= N,
                  "fx::SmallAny: value too large; increase FX_SMALL_ANY_SIZE");
    static_assert(alignof(Tb) <= alignof(std::max_align_t),
                  "fx::SmallAny: value alignment exceeds max_align_t");
    reset();
    ::new (static_cast<void *>(buf_)) Tb(std::forward<T>(val));
    destroy_ = [](void *p) noexcept { std::destroy_at(static_cast<Tb *>(p)); };
    move_construct_ = [](void *dst, void *src) noexcept {
      ::new (dst) Tb(std::move(*static_cast<Tb *>(src)));
      std::destroy_at(static_cast<Tb *>(src));
    };
    type_tag_ = &small_any_type_tag_v<Tb>;
  }

  [[nodiscard]] bool has_value() const noexcept { return destroy_ != nullptr; }

  template <typename T> [[nodiscard]] bool has_type() const noexcept {
    return type_tag_ == &small_any_type_tag_v<std::decay_t<T>>;
  }

  template <typename T> T &as() noexcept {
    return *std::launder(reinterpret_cast<T *>(buf_));
  }

  template <typename T>
  T take() noexcept(std::is_nothrow_move_constructible_v<T>) {
    T val = std::move(as<T>());
    reset();
    return val;
  }

  void reset() noexcept {
    if (destroy_) {
      destroy_(buf_);
      destroy_ = nullptr;
      move_construct_ = nullptr;
      type_tag_ = nullptr;
    }
  }
};

using AnyVal = SmallAny<FX_SMALL_ANY_SIZE>;

} // namespace detail

/// Lightweight resume token passed to handlers instead of std::function.
/// Stores a single pointer into the coroutine frame — no heap allocation,
/// no type erasure, no virtual dispatch.  Call r(value) to resume.
template <Effectful E> struct Resume {
  PerformAwaitable<E> *pa;
  void operator()(typename E::result_type v) const;
};

/// Resume token that also carries the computation's final result type `T`.
///
/// This is what ScopedHandler passes to the handler's operator() when it
/// knows the inner result type (i.e. inside run_push for a TypedHandler).
/// Handlers that write `auto k` in their signature receive this type, so they
/// can call `k.resume(value)` to drive the computation to completion
/// and get `T` back — without an explicit template argument.
///
/// For polymorphism over T, write a template operator():
///
///   struct CacheHit : Ask::Handler {
///     std::map<std::string, std::any> cache;
///     template <typename T>
///     auto operator()(Ask e, Cont<Ask, T> k) -> T {
///       T result = k.resume("value");
///       cache[e.prompt] = result;  // JSON::serialize(result), metrics, etc.
///       return result;             // passthrough
///     }
///   };
///
/// Inherits from Resume<E> so handlers that take an explicit `Resume<E>`
/// parameter continue to work unchanged.
template <Effectful E, typename T> struct Cont : Resume<E> {
  /// Transform fn: takes (ctx, AnyVal&&) and returns T.
  /// The AnyVal carries the final result after all inner on_returns are
  /// applied.
  using transform_fn_t = T (*)(void *, detail::AnyVal &&);
  /// Extract fn: pulls RawT out of the promise's result_ptr and boxes it as
  /// AnyVal.
  using extract_fn_t = detail::AnyVal (*)(void *);

  explicit Cont(PerformAwaitable<E> *pa) noexcept
      : Resume<E>{pa}, transform_fn_{nullptr}, transform_ctx_{nullptr},
        extract_fn_{nullptr}, own_node_{nullptr} {}

  /// Koka-semantics constructor: fires on_return inside resume() in FIFO order.
  explicit Cont(PerformAwaitable<E> *pa, transform_fn_t fn, void *ctx,
                extract_fn_t ext_fn, detail::HandlerNode *own_node) noexcept
      : Resume<E>{pa}, transform_fn_{fn}, transform_ctx_{ctx},
        extract_fn_{ext_fn}, own_node_{own_node} {}

  /// Drive the continuation to completion and return the final result as T.
  /// When constructed with a transform (Koka semantics), all inner handlers'
  /// on_return clauses fire in FIFO order before this handler's own transform.
  T resume(typename E::result_type v) const; // defined after fx::resume

  transform_fn_t transform_fn_;
  void *transform_ctx_;
  extract_fn_t extract_fn_;
  detail::HandlerNode *own_node_;
};

/// Satisfied when H provides `h.handle(e, r)` where `e : E` and
/// `r : Cont<E, int>` (a probe T — any Cont<E, *> works).
/// Use `auto r` in the handler signature; the actual T is deduced at the
/// call site and forwarded by ScopedHandler.
template <typename H, typename E>
concept HandlerFor =
    Effectful<E> && requires(std::remove_cvref_t<H> &h, E e, Cont<E, int> r) {
      h.handle(e, r);
    };

/// Satisfied by handler objects that advertise their target effect via
/// an `effect_type` alias (produced by `Effect::Handler` or
/// satisfies `TypedHandler`.  Used by `run_impl` to dispatch single-effect
/// handlers without ambiguity with composite handlers.
template <typename H>
concept TypedHandler =
    requires { typename std::remove_cvref_t<H>::effect_type; } &&
    HandlerFor<std::remove_cvref_t<H>,
               typename std::remove_cvref_t<H>::effect_type>;

// --- Thread-local handler stack and allocator --------------------------------

namespace detail {

// Heap-allocated only on the abort path (handler returns non-void).
// Keeps owner identity + typed payload completely off the common-case frame.
struct AbortContext {
  void *owner = nullptr; // &HandlerNode or composite group_id
  AnyVal value;          // typed result returned by the aborting handler
};

// Non-templated base for the abort slot in every promise.
// Stored by pointer in PerformAwaitable so ScopedHandler::dispatch can
// signal abort without knowing T or Es.
struct PromiseAbortBase {
  bool aborted = false;
  // effect_index lives in the 7 padding bytes that follow `aborted`;
  // no extra size added to the struct.
  // Compile-time index of the performing effect in declared_effects — set
  // by await_suspend so run_push() base can use O(1) table lookup.
  uint8_t effect_index = 0;
  // Non-owning pointer into the aborting handler's ScopedHandler (which lives
  // on the C++ call stack for the full duration of run_push).  Null on the
  // common resuming path; set by the dispatch lambda when a handler aborts.
  // Never heap-allocated — zero dynamic allocation even on the abort path.
  AbortContext *abort_ctx = nullptr;

  // Moved here from PromiseBase so that resume can reach them
  // through the non-templated abort_base_ pointer on PerformAwaitable.
  const void *effect_tag = nullptr;
  void *payload_ptr = nullptr;
#ifndef FX_NO_EXCEPTIONS
  std::exception_ptr exception;
#endif
  // Points to the std::optional<T> result member inside the typed promise.
  // Set by get_return_object().  Null for Fx<void> computations.
  void *result_ptr = nullptr;

  // abort_ctx is non-owning; storage lives in the aborting ScopedHandler.
  ~PromiseAbortBase() = default;
};

struct HandlerNode {
  const void *effect_tag = nullptr;
  void *handler_obj = nullptr; // abort-owner ID (= &node for TypedHandler, or
                               // group_id for composite)
  void *real_handler_ptr =
      nullptr; // actual handler object pointer (used by dispatch lambda)
  void (*dispatch)(void *node_self, void *payload) = nullptr;
  HandlerNode *prev = nullptr;
  // Used by Cont::resume() FIFO walk: applies this handler's on_return to
  // the boxed intermediate result.  Null if the handler has no on_return or
  // is not a TypedHandler.
  using on_return_any_fn_t = AnyVal (*)(void *, AnyVal &&);
  on_return_any_fn_t on_return_any_fn = nullptr;
  // Per-node abort result storage.  The dispatch lambda writes the aborting
  // handler's result here and sets abort_ctx = &this->abort_storage on the
  // promise.  Lives on the C++ call stack (inside ScopedHandler) for the
  // full duration of run_push — always valid when accessed.  Zero heap.
  AbortContext abort_storage;
};

#ifdef FX_NO_TLS
inline HandlerNode *stack_top = nullptr;
#else
inline thread_local HandlerNode *stack_top = nullptr;
#endif

/// Active memory resource for this thread.  Null means use new/delete.
/// Set via fx::ScopedAllocator — never write this directly.
#ifdef FX_NO_TLS
inline std::pmr::memory_resource *current_mr = nullptr;
#else
inline thread_local std::pmr::memory_resource *current_mr = nullptr;
#endif

template <Effectful E> inline constexpr char effect_tag_v = 0;

// (Payload<E>, pmr_new, pmr_delete removed — per-perform data lives
//  directly in PerformAwaitable on the coroutine frame; no heap alloc.)

inline void dispatch_effect(const void *tag, void *payload_ptr) {
  for (auto *n = stack_top; n; n = n->prev) {
    if (n->effect_tag == tag) {
      n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
      return;
    }
  }
  throw std::runtime_error(
      "fx: unhandled effect -- no matching handler installed");
}

} // namespace detail

// --- FreeListResource -------------------------------------------------------

/// Fixed-capacity free-list pool: `Capacity` blocks of exactly `BlockSize`
/// bytes each.  Alloc and free are O(1).  Requests larger than `BlockSize`, or
/// overflow when all blocks are in use, fall through to `fallback`
/// (default: `std::pmr::get_default_resource()`).
///
/// Typical use — 16 coroutine frames up to 248 bytes each (256 − ptr overhead):
/// @code
///   fx::ScopedFreeList<256, 16> arena;
///   auto result = my_computation().run(my_handler);
/// @endcode
template <std::size_t BlockSize, std::size_t Capacity>
class FreeListResource : public std::pmr::memory_resource {
  static_assert(BlockSize >= sizeof(void *),
                "FreeListResource: BlockSize must be >= sizeof(void*)");

  union alignas(std::max_align_t) Block {
    std::byte data[BlockSize];
    Block *next;
  };

  Block storage_[Capacity];
  Block *head_ = nullptr;
  std::pmr::memory_resource *fallback_;

  bool in_slab(const void *ptr) const noexcept {
    return ptr >= static_cast<const void *>(storage_) &&
           ptr < static_cast<const void *>(storage_ + Capacity);
  }

  void build_free_list() noexcept {
    for (std::size_t i = 0; i + 1 < Capacity; ++i)
      storage_[i].next = &storage_[i + 1];
    storage_[Capacity - 1].next = nullptr;
    head_ = &storage_[0];
  }

public:
  explicit FreeListResource(std::pmr::memory_resource *fallback =
                                std::pmr::get_default_resource()) noexcept
      : fallback_(fallback) {
    build_free_list();
  }

  /// Return all slab blocks to the free list (does not affect fallback).
  void reset() noexcept { build_free_list(); }

  static constexpr std::size_t block_size() noexcept { return BlockSize; }
  static constexpr std::size_t capacity() noexcept { return Capacity; }

private:
  void *do_allocate(std::size_t n, std::size_t /*align*/) override {
    if (n > BlockSize || !head_)
      return fallback_->allocate(n, alignof(std::max_align_t));
    Block *b = head_;
    head_ = b->next;
    return b->data;
  }

  void do_deallocate(void *ptr, std::size_t n,
                     std::size_t /*align*/) noexcept override {
    if (!in_slab(ptr)) {
      fallback_->deallocate(ptr, n, alignof(std::max_align_t));
      return;
    }
    auto *b = static_cast<Block *>(ptr);
    b->next = head_;
    head_ = b;
  }

  bool do_is_equal(const std::pmr::memory_resource &o) const noexcept override {
    return this == &o;
  }
};

namespace detail {

// Thread-local default free-list slab installed on every thread.
// Covers frames up to (256 - sizeof(void*)) bytes; larger frames overflow to
// get_default_resource() (global new/delete by default).
// 16 blocks × 256 bytes = 4 KiB per thread.  Not present under FX_NO_TLS.
#ifndef FX_NO_TLS
inline thread_local FreeListResource<256, 16> default_slab_{};
#endif

// Returns the memory resource to use for coroutine frame allocation.
// Priority: explicit ScopedAllocator > thread-local default slab > global new.
inline std::pmr::memory_resource *effective_mr() noexcept {
#ifdef FX_NO_TLS
  return current_mr;
#else
  return current_mr ? current_mr : &default_slab_;
#endif
}

} // namespace detail

// --- Type-level utilities ---------------------------------------------------

namespace detail {

template <typename... Ts> struct type_list {};

template <typename T, typename... Ts>
inline constexpr bool contains_v = (std::is_same_v<T, Ts> || ...);

template <typename T, typename List>
inline constexpr bool contains_in_list_v = false;
template <typename T, typename... Ts>
inline constexpr bool contains_in_list_v<T, type_list<Ts...>> =
    contains_v<T, Ts...>;

// Compile-time index of T within a type_list.
// Hard error if T is not present (no fallback base case).
template <typename T, typename List, std::size_t I = 0>
struct type_list_index_impl;
template <typename T, typename U, typename... Ts, std::size_t I>
struct type_list_index_impl<T, type_list<U, Ts...>, I>
    : type_list_index_impl<T, type_list<Ts...>, I + 1> {};
template <typename T, typename... Ts, std::size_t I>
struct type_list_index_impl<T, type_list<T, Ts...>, I>
    : std::integral_constant<std::size_t, I> {};
template <typename T, typename List>
inline constexpr std::size_t type_list_index_v =
    type_list_index_impl<T, List>::value;

template <typename T, typename List> struct prepend_list;
template <typename T, typename... Ts> struct prepend_list<T, type_list<Ts...>> {
  using type = type_list<T, Ts...>;
};

template <typename T, typename List> struct remove_from_list;
template <typename T> struct remove_from_list<T, type_list<>> {
  using type = type_list<>;
};
template <typename T, typename Head, typename... Tail>
struct remove_from_list<T, type_list<Head, Tail...>> {
  using rest = typename remove_from_list<T, type_list<Tail...>>::type;
  using type = std::conditional_t<std::is_same_v<T, Head>, rest,
                                  typename prepend_list<Head, rest>::type>;
};

// Coverage concepts — used inside effect_is_handled_v.
// Being named concepts means GCC/Clang print the concept name in constraint
// failure notes, making "which handler covered which effect" self-evident.
template <typename E, typename H>
concept SingleCoversEffect = requires { typename H::effect_type; } &&
                             std::is_same_v<E, typename H::effect_type>;

template <typename E, typename H>
concept CompositeCoversEffect = requires { typename H::effect_types; } &&
                                contains_in_list_v<E, typename H::effect_types>;

// True if at least one handler in Hs... covers effect E.
template <typename E, typename... Hs>
inline constexpr bool effect_is_handled_v =
    (... || (SingleCoversEffect<E, std::remove_cvref_t<Hs>> ||
             CompositeCoversEffect<E, std::remove_cvref_t<Hs>>));

// True if every effect in the list has a matching handler.
template <typename EffectList, typename... Hs>
inline constexpr bool all_handled_v = false;
template <typename... Es, typename... Hs>
inline constexpr bool all_handled_v<type_list<Es...>, Hs...> =
    (... && effect_is_handled_v<Es, Hs...>);

// True if H provides handle(E, auto) for every effect in List.
// Used by the CompositeHandler concept.
template <typename H, typename List>
inline constexpr bool all_effects_handled_v = false;
template <typename H, typename... Es>
inline constexpr bool all_effects_handled_v<H, type_list<Es...>> =
    (HandlerFor<H, Es> && ...);

// True if every effect in InnerList appears in OuterEs... (propagation checks).
template <typename InnerList, typename... OuterEs>
inline constexpr bool all_in_v = false;
template <typename... InnerEs, typename... OuterEs>
inline constexpr bool all_in_v<type_list<InnerEs...>, OuterEs...> =
    (... && contains_v<InnerEs, OuterEs...>);

// True if all effects in L1 appear in L2 (both are type_lists).
template <typename L1, typename L2> inline constexpr bool all_in_list_v = false;
template <typename... InnerEs, typename... OuterEs>
inline constexpr bool
    all_in_list_v<type_list<InnerEs...>, type_list<OuterEs...>> =
        (... && contains_v<InnerEs, OuterEs...>);

// remaining_effects: removes from EsList all effects covered by any handler
// in Hs...  Used by BoundFx to compute the effect_list of the bound result.
template <typename EsList, typename... Hs> struct remaining_effects_impl;
template <typename... Hs> struct remaining_effects_impl<type_list<>, Hs...> {
  using type = type_list<>;
};
template <typename E, typename... Es, typename... Hs>
struct remaining_effects_impl<type_list<E, Es...>, Hs...> {
  static constexpr bool covered = effect_is_handled_v<E, Hs...>;
  using tail = typename remaining_effects_impl<type_list<Es...>, Hs...>::type;
  using type =
      std::conditional_t<covered, tail, typename prepend_list<E, tail>::type>;
};
template <typename EsList, typename... Hs>
using remaining_effects_t =
    typename remaining_effects_impl<EsList, Hs...>::type;

// --- Row flattening helpers -------------------------------------------------

// Concat two type_lists.
template <typename L1, typename L2> struct concat_lists;
template <typename... As, typename... Bs>
struct concat_lists<type_list<As...>, type_list<Bs...>> {
  using type = type_list<As..., Bs...>;
};

// Convert one Row-or-Effectful argument to a type_list of bare effects.
// If T has an ::effects member (i.e. it's a Row), expand it; otherwise wrap.
template <typename T> struct to_effect_list {
  using type = type_list<T>;
};
template <typename T>
  requires requires { typename T::effects; }
struct to_effect_list<T> {
  using type = typename T::effects;
};

// Fold a pack of (Effectful | Row)... into a single flat type_list.
template <typename... Ts> struct flatten_effects {
  using type = type_list<>;
};
template <typename T, typename... Rest> struct flatten_effects<T, Rest...> {
  using type =
      typename concat_lists<typename to_effect_list<T>::type,
                            typename flatten_effects<Rest...>::type>::type;
};
template <typename... Ts>
using flatten_effects_t = typename flatten_effects<Ts...>::type;

// Build a BasicRow (defined below) from a type_list of Effectful types.
template <typename List> struct row_from_list; // defined after BasicRow

// --- Return clause type traits ----------------------------------------------

// Does H have a on_return(InnerR) method?
template <typename H, typename InnerR>
concept HasReturnClause = requires(std::remove_cvref_t<H> &h, InnerR v) {
  h.on_return(std::move(v));
};

// What type does H::on_return(InnerR) produce?
template <typename H, typename InnerR>
using on_return_t = decltype(std::declval<std::remove_cvref_t<H> &>().on_return(
    std::declval<InnerR>()));

// Does this TypedHandler's handle(E, Cont<E, InnerR>) return non-void?
// InnerR is the computation's actual result type at this point in the handler
// chain — threading it through here is what makes polymorphic-T handlers work:
//
//   template <typename T>
//   auto handle(E e, Cont<E, T> k) -> T { ... }  // passthrough: InnerR=T
//
//   auto handle(E e, auto k) -> std::string { ... }     // fixed output type
//
template <typename H, typename InnerR>
concept HasDrivingOperatorFor =
    TypedHandler<H> &&
    !std::is_void_v<decltype(std::declval<std::remove_cvref_t<H> &>().handle(
        std::declval<typename std::remove_cvref_t<H>::effect_type>(),
        std::declval<
            Cont<typename std::remove_cvref_t<H>::effect_type, InnerR>>()))>;

// What type does that handle() return (given InnerR as T)?
template <typename H, typename InnerR>
  requires HasDrivingOperatorFor<H, InnerR>
using driving_return_for_t =
    decltype(std::declval<std::remove_cvref_t<H> &>().handle(
        std::declval<typename std::remove_cvref_t<H>::effect_type>(),
        std::declval<
            Cont<typename std::remove_cvref_t<H>::effect_type, InnerR>>()));

// Fold right over handler list: last handler (innermost) wraps T first.
// Priority: on_return > driving operator > identity.
template <typename H, typename InnerR,
          bool HasReturn = HasReturnClause<H, InnerR>,
          bool HasDriving = HasDrivingOperatorFor<H, InnerR>>
struct compose_one {
  using type = InnerR;
};
// on_return wins when present (handles both abort and success paths).
template <typename H, typename InnerR, bool HasDriving>
struct compose_one<H, InnerR, true, HasDriving> {
  using type = on_return_t<H, InnerR>;
};
// Lazy wrapper used by compose_one to avoid eagerly instantiating on_return_t
// when HasReturnClause<H, DrivingR> is false.
template <typename H, typename R> struct lazy_on_return {
  using type = on_return_t<H, R>;
};
template <typename R> struct lazy_identity {
  using type = R;
};

// No on_return for InnerR, but operator() returns non-void (drives via resume).
// If on_return IS defined for the driving result type (DrivingR), chain it so
// that handle() drives first and on_return() wraps the result.
// Passthrough handlers (DrivingR == InnerR, no on_return) produce InnerR.
// Transform handlers (DrivingR != InnerR) produce DrivingR or on_return_t if
// chained.
template <typename H, typename InnerR>
struct compose_one<H, InnerR, false, true> {
  using DrivingR = driving_return_for_t<H, InnerR>;
  // Use lazy wrappers to avoid instantiating on_return_t when !HasReturnClause.
  using type = typename std::conditional_t<HasReturnClause<H, DrivingR>,
                                           lazy_on_return<H, DrivingR>,
                                           lazy_identity<DrivingR>>::type;
};

template <typename T, typename... Hs> struct composed_return {
  using type = T;
};
template <typename T, typename H, typename... Hs>
struct composed_return<T, H, Hs...> {
  using inner = typename composed_return<T, Hs...>::type;
  using type = typename compose_one<H, inner>::type;
};
template <typename T, typename... Hs>
using composed_return_t = typename composed_return<T, Hs...>::type;

} // namespace detail

/// Satisfied by handler objects that cover *multiple* effects at once.
/// Requires an `effect_types` alias (a `detail::type_list<Es...>`) and an
/// `handle(Ei, auto resume)` overload for every `Ei` in that list.
///
/// Produced by `Row<Es...>::Handler` or `handler<Row>(lambdas...)`.
/// Composite handlers are accepted by `.run()` just like single-effect ones.
template <typename H>
concept CompositeHandler =
    requires { typename std::remove_cvref_t<H>::effect_types; } &&
    detail::all_effects_handled_v<
        std::remove_cvref_t<H>, typename std::remove_cvref_t<H>::effect_types>;

// Forward-declare Fx so promise_type can reference it.
// PerformAwaitable is already forward-declared above (needed by Resume<E>).
template <typename T, Effectful... Es> class Fx;

namespace detail {

template <typename T, typename List> struct fx_from_list;
template <typename T, typename... Es> struct fx_from_list<T, type_list<Es...>> {
  using type = Fx<T, Es...>;
};
template <typename T, typename List>
using fx_from_list_t = typename fx_from_list<T, List>::type;

// Synchronous awaitable used when co_await-ing an inner Fx from another Fx.
// await_ready() returns true so the outer coroutine never actually suspends:
// the inner computation runs inside await_resume() using the already-installed
// handler stack from the outer .run() call.
template <typename F> struct FxAwaitable {
  F inner;
  bool await_ready() noexcept { return true; }
  void await_suspend(auto) noexcept {} // never reached
  decltype(auto) await_resume() { return inner._run(); }
};

// Shared promise_type base for Fx<T> and Fx<void>.
// effect_tag, payload_ptr, exception, and result_ptr live in PromiseAbortBase
// so resume can reach them through the non-templated abort_base_ ptr.
template <typename... Es> struct PromiseBase : PromiseAbortBase {

  std::suspend_always initial_suspend() noexcept { return {}; }
  std::suspend_always final_suspend() noexcept { return {}; }
#ifdef FX_NO_EXCEPTIONS
  void unhandled_exception() noexcept { std::terminate(); }
#else
  void unhandled_exception() { exception = std::current_exception(); }
#endif
  using declared_effects = type_list<Es...>;

  // Coroutine frame allocation — honours the active ScopedAllocator.
  // The memory resource pointer is appended after the frame so deallocation
  // can always route back to the same resource even if the allocator changes.
  static void *operator new(std::size_t n) {
    constexpr std::size_t kPtrSize = sizeof(std::pmr::memory_resource *);
    auto *mr = effective_mr();
    std::size_t total = n + kPtrSize;
    void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
                   : ::operator new(total);
    // Store mr (or nullptr) immediately after the frame bytes.
    *reinterpret_cast<std::pmr::memory_resource **>(
        static_cast<std::byte *>(raw) + n) = mr;
    return raw;
  }

  static void operator delete(void *ptr, std::size_t n) noexcept {
    constexpr std::size_t kPtrSize = sizeof(std::pmr::memory_resource *);
    std::size_t total = n + kPtrSize;
    auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
        static_cast<std::byte *>(ptr) + n);
    if (mr)
      mr->deallocate(ptr, total, alignof(std::max_align_t));
    else
      ::operator delete(ptr, total);
  }

  // Declared effect — allowed.
  template <Effectful Eff>
    requires contains_in_list_v<Eff, type_list<Es...>>
  PerformAwaitable<Eff> await_transform(PerformAwaitable<Eff> a) noexcept {
    return a;
  }

  // Undeclared effect — deleted so IDEs squiggle at the perform() call site.
  // To fix: add E to the return type: E::Fx<T>  or  Row<..., E>::Fx<T>.
  template <Effectful Eff>
  PerformAwaitable<Eff> await_transform(PerformAwaitable<Eff>) = delete;

  // Inner Fx / BoundFx propagation — works for any type with value_type and
  // effect_list (Fx<T2,InnerEs...>, BoundFx<F,Hs...>, etc.).
  // All inner effects must be declared in this coroutine's effect list.
  template <typename F>
    requires requires {
      typename F::value_type;
      typename F::effect_list;
    } && all_in_list_v<typename F::effect_list, type_list<Es...>>
  FxAwaitable<F> await_transform(F inner) noexcept {
    return {std::move(inner)};
  }

  // Inner computation has undeclared effects — deleted for IDE squiggles.
  // To fix: add the missing effect(s) to the return type: Row<..., E>::Fx<T>.
  template <typename F>
    requires requires {
      typename F::value_type;
      typename F::effect_list;
    } && (!all_in_list_v<typename F::effect_list, type_list<Es...>>)
  FxAwaitable<F> await_transform(F) = delete;
};

// RAII coroutine handle — owns the handle and destroys it on scope exit.
template <typename Promise> struct OwnedHandle {
  std::coroutine_handle<Promise> h;
  OwnedHandle() = default;
  explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
  OwnedHandle(OwnedHandle &&o) noexcept : h(std::exchange(o.h, {})) {}
  OwnedHandle &operator=(OwnedHandle &&o) noexcept {
    if (this != &o) {
      if (h)
        h.destroy();
      h = std::exchange(o.h, {});
    }
    return *this;
  }
  OwnedHandle(const OwnedHandle &) = delete;
  OwnedHandle &operator=(const OwnedHandle &) = delete;
  ~OwnedHandle() {
    if (h)
      h.destroy();
  }
};

} // namespace detail

template <Effectful E, typename T, Effectful... Es>
using remove_effect_t = detail::fx_from_list_t<
    T, typename detail::remove_from_list<E, detail::type_list<Es...>>::type>;

namespace detail {
/// Applies H::on_return(InnerR) to a boxed AnyVal, returning the result
/// boxed as AnyVal.  Used by Cont::resume() FIFO walk.
template <typename H, typename InnerR>
AnyVal on_return_any_impl(void *ctx, AnyVal &&val) {
  using Hb = std::remove_cvref_t<H>;
  AnyVal out;
  out.emplace(static_cast<Hb *>(ctx)->on_return(val.template take<InnerR>()));
  return out;
}

/// Extracts the RawT value from the promise's result_ptr (an optional<RawT>*)
/// and returns it boxed as AnyVal.
template <typename RawT> AnyVal extract_result_impl(void *result_ptr) {
  auto &opt = *static_cast<std::optional<RawT> *>(result_ptr);
  AnyVal out;
  out.emplace(std::move(*opt));
  return out;
}

/// Applies H::on_return(InnerR) to a value delivered as AnyVal&&.
/// Returns on_return_t<H, InnerR>.  Used as the Cont::transform_fn_.
template <typename H, typename InnerR>
on_return_t<std::remove_cvref_t<H>, InnerR> apply_on_return(void *ctx,
                                                            AnyVal &&val) {
  using Hb = std::remove_cvref_t<H>;
  return static_cast<Hb *>(ctx)->on_return(val.template take<InnerR>());
}
} // namespace detail

// --- ScopedHandler ----------------------------------------------------------

/// `ResultT` is the computation's result type at this handler's level.
/// `RawT` is the undecorated coroutine result type (= Fx<T,...>::value_type).
/// When non-void (set by run_push for TypedHandlers), the dispatch lambda
/// passes a `Cont<E, ResultT>` so the handler's template operator()
/// can deduce T without an explicit template argument.
/// Composite handlers use the default `void`, which falls
/// back to passing the plain `Resume<E>` (no driving-operator support needed).
template <Effectful E, typename H, typename ResultT = void,
          typename RawT = ResultT>
  requires HandlerFor<H, E>
struct ScopedHandler {
  detail::HandlerNode node;
  detail::HandlerNode *saved;

  explicit ScopedHandler(H &h, void *group_id = nullptr) {
    node.effect_tag = &detail::effect_tag_v<E>;
    node.real_handler_ptr = static_cast<void *>(&h);
    // handler_obj doubles as the abort-owner ID:
    //   • TypedHandler path  → group_id==nullptr → use &node (unique per
    //   instance) • CompositeHandler path → group_id supplied by
    //   run_push_composite → shared token
    node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
    // Set on_return_any_fn so that Cont::resume() can apply this handler's
    // on_return during the inner-chain FIFO walk.  Only set for typed handlers
    // that actually declare on_return(ResultT).
    if constexpr (!std::is_void_v<ResultT> &&
                  detail::HasReturnClause<std::remove_cvref_t<H>, ResultT>) {
      node.on_return_any_fn =
          &detail::on_return_any_impl<std::remove_cvref_t<H>, ResultT>;
    }
    node.dispatch = [](void *node_self, void *raw) {
      auto *n = reinterpret_cast<detail::HandlerNode *>(node_self);
      auto &hh =
          *reinterpret_cast<std::remove_reference_t<H> *>(n->real_handler_ptr);
      auto *pa = reinterpret_cast<PerformAwaitable<E> *>(raw);

      if constexpr (std::is_void_v<ResultT>) {
        // Composite / BoundFx path — pass plain Resume<E>.
        using Token = Resume<E>;
        using Ret = decltype(hh.handle(pa->effect_, Token{pa}));
        if constexpr (std::is_void_v<Ret>) {
          hh.handle(pa->effect_, Token{pa});
        } else {
          auto val = hh.handle(pa->effect_, Token{pa});
          n->abort_storage.owner = n->handler_obj;
          n->abort_storage.value.emplace(std::move(val));
          pa->abort_base_->abort_ctx = &n->abort_storage;
          pa->abort_base_->aborted = true;
        }
      } else if constexpr (detail::HasReturnClause<std::remove_cvref_t<H>,
                                                   ResultT>) {
        // Koka semantics: handler has on_return(ResultT); pass Cont<E, OutT>
        // with a transform so that k.resume() fires all inner on_returns in
        // FIFO order and then applies this handler's own on_return.
        using Hb = std::remove_cvref_t<H>;
        using OutT = detail::on_return_t<Hb, ResultT>;
        using Token = Cont<E, OutT>;
        // unevaluated probe to deduce Ret — Token{pa} here is just type-sugar
        using Ret = decltype(hh.handle(pa->effect_, Token{pa}));
        if constexpr (std::is_void_v<Ret>) {
          hh.handle(pa->effect_,
                    Token{pa, &detail::apply_on_return<Hb, ResultT>,
                          static_cast<void *>(&hh),
                          &detail::extract_result_impl<RawT>, n});
        } else {
          auto val = hh.handle(pa->effect_,
                               Token{pa, &detail::apply_on_return<Hb, ResultT>,
                                     static_cast<void *>(&hh),
                                     &detail::extract_result_impl<RawT>, n});
          n->abort_storage.owner = n->handler_obj;
          n->abort_storage.value.emplace(std::move(val));
          pa->abort_base_->abort_ctx = &n->abort_storage;
          pa->abort_base_->aborted = true;
        }
      } else {
        // Plain Cont<E, ResultT> — no Koka transform.
        using Token = Cont<E, ResultT>;
        using Ret = decltype(hh.handle(pa->effect_, Token{pa}));
        if constexpr (std::is_void_v<Ret>) {
          hh.handle(pa->effect_, Token{pa}); // calls r() → resumes coroutine
        } else {
          // Handler returned non-void: abort path. Must NOT call r().
          auto val = hh.handle(pa->effect_, Token{pa});
          n->abort_storage.owner = n->handler_obj; // &node or group_id
          n->abort_storage.value.emplace(std::move(val));
          pa->abort_base_->abort_ctx = &n->abort_storage;
          pa->abort_base_->aborted = true;
        }
      }
    };
    saved = detail::stack_top;
    node.prev = saved;
    detail::stack_top = &node;
  }
  ~ScopedHandler() { detail::stack_top = saved; }
  ScopedHandler(const ScopedHandler &) = delete;
  ScopedHandler &operator=(const ScopedHandler &) = delete;
};

// --- ScopedAllocator --------------------------------------------------------

/// RAII guard that installs a `std::pmr::memory_resource` for the lifetime of
/// the object.  While a `ScopedAllocator` is alive, all `perform()` payload
/// allocations **and** coroutine frame allocations in the current thread use
/// the supplied resource instead of the global `operator new`.
///
/// Resources are saved and restored when scopes nest, so multiple
/// `ScopedAllocator` objects can be stacked safely.
///
/// Example — batch 10 000 performs through a 256 KiB arena:
/// @code
///   std::array<std::byte, 256*1024> buf;
///   std::pmr::monotonic_buffer_resource arena{buf.data(), buf.size(),
///                                             std::pmr::null_memory_resource()};
///   fx::ScopedAllocator alloc{&arena};
///   auto result = my_computation().run(my_handler);
/// @endcode
class ScopedAllocator {
public:
  explicit ScopedAllocator(std::pmr::memory_resource *mr) noexcept
      : prev_(detail::current_mr) {
    detail::current_mr = mr;
  }
  explicit ScopedAllocator(std::pmr::memory_resource &mr) noexcept
      : ScopedAllocator(&mr) {}
  ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
  ScopedAllocator(const ScopedAllocator &) = delete;
  ScopedAllocator &operator=(const ScopedAllocator &) = delete;

private:
  std::pmr::memory_resource *prev_;
};

// --- Arena ergonomics -------------------------------------------------------

/// Monotonic bump-allocator backed by an inline buffer of `N` bytes.
/// Overflow (buffer exhausted) throws `std::bad_alloc` via
/// `null_memory_resource()`.  Deallocation is a no-op; memory is reclaimed
/// when the resource itself is destroyed.  Suitable for short-lived
/// computations that complete before the resource goes out of scope.
template <std::size_t N>
class MonotonicResource : public std::pmr::memory_resource {
  alignas(std::max_align_t) std::byte buf_[N];
  std::pmr::monotonic_buffer_resource arena_{buf_, N,
                                             std::pmr::null_memory_resource()};

public:
  MonotonicResource() = default;
  MonotonicResource(const MonotonicResource &) = delete;
  MonotonicResource &operator=(const MonotonicResource &) = delete;

private:
  void *do_allocate(std::size_t n, std::size_t a) override {
    return arena_.allocate(n, a);
  }
  void do_deallocate(void *, std::size_t, std::size_t) noexcept override {}
  bool do_is_equal(const std::pmr::memory_resource &o) const noexcept override {
    return this == &o;
  }
};

/// One-liner scoped arena: inline monotonic buffer + `ScopedAllocator`
/// combined.
///
/// @code
///   fx::ScopedArena<4096> arena;          // 4 KiB on the stack
///   auto result = my_computation().run(my_handler);
/// @endcode
template <std::size_t N> class ScopedArena {
  MonotonicResource<N> mr_;
  ScopedAllocator alloc_;

public:
  ScopedArena() : alloc_(mr_) {}
  ScopedArena(const ScopedArena &) = delete;
  ScopedArena &operator=(const ScopedArena &) = delete;
};

/// One-liner scoped free-list pool: `FreeListResource` + `ScopedAllocator`
/// combined.  The pool can be `reset()` between batches to reuse its blocks.
///
/// @code
///   fx::ScopedFreeList<256, 16> pool;     // 16 × 256 B on the stack
///   for (auto& task : tasks) task().run(handler);   // each frame reuses pool
///   // pool.reset() if needed between outer loops
/// @endcode
template <std::size_t BlockSize, std::size_t Capacity> class ScopedFreeList {
  FreeListResource<BlockSize, Capacity> mr_;
  ScopedAllocator alloc_;

public:
  ScopedFreeList() : alloc_(mr_) {}
  ScopedFreeList(const ScopedFreeList &) = delete;
  ScopedFreeList &operator=(const ScopedFreeList &) = delete;

  /// Return all pool blocks to the free list (does not affect fallback).
  void reset() noexcept { mr_.reset(); }
};

/// RAII guard that makes coroutine frame allocation a hard error in the
/// current scope.  Any `perform()` or coroutine creation attempt will
/// throw `std::bad_alloc`.  Useful for enforcing heap-less invariants in
/// tests or safety-critical paths.
///
/// @code
///   fx::no_heap guard;
///   my_computation().run(handler);  // throws if any frame allocation occurs
/// @endcode
struct no_heap {
  no_heap() : impl_(std::pmr::null_memory_resource()) {}
  no_heap(const no_heap &) = delete;
  no_heap &operator=(const no_heap &) = delete;

private:
  ScopedAllocator impl_;
};

// --- Fx<T, Es...> -----------------------------------------------------------

/// Coroutine return type for a computation that produces `T` and may
/// perform any of the effects `Es...`.
///
/// Canonical spellings:
///   `E::Fx<T>`            — single effect E
///   `Row<E1,E2>::Fx<T>`   — named row of effects
///   `Fx<T>`               — pure (no effects); `.run()` takes no handlers
///
/// Inside a coroutine body, use `perform(e)` to raise an effect and receive
/// its resume value.  Use `co_await inner_fx` to call into another effectful
/// computation (all inner effects must appear in this Fx's effect list).
///
/// Move-only — cannot be copied.
template <typename T, Effectful... Es> class Fx {
public:
  struct promise_type : detail::PromiseBase<Es...> {
    std::optional<T> result;
    Fx get_return_object() noexcept;
    void return_value(T v) { result = std::move(v); }
  };
  using Handle = std::coroutine_handle<promise_type>;
  using value_type = T;
  using effect_list = detail::type_list<Es...>;

private:
  using OwnedHandle = detail::OwnedHandle<promise_type>;
  OwnedHandle impl_;

  detail::PromiseAbortBase *get_abort_base() noexcept {
    return &impl_.h.promise();
  }

  // Base: all handlers pushed; drive the coroutine.
  // Returns nullopt if a handler aborted (coroutine left suspended +
  // destroyed).
  std::optional<T> run_push() {
    // Build an O(1) dispatch table: one HandlerNode* per declared effect.
    // All handlers are on the stack at this point (pushed by recursive
    // run_push overloads above).  Table lives on this stack frame, valid
    // for the full coroutine drive.  effect_index (set at compile time in
    // await_suspend) provides the O(1) index into the table per perform.
    [[maybe_unused]] detail::HandlerNode
        *table[sizeof...(Es) > 0 ? sizeof...(Es) : 1];
    if constexpr (sizeof...(Es) > 0) {
      [&]<std::size_t... Is>(std::index_sequence<Is...>) {
        (
            [&] {
              const void *const tag = &detail::effect_tag_v<
                  std::tuple_element_t<Is, std::tuple<Es...>>>;
              for (auto *n = detail::stack_top; n; n = n->prev)
                if (n->effect_tag == tag) {
                  table[Is] = n;
                  break;
                }
            }(),
            ...);
      }(std::make_index_sequence<sizeof...(Es)>{});
    }
    auto &h = impl_.h;
    h.resume();
    while (!h.done()) {
      auto &p = h.promise();
      if constexpr (sizeof...(Es) > 0) {
        auto *n = table[p.effect_index];
        n->dispatch(reinterpret_cast<void *>(n), p.payload_ptr);
      } else {
        detail::dispatch_effect(p.effect_tag, p.payload_ptr);
      }
      if (h.promise().aborted)
        return std::nullopt;
    }
    auto &p = h.promise();
#ifndef FX_NO_EXCEPTIONS
    if (p.exception)
      std::rethrow_exception(p.exception);
#endif
    return std::move(*p.result);
  }

  // Single TypedHandler: push onto thread-local stack, recurse.
  template <TypedHandler H, typename... Rest>
    requires(!CompositeHandler<std::remove_cvref_t<H>>)
  auto run_push(H &h, Rest &...rest)
      -> std::optional<detail::composed_return_t<T, H, Rest...>> {
    using Hb = std::remove_cvref_t<H>;
    using InnerR = detail::composed_return_t<T, Rest...>;
    using R = detail::composed_return_t<T, H, Rest...>;
    // Pass InnerR as ResultT and T (the coroutine's raw result type) as RawT
    // so the FIFO walk in Cont::resume() can extract the raw result correctly.
    ScopedHandler<typename Hb::effect_type, Hb, InnerR, T> guard{h};
    auto inner = run_push(rest...);
    auto *ab = get_abort_base();
    // Did THIS handler abort? Compare against the node's own address (unique
    // even when the handler object is an empty type and aliases another's
    // addr).
    if (ab && ab->aborted && ab->abort_ctx &&
        ab->abort_ctx->owner == static_cast<void *>(&guard.node)) {
      ab->aborted = false;
      auto *ctx = std::exchange(ab->abort_ctx, nullptr);
      if constexpr (detail::HasReturnClause<Hb, InnerR>) {
        // Koka path: dispatch passed Cont<E, OutT> so handle returned OutT = R.
        auto result = ctx->value.template take<R>();
        return std::optional<R>{std::move(result)};
      } else if constexpr (detail::HasDrivingOperatorFor<Hb, InnerR>) {
        // Non-void handle without Koka on_return(InnerR):
        // abort_ctx->value holds DrivingR; optionally chain on_return.
        using DrivingR = detail::driving_return_for_t<Hb, InnerR>;
        auto raw = ctx->value.template take<DrivingR>();
        if constexpr (detail::HasReturnClause<Hb, DrivingR>)
          return std::optional<R>{h.on_return(std::move(raw))};
        else
          return std::optional<R>{std::move(raw)};
      } else {
        auto result = ctx->value.template take<R>();
        return std::optional<R>{std::move(result)};
      }
    }
    if (!inner) {
      // Abort still in flight for an outer level.  Best-effort: apply this
      // handler's on_return to the abort value if its type matches InnerR,
      // so that on_return fires even on the abort path.
      if constexpr (detail::HasReturnClause<Hb, InnerR>) {
        if (ab && ab->aborted && ab->abort_ctx) {
          if (ab->abort_ctx->value.template has_type<InnerR>()) {
            auto v = ab->abort_ctx->value.template take<InnerR>();
            ab->abort_ctx->value.emplace(h.on_return(std::move(v)));
          }
        }
      }
      return std::nullopt;
    }
    // Normal path — apply return clause if declared.
    if constexpr (detail::HasReturnClause<Hb, InnerR>)
      return std::optional<R>{h.on_return(std::move(*inner))};
    else if constexpr (detail::HasDrivingOperatorFor<Hb, InnerR>)
      // Driving handler (uses resume) always aborts; if we reach here
      // the effect was never performed — that is a logic error.
      std::unreachable();
    else
      return inner; // R == InnerR, move the optional as-is
  }
  template <CompositeHandler H, typename... Rest>
  auto run_push(H &h, Rest &...rest)
      -> std::optional<detail::composed_return_t<T, H, Rest...>> {
    using Hb = std::remove_cvref_t<H>;
    using InnerR = detail::composed_return_t<T, Rest...>;
    using R = detail::composed_return_t<T, Hb, Rest...>;
    // Use a stack token as the group-abort-owner ID so every ScopedHandler
    // installed for this composite level shares the same unique identifier.
    char group_token{};
    void *const group_id = &group_token;
    auto inner =
        run_push_composite(h, group_id, typename Hb::effect_types{}, rest...);
    auto *ab = get_abort_base();
    if (ab && ab->aborted && ab->abort_ctx &&
        ab->abort_ctx->owner == group_id) {
      ab->aborted = false;
      auto *ctx = std::exchange(ab->abort_ctx, nullptr);
      auto result = ctx->value.template take<R>();
      return std::optional<R>{std::move(result)};
    }
    if (!inner)
      return std::nullopt;
    if constexpr (detail::HasReturnClause<Hb, InnerR>)
      return std::optional<R>{h.on_return(std::move(*inner))};
    else
      return inner; // R == InnerR, move the optional as-is
  }

  // Helper: pushes one ScopedHandler per effect in the composite's type_list,
  // then falls through to run_push(rest...) for the remaining handlers.
  // Both overloads return the same type so the recursive case can deduce it.
  template <typename H, typename... Rest>
  auto run_push_composite([[maybe_unused]] H &h, void * /*group_id*/,
                          detail::type_list<>, Rest &...rest)
      -> std::optional<detail::composed_return_t<T, Rest...>> {
    return run_push(rest...);
  }

  template <typename H, Effectful First, Effectful... Rem, typename... Rest>
  auto run_push_composite(H &h, void *group_id,
                          detail::type_list<First, Rem...>, Rest &...rest)
      -> std::optional<detail::composed_return_t<T, Rest...>> {
    ScopedHandler<First, H> guard{h, group_id};
    return run_push_composite(h, group_id, detail::type_list<Rem...>{},
                              rest...);
  }

public:
  explicit Fx(Handle h) noexcept : impl_(OwnedHandle{h}) {}
  Fx(Fx &&) noexcept = default;
  Fx(const Fx &) = delete;
  Fx &operator=(const Fx &) = delete;

  /// Execute with handler instances.  Compile error if any effect is unhandled.
  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  auto run(Hs &&...hs) {
    auto locals = std::tie(hs...);
    return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
                       locals);
  }

  /// @cond — deleted fallback; triggers IDE squiggle when a handler is missing.
  template <typename... Hs>
    requires(!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  auto run(Hs &&...) = delete;
  /// @endcond

  /// Pre-bind handlers, returning a BoundFx that owns both the computation
  /// and the handlers.  Call .run(remaining...) or .bind(more...) on it.
  template <typename... Hs> auto bind(Hs &&...hs);

  // Used by FxAwaitable (co_await inner_fx inside another coroutine).
  // Runs without abort support — abort handlers must be outermost.
  T _run() {
    auto &h = impl_.h;
    h.resume();
    while (!h.done()) {
      auto &p = h.promise();
      detail::dispatch_effect(p.effect_tag, p.payload_ptr);
    }
    auto &p = h.promise();
#ifndef FX_NO_EXCEPTIONS
    if (p.exception)
      std::rethrow_exception(p.exception);
#endif
    return std::move(*p.result);
  }
};

template <typename T, Effectful... Es>
Fx<T, Es...> Fx<T, Es...>::promise_type::get_return_object() noexcept {
  this->result_ptr = &result; // lets resume retrieve T without knowing Es
  return Fx{Handle::from_promise(*this)};
}

// --- Fx<void, Es...> --------------------------------------------------------

template <Effectful... Es> class Fx<void, Es...> {
public:
  struct promise_type : detail::PromiseBase<Es...> {
    Fx get_return_object() noexcept;
    void return_void() {}
  };
  using Handle = std::coroutine_handle<promise_type>;
  using value_type = void;
  using effect_list = detail::type_list<Es...>;

private:
  using OwnedHandle = detail::OwnedHandle<promise_type>;
  OwnedHandle impl_;

  void run_push() {
    // Same O(1) table-dispatch logic as Fx<T>::run_push() base.
    [[maybe_unused]] detail::HandlerNode
        *table[sizeof...(Es) > 0 ? sizeof...(Es) : 1];
    if constexpr (sizeof...(Es) > 0) {
      [&]<std::size_t... Is>(std::index_sequence<Is...>) {
        (
            [&] {
              const void *const tag = &detail::effect_tag_v<
                  std::tuple_element_t<Is, std::tuple<Es...>>>;
              for (auto *n = detail::stack_top; n; n = n->prev)
                if (n->effect_tag == tag) {
                  table[Is] = n;
                  break;
                }
            }(),
            ...);
      }(std::make_index_sequence<sizeof...(Es)>{});
    }
    auto &h = impl_.h;
    h.resume();
    while (!h.done()) {
      auto &p = h.promise();
      if constexpr (sizeof...(Es) > 0) {
        auto *n = table[p.effect_index];
        n->dispatch(reinterpret_cast<void *>(n), p.payload_ptr);
      } else {
        detail::dispatch_effect(p.effect_tag, p.payload_ptr);
      }
      if (h.promise().aborted)
        return;
    }
#ifndef FX_NO_EXCEPTIONS
    if (h.promise().exception)
      std::rethrow_exception(h.promise().exception);
#endif
  }

  template <TypedHandler H, typename... Rest>
    requires(!CompositeHandler<std::remove_cvref_t<H>>)
  void run_push(H &h, Rest &...rest) {
    using Hb = std::remove_cvref_t<H>;
    ScopedHandler<typename Hb::effect_type, Hb> guard{h};
    run_push(rest...);
  }

  template <CompositeHandler H, typename... Rest>
  void run_push(H &h, Rest &...rest) {
    run_push_composite(h, typename std::remove_cvref_t<H>::effect_types{},
                       rest...);
  }

  template <typename H, Effectful First, Effectful... Rem, typename... Rest>
  void run_push_composite(H &h, detail::type_list<First, Rem...>,
                          Rest &...rest) {
    ScopedHandler<First, H> guard{h};
    run_push_composite(h, detail::type_list<Rem...>{}, rest...);
  }

  template <typename H, typename... Rest>
  void run_push_composite([[maybe_unused]] H &h, detail::type_list<>,
                          Rest &...rest) {
    run_push(rest...);
  }

public:
  explicit Fx(Handle h) noexcept : impl_(OwnedHandle{h}) {}
  Fx(Fx &&) noexcept = default;
  Fx(const Fx &) = delete;
  Fx &operator=(const Fx &) = delete;

  /// Execute with handler instances.
  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  void run(Hs &&...hs) {
    auto locals = std::tie(hs...);
    std::apply([this](auto &...lhs) { run_push(lhs...); }, locals);
  }

  /// @cond deleted fallback when a handler is missing.
  template <typename... Hs>
    requires(!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  void run(Hs &&...) = delete;
  /// @endcond

  /// Pre-bind handlers, returning a BoundFx that owns both the computation
  /// and the handlers.  Call .run(remaining...) or .bind(more...) on it.
  template <typename... Hs> auto bind(Hs &&...hs);

  void _run() {
    auto &h = impl_.h;
    h.resume();
    while (!h.done()) {
      auto &p = h.promise();
      detail::dispatch_effect(p.effect_tag, p.payload_ptr);
      if (h.promise().aborted)
        return;
    }
#ifndef FX_NO_EXCEPTIONS
    if (h.promise().exception)
      std::rethrow_exception(h.promise().exception);
#endif
  }
};

template <Effectful... Es>
Fx<void, Es...> Fx<void, Es...>::promise_type::get_return_object() noexcept {
  return Fx{Handle::from_promise(*this)};
}

// --- BoundFx ----------------------------------------------------------------

/// A computation with some handlers pre-bound.
/// Produced by `Fx::bind(hs...)` or `BoundFx::bind(more...)`.
/// Zero-overhead: no type erasure, no variant — handlers sit in a tuple.
///
/// `.run(remaining_hs...)` — all unhandled effects must be covered by
///   remaining_hs + pre-bound handlers together; delegates to the inner Fx.
/// `.bind(more_hs...)` — returns a new BoundFx with additional pre-bound
///   handlers (tuple is concatenated, inner Fx is moved).
/// `._run()` — used by `co_await bound_fx` inside another coroutine; pushes
///   pre-bound handlers onto the thread-local stack and drives inner Fx.
template <typename InnerFx, typename... PreHs> class BoundFx {
  InnerFx fx_;
  std::tuple<PreHs...> pre_;

  // Recursive helper: push pre-bound handlers one by one, then run inner.
  template <std::size_t I> typename InnerFx::value_type _push_and_run() {
    if constexpr (I == sizeof...(PreHs)) {
      return fx_._run();
    } else {
      using H =
          std::remove_cvref_t<std::tuple_element_t<I, std::tuple<PreHs...>>>;
      auto &h = std::get<I>(pre_);
      if constexpr (TypedHandler<H> && !CompositeHandler<H>) {
        ScopedHandler<typename H::effect_type, H> guard{h};
        return _push_and_run<I + 1>();
      } else {
        return _push_composite_and_run<I>(h, typename H::effect_types{});
      }
    }
  }

  template <std::size_t I, Effectful First, Effectful... Rem>
  typename InnerFx::value_type
  _push_composite_and_run(auto &h, detail::type_list<First, Rem...>) {
    ScopedHandler<First, std::remove_cvref_t<decltype(h)>> guard{h};
    return _push_composite_and_run<I>(h, detail::type_list<Rem...>{});
  }

  template <std::size_t I>
  typename InnerFx::value_type _push_composite_and_run(auto &,
                                                       detail::type_list<>) {
    return _push_and_run<I + 1>();
  }

public:
  using value_type = typename InnerFx::value_type;
  using effect_list =
      detail::remaining_effects_t<typename InnerFx::effect_list, PreHs...>;

  BoundFx(InnerFx fx, std::tuple<PreHs...> pre)
      : fx_(std::move(fx)), pre_(std::move(pre)) {}

  BoundFx(BoundFx &&) noexcept = default;
  BoundFx(const BoundFx &) = delete;
  BoundFx &operator=(const BoundFx &) = delete;

  /// Execute with additional handler instances for any remaining effects.
  template <typename... Hs>
    requires detail::all_handled_v<typename InnerFx::effect_list, PreHs...,
                                   Hs...>
  auto run(Hs &&...hs) {
    return std::apply(
        [&, this](auto &...pre) {
          return fx_.run(pre..., std::forward<Hs>(hs)...);
        },
        pre_);
  }

  /// @cond — deleted fallback when remaining effects are not covered.
  template <typename... Hs>
    requires(!detail::all_handled_v<typename InnerFx::effect_list, PreHs...,
                                    Hs...>)
  auto run(Hs &&...) = delete;
  /// @endcond

  /// Append more pre-bound handlers; returns a new BoundFx.
  template <typename... MoreHs> auto bind(MoreHs &&...more) {
    return BoundFx<InnerFx, PreHs..., std::decay_t<MoreHs>...>{
        std::move(fx_),
        std::tuple_cat(std::move(pre_),
                       std::make_tuple(std::forward<MoreHs>(more)...))};
  }

  /// Used by `co_await bound_fx` inside another coroutine.
  typename InnerFx::value_type _run() { return _push_and_run<0>(); }
};

// Out-of-line definitions of Fx::bind() (BoundFx must be complete first).
template <typename T, Effectful... Es>
template <typename... Hs>
auto Fx<T, Es...>::bind(Hs &&...hs) {
  return BoundFx<Fx<T, Es...>, std::decay_t<Hs>...>{
      std::move(*this), std::make_tuple(std::forward<Hs>(hs)...)};
}

template <Effectful... Es>
template <typename... Hs>
auto Fx<void, Es...>::bind(Hs &&...hs) {
  return BoundFx<Fx<void, Es...>, std::decay_t<Hs>...>{
      std::move(*this), std::make_tuple(std::forward<Hs>(hs)...)};
}

// --- perform(e) -------------------------------------------------------------

/// Internal awaitable produced by `perform(e)`.  Suspends the coroutine,
/// dispatches the effect value to the nearest matching handler on the thread-
/// local stack, and resumes with the handler's reply value.
/// Use the `perform(e)` macro rather than constructing this directly.
/// Awaitable produced by `perform(e)`.  Stores all per-perform state
/// directly in this object (which lives on the coroutine frame) — no
/// heap allocation.  `await_suspend` just records the caller handle and
/// the effect tag; the `_run()` dispatch loop does the actual dispatch.
template <Effectful E> class [[nodiscard]] PerformAwaitable {
public:
  explicit PerformAwaitable(E e) : effect_(std::move(e)) {}

  bool await_ready() const noexcept { return false; }

  template <typename Promise>
  void await_suspend(std::coroutine_handle<Promise> caller) noexcept {
    caller_ = caller;
    abort_base_ = &caller.promise(); // Promise inherits PromiseAbortBase
    caller.promise().effect_tag = &detail::effect_tag_v<E>;
    caller.promise().payload_ptr = this; // points into coroutine frame
    // Store effect_index (compile-time constant) for O(1) table dispatch.
    using Effects = typename Promise::declared_effects;
    caller.promise().effect_index =
        static_cast<uint8_t>(detail::type_list_index_v<E, Effects>);
  }

  typename E::result_type await_resume() { return std::move(result_); }

  // Public so ScopedHandler::dispatch and any static-dispatch helper
  // can access them without friendship boilerplate.
  // [[no_unique_address]]: for empty effect structs whose result_type has
  // ≥ 8-byte alignment (e.g. result_type = std::string or int64_t), the
  // compiler can overlap effect_ with result_, saving up to 8 bytes on
  // the coroutine frame.
  [[no_unique_address]] E effect_;
  typename E::result_type result_{};
  std::coroutine_handle<> caller_{};
  detail::PromiseAbortBase *abort_base_ = nullptr; // set in await_suspend
};

// Out-of-line body for Resume<E>::operator() — needs PerformAwaitable complete.
template <Effectful E>
void Resume<E>::operator()(typename E::result_type v) const {
  pa->result_ = std::move(v);
  pa->caller_.resume();
}

/// Resume the coroutine with `v`, drive it to completion through the
/// already-installed handler stack, and return its final result as `T`.
///
/// Use this inside a handler's `operator()` instead of calling `k(v)` when
/// you want to observe the computation's result inline — Koka-style:
///
///   struct Intercept : Ask::Handler {
///     auto operator()(Ask e, auto k) -> std::string {
///       int len = fx::resume<int>(k, "hello");
///       return "prompt=[" + e.prompt + "] len=" + std::to_string(len);
///     }
///   };
///
/// The value returned from `operator()` becomes the final `.run()` result,
/// exactly as if an `on_return` clause had produced it.  No `on_return` is
/// needed when using `resume`.
///
/// Preconditions:
///   - `T` must be the non-void return type of the enclosing `Fx<T, ...>`.
///   - `k` must not have been called already (single-shot).
///   - If a nested handler aborts during the drive, `std::runtime_error` is
///   thrown.
template <typename T, Effectful E>
  requires(!std::is_void_v<T>)
T resume(Resume<E> k, typename E::result_type v) {
  k.pa->result_ = std::move(v);
  auto *ab = k.pa->abort_base_;
  k.pa->caller_.resume();
  while (!k.pa->caller_.done()) {
    detail::dispatch_effect(ab->effect_tag, ab->payload_ptr);
    if (ab->aborted)
      throw std::runtime_error(
          "fx::resume: computation aborted by a nested handler");
  }
#ifndef FX_NO_EXCEPTIONS
  if (ab->exception)
    std::rethrow_exception(ab->exception);
#endif
  return std::move(**static_cast<std::optional<T> *>(ab->result_ptr));
}

// Out-of-line body for Cont<E,T>::resume.
// Must be defined after fx::resume since it delegates to it.
template <Effectful E, typename T>
T Cont<E, T>::resume(typename E::result_type v) const {
  if (transform_fn_) {
    // Koka semantics: drive the continuation inline, then apply inner handlers'
    // on_return clauses in FIFO order (innermost first) before this handler's
    // own transform.  This ensures each handler sees the shape its own
    // on_return produces — e.g. run(OuterWrap, InnerLog) where InnerLog wraps
    // in optional: OuterWrap.k.resume() fires InnerLog.on_return first, then
    // OuterWrap.on_return sees the optional.
    this->pa->result_ = std::move(v);
    auto *ab = this->pa->abort_base_;
    this->pa->caller_.resume();
    while (!this->pa->caller_.done()) {
      detail::dispatch_effect(ab->effect_tag, ab->payload_ptr);
      if (ab->aborted)
        throw std::runtime_error(
            "fx::resume: computation aborted by a nested handler");
    }
#ifndef FX_NO_EXCEPTIONS
    if (ab->exception)
      std::rethrow_exception(ab->exception);
#endif
    // Extract the raw result from the promise into an AnyVal (no heap alloc).
    auto current = extract_fn_(ab->result_ptr);
    // Walk inner handlers (from innermost toward own_node_, exclusive) and
    // apply each one's on_return in FIFO order.
    for (auto *n = detail::stack_top; n != own_node_ && n != nullptr;
         n = n->prev) {
      if (n->on_return_any_fn) {
        current = n->on_return_any_fn(n->real_handler_ptr, std::move(current));
      }
    }
    return transform_fn_(transform_ctx_, std::move(current));
  }
  return ::fx::resume<T>(*this, std::move(v));
}

namespace detail {
template <Effectful E> auto perform_impl(E e) {
  return PerformAwaitable<E>{std::move(e)};
}
} // namespace detail

/// Groups several effects (or other rows) into a named row.
///
/// Arguments may be bare `Effectful` types, other `Row` aliases, or a mix —
/// nested rows are flattened automatically:
///
///   using IO  = Row<Ask, Log>;
///   using All = Row<IO, Fail>;   // same as Row<Ask, Log, Fail>
///
/// Provides:
///   `IO::Fx<T>`            — coroutine return type for all row effects
///   `IO::Handler` — base for composite handler structs
template <Effectful... Es> struct BasicRow {
  template <typename T> using Fx = ::fx::Fx<T, Es...>;

  using effects = detail::type_list<Es...>;

  /// Base for composite handler structs.
  /// Inherit as: `struct MyHandler : IO::Handler { ... }`
  /// then provide `handle(Ei, auto resume)` for every `Ei` in the row.
  struct Handler {
    using effect_types = detail::type_list<Es...>;
  };
};

template <EffectOrRow... Ts> struct Handler {
  using effect_types = detail::flatten_effects_t<Ts...>;
};

/// Single-effect specialization — satisfies TypedHandler so the dispatcher
/// passes Cont<E, InnerR> (enabling Koka-style and Cont-style handles).
template <Effectful E> struct Handler<E> {
  using effect_type = E;
};

namespace detail {
template <typename List> struct row_from_list;
template <Effectful... Es> struct row_from_list<type_list<Es...>> {
  using type = BasicRow<Es...>;
};
template <typename List>
using row_from_list_t = typename row_from_list<List>::type;
} // namespace detail

/// `Row<Ts...>` accepts bare `Effectful` types, other `Row` aliases, or a
/// mix — nested rows are flattened at compile time.
///
///   using IO  = Row<Ask, Log>;
///   using All = Row<IO, Fail>;   // flattens to BasicRow<Ask, Log, Fail>
template <EffectOrRow... Ts>
using Row = detail::row_from_list_t<detail::flatten_effects_t<Ts...>>;

template <typename H, typename E>
concept Handles = requires(H h, E e) {
  { h.handle(e, std::any{}) };
};

template <typename H, typename E>
  requires Handles<H, E>
struct ValidateHandler {};

/// CRTP base for a single-effect type.
///
/// Inherit to define an effect:
///
///   struct Ask : Effect<Ask> {
///     using result_type = std::string;
///     std::string prompt;
///   };
///
/// Provides:
///   `Ask::Fx<T>`            — coroutine return type
///   `Ask::Handler`           — base for handler structs

template <typename R> struct Effect {
  using result_type = R;
};

} // namespace fx

/// Raises effect `e` inside a coroutine and suspends until a handler resumes
/// it.  The expression evaluates to `E::result_type`.
///
///   std::string name = perform(Ask{.prompt = "Name: "});
///
/// Compile error (IDE squiggle) if `E` is not listed in the coroutine's
/// return type.  Fix: add `E` to the effect list: `E::Fx<T>` or
/// `Row<..., E>::Fx<T>`.
#define perform(e) co_await ::fx::detail::perform_impl(e)
