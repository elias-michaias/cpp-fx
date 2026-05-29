#pragma once

#include <coroutine>
#include <cstddef>
#include <cstdint>
#include <exception>
#include <new>
#include <tuple>
#include <type_traits>
#include <utility>

#if !defined(FX_NO_ALLOCATOR) && defined(FX_STD_ALLOCATOR)
#include <memory_resource>
#endif

#ifndef FX_SMALL_ANY_SIZE
#define FX_SMALL_ANY_SIZE 48
#endif

namespace fx {

template <typename E>
concept Effectful = requires { typename E::result_type; };

#ifndef FX_NO_ALLOCATOR
#ifdef FX_STD_ALLOCATOR
using MemResource = std::pmr::memory_resource;
#else
struct MemResource {
  void *allocate(std::size_t n, std::size_t a) noexcept {
    return do_allocate(n, a);
  }
  void deallocate(void *p, std::size_t n, std::size_t a) noexcept {
    do_deallocate(p, n, a);
  }
  virtual ~MemResource() = default;

private:
  virtual void *do_allocate(std::size_t n, std::size_t a) = 0;
  virtual void do_deallocate(void *p, std::size_t n,
                             std::size_t a) noexcept = 0;
};
#endif // FX_STD_ALLOCATOR
#endif // FX_NO_ALLOCATOR

template <typename T>
concept EffectOrRow = Effectful<T> || requires { typename T::effects; };

template <Effectful E> class PerformAwaitable;

namespace detail {
struct HandlerNode;

template <typename T> inline constexpr char small_any_type_tag_v = 0;

template <std::size_t N> struct SmallAny {
private:
  alignas(std::max_align_t) unsigned char buf_[N]{};
  void (*destroy_)(void *) noexcept = nullptr;
  void (*move_construct_)(void *dst, void *src) noexcept = nullptr;
  const void *type_tag_ = nullptr;

  template <typename Tb> static void destroy_fn(void *p) noexcept {
    static_cast<Tb *>(p)->~Tb();
  }

  template <typename Tb> static void move_fn(void *dst, void *src) noexcept {
    ::new (dst) Tb(std::move(*static_cast<Tb *>(src)));
    static_cast<Tb *>(src)->~Tb();
  }

  void steal(SmallAny &o) noexcept {
    if (o.type_tag_) {
      if (o.move_construct_)
        o.move_construct_(buf_, o.buf_);
      else
        __builtin_memcpy(buf_, o.buf_, N);
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
  SmallAny(SmallAny &&o) noexcept { steal(o); }
  SmallAny &operator=(SmallAny &&o) noexcept {
    if (this != &o) {
      reset();
      steal(o);
    }
    return *this;
  }

  template <typename T> [[gnu::always_inline]] void emplace(T &&val) {
    using Tb = std::decay_t<T>;
    static_assert(sizeof(Tb) <= N,
                  "fx::SmallAny: value too large; increase FX_SMALL_ANY_SIZE");
    static_assert(alignof(Tb) <= alignof(std::max_align_t),
                  "fx::SmallAny: value alignment exceeds max_align_t");
    reset();
    ::new (static_cast<void *>(buf_)) Tb(std::forward<T>(val));
    if constexpr (!std::is_trivially_destructible_v<Tb>)
      destroy_ = &destroy_fn<Tb>;
    if constexpr (!std::is_trivially_copyable_v<Tb>)
      move_construct_ = &move_fn<Tb>;
    type_tag_ = &small_any_type_tag_v<Tb>;
  }

  [[nodiscard]] bool has_value() const noexcept { return type_tag_ != nullptr; }

  template <typename T> [[nodiscard]] bool has_type() const noexcept {
    return type_tag_ == &small_any_type_tag_v<std::decay_t<T>>;
  }

  template <typename T> T &as() noexcept {
    return *std::launder(reinterpret_cast<T *>(buf_));
  }

  template <typename T>
  [[gnu::always_inline]] T
  take() noexcept(std::is_nothrow_move_constructible_v<T>) {
    T val = std::move(as<T>());
    reset();
    return val;
  }

  void reset() noexcept {
    if (type_tag_) {
      if (destroy_)
        destroy_(buf_);
      destroy_ = nullptr;
      move_construct_ = nullptr;
      type_tag_ = nullptr;
    }
  }
};

using AnyVal = SmallAny<FX_SMALL_ANY_SIZE>;

template <typename T> struct Option {
private:
  alignas(T) unsigned char storage_[sizeof(T)];
  bool filled_ = false;

  T *ptr() noexcept { return std::launder(reinterpret_cast<T *>(storage_)); }
  const T *ptr() const noexcept {
    return std::launder(reinterpret_cast<const T *>(storage_));
  }

public:
  Option() noexcept = default;
  explicit Option(T v) : filled_(true) { ::new (storage_) T(std::move(v)); }
  Option(Option &&o) noexcept : filled_(o.filled_) {
    if (filled_) {
      ::new (storage_) T(std::move(*o.ptr()));
      o.reset();
    }
  }
  ~Option() noexcept { reset(); }

  void emplace(T v) {
    reset();
    ::new (storage_) T(std::move(v));
    filled_ = true;
  }

  T &operator*() noexcept { return *ptr(); }
  const T &operator*() const noexcept { return *ptr(); }
  explicit operator bool() const noexcept { return filled_; }

  void reset() noexcept {
    if (filled_) {
      ptr()->~T();
      filled_ = false;
    }
  }
};

} // namespace detail

template <Effectful E> struct Resume {
  PerformAwaitable<E> *pa;
  void operator()(typename E::result_type v) const;
};

template <Effectful E, typename T> struct Cont : Resume<E> {

  using transform_fn_t = T (*)(void *, detail::AnyVal &&);

  using extract_fn_t = detail::AnyVal (*)(void *);

  explicit Cont(PerformAwaitable<E> *pa) noexcept
      : Resume<E>{pa}, transform_fn_{nullptr}, transform_ctx_{nullptr},
        extract_fn_{nullptr}, own_node_{nullptr} {}

  explicit Cont(PerformAwaitable<E> *pa, transform_fn_t fn, void *ctx,
                extract_fn_t ext_fn, detail::HandlerNode *own_node) noexcept
      : Resume<E>{pa}, transform_fn_{fn}, transform_ctx_{ctx},
        extract_fn_{ext_fn}, own_node_{own_node} {}

  T resume(typename E::result_type v) const;

  transform_fn_t transform_fn_;
  void *transform_ctx_;
  extract_fn_t extract_fn_;
  detail::HandlerNode *own_node_;
};

template <typename H, typename E>
concept HandlerFor =
    Effectful<E> && requires(std::remove_cvref_t<H> &h, E e, Cont<E, int> r) {
      h.handle(e, r);
    };

template <typename H>
concept TypedHandler =
    requires { typename std::remove_cvref_t<H>::effect_type; } &&
    HandlerFor<std::remove_cvref_t<H>,
               typename std::remove_cvref_t<H>::effect_type>;

namespace detail {

struct AbortContext {
  void *owner = nullptr;
  AnyVal value;
};

struct PromiseAbortBase {
  bool aborted = false;

  uint8_t effect_index = 0;

  AbortContext *abort_ctx = nullptr;

  const void *effect_tag = nullptr;
  void *payload_ptr = nullptr;
#ifndef FX_NO_EXCEPTIONS
  std::exception_ptr exception;
#endif

  void *result_ptr = nullptr;
};

struct HandlerNode {
  bool (*dispatch)(HandlerNode *, void *) noexcept = nullptr;
  void *handler_obj = nullptr;
  void *real_handler_ptr = nullptr;
  using on_return_any_fn_t = AnyVal (*)(void *, AnyVal &&);
  on_return_any_fn_t on_return_any_fn = nullptr;
  AbortContext *abort_ctx_ptr = nullptr;
  int stack_idx = -1;
};

struct HandlerStack {
  static constexpr int kMaxDepth = 16;
  int depth = 0;
  int _pad = 0;
  const void *tags[kMaxDepth];
  HandlerNode *nodes[kMaxDepth];
};

#ifdef FX_NO_TLS
inline HandlerStack handler_stack_{};
#else
inline thread_local HandlerStack handler_stack_{};
#endif

#ifndef FX_NO_ALLOCATOR
#ifdef FX_NO_TLS
inline MemResource *current_mr = nullptr;
#else
inline thread_local MemResource *current_mr = nullptr;
#endif
#endif

template <Effectful E> inline constexpr char effect_tag_v = 0;

[[gnu::always_inline]] inline bool dispatch_effect(const void *tag,
                                                   void *payload_ptr) noexcept {
  auto &stk = handler_stack_;
  for (int i = stk.depth - 1; i >= 0; --i) {
    if (stk.tags[i] == tag) [[likely]] {
      auto *n = stk.nodes[i];
      return n->dispatch(n, payload_ptr);
    }
  }
  std::terminate();
}

template <Effectful... Es, typename Handle>
[[gnu::always_inline]] inline bool run_coroutine(Handle &h) noexcept {
  [[maybe_unused]] HandlerNode *table[sizeof...(Es) > 0 ? sizeof...(Es) : 1]{};
  if constexpr (sizeof...(Es) > 0) {
    [&]<std::size_t... Is>(std::index_sequence<Is...>) {
      (
          [&] {
            const void *const tag =
                &effect_tag_v<std::tuple_element_t<Is, std::tuple<Es...>>>;
            auto &stk = handler_stack_;
            for (int i = stk.depth - 1; i >= 0; --i)
              if (stk.tags[i] == tag) {
                table[Is] = stk.nodes[i];
                break;
              }
          }(),
          ...);
    }(std::make_index_sequence<sizeof...(Es)>{});
  }
  h.resume();
  auto &p = h.promise();
  while (__builtin_expect(!h.done(), 1)) {
    if constexpr (sizeof...(Es) > 0) {
      auto *n = table[p.effect_index];
      if (n->dispatch(n, p.payload_ptr))
        return true;
    } else {
      if (dispatch_effect(p.effect_tag, p.payload_ptr))
        return true;
    }
  }
  return false;
}

} // namespace detail

#ifndef FX_NO_ALLOCATOR

namespace detail {

#ifndef FX_STD_ALLOCATOR
struct GlobalHeapResource : MemResource {
  static GlobalHeapResource &instance() noexcept {
    static GlobalHeapResource r;
    return r;
  }

private:
  void *do_allocate(std::size_t n, std::size_t) override {
    return ::operator new(n);
  }
  void do_deallocate(void *p, std::size_t n, std::size_t) noexcept override {
    ::operator delete(p, n);
  }
};

struct NullResource : MemResource {
  static NullResource &instance() noexcept {
    static NullResource r;
    return r;
  }

private:
  void *do_allocate(std::size_t, std::size_t) override { std::terminate(); }
  void do_deallocate(void *, std::size_t, std::size_t) noexcept override {}
};

inline MemResource *default_resource() noexcept {
  return &GlobalHeapResource::instance();
}
inline MemResource *null_resource() noexcept {
  return &NullResource::instance();
}
#else // FX_STD_ALLOCATOR
inline MemResource *default_resource() noexcept {
  return std::pmr::get_default_resource();
}
inline MemResource *null_resource() noexcept {
  return std::pmr::null_memory_resource();
}
#endif // FX_STD_ALLOCATOR

} // namespace detail

template <std::size_t BlockSize, std::size_t Capacity>
struct FreeListResource : MemResource {
  static_assert(BlockSize >= sizeof(void *),
                "FreeListResource: BlockSize must be >= sizeof(void*)");

private:
  union alignas(std::max_align_t) Block {
    unsigned char data[BlockSize];
    Block *next;
  };

  Block storage_[Capacity];
  Block *head_ = nullptr;
  MemResource *fallback_;

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
  explicit FreeListResource(
      MemResource *fallback = detail::default_resource()) noexcept
      : fallback_(fallback) {
    build_free_list();
  }

  void reset() noexcept { build_free_list(); }

  static constexpr std::size_t block_size() noexcept { return BlockSize; }
  static constexpr std::size_t capacity() noexcept { return Capacity; }

private:
  void *do_allocate(std::size_t n, std::size_t) override {
    if (n > BlockSize || !head_)
      return fallback_->allocate(n, alignof(std::max_align_t));
    Block *b = head_;
    head_ = b->next;
    return b->data;
  }

  void do_deallocate(void *ptr, std::size_t n, std::size_t) noexcept override {
    if (!in_slab(ptr)) {
      fallback_->deallocate(ptr, n, alignof(std::max_align_t));
      return;
    }
    auto *b = static_cast<Block *>(ptr);
    b->next = head_;
    head_ = b;
  }
#ifdef FX_STD_ALLOCATOR
  bool do_is_equal(const std::pmr::memory_resource &o) const noexcept override {
    return this == &o;
  }
#endif
};

namespace detail {

#ifndef FX_NO_TLS
inline thread_local FreeListResource<256, 16> default_slab_{};
#endif

inline MemResource *effective_mr() noexcept {
#ifdef FX_NO_TLS
  return current_mr;
#else
  return current_mr ? current_mr : &default_slab_;
#endif
}

} // namespace detail

#endif // FX_NO_ALLOCATOR

namespace detail {

template <typename... Ts> struct type_list {};

template <typename T, typename... Ts>
inline constexpr bool contains_v = (std::is_same_v<T, Ts> || ...);

template <typename T, typename List>
inline constexpr bool contains_in_list_v = false;
template <typename T, typename... Ts>
inline constexpr bool contains_in_list_v<T, type_list<Ts...>> =
    contains_v<T, Ts...>;

template <typename T, typename List, std::size_t I = 0>
struct type_list_index_impl;
template <typename T, typename U, typename... Ts, std::size_t I>
struct type_list_index_impl<T, type_list<U, Ts...>, I>
    : type_list_index_impl<T, type_list<Ts...>, I + 1> {};
template <typename T, typename... Ts, std::size_t I>
struct type_list_index_impl<T, type_list<T, Ts...>, I> {
  static constexpr std::size_t value = I;
};
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

template <typename E, typename H>
concept SingleCoversEffect = requires { typename H::effect_type; } &&
                             std::is_same_v<E, typename H::effect_type>;

template <typename E, typename H>
concept CompositeCoversEffect = requires { typename H::effect_types; } &&
                                contains_in_list_v<E, typename H::effect_types>;

template <typename E, typename... Hs>
inline constexpr bool effect_is_handled_v =
    (... || (SingleCoversEffect<E, std::remove_cvref_t<Hs>> ||
             CompositeCoversEffect<E, std::remove_cvref_t<Hs>>));

template <typename EffectList, typename... Hs>
inline constexpr bool all_handled_v = false;
template <typename... Es, typename... Hs>
inline constexpr bool all_handled_v<type_list<Es...>, Hs...> =
    (... && effect_is_handled_v<Es, Hs...>);

template <typename H, typename List>
inline constexpr bool all_effects_handled_v = false;
template <typename H, typename... Es>
inline constexpr bool all_effects_handled_v<H, type_list<Es...>> =
    (HandlerFor<H, Es> && ...);

template <typename InnerList, typename... OuterEs>
inline constexpr bool all_in_v = false;
template <typename... InnerEs, typename... OuterEs>
inline constexpr bool all_in_v<type_list<InnerEs...>, OuterEs...> =
    (... && contains_v<InnerEs, OuterEs...>);

template <typename L1, typename L2> inline constexpr bool all_in_list_v = false;
template <typename... InnerEs, typename... OuterEs>
inline constexpr bool
    all_in_list_v<type_list<InnerEs...>, type_list<OuterEs...>> =
        (... && contains_v<InnerEs, OuterEs...>);

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

template <typename L1, typename L2> struct concat_lists;
template <typename... As, typename... Bs>
struct concat_lists<type_list<As...>, type_list<Bs...>> {
  using type = type_list<As..., Bs...>;
};

template <typename T> struct to_effect_list {
  using type = type_list<T>;
};
template <typename T>
  requires requires { typename T::effects; }
struct to_effect_list<T> {
  using type = typename T::effects;
};

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

template <typename List> struct row_from_list;

template <typename H, typename InnerR>
concept HasReturnClause = requires(std::remove_cvref_t<H> &h, InnerR v) {
  h.on_return(std::move(v));
};

template <typename H, typename InnerR>
using on_return_t = decltype(std::declval<std::remove_cvref_t<H> &>().on_return(
    std::declval<InnerR>()));

template <typename H, typename InnerR>
concept HasDrivingOperatorFor =
    TypedHandler<H> &&
    !std::is_void_v<decltype(std::declval<std::remove_cvref_t<H> &>().handle(
        std::declval<typename std::remove_cvref_t<H>::effect_type>(),
        std::declval<
            Cont<typename std::remove_cvref_t<H>::effect_type, InnerR>>()))>;

template <typename H, typename InnerR>
  requires HasDrivingOperatorFor<H, InnerR>
using driving_return_for_t =
    decltype(std::declval<std::remove_cvref_t<H> &>().handle(
        std::declval<typename std::remove_cvref_t<H>::effect_type>(),
        std::declval<
            Cont<typename std::remove_cvref_t<H>::effect_type, InnerR>>()));

template <typename H, typename InnerR,
          bool HasReturn = HasReturnClause<H, InnerR>,
          bool HasDriving = HasDrivingOperatorFor<H, InnerR>>
struct compose_one {
  using type = InnerR;
};

template <typename H, typename InnerR, bool HasDriving>
struct compose_one<H, InnerR, true, HasDriving> {
  using type = on_return_t<H, InnerR>;
};

template <typename H, typename R> struct lazy_on_return {
  using type = on_return_t<H, R>;
};
template <typename R> struct lazy_identity {
  using type = R;
};

template <typename H, typename InnerR>
struct compose_one<H, InnerR, false, true> {
  using DrivingR = driving_return_for_t<H, InnerR>;

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

template <typename H>
concept CompositeHandler =
    requires { typename std::remove_cvref_t<H>::effect_types; } &&
    detail::all_effects_handled_v<
        std::remove_cvref_t<H>, typename std::remove_cvref_t<H>::effect_types>;

template <typename T, Effectful... Es> struct Fx;

namespace detail {

template <typename T, typename List> struct fx_from_list;
template <typename T, typename... Es> struct fx_from_list<T, type_list<Es...>> {
  using type = Fx<T, Es...>;
};
template <typename T, typename List>
using fx_from_list_t = typename fx_from_list<T, List>::type;

template <typename F> struct FxAwaitable {
  F inner;
  bool await_ready() noexcept { return true; }
  void await_suspend(auto) noexcept {}
  decltype(auto) await_resume() { return inner._run(); }
};

template <typename... Es> struct PromiseBase : PromiseAbortBase {

  std::suspend_always initial_suspend() noexcept { return {}; }
  std::suspend_always final_suspend() noexcept { return {}; }
#ifdef FX_NO_EXCEPTIONS
  void unhandled_exception() noexcept { std::terminate(); }
#else
  void unhandled_exception() { exception = std::current_exception(); }
#endif
  using declared_effects = type_list<Es...>;

#ifndef FX_NO_ALLOCATOR
  static void *operator new(std::size_t n) {
    constexpr std::size_t kPtrSize = sizeof(MemResource *);
    auto *mr = effective_mr();
    std::size_t total = n + kPtrSize;
    void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
                   : ::operator new(total);

    *reinterpret_cast<MemResource **>(static_cast<unsigned char *>(raw) + n) =
        mr;
    return raw;
  }

  static void operator delete(void *ptr, std::size_t n) noexcept {
    constexpr std::size_t kPtrSize = sizeof(MemResource *);
    std::size_t total = n + kPtrSize;
    auto *mr = *reinterpret_cast<MemResource **>(
        static_cast<unsigned char *>(ptr) + n);
    if (mr)
      mr->deallocate(ptr, total, alignof(std::max_align_t));
    else
      ::operator delete(ptr, total);
  }
#endif

  template <Effectful Eff>
    requires contains_in_list_v<Eff, type_list<Es...>>
  PerformAwaitable<Eff> await_transform(PerformAwaitable<Eff> a) noexcept {
    return a;
  }

  template <Effectful Eff>
  PerformAwaitable<Eff> await_transform(PerformAwaitable<Eff>) = delete;

  template <typename F>
    requires requires {
      typename F::value_type;
      typename F::effect_list;
    } && all_in_list_v<typename F::effect_list, type_list<Es...>>
  FxAwaitable<F> await_transform(F inner) noexcept {
    return {std::move(inner)};
  }

  template <typename F>
    requires requires {
      typename F::value_type;
      typename F::effect_list;
    } && (!all_in_list_v<typename F::effect_list, type_list<Es...>>)
  FxAwaitable<F> await_transform(F) = delete;
};

template <typename Promise> struct OwnedHandle {
  std::coroutine_handle<Promise> h;
  OwnedHandle() = default;
  explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
  OwnedHandle(OwnedHandle &&o) noexcept : h(o.h) { o.h = {}; }
  OwnedHandle &operator=(OwnedHandle &&o) noexcept {
    if (this != &o) {
      if (h)
        h.destroy();
      h = o.h;
      o.h = {};
    }
    return *this;
  }
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

template <typename H, typename InnerR>
AnyVal on_return_any_impl(void *ctx, AnyVal &&val) {
  using Hb = std::remove_cvref_t<H>;
  AnyVal out;
  out.emplace(static_cast<Hb *>(ctx)->on_return(val.template take<InnerR>()));
  return out;
}

template <typename RawT> AnyVal extract_result_impl(void *result_ptr) {
  auto &opt = *static_cast<Option<RawT> *>(result_ptr);
  AnyVal out;
  out.emplace(std::move(*opt));
  return out;
}

template <typename H, typename InnerR>
on_return_t<std::remove_cvref_t<H>, InnerR> apply_on_return(void *ctx,
                                                            AnyVal &&val) {
  using Hb = std::remove_cvref_t<H>;
  return static_cast<Hb *>(ctx)->on_return(val.template take<InnerR>());
}
} // namespace detail

template <Effectful E, typename H, typename ResultT = void,
          typename RawT = ResultT>
  requires HandlerFor<H, E>
struct ScopedHandler {
  detail::HandlerNode node;
  int saved_depth_;
  detail::AbortContext abort_storage_;

  explicit ScopedHandler(H &h, void *group_id = nullptr) noexcept {
    node.real_handler_ptr = static_cast<void *>(&h);

    node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
    node.abort_ctx_ptr = &abort_storage_;

    if constexpr (!std::is_void_v<ResultT> &&
                  detail::HasReturnClause<std::remove_cvref_t<H>, ResultT>) {
      node.on_return_any_fn =
          &detail::on_return_any_impl<std::remove_cvref_t<H>, ResultT>;
    }
    node.dispatch = [](detail::HandlerNode *n, void *raw) noexcept -> bool {
      auto &hh =
          *reinterpret_cast<std::remove_reference_t<H> *>(n->real_handler_ptr);
      auto *pa = reinterpret_cast<PerformAwaitable<E> *>(raw);

      if constexpr (std::is_void_v<ResultT>) {

        using Token = Resume<E>;
        using Ret = decltype(hh.handle(pa->effect_, Token{pa}));
        if constexpr (std::is_void_v<Ret>) {
          hh.handle(pa->effect_, Token{pa});
          return false;
        } else {
          auto val = hh.handle(pa->effect_, Token{pa});
          n->abort_ctx_ptr->owner = n->handler_obj;
          n->abort_ctx_ptr->value.emplace(std::move(val));
          pa->abort_base_->abort_ctx = n->abort_ctx_ptr;
          pa->abort_base_->aborted = true;
          return true;
        }
      } else if constexpr (detail::HasReturnClause<std::remove_cvref_t<H>,
                                                   ResultT>) {

        using Hb = std::remove_cvref_t<H>;
        using OutT = detail::on_return_t<Hb, ResultT>;
        using Token = Cont<E, OutT>;

        using Ret = decltype(hh.handle(pa->effect_, Token{pa}));
        if constexpr (std::is_void_v<Ret>) {
          hh.handle(pa->effect_,
                    Token{pa, &detail::apply_on_return<Hb, ResultT>,
                          static_cast<void *>(&hh),
                          &detail::extract_result_impl<RawT>, n});
          return false;
        } else {
          auto val = hh.handle(pa->effect_,
                               Token{pa, &detail::apply_on_return<Hb, ResultT>,
                                     static_cast<void *>(&hh),
                                     &detail::extract_result_impl<RawT>, n});
          n->abort_ctx_ptr->owner = n->handler_obj;
          n->abort_ctx_ptr->value.emplace(std::move(val));
          pa->abort_base_->abort_ctx = n->abort_ctx_ptr;
          pa->abort_base_->aborted = true;
          return true;
        }
      } else {

        using Token = Cont<E, ResultT>;
        using Ret = decltype(hh.handle(pa->effect_, Token{pa}));
        if constexpr (std::is_void_v<Ret>) {
          hh.handle(pa->effect_, Token{pa});
          return false;
        } else {

          auto val = hh.handle(pa->effect_, Token{pa});
          n->abort_ctx_ptr->owner = n->handler_obj;
          n->abort_ctx_ptr->value.emplace(std::move(val));
          pa->abort_base_->abort_ctx = n->abort_ctx_ptr;
          pa->abort_base_->aborted = true;
          return true;
        }
      }
    };
    auto &stk = detail::handler_stack_;
    if (stk.depth >= detail::HandlerStack::kMaxDepth)
      std::terminate();
    node.stack_idx = stk.depth;
    stk.tags[stk.depth] = &detail::effect_tag_v<E>;
    stk.nodes[stk.depth] = &node;
    saved_depth_ = stk.depth++;
  }
  ~ScopedHandler() { detail::handler_stack_.depth = saved_depth_; }
  ScopedHandler(const ScopedHandler &) = delete;
  ScopedHandler &operator=(const ScopedHandler &) = delete;
};

#ifndef FX_NO_ALLOCATOR

struct ScopedAllocator {
  explicit ScopedAllocator(MemResource *mr) noexcept
      : prev_(detail::current_mr) {
    detail::current_mr = mr;
  }
  explicit ScopedAllocator(MemResource &mr) noexcept : ScopedAllocator(&mr) {}
  ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
  ScopedAllocator(const ScopedAllocator &) = delete;
  ScopedAllocator &operator=(const ScopedAllocator &) = delete;

private:
  MemResource *prev_;
};

template <std::size_t N> struct MonotonicResource : MemResource {
  MonotonicResource() = default;
  MonotonicResource(const MonotonicResource &) = delete;
  MonotonicResource &operator=(const MonotonicResource &) = delete;

private:
  alignas(std::max_align_t) unsigned char buf_[N];
  unsigned char *cursor_ = buf_;

  void *do_allocate(std::size_t n, std::size_t a) override {
    std::size_t offset = static_cast<std::size_t>(cursor_ - buf_);
    std::size_t aligned = (offset + a - 1) / a * a;
    unsigned char *p = buf_ + aligned;
    if (p + n > buf_ + N)
      std::terminate();
    cursor_ = p + n;
    return p;
  }
  void do_deallocate(void *, std::size_t, std::size_t) noexcept override {}
#ifdef FX_STD_ALLOCATOR
  bool do_is_equal(const std::pmr::memory_resource &o) const noexcept override {
    return this == &o;
  }
#endif
};

template <std::size_t N> struct ScopedArena {
  ScopedArena() : alloc_(mr_) {}
  ScopedArena(const ScopedArena &) = delete;
  ScopedArena &operator=(const ScopedArena &) = delete;

private:
  MonotonicResource<N> mr_;
  ScopedAllocator alloc_;
};

template <std::size_t BlockSize, std::size_t Capacity> struct ScopedFreeList {
  ScopedFreeList() : alloc_(mr_) {}
  ScopedFreeList(const ScopedFreeList &) = delete;
  ScopedFreeList &operator=(const ScopedFreeList &) = delete;

  void reset() noexcept { mr_.reset(); }

private:
  FreeListResource<BlockSize, Capacity> mr_;
  ScopedAllocator alloc_;
};

struct no_heap {
  no_heap() : impl_(detail::null_resource()) {}
  no_heap(const no_heap &) = delete;
  no_heap &operator=(const no_heap &) = delete;

private:
  ScopedAllocator impl_;
};

#endif // FX_NO_ALLOCATOR

template <typename T, Effectful... Es> struct Fx {
  struct promise_type : detail::PromiseBase<Es...> {
    detail::Option<T> result;
    Fx get_return_object() noexcept;
    void return_value(T v) { result.emplace(std::move(v)); }
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

  detail::Option<T> run_push() {
    auto &h = impl_.h;
    if (detail::run_coroutine<Es...>(h))
      return {};
    auto &p = h.promise();
#ifndef FX_NO_EXCEPTIONS
    if (p.exception)
      std::rethrow_exception(p.exception);
#endif
    return detail::Option<T>{std::move(*p.result)};
  }

  template <TypedHandler H, typename... Rest>
    requires(!CompositeHandler<std::remove_cvref_t<H>>)
  auto run_push(H &h, Rest &...rest)
      -> detail::Option<detail::composed_return_t<T, H, Rest...>> {
    using Hb = std::remove_cvref_t<H>;
    using InnerR = detail::composed_return_t<T, Rest...>;
    using R = detail::composed_return_t<T, H, Rest...>;

    ScopedHandler<typename Hb::effect_type, Hb, InnerR, T> guard{h};
    auto inner = run_push(rest...);
    auto *ab = get_abort_base();

    if (ab && ab->aborted && ab->abort_ctx &&
        ab->abort_ctx->owner == static_cast<void *>(&guard.node)) {
      ab->aborted = false;
      auto *ctx = ab->abort_ctx;
      ab->abort_ctx = nullptr;
      if constexpr (detail::HasReturnClause<Hb, InnerR>) {

        auto result = ctx->value.template take<R>();
        return detail::Option<R>{std::move(result)};
      } else if constexpr (detail::HasDrivingOperatorFor<Hb, InnerR>) {

        using DrivingR = detail::driving_return_for_t<Hb, InnerR>;
        auto raw = ctx->value.template take<DrivingR>();
        if constexpr (detail::HasReturnClause<Hb, DrivingR>)
          return detail::Option<R>{h.on_return(std::move(raw))};
        else
          return detail::Option<R>{std::move(raw)};
      } else {
        auto result = ctx->value.template take<R>();
        return detail::Option<R>{std::move(result)};
      }
    }
    if (!inner) {

      if constexpr (detail::HasReturnClause<Hb, InnerR>) {
        if (ab && ab->aborted && ab->abort_ctx) {
          if (ab->abort_ctx->value.template has_type<InnerR>()) {
            auto v = ab->abort_ctx->value.template take<InnerR>();
            ab->abort_ctx->value.emplace(h.on_return(std::move(v)));
          }
        }
      }
      return {};
    }

    if constexpr (detail::HasReturnClause<Hb, InnerR>)
      return detail::Option<R>{h.on_return(std::move(*inner))};
    else if constexpr (detail::HasDrivingOperatorFor<Hb, InnerR>)

      std::unreachable();
    else
      return inner;
  }
  template <CompositeHandler H, typename... Rest>
  auto run_push(H &h, Rest &...rest)
      -> detail::Option<detail::composed_return_t<T, H, Rest...>> {
    using Hb = std::remove_cvref_t<H>;
    using InnerR = detail::composed_return_t<T, Rest...>;
    using R = detail::composed_return_t<T, Hb, Rest...>;

    char group_token{};
    void *const group_id = &group_token;
    auto inner =
        run_push_composite(h, group_id, typename Hb::effect_types{}, rest...);
    auto *ab = get_abort_base();
    if (ab && ab->aborted && ab->abort_ctx &&
        ab->abort_ctx->owner == group_id) {
      ab->aborted = false;
      auto *ctx = ab->abort_ctx;
      ab->abort_ctx = nullptr;
      auto result = ctx->value.template take<R>();
      return detail::Option<R>{std::move(result)};
    }
    if (!inner)
      return {};
    if constexpr (detail::HasReturnClause<Hb, InnerR>)
      return detail::Option<R>{h.on_return(std::move(*inner))};
    else
      return inner;
  }

  template <typename H, typename... Rest>
  auto run_push_composite([[maybe_unused]] H &h, void *, detail::type_list<>,
                          Rest &...rest)
      -> detail::Option<detail::composed_return_t<T, Rest...>> {
    return run_push(rest...);
  }

  template <typename H, Effectful First, Effectful... Rem, typename... Rest>
  auto run_push_composite(H &h, void *group_id,
                          detail::type_list<First, Rem...>, Rest &...rest)
      -> detail::Option<detail::composed_return_t<T, Rest...>> {
    ScopedHandler<First, H> guard{h, group_id};
    return run_push_composite(h, group_id, detail::type_list<Rem...>{},
                              rest...);
  }

public:
  explicit Fx(Handle h) noexcept : impl_(OwnedHandle{h}) {}
  Fx(Fx &&) noexcept = default;

  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  auto run(Hs &&...hs) {
    return *run_push(hs...);
  }

  template <typename... Hs>
    requires(!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  auto run(Hs &&...) = delete;

  template <typename... Hs> auto bind(Hs &&...hs);

  T _run() {
    auto &h = impl_.h;
    h.resume();
    auto &p = h.promise();
    while (!h.done())
      detail::dispatch_effect(p.effect_tag, p.payload_ptr);
#ifndef FX_NO_EXCEPTIONS
    if (p.exception)
      std::rethrow_exception(p.exception);
#endif
    return std::move(*p.result);
  }
};

template <typename T, Effectful... Es>
Fx<T, Es...> Fx<T, Es...>::promise_type::get_return_object() noexcept {
  this->result_ptr = &result;
  return Fx{Handle::from_promise(*this)};
}

template <Effectful... Es> struct Fx<void, Es...> {
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
    auto &h = impl_.h;
    if (detail::run_coroutine<Es...>(h))
      return;
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

  template <typename... Hs>
    requires detail::all_handled_v<detail::type_list<Es...>, Hs...>
  void run(Hs &&...hs) {
    run_push(hs...);
  }

  template <typename... Hs>
    requires(!detail::all_handled_v<detail::type_list<Es...>, Hs...>)
  void run(Hs &&...) = delete;

  template <typename... Hs> auto bind(Hs &&...hs);

  void _run() {
    auto &h = impl_.h;
    h.resume();
    auto &p = h.promise();
    while (!h.done()) {
      if (detail::dispatch_effect(p.effect_tag, p.payload_ptr))
        return;
    }
#ifndef FX_NO_EXCEPTIONS
    if (p.exception)
      std::rethrow_exception(p.exception);
#endif
  }
};

template <Effectful... Es>
Fx<void, Es...> Fx<void, Es...>::promise_type::get_return_object() noexcept {
  return Fx{Handle::from_promise(*this)};
}

template <typename InnerFx, typename... PreHs> struct BoundFx {
  using value_type = typename InnerFx::value_type;
  using effect_list =
      detail::remaining_effects_t<typename InnerFx::effect_list, PreHs...>;

  BoundFx(InnerFx fx, std::tuple<PreHs...> pre)
      : fx_(std::move(fx)), pre_(std::move(pre)) {}

  BoundFx(BoundFx &&) noexcept = default;

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

  template <typename... Hs>
    requires(!detail::all_handled_v<typename InnerFx::effect_list, PreHs...,
                                    Hs...>)
  auto run(Hs &&...) = delete;

  template <typename... MoreHs> auto bind(MoreHs &&...more) {
    return BoundFx<InnerFx, PreHs..., std::decay_t<MoreHs>...>{
        std::move(fx_),
        std::tuple_cat(std::move(pre_),
                       std::make_tuple(std::forward<MoreHs>(more)...))};
  }

  typename InnerFx::value_type _run() { return _push_and_run<0>(); }

private:
  InnerFx fx_;
  std::tuple<PreHs...> pre_;

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
};

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

template <Effectful E> struct [[nodiscard]] PerformAwaitable {
  explicit PerformAwaitable(E e) : effect_(std::move(e)) {}

  bool await_ready() const noexcept { return false; }

  template <typename Promise>
  void await_suspend(std::coroutine_handle<Promise> caller) noexcept {
    caller_ = caller;
    abort_base_ = &caller.promise();
    caller.promise().effect_tag = &detail::effect_tag_v<E>;
    caller.promise().payload_ptr = this;

    using Effects = typename Promise::declared_effects;
    caller.promise().effect_index =
        static_cast<uint8_t>(detail::type_list_index_v<E, Effects>);
  }

  typename E::result_type await_resume() { return std::move(result_); }

  [[no_unique_address]] E effect_;
  typename E::result_type result_{};
  std::coroutine_handle<> caller_{};
  detail::PromiseAbortBase *abort_base_ = nullptr;
};

template <Effectful E>
void Resume<E>::operator()(typename E::result_type v) const {
  pa->result_ = std::move(v);
  pa->caller_.resume();
}

template <typename T, Effectful E>
  requires(!std::is_void_v<T>)
T resume(Resume<E> k, typename E::result_type v) {
  k.pa->result_ = std::move(v);
  auto *ab = k.pa->abort_base_;
  k.pa->caller_.resume();
  while (!k.pa->caller_.done()) {
    if (detail::dispatch_effect(ab->effect_tag, ab->payload_ptr))
      std::terminate();
  }
#ifndef FX_NO_EXCEPTIONS
  if (ab->exception)
    std::rethrow_exception(ab->exception);
#endif
  return std::move(**static_cast<detail::Option<T> *>(ab->result_ptr));
}

template <Effectful E, typename T>
T Cont<E, T>::resume(typename E::result_type v) const {
  if (transform_fn_) {

    this->pa->result_ = std::move(v);
    auto *ab = this->pa->abort_base_;
    this->pa->caller_.resume();
    while (!this->pa->caller_.done()) {
      if (detail::dispatch_effect(ab->effect_tag, ab->payload_ptr))
        std::terminate();
    }
#ifndef FX_NO_EXCEPTIONS
    if (ab->exception)
      std::rethrow_exception(ab->exception);
#endif

    auto current = extract_fn_(ab->result_ptr);

    auto &stk = detail::handler_stack_;
    for (int i = stk.depth - 1; i > own_node_->stack_idx; --i) {
      auto *n = stk.nodes[i];
      if (n->on_return_any_fn)
        current = n->on_return_any_fn(n->real_handler_ptr, std::move(current));
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

template <Effectful... Es> struct BasicRow {
  template <typename T> using Fx = ::fx::Fx<T, Es...>;

  using effects = detail::type_list<Es...>;

  struct Handler {
    using effect_types = detail::type_list<Es...>;
  };
};

template <EffectOrRow... Ts> struct Handler {
  using effect_types = detail::flatten_effects_t<Ts...>;
};

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

template <EffectOrRow... Ts>
using Row = detail::row_from_list_t<detail::flatten_effects_t<Ts...>>;

template <typename R> struct Effect {
  using result_type = R;
};

template <typename T>
concept AnyFx = requires {
  typename T::value_type;
  typename T::effect_list;
};

template <typename F, typename T>
concept FxMapper = AnyFx<std::invoke_result_t<F, T>>;

namespace detail {
template <typename FxT, typename NewT> struct RebindImpl;
template <typename OldT, typename NewT, Effectful... Es>
struct RebindImpl<Fx<OldT, Es...>, NewT> {
  using type = Fx<NewT, Es...>;
};
} // namespace detail

template <AnyFx FxT, typename NewT>
using Rebind = typename detail::RebindImpl<FxT, NewT>::type;

template <typename F, typename T>
  requires FxMapper<F, T>
using FxOf = std::invoke_result_t<F, T>;

template <typename F, typename T>
  requires FxMapper<F, T>
using FxValue = typename std::invoke_result_t<F, T>::value_type;

} // namespace fx

#define perform(e) co_await ::fx::detail::perform_impl(e)
