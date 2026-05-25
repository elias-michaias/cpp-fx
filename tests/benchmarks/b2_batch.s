	.arch armv8.5-a
	.build_version macos,  16, 0
; GNU C++23 (Homebrew GCC 15.1.0) version 15.1.0 (aarch64-apple-darwin24)
;	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed: -fPIC -mmacosx-version-min=16.0.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -O3 -std=c++23
	.text
	.align	2
	.p2align 5,,15
	.globl __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm
	.weak_definition __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm
__ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm:
LFB4727:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:434:     { }
	ret	
LFE4727:
	.align	2
	.p2align 5,,15
__ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E9_M_invokeERKSt9_Any_data:
LFB8707:
; b2_batch.cpp:75:     std::function<int()> fn = [&] { return ++counter; };
	ldr	x1, [x0]	; _3, MEM[(const struct ._anon_180 *)__functor_2(D)].__counter
; b2_batch.cpp:75:     std::function<int()> fn = [&] { return ++counter; };
	ldr	w0, [x1]	;, *_3
	add	w0, w0, 1	; <retval>, *_3,
; b2_batch.cpp:75:     std::function<int()> fn = [&] { return ++counter; };
	str	w0, [x1]	; <retval>, *_3
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:294:       }
	ret	
LFE8707:
	.align	2
	.p2align 5,,15
	.globl __ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.weak_definition __ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
__ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
LFB8720:
; b2_batch.cpp:40:   void handle(Tick, auto r) { r(++counter); }
	ldr	x2, [x0, 16]	; MEM[(struct HandlerNode *)_2(D)].real_handler_ptr, MEM[(struct HandlerNode *)_2(D)].real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x0, [x1, 8]	; _8, MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr
; b2_batch.cpp:40:   void handle(Tick, auto r) { r(++counter); }
	ldr	x3, [x2]	; _5, hh_4->counter
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x4, [x0]	; MEM[(void (*<T11f>) (void *) *)_8], MEM[(void (*<T11f>) (void *) *)_8]
; b2_batch.cpp:40:   void handle(Tick, auto r) { r(++counter); }
	ldr	w2, [x3]	;, *_5
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x16, x4	; MEM[(void (*<T11f>) (void *) *)_8], MEM[(void (*<T11f>) (void *) *)_8]
; b2_batch.cpp:40:   void handle(Tick, auto r) { r(++counter); }
	add	w2, w2, 1	; _7, *_5,
	str	w2, [x3]	; _7, *_5
; ../../effects.hpp:1229:   pa->result_ = std::move(v);
	str	w2, [x1, 4]	; _7, MEM[(struct PerformAwaitable *)_3(D)].result_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	br	x16		; MEM[(void (*<T11f>) (void *) *)_8]
LFE8720:
	.align	2
	.p2align 5,,15
	.globl __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm
	.weak_definition __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm
__ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm:
LFB4726:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x3, [x0, 16]	; _22, MEM[(size_t &)this_15(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:418:       if (__builtin_expect(__bytes == 0, false))
	cmp	x1, 0	; __bytes,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:416:     do_allocate(size_t __bytes, size_t __alignment) override
	mov	x5, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:418:       if (__builtin_expect(__bytes == 0, false))
	csinc	x1, x1, xzr, ne	; _4, __bytes,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x1, x3	; _4, _22
	bhi	L8		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x7, [x5, 8]	; __intptr, MEM[(void * &)this_15(D) + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	sub	x4, x2, #1	; _5, __alignment,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	neg	x6, x2	; _27, __alignment
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x0, x3, x1	; _30, _22, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x4, x4, x7	; _26, _5, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x4, x4, x6	; __aligned, _26, _27
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x6, x4, x7	; __diff_29, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x6, x0	; __diff_29, _30
	bhi	L8		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x3, x3, x7	; _6, _22, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x4	; <retval>, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x3, x3, x4	; prephitmp_1, _6, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x4, x3, [x5, 8]	; <retval>, prephitmp_1,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x4, L8	; <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x3, x3, x1	; _10, prephitmp_1, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x4, x1	; _8, <retval>, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x3, [x5, 8]	; _8, _10,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:430:     }
	ret	
	.p2align 2,,3
L8:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:416:     do_allocate(size_t __bytes, size_t __alignment) override
	stp	x29, x30, [sp, -32]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x0, x5	;, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:416:     do_allocate(size_t __bytes, size_t __alignment) override
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	stp	x1, x5, [x29, 16]	; _4, this,
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x1, x5, [x29, 16]	; _4, this,
	ldp	x0, x3, [x5, 8]	; <retval>, prephitmp_1,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x3, x3, x1	; _10, prephitmp_1, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x0, x1	; _8, <retval>, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x3, [x5, 8]	; _8, _10,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:430:     }
	ldp	x29, x30, [sp], 32	;,,,
LCFI2:
	ret	
LFE4726:
	.align	2
	.p2align 5,,15
__ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation:
LFB8711:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:272: 	switch (__op)
	cbz	w2, L16	; __op,
	cmp	w2, 1	; __op,
	bne	L22		;,
L21:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:154: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	str	x1, [x0]	; MEM[(const struct ._anon_180 &)__source_4(D)],* __dest
L19:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:287:       }
	mov	w0, 0	;,
	ret	
	.p2align 2,,3
L22:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:185: 	  switch (__op)
	cmp	w2, 2	; __op,
	bne	L19		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:154: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	ldr	x1, [x1]	; MEM[(const struct ._anon_180 &)__source_4(D)], MEM[(const struct ._anon_180 &)__source_4(D)]
	b	L21		;
	.p2align 2,,3
L16:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:276: 	    __dest._M_access<const type_info*>() = &typeid(_Functor);
	adrp	x1, __ZTIZ4mainEUlvE0_@PAGE	; tmp107,
	add	x1, x1, __ZTIZ4mainEUlvE0_@PAGEOFF;	; tmp106, tmp107,
	str	x1, [x0]	; tmp106,* __dest
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:287:       }
	mov	w0, 0	;,
	ret	
LFE8711:
	.align	2
	.p2align 5,,15
__Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor:
LFB7646:
	mov	x1, x0	; frame_ptr, frame_ptr
; b2_batch.cpp:36: }
	ldrh	w0, [x0, 172]	; _1, frame_ptr_16(D)->_Coro_resume_index
	tbz	x0, 0, L24	; _1,,
; b2_batch.cpp:36: }
	cmp	w0, 7	; _1,
	bhi	L25		;,
L26:
L34:
L35:
L36:
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI3:
	mov	x29, sp	;,
LCFI4:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp148, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_16(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_16(D) + 128B]._M_exception_object
	cbz	x2, L37	; MEM[(struct exception_ptr *)frame_ptr_16(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L37:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp153, frame_ptr,
	ldr	x2, [x0, 48]	; _47, MEM[(struct SmallAny *)frame_ptr_16(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L38	; _47,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _47
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L38:
; b2_batch.cpp:36: }
	ldrb	w0, [x1, 174]	; frame_ptr_16(D)->_Coro_frame_needs_free, frame_ptr_16(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L55	; frame_ptr_16(D)->_Coro_frame_needs_free,,
L31:
L23:
; b2_batch.cpp:36: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L24:
; b2_batch.cpp:36: }
	cmp	w0, 4	; _1,
	beq	L27		;,
	bhi	L28		;,
	cbz	w0, L29	; _1,
L30:
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	mov	w3, 1	; tmp128,
; b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	mov	w0, 0	; _8,
; b2_batch.cpp:32:   long long total = 0;
	str	xzr, [x1, 184]	;, frame_ptr_16(D)->total_1_2
; b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	mov	x2, 0	; _6,
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	strb	w3, [x1, 175]	; tmp128, frame_ptr_16(D)->_Coro_initial_await_resume_called
; b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	ldr	w3, [x1, 168]	;, frame_ptr_16(D)->n
; b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	str	w0, [x1, 192]	; _8, frame_ptr_16(D)->i_2_3
; b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	cmp	w3, w0	; frame_ptr_16(D)->n, _8
	bgt	L33		;,
L56:
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	mov	w3, 1	; tmp145,
; b2_batch.cpp:36: }
	mov	w0, 6	; tmp146,
; b2_batch.cpp:36: }
	str	xzr, [x1]	;, frame_ptr_16(D)->_Coro_resume_fn
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	str	x2, [x1, 144]	; _6, MEM <long long int> [(struct promise_type *)frame_ptr_16(D) + 144B]
	strb	w3, [x1, 152]	; tmp145, MEM <unsigned char> [(struct promise_type *)frame_ptr_16(D) + 152B]
; b2_batch.cpp:36: }
	strh	w0, [x1, 172]	; tmp146, frame_ptr_16(D)->_Coro_resume_index
	ret	
	.p2align 2,,3
L55:
LCFI6:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 240]	; mr, MEM[(struct memory_resource * *)frame_ptr_16(D) + 240B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L39	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x3, [x0]	; mr_51->_vptr.memory_resource, mr_51->_vptr.memory_resource
	adrp	x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp158,
	ldr	x2, [x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp158,
	ldr	x4, [x3, 24]	; _53, MEM[(int (*) () *)_52 + 24B]
	cmp	x4, x2	; _53, tmp158
	beq	L23		;,
	mov	x3, 16	;,
	mov	x2, 248	;,
	blr	x4		; _53
	b	L23		;
	.p2align 2,,3
L29:
LCFI7:
; b2_batch.cpp:36: }
	mov	w0, 2	; tmp127,
; b2_batch.cpp:36: }
	str	x1, [x1, 160]	; frame_ptr, frame_ptr_16(D)->_Coro_self_handle._M_fr_ptr
; b2_batch.cpp:36: }
	strb	wzr, [x1, 175]	;, frame_ptr_16(D)->_Coro_initial_await_resume_called
; b2_batch.cpp:36: }
	strh	w0, [x1, 172]	; tmp127, frame_ptr_16(D)->_Coro_resume_index
	ret	
	.p2align 2,,3
L27:
; ../../effects.hpp:1216:   typename E::result_type await_resume() { return std::move(result_); }
	ldr	w3, [x1, 204]	;, MEM[(type &)frame_ptr_16(D) + 204]
; b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	ldr	w0, [x1, 192]	;, frame_ptr_16(D)->i_2_3
; b2_batch.cpp:34:     total += perform(Tick{});
	ldr	x2, [x1, 184]	; frame_ptr_16(D)->total_1_2, frame_ptr_16(D)->total_1_2
	add	x2, x2, w3, sxtw	; _6, frame_ptr_16(D)->total_1_2, _25
; b2_batch.cpp:36: }
	str	w3, [x1, 196]	; _25, frame_ptr_16(D)->T001_3_4
; b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	ldr	w3, [x1, 168]	;, frame_ptr_16(D)->n
; b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	add	w0, w0, 1	; _8, frame_ptr_16(D)->i_2_3,
; b2_batch.cpp:34:     total += perform(Tick{});
	str	x2, [x1, 184]	; _6, frame_ptr_16(D)->total_1_2
; b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	str	w0, [x1, 192]	; _8, frame_ptr_16(D)->i_2_3
; b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	cmp	w3, w0	; frame_ptr_16(D)->n, _8
	ble	L56		;,
L33:
	ldr	x3, [x1, 160]	; caller$_M_fr_ptr, frame_ptr_16(D)->_Coro_self_handle._M_fr_ptr
; b2_batch.cpp:36: }
	mov	w4, 4	; tmp129,
; ../../effects.hpp:1210:     caller_ = caller;
	add	x2, x1, 200	; tmp131, frame_ptr,
; ../../effects.hpp:579:     return a;
	str	wzr, [x1, 204]	;, MEM <result_type> [(struct _ZL9sum_ticksi.Frame *)frame_ptr_16(D) + 204B]
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	adrp	x0, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGE	; tmp137,
	ldr	x0, [x0, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGEOFF]	; tmp137,
; b2_batch.cpp:36: }
	strh	w4, [x1, 172]	; tmp129, frame_ptr_16(D)->_Coro_resume_index
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	add	x1, x3, 16	; __t_27, caller$_M_fr_ptr,
; ../../effects.hpp:1210:     caller_ = caller;
	stp	x3, x1, [x2, 8]	; caller$_M_fr_ptr, __t_27,
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	stp	x0, x2, [x3, 112]	; tmp137, tmp131,
	ret	
	.p2align 2,,3
L28:
; b2_batch.cpp:36: }
	cmp	w0, 6	; _1,
	beq	L36		;,
L25:
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	brk #1000
	.p2align 2,,3
L39:
LCFI8:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b2_batch.cpp:36: }
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 248	;,
; b2_batch.cpp:36: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI9:
LEHB0:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE0:
LFE7646:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
LLSDA7646:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7646-LLSDACSB7646
LLSDACSB7646:
	.uleb128 LEHB0-LFB7646
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
LLSDACSE7646:
	.text
	.align	2
	.p2align 5,,15
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
LFB10365:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x5, x0	; _3, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:945:       operator=(basic_string&& __str)
	mov	x4, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x5], 16	; MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:945:       operator=(basic_string&& __str)
	mov	x3, x1	; __str, __str
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldp	x1, x2, [x1]	; _22, __sz,* __str
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x5	; MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, _3
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x5, x3, 16	; _10, __str,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	beq	L79		;,
	cmp	x5, x1	; _10, _22
	beq	L59		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x1, x2, [x4]	; _22, __sz,* this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:992: 	    _M_capacity(__str._M_allocated_capacity);
	ldr	x1, [x3, 16]	; _19, __str_5(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:984: 		    __capacity = _M_allocated_capacity;
	ldr	x2, [x4, 16]	; __capacity, this_1(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x1, [x4, 16]	; _19, this_1(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:993: 	    if (__data)
	cbz	x0, L66	; MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p,
	mov	x1, x0	; _22, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x0, [x3]	; MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, __str_5(D)->_M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x2, [x3, 16]	; __capacity, __str_5(D)->D.56371._M_allocated_capacity
L75:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	xzr, [x3, 8]	;, __str_5(D)->_M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x1]	;, MEM[(char_type &)_22]
	ret	
L79:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x5, x1	; _10, _22
	beq	L59		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x1, x2, [x4]	; _22, __sz,* this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:992: 	    _M_capacity(__str._M_allocated_capacity);
	ldr	x0, [x3, 16]	; _43, __str_5(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x0, [x4, 16]	; _43, this_1(D)->D.56371._M_allocated_capacity
L66:
	mov	x1, x5	; _22, _10
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x5, [x3]	; _10, __str_5(D)->_M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	b	L75		;
L59:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:966: 	    if (__builtin_expect(std::__addressof(__str) != this, true))
	cmp	x4, x3	; this, __str
	beq	L75		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:968: 		if (__str.size())
	cbnz	x2, L80	; __sz,
L76:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x2, [x4, 8]	; __sz, this_1(D)->_M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x0, x2]	;, MEM[(char_type &)_15]
	ldr	x1, [x3]	; _22, MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p
	b	L75		;
L80:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x2, 1	; __sz,
	beq	L81		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:945:       operator=(basic_string&& __str)
	stp	x29, x30, [sp, -32]!	;,,,
LCFI10:
	mov	x29, sp	;,
LCFI11:
	stp	x3, x4, [x29, 16]	; __str, this,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	bl	_memcpy		;
	ldp	x3, x4, [x29, 16]	; __str, this,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x2, [x3, 8]	; __sz, MEM[(const struct basic_string *)__str_5(D)]._M_string_length
	ldr	x0, [x4]	; MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x2, [x4, 8]	; __sz, this_1(D)->_M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x0, x2]	;, MEM[(char_type &)_15]
	ldr	x1, [x3]	; _22, MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	xzr, [x3, 8]	;, __str_5(D)->_M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x1]	;, MEM[(char_type &)_22]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1005:       }
	ldp	x29, x30, [sp], 32	;,,,
LCFI12:
	ret	
L81:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w1, [x1]	; _12, MEM[(const char_type &)pretmp_53]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w1, [x0]	; _12, MEM[(char_type &)_2]
	ldr	x0, [x4]	; MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x2, [x3, 8]	; __sz, MEM[(const struct basic_string *)__str_5(D)]._M_string_length
	b	L76		;
LFE10365:
	.align	2
	.p2align 5,,15
__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
LFB10366:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:736:       if (!__s)
	cbz	x1, L86	; __s,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:734:     operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
	stp	x29, x30, [sp, -48]!	;,,,
LCFI13:
	mov	x29, sp	;,
LCFI14:
	str	x19, [sp, 16]	;,
LCFI15:
	mov	x19, x0	; __out, __out
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x0, x1	;, __s
	str	x1, [x29, 40]	; __s, %sfp
	bl	_strlen		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	ldr	x1, [x29, 40]	; __s, %sfp
	mov	x2, x0	;, tmp118
	mov	x0, x19	;, __out
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:742:     }
	ldr	x19, [sp, 16]	;,
	ldp	x29, x30, [sp], 48	;,,,
LCFI16:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	b	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	.p2align 2,,3
L86:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:737: 	__out.setstate(ios_base::badbit);
	ldr	x1, [x0]	; __out_2(D)->_vptr.basic_ostream, __out_2(D)->_vptr.basic_ostream
	ldr	x1, [x1, -24]	; MEM[(long int *)_9 + -24B], MEM[(long int *)_9 + -24B]
	add	x0, x0, x1	; _12, __out, MEM[(long int *)_9 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:198:   { return _Ios_Iostate(static_cast<int>(__a) | static_cast<int>(__b)); }
	ldr	w1, [x0, 32]	;, MEM[(const struct basic_ios *)_12].D.74430._M_streambuf_state
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_ios.h:167:       { this->clear(this->rdstate() | __state); }
	orr	w1, w1, 1	;, MEM[(const struct basic_ios *)_12].D.74430._M_streambuf_state,
	b	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate		;
LFE10366:
	.cstring
	.align	3
lC0:
	.ascii "basic_string: construction from null is not valid\0"
	.text
	.align	2
	.p2align 5,,15
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0:
LFB10368:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI17:
	mov	x29, sp	;,
LCFI18:
	str	x21, [sp, 32]	;,
LCFI19:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x21, x0, 16	; _2, this,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:706:       basic_string(const _CharT* __s, const _Alloc& __a = _Alloc())
	stp	x19, x20, [sp, 16]	;,,
LCFI20:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:205: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [x0]	; _2, MEM[(struct _Alloc_hider *)this_1(D)]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:710: 	if (__s == 0)
	cbz	x1, L97	; __s,
	mov	x19, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x0, x1	;, __s
	mov	x20, x1	; __s, __s
	bl	_strlen		;
	mov	x2, x0	; _4, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:233: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	; _4,
	bhi	L98		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x0, 1	; _4,
	beq	L99		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:423: 	if (__n == 0)
	cbnz	x0, L90	; _4,
L92:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x0, [x19]	; MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x2, [x19, 8]	; _4, *this_1(D)._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x0, x2]	;, MEM[(char_type &)_20]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:715:       }
	ldr	x21, [sp, 32]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI21:
	ret	
L99:
LCFI22:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x20]	;, MEM[(const char_type &)__s_3(D)]
	strb	w0, [x19, 16]	; MEM[(const char_type &)__s_3(D)], MEM[(char_type &)this_1(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L92		;
L98:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	add	x0, x0, 1	;, _4,
	str	x2, [x29, 56]	; _4, %sfp
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	ldr	x2, [x29, 56]	; _4, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x21, x0	; _2, _2
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x0, [x19]	; _2, *this_1(D)._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x2, [x19, 16]	; _4, *this_1(D).D.56371._M_allocated_capacity
L90:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, __s
	mov	x0, x21	;, _2
	str	x2, [x29, 56]	; _4, %sfp
	bl	_memcpy		;
	ldr	x2, [x29, 56]	; _4, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	L92		;
L97:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:711: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, lC0@PAGE	; tmp110,
	add	x0, x0, lC0@PAGEOFF;	;, tmp110,
	bl	__ZSt19__throw_logic_errorPKc		;
LFE10368:
	.cstring
	.align	3
lC1:
	.ascii "fx: unhandled effect -- no matching handler installed\0"
	.text
	.align	2
	.p2align 5,,15
__ZZ4mainENKUlvE2_clEv:
LFB7668:
	stp	x29, x30, [sp, -160]!	;,,,
LCFI23:
	mov	x29, sp	;,
LCFI24:
	stp	x23, x24, [sp, 48]	;,,
LCFI25:
	mov	x24, x0	; __closure, __closure
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b2_batch.cpp:89:     fx_r = bench("fx::perform in batch coroutine", REPS, [&] {
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
LCFI26:
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x21, [x0]	; mr, *_36
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x21, L101	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x1, [x21]	; mr_37->_vptr.memory_resource, mr_37->_vptr.memory_resource
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp151,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp151,
	ldr	x3, [x1, 16]	; _40, MEM[(int (*) () *)_39 + 16B]
	cmp	x3, x0	; _40, tmp151
	bne	L102		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x21, 16]	; _52, MEM[(size_t &)mr_37 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 247	; _52,
	bls	L105		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x3, [x21, 8]	; __intptr, MEM[(void * &)mr_37 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x2, x0, #248	; _61, _52,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x1, x3, 15	; _57, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x1, x1, -16	; __aligned, _57,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x4, x1, x3	; __diff_60, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x4, x2	; __diff_60, _61
	bhi	L105		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x0, x0, x3	; _230, _52, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x19, x1	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x0, x0, x1	; _63, _230, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x1, x0, [x21, 8]	; __p, _63,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x1, L105	; __p,
L104:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x0, x0, #248	; _72, _63,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x19, 248	; _70, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x0, [x21, 8]	; _70, _72,
L106:
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	adrp	x0, __Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor@PAGE	; tmp160,
	adrp	x1, __Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy@PAGE	; tmp162,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp169
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	add	x0, x0, __Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor@PAGEOFF;	; tmp159, tmp160,
	add	x1, x1, __Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy@PAGEOFF;	; tmp161, tmp162,
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x20, x19, 16	; tmp244, __p,
	strb	wzr, [x19, 16]	;, MEM[(struct PromiseAbortBase *)raw_43 + 16B].aborted
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	add	x22, x19, 32	; _80, __p,
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	stp	x0, x1, [x19]	; tmp159, tmp161,* __p
	mov	x2, 10000	; tmp175,
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x19, 144	; _35, __p,
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	movk	x2, 0x1, lsl 48	; tmp175,,
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	mov	x0, x19	;, __p
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	add	x23, x29, 96	; tmp246,,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x21, [x19, 240]	; mr, MEM[(struct memory_resource * *)raw_43 + 240B]
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x20, 8]	;, MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x19, 32]	; MEM[(struct SmallAny *)raw_43 + 32B].buf_
	stp	xzr, xzr, [x22, 16]	; MEM[(struct SmallAny *)raw_43 + 32B].buf_
	stp	xzr, xzr, [x22, 32]	; MEM[(struct SmallAny *)raw_43 + 32B].buf_
	str	q31, [x19, 80]	; tmp169, MEM <vector(2) long unsigned int> [(void *)raw_43 + 80B]
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_43 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x19, 112]	; tmp169, MEM <vector(2) long unsigned int> [(const void * *)raw_43 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x19, 128]	;, MEM[(struct exception_ptr *)raw_43 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x19, 152]	;, MEM[(struct _Optional_payload_base *)raw_43 + 144B]._M_engaged
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	str	x2, [x19, 168]	; tmp175, MEM <unsigned long> [(void *)raw_43 + 168B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x20, 120]	; _35, MEM[(struct promise_type *)raw_43 + 16B].D.173292.D.172259.result_ptr
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	bl	__Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor		;
; b2_batch.cpp:90:       sink += sum_ticks(BATCH).run(TickCounter{.counter = counter});
	ldr	x0, [x24, 8]	; __closure_7(D)->__counter, __closure_7(D)->__counter
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x2, x29, 80	; tmp182,,
; ../../effects.hpp:247: struct HandlerNode {
	str	xzr, [x29, 136]	;, MEM[(struct HandlerNode *)&guard].on_return_any_fn
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	adrp	x1, __ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGE	; tmp184,
	ldr	x1, [x1, __ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGEOFF]	; tmp184,
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	adrp	x3, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGE	; tmp181,
	ldr	x3, [x3, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGEOFF]	; tmp181,
; b2_batch.cpp:90:       sink += sum_ticks(BATCH).run(TickCounter{.counter = counter});
	str	x0, [x29, 80]	; __closure_7(D)->__counter, D.174476.counter
; ../../effects.hpp:752:     saved = detail::stack_top;
	adrp	x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	;,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	stp	x2, x1, [x29, 112]	; tmp182, tmp184,
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x3, x23, [x29, 96]	; tmp181, tmp246,
; ../../effects.hpp:752:     saved = detail::stack_top;
	bl	___emutls_get_address		;
	mov	x21, x0	; _74,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x2, [x19]	; MEM[(void (*<T11f>) (void *) *)raw_43], MEM[(void (*<T11f>) (void *) *)raw_43]
	mov	x0, x19	;, __p
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x21]	; stack_top.53_75, *_74
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x23, [x21]	; tmp246, *_74
; ../../effects.hpp:753:     node.prev = saved;
	str	x1, [x29, 128]	; stack_top.53_75, guard.node.prev
; ../../effects.hpp:752:     saved = detail::stack_top;
	str	x1, [x29, 144]	; stack_top.53_75, guard.saved
LEHB1:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)raw_43]
	.p2align 5,,15
L107:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x1, [x19]	; MEM[(void * *)raw_43], MEM[(void * *)raw_43]
	cbz	x1, L147	; MEM[(void * *)raw_43],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x21]	; n, *_74
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x2, [x20, 96]	; _92, MEM[(struct promise_type &)raw_43 + 16].D.173292.D.172259.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L111	; n,
	b	L108		;
	.p2align 2,,3
L109:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_29->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L108	; n,
L111:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_29->effect_tag, n_29->effect_tag
	cmp	x2, x1	; _92, n_29->effect_tag
	bne	L109		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_29->dispatch, n_29->dispatch
	ldr	x1, [x20, 104]	;, MEM[(struct promise_type &)raw_43 + 16].D.173292.D.172259.payload_ptr
	blr	x2		; n_29->dispatch
LEHE1:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x20]	; MEM[(struct promise_type &)raw_43 + 16].D.173292.D.172259.aborted, MEM[(struct promise_type &)raw_43 + 16].D.173292.D.172259.aborted
	tbz	x0, 0, L107	; MEM[(struct promise_type &)raw_43 + 16].D.173292.D.172259.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x20, 8]	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner
; ../../effects.hpp:893:       return std::nullopt;
	mov	x5, 0	; SR.499,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	cmp	x0, x23	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner, tmp246
	beq	L121		;,
L118:
; b2_batch.cpp:90:       sink += sum_ticks(BATCH).run(TickCounter{.counter = counter});
	ldr	x2, [x24]	; _2, __closure_7(D)->__sink
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x19	;, __p
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x4, [x29, 144]	; guard.saved, guard.saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x3, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)raw_43 + 8B], MEM[(void (*<T11f>) (void *) *)raw_43 + 8B]
; b2_batch.cpp:90:       sink += sum_ticks(BATCH).run(TickCounter{.counter = counter});
	ldr	x1, [x2]	; *_2, *_2
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x4, [x21]	; guard.saved, *_74
; b2_batch.cpp:90:       sink += sum_ticks(BATCH).run(TickCounter{.counter = counter});
	add	x1, x1, x5	; _4, *_2, SR.499
	str	x1, [x2]	; _4, *_2
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_43 + 8B]
; b2_batch.cpp:91:     });
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 160	;,,,
LCFI27:
	ret	
L105:
LCFI28:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x0, x21	;, mr
	mov	x2, 16	;,
	mov	x1, 248	;,
LEHB2:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x19, x0, [x21, 8]	; __p, _63,
	b	L104		;
L147:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x19, 128]	; _97, MEM[(const struct exception_ptr *)raw_43 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x0, L148	; _97,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x19, 16]	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_43 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	x5, [x19, 144]	; SR.499, MEM[(long long int &)raw_43 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L118	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x20, 8]	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner
	cmp	x0, x23	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner, tmp246
	bne	L118		;,
L121:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x22, 48]	; _83, MEM[(struct SmallAny *)raw_43 + 32B].destroy_
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x19, 16]	;, MEM[(struct PromiseAbortBase *)raw_43 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	x5, [x19, 32]	; SR.499, MEM[(type &)_81]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L118	; _83,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x22	;, _80
	str	x5, [x29, 72]	; SR.499, %sfp
	blr	x1		; _83
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x19, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_43 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	x5, [x29, 72]	; SR.499, %sfp
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_43 + 32B].type_tag_
	b	L118		;
L101:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 248	;,
	bl	__Znwm		;
	mov	x19, x0	; __p, __p
	b	L106		;
L102:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 248	;,
	mov	x0, x21	;, mr
	blr	x3		; _40
LEHE2:
	mov	x19, x0	; __p, __p
	b	L106		;
L148:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x0, [x29, 88]	; _97, MEM[(struct exception_ptr *)&D.221305]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 88	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	add	x0, x29, 88	;,,
LEHB3:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE3:
L108:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp197,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _106,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp197,
LEHB4:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE4:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _106
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB5:
	bl	___cxa_throw		;
LEHE5:
L125:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x20, x0	; tmp200, tmp255
	b	L113		;
L126:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 88]	; D.221305._M_exception_object, D.221305._M_exception_object
	mov	x20, x0	; tmp254,
	cbz	x1, L113	; D.221305._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 88	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L113		;
L127:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x20, x0	; tmp253,
	mov	x0, x22	;, _106
	bl	___cxa_free_exception		;
L113:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 144]	; guard.saved, guard.saved
	str	x0, [x21]	; guard.saved, *_74
; ../../effects.hpp:622:     if (h)
	cbz	x19, L123	; __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)raw_43 + 8B], MEM[(void (*<T11f>) (void *) *)raw_43 + 8B]
	mov	x0, x19	;, __p
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_43 + 8B]
L123:
	mov	x0, x20	;, tmp200
LEHB6:
	bl	__Unwind_Resume		;
LEHE6:
LFE7668:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
LLSDA7668:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7668-LLSDACSB7668
LLSDACSB7668:
	.uleb128 LEHB1-LFB7668
	.uleb128 LEHE1-LEHB1
	.uleb128 L125-LFB7668
	.uleb128 0
	.uleb128 LEHB2-LFB7668
	.uleb128 LEHE2-LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB3-LFB7668
	.uleb128 LEHE3-LEHB3
	.uleb128 L126-LFB7668
	.uleb128 0
	.uleb128 LEHB4-LFB7668
	.uleb128 LEHE4-LEHB4
	.uleb128 L127-LFB7668
	.uleb128 0
	.uleb128 LEHB5-LFB7668
	.uleb128 LEHE5-LEHB5
	.uleb128 L125-LFB7668
	.uleb128 0
	.uleb128 LEHB6-LFB7668
	.uleb128 LEHE6-LEHB6
	.uleb128 0
	.uleb128 0
LLSDACSE7668:
	.text
	.align	2
	.p2align 5,,15
__Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy:
LFB7647:
	mov	x1, x0	; frame_ptr, frame_ptr
	ldrh	w0, [x0, 172]	; tmp114, frame_ptr_4(D)->_Coro_resume_index
	orr	w0, w0, 1	; _2, tmp114,
	strh	w0, [x1, 172]	; _2, frame_ptr_4(D)->_Coro_resume_index
; b2_batch.cpp:36: }
	cmp	w0, 7	; _2,
	bhi	L157		;,
L151:
L152:
L153:
L154:
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI29:
	mov	x29, sp	;,
LCFI30:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp117, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object
	cbz	x2, L156	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L156:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp122, frame_ptr,
	ldr	x2, [x0, 48]	; _25, MEM[(struct SmallAny *)frame_ptr_4(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L158	; _25,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _25
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L158:
; b2_batch.cpp:36: }
	ldrb	w0, [x1, 174]	; frame_ptr_4(D)->_Coro_frame_needs_free, frame_ptr_4(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L169	; frame_ptr_4(D)->_Coro_frame_needs_free,,
L159:
L149:
; b2_batch.cpp:36: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI31:
	ret	
	.p2align 2,,3
L169:
LCFI32:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 240]	; mr, MEM[(struct memory_resource * *)frame_ptr_4(D) + 240B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L160	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x3, [x0]	; mr_29->_vptr.memory_resource, mr_29->_vptr.memory_resource
	adrp	x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp127,
	ldr	x2, [x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp127,
	ldr	x4, [x3, 24]	; _31, MEM[(int (*) () *)_30 + 24B]
	cmp	x4, x2	; _31, tmp127
	beq	L149		;,
	mov	x3, 16	;,
	mov	x2, 248	;,
	blr	x4		; _31
	b	L149		;
	.p2align 2,,3
L160:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b2_batch.cpp:36: }
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 248	;,
; b2_batch.cpp:36: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI33:
LEHB7:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE7:
L150:
L157:
; b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	brk #1000
LFE7647:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
LLSDA7647:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7647-LLSDACSB7647
LLSDACSB7647:
	.uleb128 LEHB7-LFB7647
	.uleb128 LEHE7-LEHB7
	.uleb128 0
	.uleb128 0
LLSDACSE7647:
	.text
	.align	2
	.p2align 5,,15
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_:
LFB2842:
	mov	x4, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x0, 16	; _8, this,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:742:       basic_string(basic_string&& __str) noexcept
	mov	x3, x1	; __str, __str
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x4]	; _8, MEM[(struct _Alloc_hider *)this_5(D)]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x1], 16	; _11, MEM[(const struct basic_string *)__str_7(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x1, x2	; _9, _11
	beq	L177		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	ldr	x0, [x3, 16]	; *__str_7(D).D.56371._M_allocated_capacity, *__str_7(D).D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x2, [x4]	; _11, *this_5(D)._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x3, 16]	;, MEM[(char_type &)__str_7(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x0, [x4, 16]	; *__str_7(D).D.56371._M_allocated_capacity, *this_5(D).D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	ldr	x0, [x3, 8]	; MEM[(const struct basic_string *)__str_7(D)]._M_string_length, MEM[(const struct basic_string *)__str_7(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x1, xzr, [x3]	; _9,,* __str
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x0, [x4, 8]	; MEM[(const struct basic_string *)__str_7(D)]._M_string_length, *this_5(D)._M_string_length
	ret	
	.p2align 2,,3
L177:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:742:       basic_string(basic_string&& __str) noexcept
	stp	x29, x30, [sp, -48]!	;,,,
LCFI34:
	mov	x29, sp	;,
LCFI35:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:748: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	ldr	x2, [x3, 8]	; MEM[(const struct basic_string *)__str_7(D)]._M_string_length, MEM[(const struct basic_string *)__str_7(D)]._M_string_length
	stp	x4, x3, [x29, 24]	; this, __str,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	str	x1, [x29, 40]	; _9, %sfp
	add	x2, x2, 1	;, MEM[(const struct basic_string *)__str_7(D)]._M_string_length,
	bl	_memcpy		;
	ldp	x4, x3, [x29, 24]	; this, __str,
	ldr	x1, [x29, 40]	; _9, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x3, 16]	;, MEM[(char_type &)__str_7(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	ldr	x0, [x3, 8]	; MEM[(const struct basic_string *)__str_7(D)]._M_string_length, MEM[(const struct basic_string *)__str_7(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x1, xzr, [x3]	; _9,,* __str
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x0, [x4, 8]	; MEM[(const struct basic_string *)__str_7(D)]._M_string_length, *this_5(D)._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:763:       }
	ldp	x29, x30, [sp], 48	;,,,
LCFI36:
	ret	
LFE2842:
	.align	2
	.p2align 5,,15
	.globl __ZNSt7__cxx119to_stringEi
	.weak_definition __ZNSt7__cxx119to_stringEi
__ZNSt7__cxx119to_stringEi:
LFB2804:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4536:     const unsigned __uval = __neg ? (unsigned)~__val + 1u : __val;
	cmp	w0, 0	; __val,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4535:     const bool __neg = __val < 0;
	lsr	w10, w0, 31	; __neg, __val,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4536:     const unsigned __uval = __neg ? (unsigned)~__val + 1u : __val;
	csneg	w4, w0, w0, ge	; __val, __val, __val,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	w4, 9	; __val,
	bls	L179		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	mov	x9, 22859	; tmp208,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	w7, 34463	; tmp209,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4534:   {
	stp	x29, x30, [sp, -272]!	;,,,
LCFI37:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x9, 0x3886, lsl 16	; tmp208,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4534:   {
	mov	x29, sp	;,
LCFI38:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x9, 0xc5d6, lsl 32	; tmp208,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	w1, w4	; __value, __val
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:63:       unsigned __n = 1;
	mov	w2, 1	; __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	mov	w6, 9999	; tmp207,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x9, 0x346d, lsl 48	; tmp208,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	movk	w7, 0x1, lsl 16	; tmp209,,
	b	L185		;
	.p2align 2,,3
L180:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	cmp	w1, 999	; __value,
	bls	L199		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	cmp	w1, w6	; __value, tmp207
	bls	L200		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	uxtw	x3, w1	; _21, __value
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:74: 	  __n += 4;
	add	w5, w2, 4	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	umulh	x3, x3, x9	; tmp144, _21, tmp208
	lsr	x3, x3, 11	; _22, tmp144,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	w1, w7	; __value, tmp209
	bls	L184		;,
	mov	w2, w5	; __pos, __n
	mov	w1, w3	; __value, _22
L185:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	cmp	w1, 99	; __value,
	bhi	L180		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w5, w2, 1	; __n, __pos,
L181:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x8, 16	; _11, <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4539:     __str.__resize_and_overwrite(__neg + __len, [=](char* __p, size_t __n) {
	add	w6, w5, w10	; _4, __n, __neg
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x8, 16]	;, MEM[(char_type &)__str_12(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	stp	x0, xzr, [x8]	; _11,,* <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:343:       if (__res <= __capacity)
	cmp	x6, 15	; _4,
	bls	L187		;,
	str	x19, [x29, 16]	;,
LCFI39:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x6, 29	; _4,
	bls	L192		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x6, 1	; _63, _4,
	mov	x19, x6	; __res, _4
L188:
	str	x8, [x29, 32]	; <retval>, %sfp
	stp	w4, w2, [x29, 44]	; __val, __pos,
	str	w10, [x29, 52]	; __neg, %sfp
	str	x6, [x29, 56]	; _4, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	ldr	x8, [x29, 32]	; <retval>, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x0]	;, MEM[(char_type &)_84]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	ldr	x6, [x29, 56]	; _4, %sfp
	ldp	w4, w2, [x29, 44]	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x19, [x8, 16]	; __res, MEM[(struct basic_string *)__str_12(D)].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	ldr	x19, [x29, 16]	;,
LCFI40:
	str	x0, [x8]	; _11, MEM[(struct basic_string *)__str_12(D)]._M_dataplus._M_p
	ldr	w10, [x29, 52]	;, %sfp
L187:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:89:       constexpr char __digits[201] =
	adrp	x1, lC2@PAGE	; tmp157,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4540:       __p[0] = '-';
	mov	w3, 45	; tmp155,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4541:       __detail::__to_chars_10_impl(__p + (int)__neg, __len, __uval);
	add	x7, x0, w10, uxtw	; _35, _11, __neg
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:89:       constexpr char __digits[201] =
	add	x1, x1, lC2@PAGEOFF;	; tmp156, tmp157,
	add	x5, x29, 64	; tmp206,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4540:       __p[0] = '-';
	strb	w3, [x0]	; tmp155, *prephitmp_126
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:89:       constexpr char __digits[201] =
	ldp	q31, q28, [x1, 32]	; tmp162, tmp163,
	ldp	q30, q29, [x1]	; tmp160, tmp161,
	stp	q31, q28, [x5, 32]	; tmp162, tmp163,
	ldp	q31, q28, [x1, 96]	; tmp166, tmp167,
	stp	q30, q29, [x5]	; tmp160, tmp161,
	ldp	q30, q29, [x1, 64]	; tmp164, tmp165,
	stp	q31, q28, [x5, 96]	; tmp166, tmp167,
	ldp	q31, q28, [x1, 160]	; tmp170, tmp171,
	stp	q30, q29, [x5, 64]	; tmp164, tmp165,
	ldp	q30, q29, [x1, 128]	; tmp168, tmp169,
	stp	q31, q28, [x5, 160]	; tmp170, tmp171,
	ldr	q31, [x1, 185]	; tmp172,
	stp	q30, q29, [x5, 128]	; tmp168, tmp169,
	str	q31, [x5, 185]	; tmp172, __digits
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:96:       while (__val >= 100)
	cmp	w4, 99	; __val,
	bls	L189		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	mov	w13, 34079	; tmp175,
	mov	w12, 100	; tmp178,
	movk	w13, 0x51eb, lsl 16	; tmp175,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:96:       while (__val >= 100)
	mov	w11, 9999	; tmp194,
	.p2align 5,,15
L190:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	umull	x1, w4, w13	; tmp174, __val, tmp175
	mov	w9, w4	; __val, __val
	lsr	x1, x1, 37	; tmp173, tmp174,
	msub	w0, w1, w12, w4	; _42, tmp173, tmp178, __val
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:99: 	  __val /= 100;
	mov	w4, w1	; __val, tmp173
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	lsl	w0, w0, 1	; __num, _42,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:100: 	  __first[__pos] = __digits[__num + 1];
	add	w10, w0, 1	; _45, __num,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:101: 	  __first[__pos - 1] = __digits[__num];
	ldrb	w1, [x5, w0, uxtw]	;, __digits[__num_43]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:100: 	  __first[__pos] = __digits[__num + 1];
	ldrb	w0, [x5, w10, uxtw]	;, __digits[_45]
	strb	w0, [x7, w2, uxtw]	; __digits[_45], *_48
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:101: 	  __first[__pos - 1] = __digits[__num];
	sub	w0, w2, #1	; _50, __pos,
	sub	w2, w2, #2	; __pos, __pos,
	strb	w1, [x7, w0, uxtw]	; __digits[__num_43], *_52
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:96:       while (__val >= 100)
	cmp	w9, w11	; __val, tmp194
	bhi	L190		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:104:       if (__val >= 10)
	cmp	w9, 999	; __val,
	bhi	L189		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:111: 	__first[0] = '0' + __val;
	add	w4, w4, 48	; _58, __val,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4545:   }
	mov	x0, x8	;, <retval>
	strb	w4, [x7]	; _58, *_71
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x1, [x8]	; MEM[(const struct basic_string *)__str_12(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)__str_12(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x6, [x8, 8]	; _4, MEM[(struct basic_string *)__str_12(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x1, x6]	;, MEM[(char_type &)_39]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4545:   }
	ldp	x29, x30, [sp], 272	;,,,
LCFI41:
	ret	
	.p2align 2,,3
L189:
LCFI42:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:106: 	  auto const __num = __val * 2;
	lsl	w4, w4, 1	; __num, __val,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:107: 	  __first[1] = __digits[__num + 1];
	add	w0, w4, 1	; _56, __num,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:108: 	  __first[0] = __digits[__num];
	ldrsb	w4, [x5, w4, uxtw]	; _58, __digits[__num_55]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:107: 	  __first[1] = __digits[__num + 1];
	ldrb	w0, [x5, w0, uxtw]	;, __digits[_56]
	strb	w4, [x7]	; _58, *_71
	strb	w0, [x7, 1]	; __digits[_56], MEM[(char *)_35 + 1B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4545:   }
	mov	x0, x8	;, <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x1, [x8]	; MEM[(const struct basic_string *)__str_12(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)__str_12(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x6, [x8, 8]	; _4, MEM[(struct basic_string *)__str_12(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x1, x6]	;, MEM[(char_type &)_39]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4545:   }
	ldp	x29, x30, [sp], 272	;,,,
LCFI43:
	ret	
	.p2align 2,,3
L199:
LCFI44:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	add	w5, w2, 2	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w2, w2, 1	; __pos, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	b	L181		;
	.p2align 2,,3
L200:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	add	w5, w2, 3	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	add	w2, w2, 2	; __pos, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	b	L181		;
	.p2align 2,,3
L184:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	add	w2, w2, 3	; __pos, __pos,
	b	L181		;
	.p2align 2,,3
L192:
LCFI45:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	mov	x19, 30	; __res,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 31	; _63,
	b	L188		;
L179:
LCFI46:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x8, 16	; _46, <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	mov	w1, 45	; tmp152,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4541:       __detail::__to_chars_10_impl(__p + (int)__neg, __len, __uval);
	add	x7, x0, w10, uxtw	; _35, _46, __neg
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:111: 	__first[0] = '0' + __val;
	add	w4, w4, 48	; _58, __val,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4539:     __str.__resize_and_overwrite(__neg + __len, [=](char* __p, size_t __n) {
	add	w6, w10, 1	; _4, __neg,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x8]	; _46, MEM[(struct _Alloc_hider *)__str_12(D)]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4545:   }
	mov	x0, x8	;, <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w1, [x8, 16]	; tmp152, MEM[(char_type &)__str_12(D) + 16]
	strb	w4, [x7]	; _58, *_71
	ldr	x1, [x8]	; MEM[(const struct basic_string *)__str_12(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)__str_12(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x6, [x8, 8]	; _4, MEM[(struct basic_string *)__str_12(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x1, x6]	;, MEM[(char_type &)_39]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4545:   }
	ret	
LFE2804:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
LLSDA2804:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE2804-LLSDACSB2804
LLSDACSB2804:
LLSDACSE2804:
	.text
	.cstring
	.align	3
lC2:
	.ascii "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\0"
	.text
	.align	2
	.p2align 5,,15
	.globl __ZNSt7__cxx119to_stringEm
	.weak_definition __ZNSt7__cxx119to_stringEm
__ZNSt7__cxx119to_stringEm:
LFB2850:
	mov	x4, x0	; __val, __val
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	x0, 9	; __val,
	bls	L202		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	mov	x6, 22859	; tmp190,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	x5, 34463	; tmp191,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4588:   {
	stp	x29, x30, [sp, -272]!	;,,,
LCFI47:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x6, 0x3886, lsl 16	; tmp190,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4588:   {
	mov	x29, sp	;,
LCFI48:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x6, 0xc5d6, lsl 32	; tmp190,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	x1, x0	; __value, __val
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:63:       unsigned __n = 1;
	mov	w2, 1	; __n,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	mov	x3, 9999	; tmp189,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x6, 0x346d, lsl 48	; tmp190,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	movk	x5, 0x1, lsl 16	; tmp191,,
	b	L207		;
	.p2align 2,,3
L203:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	cmp	x1, 999	; __value,
	bls	L223		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	cmp	x1, x3	; __value, tmp189
	bls	L224		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	umulh	x0, x1, x6	; tmp133, __value, tmp190
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:74: 	  __n += 4;
	add	w2, w2, 4	; __n, __n,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	x1, x5	; __value, tmp191
	bls	L204		;,
	lsr	x1, x0, 11	; __value, tmp133,
L207:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	cmp	x1, 99	; __value,
	bhi	L203		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w2, w2, 1	; __n, __n,
L204:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x8, 16	; _4, <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x8, 16]	;, MEM[(char_type &)__str_5(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4591:     __str.__resize_and_overwrite(__len, [__val](char* __p, size_t __n) {
	uxtw	x12, w2	; _1, __n
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	stp	x0, xzr, [x8]	; _4,,* <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:343:       if (__res <= __capacity)
	cmp	w2, 15	; __n,
	bls	L209		;,
L225:
	str	x19, [x29, 16]	;,
LCFI49:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x12, 29	; _1,
	bls	L214		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x12, 1	; _31, _1,
	mov	x19, x12	; __res, _1
L210:
	stp	x4, x8, [x29, 32]	; __val, <retval>,
	str	w2, [x29, 52]	; __n, %sfp
	str	x12, [x29, 56]	; _1, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x0]	;, MEM[(char_type &)_52]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	ldp	x4, x8, [x29, 32]	; __val, <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	ldr	x12, [x29, 56]	; _1, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x19, [x8, 16]	; __res, MEM[(struct basic_string *)__str_5(D)].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	ldr	x19, [x29, 16]	;,
LCFI50:
	str	x0, [x8]	; _4, MEM[(struct basic_string *)__str_5(D)]._M_dataplus._M_p
	ldr	w2, [x29, 52]	;, %sfp
L209:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:89:       constexpr char __digits[201] =
	adrp	x1, lC2@PAGE	; tmp138,
	add	x7, x29, 64	; tmp187,,
	add	x1, x1, lC2@PAGEOFF;	; tmp137, tmp138,
	add	x10, x29, 65	; tmp188,,
	ldp	q31, q28, [x1, 32]	; tmp143, tmp144,
	ldp	q30, q29, [x1]	; tmp141, tmp142,
	stp	q31, q28, [x7, 32]	; tmp143, tmp144,
	ldp	q31, q28, [x1, 96]	; tmp147, tmp148,
	stp	q30, q29, [x7]	; tmp141, tmp142,
	ldp	q30, q29, [x1, 64]	; tmp145, tmp146,
	stp	q31, q28, [x7, 96]	; tmp147, tmp148,
	ldp	q31, q28, [x1, 160]	; tmp151, tmp152,
	stp	q30, q29, [x7, 64]	; tmp145, tmp146,
	ldp	q30, q29, [x1, 128]	; tmp149, tmp150,
	stp	q31, q28, [x7, 160]	; tmp151, tmp152,
	ldr	q31, [x1, 185]	; tmp153,
	stp	q30, q29, [x7, 128]	; tmp149, tmp150,
	str	q31, [x7, 185]	; tmp153, __digits
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:96:       while (__val >= 100)
	cmp	x4, 99	; __val,
	bls	L211		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	mov	x13, 62915	; tmp157,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:95:       unsigned __pos = __len - 1;
	sub	w2, w2, #1	; __pos, __n,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	movk	x13, 0x5c28, lsl 16	; tmp157,,
	add	x10, x29, 65	; tmp188,,
	movk	x13, 0xc28f, lsl 32	; tmp157,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:96:       while (__val >= 100)
	mov	x11, 9999	; tmp177,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	movk	x13, 0x28f5, lsl 48	; tmp157,,
	.p2align 5,,15
L212:
	lsr	x3, x4, 2	; tmp155, __val,
	mov	x6, x4	; __val, __val
	umulh	x3, x3, x13	; tmp156, tmp155, tmp157
	and	x1, x3, -4	; tmp159, tmp156,
	add	x1, x1, x3, lsr 2	; tmp160, tmp159, tmp156,
	add	x1, x1, x1, lsl 2	; tmp162, tmp160, tmp160,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	sub	w1, w4, w1, lsl 2	; _55, __val, tmp162,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:99: 	  __val /= 100;
	lsr	x4, x3, 2	; __val, tmp156,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	lsl	x1, x1, 1	; __num, _55,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:100: 	  __first[__pos] = __digits[__num + 1];
	ldrb	w9, [x10, x1]	;, __digits[_58]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:101: 	  __first[__pos - 1] = __digits[__num];
	ldrb	w3, [x7, x1]	;, __digits[__num_56]
	sub	w1, w2, #1	; _63, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:100: 	  __first[__pos] = __digits[__num + 1];
	strb	w9, [x0, w2, uxtw]	; __digits[_58], *_61
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:101: 	  __first[__pos - 1] = __digits[__num];
	sub	w2, w2, #2	; __pos, __pos,
	strb	w3, [x0, w1, uxtw]	; __digits[__num_56], *_65
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:96:       while (__val >= 100)
	cmp	x6, x11	; __val, tmp177
	bhi	L212		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:104:       if (__val >= 10)
	cmp	x6, 999	; __val,
	bhi	L211		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:111: 	__first[0] = '0' + __val;
	add	w4, w4, 48	; cstore_23, __val,
	strb	w4, [x0]	; cstore_23, *_50
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4596:   }
	mov	x0, x8	;, <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x1, [x8]	; MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x12, [x8, 8]	; _1, MEM[(struct basic_string *)__str_5(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x1, x12]	;, MEM[(char_type &)_29]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4596:   }
	ldp	x29, x30, [sp], 272	;,,,
LCFI51:
	ret	
	.p2align 2,,3
L211:
LCFI52:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:106: 	  auto const __num = __val * 2;
	ubfiz	x4, x4, 1, 32	; __num, __val,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:107: 	  __first[1] = __digits[__num + 1];
	ldrb	w1, [x10, x4]	;, __digits[_69]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:108: 	  __first[0] = __digits[__num];
	ldrsb	w4, [x7, x4]	; cstore_23, __digits[__num_68]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:107: 	  __first[1] = __digits[__num + 1];
	strb	w1, [x0, 1]	; __digits[_69], MEM[(char *)prephitmp_107 + 1B]
	strb	w4, [x0]	; cstore_23, *_50
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4596:   }
	mov	x0, x8	;, <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x1, [x8]	; MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x12, [x8, 8]	; _1, MEM[(struct basic_string *)__str_5(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x1, x12]	;, MEM[(char_type &)_29]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4596:   }
	ldp	x29, x30, [sp], 272	;,,,
LCFI53:
	ret	
	.p2align 2,,3
L223:
LCFI54:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x8, 16	; _4, <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	add	w2, w2, 2	; __n, __n,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x8, 16]	;, MEM[(char_type &)__str_5(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4591:     __str.__resize_and_overwrite(__len, [__val](char* __p, size_t __n) {
	uxtw	x12, w2	; _1, __n
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	stp	x0, xzr, [x8]	; _4,,* <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:343:       if (__res <= __capacity)
	cmp	w2, 15	; __n,
	bhi	L225		;,
	b	L209		;
	.p2align 2,,3
L224:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x8, 16	; _4, <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	add	w2, w2, 3	; __n, __n,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x8, 16]	;, MEM[(char_type &)__str_5(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4591:     __str.__resize_and_overwrite(__len, [__val](char* __p, size_t __n) {
	uxtw	x12, w2	; _1, __n
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	stp	x0, xzr, [x8]	; _4,,* <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:343:       if (__res <= __capacity)
	cmp	w2, 15	; __n,
	bhi	L225		;,
	b	L209		;
	.p2align 2,,3
L214:
LCFI55:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	mov	x19, 30	; __res,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 31	; _31,
	b	L210		;
L202:
LCFI56:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x8, 16	; _4, <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:111: 	__first[0] = '0' + __val;
	add	w4, w4, 48	; cstore_23, __val,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4591:     __str.__resize_and_overwrite(__len, [__val](char* __p, size_t __n) {
	mov	x12, 1	; _1,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x0, [x8]	; _4, MEM[(struct _Alloc_hider *)__str_5(D)]._M_p
	strb	w4, [x0]	; cstore_23, *_50
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4596:   }
	mov	x0, x8	;, <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x1, [x8]	; MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x12, [x8, 8]	; _1, MEM[(struct basic_string *)__str_5(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x1, x12]	;, MEM[(char_type &)_29]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4596:   }
	ret	
LFE2850:
	.cstring
	.align	3
lC3:
	.ascii "  \0"
	.align	3
lC4:
	.ascii " \0"
	.align	3
lC5:
	.ascii " ns/iter\12\0"
	.text
	.align	2
	.p2align 5,,15
	.globl __Z12print_resultRK11BenchResult
	.weak_definition __Z12print_resultRK11BenchResult
__Z12print_resultRK11BenchResult:
LFB6914:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI57:
	mov	x29, sp	;,
LCFI58:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC3@PAGE	; tmp135,
	mov	x2, 2	;,
	add	x1, x1, lC3@PAGEOFF;	;, tmp135,
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	stp	x19, x20, [sp, 16]	;,,
LCFI59:
	mov	x20, x0	; r, r
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ldr	d31, [x20, 32]	; r_2(D)->iters, r_2(D)->iters
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	str	d15, [sp, 32]	;,
LCFI60:
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ldr	d15, [x20, 40]	;, r_2(D)->total_ns
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x19, __ZSt4cout@GOTPAGE	; tmp136,
	ldr	x19, [x19, __ZSt4cout@GOTPAGEOFF]	; tmp136,
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ucvtf	d31, d31	;, r_2(D)->iters
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	x0, x19	;, tmp136
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	fdiv	d15, d15, d31	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iomanip:252:       __os.width(__f._M_n);
	ldr	x3, [x19]	; _19, cout._vptr.basic_ostream
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	mov	x4, 44	; tmp141,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	mov	w5, -177	; tmp146,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4372:       return __ostream_insert(__os, __str.data(), __str.size());
	mov	x0, x19	;, tmp136
	ldr	x1, [x20]	;, MEM[(const struct basic_string *)r_2(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	ldr	x2, [x3, -24]	; MEM[(long int *)_19 + -24B], MEM[(long int *)_19 + -24B]
	add	x2, x2, x19	; tmp139, MEM[(long int *)_19 + -24B], tmp136
	str	x4, [x2, 16]	; tmp141, _22->_M_width
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:140: 	__pf(*this);
	ldr	x4, [x3, -24]	; MEM[(long int *)_19 + -24B], MEM[(long int *)_19 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4372:       return __ostream_insert(__os, __str.data(), __str.size());
	ldr	x2, [x20, 8]	;, MEM[(const struct basic_string *)r_2(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:140: 	__pf(*this);
	add	x4, x4, x19	; _18, MEM[(long int *)_19 + -24B], tmp136
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w3, [x4, 24]	;, _18->_M_flags
	and	w3, w3, w5	; _38, _18->_M_flags, tmp146
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orr	w3, w3, 32	; _39, _38,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	str	w3, [x4, 24]	; _39, MEM[(_Ios_Fmtflags &)_18 + 24]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4372:       return __ostream_insert(__os, __str.data(), __str.size());
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC4@PAGE	; tmp152,
	mov	x2, 1	;,
	add	x1, x1, lC4@PAGEOFF;	;, tmp152,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4372:       return __ostream_insert(__os, __str.data(), __str.size());
	mov	x19, x0	; _15,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iomanip:252:       __os.width(__f._M_n);
	ldr	x2, [x19]	; _8, _15->_vptr.basic_ostream
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	mov	x6, 10	; tmp155,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	mov	x0, x19	;, _15
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	mov	w4, -437	; tmp159,
	mov	w3, 132	; tmp161,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	fmov	d0, d15	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:777:       _M_precision = __prec;
	mov	x5, 2	; tmp162,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	ldr	x1, [x2, -24]	; MEM[(long int *)_8 + -24B], MEM[(long int *)_8 + -24B]
	add	x1, x19, x1	; tmp154, _15, MEM[(long int *)_8 + -24B]
	str	x6, [x1, 16]	; tmp155, _11->_M_width
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:140: 	__pf(*this);
	ldr	x1, [x2, -24]	; MEM[(long int *)_8 + -24B], MEM[(long int *)_8 + -24B]
	add	x19, x19, x1	; _7, _15, MEM[(long int *)_8 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	ldr	w1, [x19, 24]	;, _7->_M_flags
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:777:       _M_precision = __prec;
	str	x5, [x19, 8]	; tmp162, _7->_M_precision
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	and	w1, w1, w4	; _40, _7->_M_flags, tmp159
	orr	w1, w1, w3	; _44, _40, tmp161
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	str	w1, [x19, 24]	; _44, MEM[(_Ios_Fmtflags &)_7 + 24]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	bl	__ZNSo9_M_insertIdEERSoT_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC5@PAGE	; tmp164,
; bench.hpp:52: }
	ldr	d15, [sp, 32]	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	x2, 9	;,
; bench.hpp:52: }
	ldp	x19, x20, [sp, 16]	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	add	x1, x1, lC5@PAGEOFF;	;, tmp164,
; bench.hpp:52: }
	ldp	x29, x30, [sp], 48	;,,,
LCFI61:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	b	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LFE6914:
	.cstring
	.align	3
lC6:
	.ascii "basic_string::append\0"
	.align	3
lC7:
	.ascii "basic_string::_M_create\0"
	.text
	.align	2
	.p2align 5,,15
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc:
LFB8692:
	stp	x29, x30, [sp, -96]!	;,,,
LCFI62:
	mov	x29, sp	;,
LCFI63:
	stp	x19, x20, [sp, 16]	;,,
LCFI64:
	mov	x19, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x0, x1	;, __s
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1580:       append(const _CharT* __s)
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI65:
	mov	x23, x1	; __s, __s
	str	x25, [sp, 64]	;,
LCFI66:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	bl	_strlen		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x2, [x19, 8]	; __sz, MEM[(const struct basic_string *)this_4(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x1, 9223372036854775806	; tmp130,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x3, x0	; _8,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	sub	x0, x1, x2	; _7, tmp130, __sz
	cmp	x0, x3	; _7, _8
	bcc	L271		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x22, x19	; _13, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:447:       const size_type __len = __n + this->size();
	add	x21, x2, x3	; __len, __sz, _8
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x20, [x22], 16	; _12, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	beq	L272		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x0, [x19, 16]	; __sz, MEM[(const struct basic_string *)this_4(D)].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x21, x0	; __len, __sz
	bhi	L235		;,
L231:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:451: 	  if (__n)
	cbz	x3, L236	; _8,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:452: 	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
	add	x0, x20, x2	; _16, _12, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	beq	L273		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x3	;, _8
	mov	x1, x23	;, __s
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x20, [x19]	; _12, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
L236:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x21, [x19, 8]	; __len, this_4(D)->_M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1586:       }
	mov	x0, x19	;, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x20, x21]	;, MEM[(char_type &)_19]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1586:       }
	ldr	x25, [sp, 64]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 96	;,,,
LCFI67:
	ret	
	.p2align 2,,3
L235:
LCFI68:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmp	x21, x1	; __len, tmp130
	bhi	L232		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x0, x0, 1	; __new_capacity, __sz,
	stp	x3, x2, [x29, 80]	; _8, __sz,
	mov	x25, x0	; __new_capacity, __new_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x21, x0	; __len, __new_capacity
	bcs	L274		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	cmp	x0, x1	; __new_capacity, tmp130
	bls	L275		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 9223372036854775807	;,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	mov	x1, 9223372036854775806	; tmp130,
	cbnz	x2, L262	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	beq	L276		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x25, x1	; __new_capacity, tmp130
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	mov	x0, x24	; _15, _32
	.p2align 5,,15
L245:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x3	;, _8
	mov	x1, x23	;, __s
	bl	_memcpy		;
L254:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	beq	L270		;,
L253:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 16]	; this_4(D)->D.56371._M_allocated_capacity, this_4(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x20	;, _12
	add	x1, x1, 1	;, this_4(D)->D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L270:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	x20, x24	; _12, _32
L248:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x24, [x19]	; _32, this_4(D)->_M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x25, [x19, 16]	; __new_capacity, this_4(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L236		;
	.p2align 2,,3
L274:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	add	x0, x21, 1	;, __len,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x2, L241	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x25, x21	; __new_capacity, __len
L240:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x2, 1	; __sz,
	beq	L277		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, _12
	mov	x0, x24	;, _32
	stp	x2, x3, [x29, 80]	; __sz, _8,
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	ldr	x3, [x29, 88]	; _8, %sfp
	cbz	x3, L254	; _8,
	ldr	x2, [x29, 80]	; __sz, %sfp
	b	L244		;
	.p2align 2,,3
L272:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x21, 15	; __len,
	bls	L231		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmp	x21, x1	; __len, tmp130
	bhi	L232		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x21, 29	; __len,
	bls	L233		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	add	x0, x21, 1	;, __len,
	stp	x3, x2, [x29, 80]	; _8, __sz,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x2, L241	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x2, 1	; __sz,
	beq	L278		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, _12
	stp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x25, x21	; __new_capacity, __len
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	bl	_memcpy		;
	ldp	x3, x2, [x29, 80]	; _8, __sz,
	.p2align 5,,15
L244:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x0, x24, x2	; _15, _32, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	bne	L245		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
	strb	w0, [x24, x2]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_35]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L254		;
	.p2align 2,,3
L273:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x23]	; _17, MEM[(const char_type &)__s_2(D)]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x20, x2]	; _17, MEM[(char_type &)_16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x20, [x19]	; _12, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L236		;
	.p2align 2,,3
L233:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 31	;,
	stp	x3, x2, [x29, 80]	; _8, __sz,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbnz	x2, L256	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	beq	L279		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x25, 30	; __new_capacity,
	b	L245		;
	.p2align 2,,3
L241:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x3	;, _8
	mov	x1, x23	;, __s
	mov	x0, x24	;, _32
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	beq	L261		;,
	mov	x25, x21	; __new_capacity, __len
	b	L253		;
	.p2align 2,,3
L275:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	add	x0, x0, 1	;, __new_capacity,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbnz	x2, L240	; __sz,
	b	L244		;
	.p2align 2,,3
L277:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x20]	; _31, MEM[(const char_type &)_12]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; _31, MEM[(char_type &)_42]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	cbz	x3, L254	; _8,
L250:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x0, x24, 1	; _15, _32,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	bne	L245		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
	strb	w0, [x24, 1]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_104]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	bne	L253		;,
	b	L270		;
	.p2align 2,,3
L262:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x25, x1	; __new_capacity, tmp130
	b	L240		;
	.p2align 2,,3
L256:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x25, 30	; __new_capacity,
	b	L240		;
L276:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x25, x1	; __new_capacity, tmp130
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_52]
	b	L253		;
L261:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	mov	x20, x24	; _12, _32
	mov	x25, x21	; __new_capacity, __len
	b	L248		;
L278:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x20]	; _123, MEM[(const char_type &)_12]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x25, x21	; __new_capacity, __len
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; _123, MEM[(char_type &)_23]
	b	L250		;
L279:
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x20, x24	; _12, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x25, 30	; __new_capacity,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_128]
	b	L248		;
L271:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC6@PAGE	; tmp132,
	add	x0, x0, lC6@PAGEOFF;	;, tmp132,
	bl	__ZSt20__throw_length_errorPKc		;
L232:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	adrp	x0, lC7@PAGE	; tmp141,
	add	x0, x0, lC7@PAGEOFF;	;, tmp141,
	bl	__ZSt20__throw_length_errorPKc		;
LFE8692:
	.cstring
	.align	3
lC8:
	.ascii "basic_string::_M_replace\0"
	.align	3
lC9:
	.ascii "b2: amortised per-perform cost  (batch=\0"
	.align	3
lC10:
	.ascii ", reps=\0"
	.align	3
lC11:
	.ascii ")\0"
	.align	3
lC12:
	.ascii "\12=== \0"
	.align	3
lC13:
	.ascii " ===\12\0"
	.align	3
lC14:
	.ascii "  Each iteration runs a loop of \0"
	.align	3
lC15:
	.ascii " dispatches.\12\0"
	.align	3
lC16:
	.ascii "  Fx: one coroutine frame per iteration; \0"
	.align	3
lC17:
	.ascii " performs are zero-alloc.\12\12\0"
	.align	3
lC18:
	.ascii "direct loop\0"
	.align	3
lC19:
	.ascii "std::function loop\0"
	.align	3
lC20:
	.ascii "fx::perform in batch coroutine\0"
	.align	3
lC21:
	.ascii "\12  --- amortised per-call breakdown ---\12\0"
	.align	3
lC22:
	.ascii "direct loop  (per call)\0"
	.align	3
lC23:
	.ascii " ns/call\12\0"
	.align	3
lC24:
	.ascii "std::function (per call)\0"
	.align	3
lC25:
	.ascii "fx::perform  (per call)\0"
	.align	3
lC26:
	.ascii "\12Note: the Fx overhead vs direct is the handler stack walk + resume\12\0"
	.align	3
lC27:
	.ascii "      per perform, plus the one-time coroutine frame alloc amortised\12\0"
	.align	3
lC28:
	.ascii "      across all \0"
	.align	3
lC29:
	.ascii " performs.\12\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align	2
	.p2align 5,,15
	.globl _main
_main:
LFB7649:
	stp	x29, x30, [sp, -448]!	;,,,
LCFI69:
	mov	x29, sp	;,
LCFI70:
; b2_batch.cpp:50:   section("b2: amortised per-perform cost  (batch=" + std::to_string(BATCH) +
	mov	w0, 10000	;,
; b2_batch.cpp:46: int main() {
	stp	x19, x20, [sp, 16]	;,,
LCFI71:
; b2_batch.cpp:50:   section("b2: amortised per-perform cost  (batch=" + std::to_string(BATCH) +
	add	x19, x29, 192	; tmp882,,
	mov	x8, x19	;, tmp882
; b2_batch.cpp:46: int main() {
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
	stp	x25, x26, [sp, 64]	;,,
	stp	x27, x28, [sp, 80]	;,,
	stp	d13, d14, [sp, 96]	;,,
	str	d15, [sp, 112]	;,
LCFI72:
; b2_batch.cpp:50:   section("b2: amortised per-perform cost  (batch=" + std::to_string(BATCH) +
	bl	__ZNSt7__cxx119to_stringEi		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x22, [x29, 200]	; __sz, MEM[(struct basic_string *)_523]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 40	; tmp383,
	movk	x0, 0x8000, lsl 48	; tmp383,,
	add	x0, x22, x0	; _480, __sz, tmp383
	cmp	x0, 38	; _480,
	bls	L429		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x21, [x29, 192]	; _444, MEM[(struct basic_string *)_523]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x20, x29, 208	; tmp883,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:549:       const size_type __new_size = __old_size + __len2 - __len1;
	add	x26, x22, 39	; _442, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x21, x20	; _444, tmp883
	beq	L282		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x23, [x29, 208]	; __sz, MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:551:       if (__new_size <= this->capacity())
	cmp	x26, x23	; _442, __sz
	bhi	L283		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_function.h:454: 	return (__UINTPTR_TYPE__)__x < (__UINTPTR_TYPE__)__y;
	adrp	x23, lC9@PAGE	; tmp890,
	add	x3, x23, lC9@PAGEOFF;	; __x.23_451, tmp890,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x21, x3	; _444, __x.23_451
	bls	L430		;,
L284:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	cbnz	x22, L286	; __sz,
L287:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x0, x23, lC9@PAGEOFF;	; tmp396, tmp890,
	ldr	x1, [x0, 31]	; MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="], MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="]
	ldp	q31, q30, [x0]	; MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="], MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="],
	stp	q31, q30, [x21]	; MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="], MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="],* _444
	str	x1, [x21, 31]	; MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="], MEM <char[1:39]> [(void *)_444]
L288:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x2, [x29, 192]	; MEM[(struct basic_string *)_523]._M_dataplus._M_p, MEM[(struct basic_string *)_523]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	add	x25, x29, 224	; tmp884,,
	mov	x1, x19	;, tmp882
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x26, [x29, 200]	; _442, MEM[(struct basic_string *)_523]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	mov	x0, x25	;, tmp884
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x2, x26]	;, MEM[(char_type &)_463]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	adrp	x1, lC10@PAGE	; tmp426,
	mov	x0, x25	;, tmp884
	add	x1, x1, lC10@PAGEOFF;	;, tmp426,
LEHB8:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc		;
LEHE8:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	add	x2, x29, 256	; tmp886,,
	mov	x1, x0	;, _71
	mov	x0, x2	;, tmp886
	str	x2, [x29, 144]	; tmp886, %sfp
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; b2_batch.cpp:51:           ", reps=" + std::to_string(REPS) + ")");
	add	x8, x29, 304	; tmp891,,
	mov	x0, 2000	;,
	str	x8, [x29, 168]	; tmp891, %sfp
LEHB9:
	bl	__ZNSt7__cxx119to_stringEm		;
LEHE9:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x28, [x29, 312]	; __sz, MEM[(struct basic_string *)_982]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x23, x29, 272	; tmp887,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldp	x26, x24, [x29, 256]	; MEM[(struct basic_string *)_496]._M_dataplus._M_p, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3951: 	  const auto __size = __lhs.size() + __rhs.size();
	add	x21, x24, x28	; __size, __sz, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x26, x23	; MEM[(struct basic_string *)_496]._M_dataplus._M_p, tmp887
	beq	L431		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x0, [x29, 272]	; __sz, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3952: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	cmp	x21, x0	; __size, __sz
	bls	L432		;,
L297:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x27, [x29, 304]	; MEM[(struct basic_string *)_982]._M_dataplus._M_p, MEM[(struct basic_string *)_982]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x22, x29, 320	; tmp894,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x3, x27	; _509, MEM[(struct basic_string *)_982]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x27, x22	; MEM[(struct basic_string *)_982]._M_dataplus._M_p, tmp894
	beq	L300		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3952: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	ldr	x1, [x29, 320]	; MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity
	cmp	x21, x1	; __size, MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity
	bls	L301		;,
L300:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x1, 9223372036854775806	; tmp436,
	sub	x1, x1, x24	; _517, tmp436, __sz
	cmp	x28, x1	; __sz, _517
	bhi	L379		;,
L380:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x21, x0	; __size, __sz
	bhi	L304		;,
L298:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:451: 	  if (__n)
	cbz	x28, L305	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:452: 	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
	add	x0, x26, x24	; _525, MEM[(struct basic_string *)_496]._M_dataplus._M_p, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x28, 1	; __sz,
	beq	L433		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x28	;, __sz
	mov	x1, x3	;, _509
	bl	_memcpy		;
	ldr	x26, [x29, 256]	; MEM[(struct basic_string *)_496]._M_dataplus._M_p, MEM[(struct basic_string *)_496]._M_dataplus._M_p
L305:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x21, [x29, 264]	; __size, MEM[(struct basic_string *)_496]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x24, x29, 368	; tmp897,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x26, x21]	;, MEM[(char_type &)_528]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:282: 	    if (_M_string_length > _S_local_capacity)
	ldp	x0, x26, [x29, 256]	; _567, pretmp_994,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x24, [x29, 352]	; tmp897, MEM[(struct _Alloc_hider *)_980]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _567, tmp887
	beq	L434		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string &)_496].D.56371._M_allocated_capacity, MEM[(struct basic_string &)_496].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x0, [x29, 352]	; _567, MEM[(struct basic_string *)_980]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x1, [x29, 368]	; MEM[(struct basic_string &)_496].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity
L316:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x23, xzr, [x29, 256]	; tmp887,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x29, 272]	;, MEM[(char_type &)_496 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x26, [x29, 360]	; pretmp_994,
L317:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	adrp	x1, lC11@PAGE	; tmp520,
	add	x0, x29, 352	; tmp896,,
	add	x1, x1, lC11@PAGEOFF;	;, tmp520,
	str	x0, [x29, 136]	; tmp896, %sfp
LEHB10:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc		;
LEHE10:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	add	x2, x29, 400	; tmp898,,
	mov	x1, x0	;, _68
	mov	x0, x2	;, tmp898
	str	x2, [x29, 160]	; tmp898, %sfp
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC12@PAGE	; tmp524,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 5	;,
	add	x1, x1, lC12@PAGEOFF;	;, tmp524,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldp	x28, x27, [x29, 400]	; _60, __sz,
LEHB11:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/string_view:769:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, x27	;, __sz
	mov	x1, x28	;, _60
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC13@PAGE	; tmp528,
	mov	x2, 5	;,
	add	x1, x1, lC13@PAGEOFF;	;, tmp528,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LEHE11:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 400]	; _119, MEM[(struct basic_string *)_512]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 416	; tmp899,,
	str	x1, [x29, 152]	; tmp899, %sfp
	cmp	x0, x1	; _119, tmp899
	beq	L330		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 416]	; MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L330:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 352]	; _115, MEM[(struct basic_string *)_980]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _115, tmp897
	beq	L331		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 368]	; MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L331:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 304]	; _111, MEM[(struct basic_string *)_982]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	; _111, tmp894
	beq	L332		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 320]	; MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L332:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 256]	; _107, MEM[(struct basic_string *)_496]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _107, tmp887
	beq	L333		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L333:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _103, MEM[(struct basic_string *)_626]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x27, x29, 240	; tmp885,,
	cmp	x0, x27	; _103, tmp885
	beq	L334		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L334:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _99, MEM[(struct basic_string *)_523]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x20	; _99, tmp883
	beq	L335		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L335:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC14@PAGE	; tmp554,
	mov	x2, 32	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC14@PAGEOFF;	;, tmp554,
LEHB12:
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b2_batch.cpp:53:       << "  Each iteration runs a loop of " << BATCH << " dispatches.\n"
	mov	w1, 10000	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZNSolsEi		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC15@PAGE	; tmp558,
	mov	x2, 13	;,
	add	x1, x1, lC15@PAGEOFF;	;, tmp558,
; b2_batch.cpp:53:       << "  Each iteration runs a loop of " << BATCH << " dispatches.\n"
	mov	x20, x0	; _21,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC16@PAGE	; tmp560,
	mov	x2, 41	;,
	add	x1, x1, lC16@PAGEOFF;	;, tmp560,
	mov	x0, x20	;, _21
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b2_batch.cpp:54:       << "  Fx: one coroutine frame per iteration; " << BATCH << " performs are zero-alloc.\n\n";
	mov	w1, 10000	;,
	mov	x0, x20	;, _21
	bl	__ZNSolsEi		;
; b2_batch.cpp:54:       << "  Fx: one coroutine frame per iteration; " << BATCH << " performs are zero-alloc.\n\n";
	adrp	x1, lC17@PAGE	; tmp562,
	add	x1, x1, lC17@PAGEOFF;	;, tmp562,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
LEHE12:
; b2_batch.cpp:62:     direct_r = bench("direct loop", REPS, [&] {
	adrp	x1, lC18@PAGE	; tmp570,
	mov	x0, x25	;, tmp884
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	stp	x23, xzr, [x29, 256]	; tmp887,,
; b2_batch.cpp:62:     direct_r = bench("direct loop", REPS, [&] {
	add	x1, x1, lC18@PAGEOFF;	;, tmp570,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x29, 272]	;, MEM[(char_type &)_496 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	stp	x22, xzr, [x29, 304]	; tmp894,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x29, 320]	;, MEM[(char_type &)_982 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	stp	x24, xzr, [x29, 352]	; tmp897,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x29, 368]	;, MEM[(char_type &)_980 + 16]
LEHB13:
; b2_batch.cpp:62:     direct_r = bench("direct loop", REPS, [&] {
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	mov	x1, 30472	; tmp573,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x21, x0	; start,
; b2_batch.cpp:65:       sink += total;
	mov	x20, 44824	; sink,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x0, 42760	; ivtmp.614,
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	mov	x2, 57600	; tmp572,
	movk	x1, 0xa5ca, lsl 16	; tmp573,,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movk	x0, 0x14dc, lsl 16	; ivtmp.614,,
; b2_batch.cpp:65:       sink += total;
	movk	x20, 0x1ad2, lsl 16	; sink,,
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	movk	x2, 0x5f5, lsl 16	; tmp572,,
	movk	x1, 0x2e, lsl 32	; tmp573,,
L336:
; b2_batch.cpp:65:       sink += total;
	add	x20, x20, x0	; sink, sink, ivtmp.614
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	add	x0, x0, x2	; ivtmp.614, ivtmp.614, tmp572
	cmp	x0, x1	; ivtmp.614, tmp573
	bne	L336		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x21	; _687, end, start
; bench.hpp:44: }
	ldr	x21, [x29, 160]	; tmp898, %sfp
	mov	x1, x25	;, tmp884
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d15, x2	;, _687
; bench.hpp:44: }
	mov	x0, x21	;, tmp898
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x2, 2000	; tmp577,
; bench.hpp:23: struct BenchResult {
	ldr	x0, [x29, 144]	;, %sfp
	mov	x1, x21	;, tmp898
; bench.hpp:44: }
	str	d15, [x29, 440]	;, MEM[(struct BenchResult *)_512].total_ns
	str	x2, [x29, 432]	; tmp577, MEM[(struct BenchResult *)_512].iters
; bench.hpp:23: struct BenchResult {
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0		;
; bench.hpp:23: struct BenchResult {
	ldr	x1, [x29, 432]	; MEM[(struct BenchResult *)_512].iters, MEM[(struct BenchResult *)_512].iters
	ldr	d31, [x29, 440]	; MEM[(struct BenchResult *)_512].total_ns, MEM[(struct BenchResult *)_512].total_ns
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 400]	; _127, MEM[(const struct basic_string *)_512]._M_dataplus._M_p
; bench.hpp:23: struct BenchResult {
	str	x1, [x29, 288]	; MEM[(struct BenchResult *)_512].iters, MEM[(struct BenchResult *)_496].iters
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 152]	; tmp899, %sfp
; bench.hpp:23: struct BenchResult {
	str	d31, [x29, 296]	; MEM[(struct BenchResult *)_512].total_ns, MEM[(struct BenchResult *)_496].total_ns
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _127, tmp899
	beq	L337		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 416]	; MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L337:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _123, MEM[(struct basic_string *)_626]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _123, tmp885
	beq	L338		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L338:
; b2_batch.cpp:67:     print_result(direct_r);
	ldr	x0, [x29, 144]	;, %sfp
	bl	__Z12print_resultRK11BenchResult		;
LEHE13:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:453: 	      _M_invoker = &_My_handler::_M_invoke;
	adrp	x2, __ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E9_M_invokeERKSt9_Any_data@PAGE	; tmp593,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	adrp	x3, __ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation@PAGE	; tmp595,
; b2_batch.cpp:74:     int counter = 0;
	str	wzr, [x29, 184]	;, MEM[(int *)_977]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:154: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	add	x4, x29, 184	; tmp881,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:453: 	      _M_invoker = &_My_handler::_M_invoke;
	add	x2, x2, __ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E9_M_invokeERKSt9_Any_data@PAGEOFF;	; tmp592, tmp593,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	add	x3, x3, __ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation@PAGEOFF;	; tmp594, tmp595,
; b2_batch.cpp:76:     stdfn_r = bench("std::function loop", REPS, [&] {
	adrp	x1, lC19@PAGE	; tmp597,
	mov	x0, x25	;, tmp884
	add	x1, x1, lC19@PAGEOFF;	;, tmp597,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:154: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	str	x4, [x29, 144]	; tmp881, %sfp
	stp	x4, xzr, [x29, 192]	; tmp881,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	stp	x3, x2, [x29, 208]	; tmp594, tmp592,
LEHB14:
; b2_batch.cpp:76:     stdfn_r = bench("std::function loop", REPS, [&] {
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE14:
; b2_batch.cpp:73:     long long sink = 0;
	mov	x20, 0	; sink,
; b2_batch.cpp:76:     stdfn_r = bench("std::function loop", REPS, [&] {
	mov	x21, 3	; ivtmp_666,
	.p2align 5,,15
L339:
; b2_batch.cpp:65:       sink += total;
	mov	w28, 10000	; ivtmp_662,
; b2_batch.cpp:77:       long long total = 0;
	mov	x26, 0	; total,
	.p2align 5,,15
L341:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:591: 	if (_M_empty())
	ldr	x0, [x29, 208]	; MEM[(const struct _Function_base *)_523]._M_manager, MEM[(const struct _Function_base *)_523]._M_manager
	cbz	x0, L435	; MEM[(const struct _Function_base *)_523]._M_manager,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:593: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	ldr	x3, [x29, 216]	; MEM[(struct function *)_523]._M_invoker, MEM[(struct function *)_523]._M_invoker
	mov	x0, x19	;, tmp882
LEHB15:
	blr	x3		; MEM[(struct function *)_523]._M_invoker
; b2_batch.cpp:78:       for (int i = 0; i < BATCH; ++i) total += fn();
	subs	w28, w28, #1	; ivtmp_662, ivtmp_662,
; b2_batch.cpp:78:       for (int i = 0; i < BATCH; ++i) total += fn();
	add	x26, x26, w0, sxtw	; total, total, _704
; b2_batch.cpp:78:       for (int i = 0; i < BATCH; ++i) total += fn();
	bne	L341		;,
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x21, x21, #1	; ivtmp_666, ivtmp_666,
; b2_batch.cpp:79:       sink += total;
	add	x20, x20, x26	; sink, sink, total
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	bne	L339		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x21, 2000	; ivtmp_464,
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 128]	;, %sfp
	.p2align 5,,15
L343:
; b2_batch.cpp:73:     long long sink = 0;
	mov	w26, 10000	; ivtmp_616,
; b2_batch.cpp:77:       long long total = 0;
	mov	x28, 0	; total,
	.p2align 5,,15
L345:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:591: 	if (_M_empty())
	ldr	x0, [x29, 208]	; MEM[(const struct _Function_base *)_523]._M_manager, MEM[(const struct _Function_base *)_523]._M_manager
	cbz	x0, L436	; MEM[(const struct _Function_base *)_523]._M_manager,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:593: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	ldr	x3, [x29, 216]	; MEM[(struct function *)_523]._M_invoker, MEM[(struct function *)_523]._M_invoker
	mov	x0, x19	;, tmp882
	blr	x3		; MEM[(struct function *)_523]._M_invoker
LEHE15:
; b2_batch.cpp:78:       for (int i = 0; i < BATCH; ++i) total += fn();
	subs	w26, w26, #1	; ivtmp_616, ivtmp_616,
; b2_batch.cpp:78:       for (int i = 0; i < BATCH; ++i) total += fn();
	add	x28, x28, w0, sxtw	; total, total, _717
; b2_batch.cpp:78:       for (int i = 0; i < BATCH; ++i) total += fn();
	bne	L345		;,
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x21, x21, #1	; ivtmp_464, ivtmp_464,
; b2_batch.cpp:79:       sink += total;
	add	x20, x20, x28	; sink, sink, total
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	bne	L343		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 128]	; start, %sfp
; bench.hpp:44: }
	mov	x1, x25	;, tmp884
	ldr	x21, [x29, 160]	; tmp898, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _697, end, start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d14, x2	;, _697
; bench.hpp:44: }
	mov	x0, x21	;, tmp898
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x2, 2000	; tmp610,
; bench.hpp:23: struct BenchResult {
	ldr	x0, [x29, 168]	;, %sfp
	mov	x1, x21	;, tmp898
; bench.hpp:44: }
	str	d14, [x29, 440]	;, MEM[(struct BenchResult *)_512].total_ns
	str	x2, [x29, 432]	; tmp610, MEM[(struct BenchResult *)_512].iters
; bench.hpp:23: struct BenchResult {
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0		;
; bench.hpp:23: struct BenchResult {
	ldr	x1, [x29, 432]	; MEM[(struct BenchResult *)_512].iters, MEM[(struct BenchResult *)_512].iters
	ldr	d31, [x29, 440]	; MEM[(struct BenchResult *)_512].total_ns, MEM[(struct BenchResult *)_512].total_ns
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 400]	; _138, MEM[(const struct basic_string *)_512]._M_dataplus._M_p
; bench.hpp:23: struct BenchResult {
	str	x1, [x29, 336]	; MEM[(struct BenchResult *)_512].iters, MEM[(struct BenchResult *)_982].iters
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 152]	; tmp899, %sfp
; bench.hpp:23: struct BenchResult {
	str	d31, [x29, 344]	; MEM[(struct BenchResult *)_512].total_ns, MEM[(struct BenchResult *)_982].total_ns
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _138, tmp899
	beq	L347		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 416]	; MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L347:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _134, MEM[(struct basic_string *)_626]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _134, tmp885
	beq	L348		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L348:
; b2_batch.cpp:81:     print_result(stdfn_r);
	ldr	x0, [x29, 168]	;, %sfp
LEHB16:
	bl	__Z12print_resultRK11BenchResult		;
LEHE16:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	ldr	x3, [x29, 208]	; _144, MEM[(struct _Function_base *)_523]._M_manager
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	cbz	x3, L349	; _144,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:246: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	mov	w2, 3	;,
	mov	x1, x19	;, tmp882
	mov	x0, x19	;, tmp882
	blr	x3		; _144
L349:
; b2_batch.cpp:89:     fx_r = bench("fx::perform in batch coroutine", REPS, [&] {
	adrp	x1, lC20@PAGE	; tmp627,
	mov	x0, x25	;, tmp884
; b2_batch.cpp:88:     int counter = 0;
	str	wzr, [x29, 180]	;, counter
; b2_batch.cpp:89:     fx_r = bench("fx::perform in batch coroutine", REPS, [&] {
	add	x1, x1, lC20@PAGEOFF;	;, tmp627,
; b2_batch.cpp:87:     long long sink = 0;
	str	xzr, [x29, 184]	;, MEM[(long long int *)_977]
LEHB17:
; b2_batch.cpp:89:     fx_r = bench("fx::perform in batch coroutine", REPS, [&] {
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE17:
; b2_batch.cpp:89:     fx_r = bench("fx::perform in batch coroutine", REPS, [&] {
	ldr	x1, [x29, 144]	; tmp881, %sfp
	add	x0, x29, 180	; tmp630,,
	mov	x20, 3	; ivtmp_467,
	stp	x1, x0, [x29, 192]	; tmp881, tmp630,
	.p2align 5,,15
L350:
; bench.hpp:35:     fn();
	mov	x0, x19	;, tmp882
LEHB18:
	bl	__ZZ4mainENKUlvE2_clEv		;
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x20, x20, #1	; ivtmp_467, ivtmp_467,
	bne	L350		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x20, x0	; start,
	mov	x21, 2000	; ivtmp_546,
	.p2align 5,,15
L351:
; bench.hpp:39:     fn();
	mov	x0, x19	;, tmp882
	bl	__ZZ4mainENKUlvE2_clEv		;
LEHE18:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x21, x21, #1	; ivtmp_546, ivtmp_546,
	bne	L351		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x20	; _733, end, start
; bench.hpp:44: }
	ldr	x19, [x29, 160]	; tmp898, %sfp
	mov	x1, x25	;, tmp884
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d13, x2	;, _733
; bench.hpp:44: }
	mov	x0, x19	;, tmp898
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x2, 2000	; tmp636,
; bench.hpp:23: struct BenchResult {
	ldr	x0, [x29, 136]	;, %sfp
	mov	x1, x19	;, tmp898
; bench.hpp:44: }
	str	d13, [x29, 440]	;, MEM[(struct BenchResult *)_512].total_ns
	str	x2, [x29, 432]	; tmp636, MEM[(struct BenchResult *)_512].iters
; bench.hpp:23: struct BenchResult {
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0		;
; bench.hpp:23: struct BenchResult {
	ldr	x1, [x29, 432]	; MEM[(struct BenchResult *)_512].iters, MEM[(struct BenchResult *)_512].iters
	ldr	d31, [x29, 440]	; MEM[(struct BenchResult *)_512].total_ns, MEM[(struct BenchResult *)_512].total_ns
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 400]	; _150, MEM[(const struct basic_string *)_512]._M_dataplus._M_p
; bench.hpp:23: struct BenchResult {
	str	x1, [x29, 384]	; MEM[(struct BenchResult *)_512].iters, MEM[(struct BenchResult *)_980].iters
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 152]	; tmp899, %sfp
; bench.hpp:23: struct BenchResult {
	str	d31, [x29, 392]	; MEM[(struct BenchResult *)_512].total_ns, MEM[(struct BenchResult *)_980].total_ns
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _150, tmp899
	beq	L352		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 416]	; MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L352:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _146, MEM[(struct basic_string *)_626]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _146, tmp885
	beq	L353		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L353:
; b2_batch.cpp:92:     print_result(fx_r);
	ldr	x0, [x29, 136]	;, %sfp
LEHB19:
	bl	__Z12print_resultRK11BenchResult		;
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b2_batch.cpp:97:   std::cout << "\n  --- amortised per-call breakdown ---\n";
	adrp	x1, lC21@PAGE	; tmp651,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC21@PAGEOFF;	;, tmp651,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x25, lC3@PAGE	; tmp888,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 2	;,
	add	x1, x25, lC3@PAGEOFF;	;, tmp888,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iomanip:252:       __os.width(__f._M_n);
	adrp	x19, __ZSt4cout@GOTPAGE	; tmp900,
	ldr	x19, [x19, __ZSt4cout@GOTPAGEOFF]	; tmp900,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	mov	x6, 44	; tmp660,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	mov	w5, -177	; tmp665,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC22@PAGE	; tmp668,
	mov	x2, 23	;,
	add	x1, x1, lC22@PAGEOFF;	;, tmp668,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iomanip:252:       __os.width(__f._M_n);
	ldr	x4, [x19]	; _160, cout._vptr.basic_ostream
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	x0, x19	;, tmp900
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	ldr	x3, [x4, -24]	; MEM[(long int *)_160 + -24B], MEM[(long int *)_160 + -24B]
	add	x3, x19, x3	; tmp658, tmp900, MEM[(long int *)_160 + -24B]
	str	x6, [x3, 16]	; tmp660, _163->_M_width
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:140: 	__pf(*this);
	ldr	x4, [x4, -24]	; MEM[(long int *)_160 + -24B], MEM[(long int *)_160 + -24B]
	add	x4, x19, x4	; _159, tmp900, MEM[(long int *)_160 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w3, [x4, 24]	;, _159->_M_flags
	and	w3, w3, w5	; _737, _159->_M_flags, tmp665
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orr	w3, w3, 32	; _738, _737,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	str	w3, [x4, 24]	; _738, MEM[(_Ios_Fmtflags &)_159 + 24]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x21, lC4@PAGE	; tmp889,
	mov	x2, 1	;,
	mov	x0, x19	;, tmp900
	add	x1, x21, lC4@PAGEOFF;	;, tmp889,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ldp	d31, d30, [x29, 288]	; MEM[(struct BenchResult *)_496].iters,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	mov	x6, 10	; tmp677,
; b2_batch.cpp:99:     return r.ns_per_iter() / BATCH;
	mov	x0, 149533581377536	; tmp692,
	movk	x0, 0x40c3, lsl 48	; tmp692,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	mov	w4, -437	; tmp682,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iomanip:252:       __os.width(__f._M_n);
	ldr	x2, [x19]	; _167, cout._vptr.basic_ostream
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	mov	w3, 132	; tmp684,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:777:       _M_precision = __prec;
	mov	x5, 2	; tmp685,
; b2_batch.cpp:99:     return r.ns_per_iter() / BATCH;
	fmov	d0, x0	; tmp691, tmp692
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	mov	x0, x19	;, tmp900
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ucvtf	d31, d31	;, MEM[(struct BenchResult *)_496].iters
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	ldr	x1, [x2, -24]	; MEM[(long int *)_167 + -24B], MEM[(long int *)_167 + -24B]
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	fdiv	d31, d30, d31	; _175,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	add	x1, x19, x1	; tmp675, tmp900, MEM[(long int *)_167 + -24B]
	str	x6, [x1, 16]	; tmp677, _170->_M_width
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:140: 	__pf(*this);
	ldr	x1, [x2, -24]	; MEM[(long int *)_167 + -24B], MEM[(long int *)_167 + -24B]
	add	x1, x19, x1	; _166, tmp900, MEM[(long int *)_167 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	ldr	w2, [x1, 24]	;, _166->_M_flags
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:777:       _M_precision = __prec;
	str	x5, [x1, 8]	; tmp685, _166->_M_precision
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	and	w2, w2, w4	; _956, _166->_M_flags, tmp682
	orr	w2, w2, w3	; _741, _956, tmp684
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	fdiv	d0, d31, d0	;, _175, tmp691
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	str	w2, [x1, 24]	; _741, MEM[(_Ios_Fmtflags &)_166 + 24]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	bl	__ZNSo9_M_insertIdEERSoT_		;
; b2_batch.cpp:103:             << std::setprecision(2) << per(direct_r) << " ns/call\n";
	adrp	x20, lC23@PAGE	; tmp893,
	add	x1, x20, lC23@PAGEOFF;	;, tmp893,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	x2, 2	;,
	add	x1, x25, lC3@PAGEOFF;	;, tmp888,
	mov	x0, x19	;, tmp900
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iomanip:252:       __os.width(__f._M_n);
	ldr	x4, [x19]	; _180, cout._vptr.basic_ostream
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	mov	x6, 44	; tmp703,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	mov	w5, -177	; tmp708,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC24@PAGE	; tmp711,
	mov	x2, 24	;,
	add	x1, x1, lC24@PAGEOFF;	;, tmp711,
	mov	x0, x19	;, tmp900
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	ldr	x3, [x4, -24]	; MEM[(long int *)_180 + -24B], MEM[(long int *)_180 + -24B]
	add	x3, x19, x3	; tmp701, tmp900, MEM[(long int *)_180 + -24B]
	str	x6, [x3, 16]	; tmp703, _183->_M_width
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:140: 	__pf(*this);
	ldr	x4, [x4, -24]	; MEM[(long int *)_180 + -24B], MEM[(long int *)_180 + -24B]
	add	x4, x19, x4	; _179, tmp900, MEM[(long int *)_180 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w3, [x4, 24]	;, _179->_M_flags
	and	w3, w3, w5	; _746, _179->_M_flags, tmp708
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orr	w3, w3, 32	; _747, _746,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	str	w3, [x4, 24]	; _747, MEM[(_Ios_Fmtflags &)_179 + 24]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	mov	x2, 1	;,
	add	x1, x21, lC4@PAGEOFF;	;, tmp889,
	mov	x0, x19	;, tmp900
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ldp	d29, d28, [x29, 336]	; MEM[(struct BenchResult *)_982].iters,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	mov	x6, 10	; tmp720,
; b2_batch.cpp:99:     return r.ns_per_iter() / BATCH;
	mov	x0, 149533581377536	; tmp735,
	movk	x0, 0x40c3, lsl 48	; tmp735,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	mov	w4, -437	; tmp725,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iomanip:252:       __os.width(__f._M_n);
	ldr	x2, [x19]	; _187, cout._vptr.basic_ostream
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	mov	w3, 132	; tmp727,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:777:       _M_precision = __prec;
	mov	x5, 2	; tmp728,
; b2_batch.cpp:99:     return r.ns_per_iter() / BATCH;
	fmov	d0, x0	; tmp734, tmp735
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	mov	x0, x19	;, tmp900
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ucvtf	d29, d29	;, MEM[(struct BenchResult *)_982].iters
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	ldr	x1, [x2, -24]	; MEM[(long int *)_187 + -24B], MEM[(long int *)_187 + -24B]
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	fdiv	d29, d28, d29	; _195,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	add	x1, x19, x1	; tmp718, tmp900, MEM[(long int *)_187 + -24B]
	str	x6, [x1, 16]	; tmp720, _190->_M_width
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:140: 	__pf(*this);
	ldr	x1, [x2, -24]	; MEM[(long int *)_187 + -24B], MEM[(long int *)_187 + -24B]
	add	x1, x19, x1	; _186, tmp900, MEM[(long int *)_187 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	ldr	w2, [x1, 24]	;, _186->_M_flags
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:777:       _M_precision = __prec;
	str	x5, [x1, 8]	; tmp728, _186->_M_precision
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	and	w2, w2, w4	; _952, _186->_M_flags, tmp725
	orr	w2, w2, w3	; _750, _952, tmp727
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	fdiv	d0, d29, d0	;, _195, tmp734
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	str	w2, [x1, 24]	; _750, MEM[(_Ios_Fmtflags &)_186 + 24]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	bl	__ZNSo9_M_insertIdEERSoT_		;
; b2_batch.cpp:106:             << std::setprecision(2) << per(stdfn_r) << " ns/call\n";
	add	x1, x20, lC23@PAGEOFF;	;, tmp893,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	add	x1, x25, lC3@PAGEOFF;	;, tmp888,
	mov	x2, 2	;,
	mov	x0, x19	;, tmp900
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iomanip:252:       __os.width(__f._M_n);
	ldr	x4, [x19]	; _200, cout._vptr.basic_ostream
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	mov	x6, 44	; tmp746,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	mov	w5, -177	; tmp751,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC25@PAGE	; tmp754,
	mov	x2, 23	;,
	add	x1, x1, lC25@PAGEOFF;	;, tmp754,
	mov	x0, x19	;, tmp900
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	ldr	x3, [x4, -24]	; MEM[(long int *)_200 + -24B], MEM[(long int *)_200 + -24B]
	add	x3, x19, x3	; tmp744, tmp900, MEM[(long int *)_200 + -24B]
	str	x6, [x3, 16]	; tmp746, _203->_M_width
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:140: 	__pf(*this);
	ldr	x4, [x4, -24]	; MEM[(long int *)_200 + -24B], MEM[(long int *)_200 + -24B]
	add	x4, x19, x4	; _199, tmp900, MEM[(long int *)_200 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	ldr	w3, [x4, 24]	;, _199->_M_flags
	and	w3, w3, w5	; _755, _199->_M_flags, tmp751
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orr	w3, w3, 32	; _756, _755,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	str	w3, [x4, 24]	; _756, MEM[(_Ios_Fmtflags &)_199 + 24]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	add	x1, x21, lC4@PAGEOFF;	;, tmp889,
	mov	x2, 1	;,
	mov	x0, x19	;, tmp900
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ldp	d27, d26, [x29, 384]	; MEM[(struct BenchResult *)_980].iters,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	mov	x6, 10	; tmp763,
; b2_batch.cpp:99:     return r.ns_per_iter() / BATCH;
	mov	x0, 149533581377536	; tmp778,
	movk	x0, 0x40c3, lsl 48	; tmp778,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	mov	w4, -437	; tmp768,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iomanip:252:       __os.width(__f._M_n);
	ldr	x2, [x19]	; _207, cout._vptr.basic_ostream
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	mov	w3, 132	; tmp770,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:777:       _M_precision = __prec;
	mov	x5, 2	; tmp771,
; b2_batch.cpp:99:     return r.ns_per_iter() / BATCH;
	fmov	d0, x0	; tmp777, tmp778
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	mov	x0, x19	;, tmp900
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ucvtf	d27, d27	;, MEM[(struct BenchResult *)_980].iters
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	ldr	x1, [x2, -24]	; MEM[(long int *)_207 + -24B], MEM[(long int *)_207 + -24B]
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	fdiv	d27, d26, d27	; _215,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:801:       _M_width = __wide;
	add	x1, x19, x1	; tmp761, tmp900, MEM[(long int *)_207 + -24B]
	str	x6, [x1, 16]	; tmp763, _210->_M_width
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:140: 	__pf(*this);
	ldr	x1, [x2, -24]	; MEM[(long int *)_207 + -24B], MEM[(long int *)_207 + -24B]
	add	x19, x19, x1	; _206, tmp900, MEM[(long int *)_207 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	ldr	w1, [x19, 24]	;, _206->_M_flags
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:777:       _M_precision = __prec;
	str	x5, [x19, 8]	; tmp771, _206->_M_precision
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	and	w1, w1, w4	; _948, _206->_M_flags, tmp768
	orr	w1, w1, w3	; _759, _948, tmp770
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	fdiv	d0, d27, d0	;, _215, tmp777
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:107:   { return __a = __a | __b; }
	str	w1, [x19, 24]	; _759, MEM[(_Ios_Fmtflags &)_206 + 24]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	bl	__ZNSo9_M_insertIdEERSoT_		;
; b2_batch.cpp:109:             << std::setprecision(2) << per(fx_r) << " ns/call\n";
	add	x1, x20, lC23@PAGEOFF;	;, tmp893,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC26@PAGE	; tmp783,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 68	;,
	add	x1, x1, lC26@PAGEOFF;	;, tmp783,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC27@PAGE	; tmp786,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 69	;,
	add	x1, x1, lC27@PAGEOFF;	;, tmp786,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC28@PAGE	; tmp789,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 17	;,
	add	x1, x1, lC28@PAGEOFF;	;, tmp789,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b2_batch.cpp:114:       << "      across all " << BATCH << " performs.\n";
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	w1, 10000	;,
	bl	__ZNSolsEi		;
; b2_batch.cpp:114:       << "      across all " << BATCH << " performs.\n";
	adrp	x1, lC29@PAGE	; tmp793,
	add	x1, x1, lC29@PAGEOFF;	;, tmp793,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
LEHE19:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 352]	; _225, MEM[(const struct basic_string *)_980]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _225, tmp897
	beq	L354		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 368]	; MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L354:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 304]	; _221, MEM[(const struct basic_string *)_982]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	; _221, tmp894
	beq	L355		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 320]	; MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L355:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 256]	; _217, MEM[(const struct basic_string *)_496]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _217, tmp887
	beq	L403		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L403:
; b2_batch.cpp:116: }
	ldr	d15, [sp, 112]	;,
	mov	w0, 0	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x27, x28, [sp, 80]	;,,
	ldp	d13, d14, [sp, 96]	;,,
	ldp	x29, x30, [sp], 448	;,,,
LCFI73:
	ret	
L286:
LCFI74:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:460: 	if (__n == 1)
	cmp	x22, 1	; __sz,
	beq	L437		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	mov	x2, x22	;, __sz
	mov	x1, x21	;, _444
	add	x0, x21, 39	;, _444,
	bl	_memmove		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	b	L287		;
L430:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	add	x0, x21, x22	; _453, _444, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x3, x0	; __x.23_451, _453
	bhi	L284		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:576: 	    _M_replace_cold(__p, __len1, __s, __len2, __how_much);
	mov	x5, x22	;, __sz
	mov	x1, x21	;, _444
	mov	x4, 39	;,
	mov	x2, 0	;,
	mov	x0, x19	;, tmp882
LEHB20:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm		;
LEHE20:
	b	L288		;
L304:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	mov	x1, 9223372036854775806	; tmp446,
	cmp	x21, x1	; __size, tmp446
	bhi	L438		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x27, x0, 1	; __new_capacity, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x21, x27	; __size, __new_capacity
	bcc	L308		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x21, 1	; _551, __size,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x27, x21	; __new_capacity, __size
L309:
	str	x3, [x29, 160]	; _509, %sfp
LEHB21:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldr	x3, [x29, 160]	; _509, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x4, x0	; _565, _565
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x24, L310	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x24, 1	; __sz,
	beq	L439		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x24	;, __sz
	mov	x1, x26	;, MEM[(struct basic_string *)_496]._M_dataplus._M_p
	stp	x0, x3, [x29, 152]	; _565, _509,
	bl	_memcpy		;
	ldp	x4, x3, [x29, 152]	; _565, _509,
L310:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	cmp	x3, 0	; _509,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	ccmp	x28, 0, 4, ne	; __sz,,,
	beq	L312		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x0, x4, x24	; _544, _565, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x28, 1	; __sz,
	beq	L440		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x28	;, __sz
	mov	x1, x3	;, _509
	str	x4, [x29, 160]	; _565, %sfp
	bl	_memcpy		;
	ldr	x4, [x29, 160]	; _565, %sfp
L312:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x26, x23	; MEM[(struct basic_string *)_496]._M_dataplus._M_p, tmp887
	beq	L314		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x26	;, MEM[(struct basic_string *)_496]._M_dataplus._M_p
	str	x4, [x29, 160]	; _565, %sfp
	add	x1, x1, 1	;, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
	ldr	x4, [x29, 160]	; _565, %sfp
L314:
	mov	x26, x4	; MEM[(struct basic_string *)_496]._M_dataplus._M_p, _565
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x4, [x29, 256]	; _565, MEM[(struct basic_string *)_496]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x27, [x29, 272]	; __new_capacity, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L305		;
L301:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 9223372036854775806	; tmp487,
	sub	x0, x0, x28	; _810, tmp487, __sz
	cmp	x24, x0	; __sz, _810
	bhi	L441		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x27, x26	; MEM[(struct basic_string *)_982]._M_dataplus._M_p, MEM[(struct basic_string *)_496]._M_dataplus._M_p
	bls	L442		;,
L319:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	cmp	x28, 0	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	ccmp	x24, 0, 4, ne	; __sz,,,
	beq	L443		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:571: 		this->_S_move(__p + __len2, __p + __len1, __how_much);
	add	x0, x27, x24	; _596, MEM[(struct basic_string *)_982]._M_dataplus._M_p, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:460: 	if (__n == 1)
	cmp	x28, 1	; __sz,
	beq	L444		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	mov	x2, x28	;, __sz
	mov	x1, x27	;, MEM[(struct basic_string *)_982]._M_dataplus._M_p
	bl	_memmove		;
L325:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x24, 1	; __sz,
	beq	L445		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x0, x27	;, MEM[(struct basic_string *)_982]._M_dataplus._M_p
	mov	x2, x24	;, __sz
	mov	x1, x26	;, MEM[(struct basic_string *)_496]._M_dataplus._M_p
	bl	_memcpy		;
	ldr	x27, [x29, 304]	; MEM[(struct basic_string *)_982]._M_dataplus._M_p, MEM[(struct basic_string *)_982]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	L323		;
L432:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x1, 9223372036854775806	; tmp878,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x3, [x29, 304]	; _509, MEM[(struct basic_string *)_982]._M_dataplus._M_p
	add	x22, x29, 320	; tmp894,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	sub	x1, x1, x24	; _788, tmp878, __sz
	cmp	x28, x1	; __sz, _788
	bls	L380		;,
L379:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC6@PAGE	; tmp438,
	add	x0, x0, lC6@PAGEOFF;	;, tmp438,
	bl	__ZSt20__throw_length_errorPKc		;
L433:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x3]	; _526, MEM[(const char_type &)_706]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x26, x24]	; _526, MEM[(char_type &)_525]
	ldr	x26, [x29, 256]	; MEM[(struct basic_string *)_496]._M_dataplus._M_p, MEM[(struct basic_string *)_496]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L305		;
L308:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	cmp	x27, x1	; __new_capacity, tmp446
	bls	L446		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x27, x1	; __new_capacity, tmp446
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _551,
	b	L309		;
L442:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	add	x0, x27, x28	; _591, MEM[(struct basic_string *)_982]._M_dataplus._M_p, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x26, x0	; MEM[(struct basic_string *)_496]._M_dataplus._M_p, _591
	bhi	L319		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:576: 	    _M_replace_cold(__p, __len1, __s, __len2, __how_much);
	ldr	x0, [x29, 168]	;, %sfp
	mov	x5, x28	;, __sz
	mov	x4, x24	;, __sz
	mov	x3, x26	;, MEM[(struct basic_string *)_496]._M_dataplus._M_p
	mov	x1, x27	;, MEM[(struct basic_string *)_982]._M_dataplus._M_p
	mov	x2, 0	;,
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm		;
LEHE21:
	ldr	x27, [x29, 304]	; MEM[(struct basic_string *)_982]._M_dataplus._M_p, MEM[(struct basic_string *)_982]._M_dataplus._M_p
	b	L323		;
L437:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x21]	;, MEM[(const char_type &)_444]
	strb	w0, [x21, 39]	; MEM[(const char_type &)_444], MEM[(char_type &)_444 + 39]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L287		;
L431:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3952: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	cmp	x21, 15	; __size,
	bls	L447		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	mov	x0, 15	; __sz,
	b	L297		;
L434:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x26, 1	;, pretmp_994,
	mov	x1, x23	;, tmp887
	mov	x0, x24	;, tmp897
	bl	_memcpy		;
	b	L316		;
L282:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x22, 40	; _609, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x23, x26	; __new_capacity, _442
L291:
LEHB22:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE22:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x1, lC9@PAGE	; tmp406,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _500, _500
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x1, x1, lC9@PAGEOFF;	; tmp405, tmp406,
	ldp	q31, q30, [x1]	; MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="], MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="],
	stp	q31, q30, [x0]	; MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="], MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="],* _500
	ldr	x0, [x1, 31]	; MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="], MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="]
	str	x0, [x24, 31]	; MEM <char[1:39]> [(void *)"b2: amortised per-perform cost  (batch="], MEM <char[1:39]> [(void *)_500]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:369:       if (__how_much)
	cbz	x22, L427	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x22, 1	; __sz,
	beq	L448		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x22	;, __sz
	mov	x1, x21	;, _444
	add	x0, x24, 39	;, _500,
	bl	_memcpy		;
L427:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x21, x20	; _444, tmp883
	beq	L295		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x21	;, _444
	add	x1, x1, 1	;, MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L295:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x24, [x29, 192]	; _500, MEM[(struct basic_string *)_523]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x23, [x29, 208]	; __new_capacity, MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L288		;
L448:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x21]	; _486, MEM[(const char_type &)_444]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24, 39]	; _486, MEM[(char_type &)_500 + 39]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L427		;
L443:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:572: 	      if (__len2)
	cbnz	x24, L325	; __sz,
L323:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x21, [x29, 312]	; __size, MEM[(struct basic_string *)_982]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x24, x29, 368	; tmp897,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x27, x21]	;, MEM[(char_type &)_601]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:282: 	    if (_M_string_length > _S_local_capacity)
	ldp	x0, x26, [x29, 304]	; _640, pretmp_995,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x24, [x29, 352]	; tmp897, MEM[(struct _Alloc_hider *)_980]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	; _640, tmp894
	beq	L449		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x29, 320]	; MEM[(struct basic_string &)_982].D.56371._M_allocated_capacity, MEM[(struct basic_string &)_982].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x0, [x29, 352]	; _640, MEM[(struct basic_string *)_980]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x1, [x29, 368]	; MEM[(struct basic_string &)_982].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity
L329:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x22, xzr, [x29, 304]	; tmp894,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x29, 320]	;, MEM[(char_type &)_982 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x26, [x29, 360]	; pretmp_995,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:763:       }
	b	L317		;
L447:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x3, [x29, 304]	; _509, MEM[(struct basic_string *)_982]._M_dataplus._M_p
	add	x22, x29, 320	; tmp894,,
	b	L298		;
L440:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x3]	; _545, MEM[(const char_type &)_683]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x4, x24]	; _545, MEM[(char_type &)_544]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L312		;
L439:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x26]	; _540, MEM[(const char_type &)_505]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x4]	; _540, MEM[(char_type &)_565]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L310		;
L449:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x26, 1	;, pretmp_995,
	mov	x1, x22	;, tmp894
	mov	x0, x24	;, tmp897
	bl	_memcpy		;
	b	L329		;
L445:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x26]	; _599, MEM[(const char_type &)_505]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x27]	; _599, MEM[(char_type &)_509]
	ldr	x27, [x29, 304]	; MEM[(struct basic_string *)_982]._M_dataplus._M_p, MEM[(struct basic_string *)_982]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L323		;
L444:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x27]	; _598, MEM[(const char_type &)_509]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x27, x24]	; _598, MEM[(char_type &)_596]
	b	L325		;
L446:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x27, 1	; _551, __new_capacity,
	b	L309		;
L283:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x23, x23, 1	; __new_capacity, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x26, x23	; _442, __new_capacity
	bcs	L282		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	mov	x0, 9223372036854775806	; tmp403,
	cmp	x23, x0	; __new_capacity, tmp403
	bhi	L382		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x23, 1	; _609, __new_capacity,
	b	L291		;
L382:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x23, x0	; __new_capacity, tmp403
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _609,
	b	L291		;
L389:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp819, tmp916
	b	L361		;
L386:
	mov	x19, x0	; tmp837, tmp919
	b	L367		;
L394:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	mov	x20, x0	; tmp847, tmp921
L371:
	ldr	x3, [x29, 208]	; _257, MEM[(struct _Function_base *)_523]._M_manager
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	cbz	x3, L372	; _257,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:246: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	mov	w2, 3	;,
	mov	x1, x19	;, tmp882
	mov	x0, x19	;, tmp1
	blr	x3		; _257
L372:
	mov	x19, x20	; tmp853, tmp847
L373:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 352]	; _262, MEM[(const struct basic_string *)_980]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _262, tmp897
	beq	L376		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 368]	; MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L376:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 304]	; _266, MEM[(const struct basic_string *)_982]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	; _266, tmp894
	beq	L377		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 320]	; MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L377:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 256]	; _270, MEM[(const struct basic_string *)_496]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _270, tmp887
	beq	L378		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L378:
	mov	x0, x19	;, tmp853
LEHB23:
	bl	__Unwind_Resume		;
LEHE23:
L429:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC8@PAGE	; tmp385,
	add	x20, x29, 208	; tmp883,,
	add	x0, x0, lC8@PAGEOFF;	;, tmp385,
LEHB24:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE24:
L391:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 400]	; _229, MEM[(struct basic_string *)_512]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 416	; tmp808,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp914,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x1	; _229, tmp808
	beq	L359		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 416]	; MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _229
	add	x1, x1, 1	;, MEM[(struct basic_string *)_512].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L359:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 352]	; _233, MEM[(struct basic_string *)_980]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _233, tmp897
	beq	L361		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 368]	; MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_980].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L361:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 304]	; _237, MEM[(struct basic_string *)_982]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x22	; _237, tmp894
	beq	L363		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 320]	; MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_982].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L363:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 256]	; _241, MEM[(struct basic_string *)_496]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _241, tmp887
	beq	L365		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_496].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L365:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _245, MEM[(struct basic_string *)_626]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 240	; tmp834,,
	cmp	x0, x1	; _245, tmp834
	beq	L367		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L367:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _249, MEM[(struct basic_string *)_523]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x20	; _249, tmp883
	beq	L378		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_523].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L378		;
L392:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp853, tmp923
	b	L373		;
L441:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC8@PAGE	; tmp489,
	add	x0, x0, lC8@PAGEOFF;	;, tmp489,
LEHB25:
	bl	__ZSt20__throw_length_errorPKc		;
L395:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 224]	; _258, MEM[(struct basic_string *)_626]._M_dataplus._M_p
	mov	x19, x0	; tmp922,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x27	; _258, tmp885
	beq	L373		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _258
	add	x1, x1, 1	;, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L373		;
L438:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	adrp	x0, lC7@PAGE	; tmp448,
	add	x0, x0, lC7@PAGEOFF;	;, tmp448,
	bl	__ZSt20__throw_length_errorPKc		;
LEHE25:
L387:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp831, tmp918
	b	L365		;
L388:
	add	x23, x29, 272	; tmp887,,
	mov	x19, x0	; tmp825, tmp917
	b	L363		;
L393:
	ldr	x2, [x29, 224]	; _253, MEM[(struct basic_string *)_626]._M_dataplus._M_p
	mov	x20, x0	; tmp920,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x27	; _253, tmp885
	beq	L371		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _253
	add	x1, x1, 1	;, MEM[(struct basic_string *)_626].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L371		;
L390:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp811, tmp915
	b	L359		;
L435:
LEHB26:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:592: 	  __throw_bad_function_call();
	bl	__ZSt25__throw_bad_function_callv		;
L436:
	bl	__ZSt25__throw_bad_function_callv		;
LEHE26:
LFE7649:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
LLSDA7649:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7649-LLSDACSB7649
LLSDACSB7649:
	.uleb128 LEHB8-LFB7649
	.uleb128 LEHE8-LEHB8
	.uleb128 L387-LFB7649
	.uleb128 0
	.uleb128 LEHB9-LFB7649
	.uleb128 LEHE9-LEHB9
	.uleb128 L388-LFB7649
	.uleb128 0
	.uleb128 LEHB10-LFB7649
	.uleb128 LEHE10-LEHB10
	.uleb128 L390-LFB7649
	.uleb128 0
	.uleb128 LEHB11-LFB7649
	.uleb128 LEHE11-LEHB11
	.uleb128 L391-LFB7649
	.uleb128 0
	.uleb128 LEHB12-LFB7649
	.uleb128 LEHE12-LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB13-LFB7649
	.uleb128 LEHE13-LEHB13
	.uleb128 L392-LFB7649
	.uleb128 0
	.uleb128 LEHB14-LFB7649
	.uleb128 LEHE14-LEHB14
	.uleb128 L394-LFB7649
	.uleb128 0
	.uleb128 LEHB15-LFB7649
	.uleb128 LEHE15-LEHB15
	.uleb128 L393-LFB7649
	.uleb128 0
	.uleb128 LEHB16-LFB7649
	.uleb128 LEHE16-LEHB16
	.uleb128 L394-LFB7649
	.uleb128 0
	.uleb128 LEHB17-LFB7649
	.uleb128 LEHE17-LEHB17
	.uleb128 L392-LFB7649
	.uleb128 0
	.uleb128 LEHB18-LFB7649
	.uleb128 LEHE18-LEHB18
	.uleb128 L395-LFB7649
	.uleb128 0
	.uleb128 LEHB19-LFB7649
	.uleb128 LEHE19-LEHB19
	.uleb128 L392-LFB7649
	.uleb128 0
	.uleb128 LEHB20-LFB7649
	.uleb128 LEHE20-LEHB20
	.uleb128 L386-LFB7649
	.uleb128 0
	.uleb128 LEHB21-LFB7649
	.uleb128 LEHE21-LEHB21
	.uleb128 L389-LFB7649
	.uleb128 0
	.uleb128 LEHB22-LFB7649
	.uleb128 LEHE22-LEHB22
	.uleb128 L386-LFB7649
	.uleb128 0
	.uleb128 LEHB23-LFB7649
	.uleb128 LEHE23-LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB24-LFB7649
	.uleb128 LEHE24-LEHB24
	.uleb128 L386-LFB7649
	.uleb128 0
	.uleb128 LEHB25-LFB7649
	.uleb128 LEHE25-LEHB25
	.uleb128 L389-LFB7649
	.uleb128 0
	.uleb128 LEHB26-LFB7649
	.uleb128 LEHE26-LEHB26
	.uleb128 L393-LFB7649
	.uleb128 0
LLSDACSE7649:
	.section __TEXT,__text_startup,regular,pure_instructions
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
	.p2align 5,,15
__GLOBAL__sub_I_b2_batch.cpp:
LFB10359:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x1, __ZStL8__ioinit@PAGE	; tmp102,
; b2_batch.cpp:116: }
	stp	x29, x30, [sp, -32]!	;,,,
LCFI75:
	mov	x29, sp	;,
LCFI76:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	add	x1, x1, __ZStL8__ioinit@PAGEOFF;	; tmp101, tmp102,
; b2_batch.cpp:116: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	mov	x0, x1	;, tmp101
	str	x1, [x29, 24]	; tmp101, %sfp
	bl	__ZNSt8ios_base4InitC1Ev		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x2, ___dso_handle@PAGE	; tmp104,
	ldr	x1, [x29, 24]	; tmp101, %sfp
; b2_batch.cpp:116: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	add	x2, x2, ___dso_handle@PAGEOFF;	;, tmp104,
; b2_batch.cpp:116: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI77:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE	;,
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]	;,
	b	___cxa_atexit		;
LFE10359:
	.globl ___emutls_t._ZN2fx6detail9stack_topE
	.weak_definition ___emutls_t._ZN2fx6detail9stack_topE
	.const
	.align	3
___emutls_t._ZN2fx6detail9stack_topE:
	.space 8
	.globl ___emutls_v._ZN2fx6detail9stack_topE
	.weak_definition ___emutls_v._ZN2fx6detail9stack_topE
	.data
	.align	3
___emutls_v._ZN2fx6detail9stack_topE:
; __size:
	.xword	8
; __align:
	.xword	8
; __offset:
	.xword	0
; __templ:
	.xword	___emutls_t._ZN2fx6detail9stack_topE
	.globl ___emutls_t._ZN2fx6detail10current_mrE
	.weak_definition ___emutls_t._ZN2fx6detail10current_mrE
	.const
	.align	3
___emutls_t._ZN2fx6detail10current_mrE:
	.space 8
	.globl ___emutls_v._ZN2fx6detail10current_mrE
	.weak_definition ___emutls_v._ZN2fx6detail10current_mrE
	.data
	.align	3
___emutls_v._ZN2fx6detail10current_mrE:
; __size:
	.xword	8
; __align:
	.xword	8
; __offset:
	.xword	0
; __templ:
	.xword	___emutls_t._ZN2fx6detail10current_mrE
	.const_data
	.align	3
__ZTIZ4mainEUlvE0_:
; <anonymous>:
; <anonymous>:
	.xword	__ZTVN10__cxxabiv117__class_type_infoE+16
; <anonymous>:
	.xword	__ZTSZ4mainEUlvE0_
	.const
	.align	3
__ZTSZ4mainEUlvE0_:
	.ascii "*Z4mainEUlvE0_\0"
	.globl __ZN2fx6detail12effect_tag_vI4TickEE
	.weak_definition __ZN2fx6detail12effect_tag_vI4TickEE
__ZN2fx6detail12effect_tag_vI4TickEE:
	.space 1
	.zerofill __DATA,__bss,__ZStL8__ioinit,1,0
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zPLR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x7
	.byte	0x9b
L_got_pcr0:
	.long	___gxx_personality_v0@GOT-L_got_pcr0
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB4727-.
	.set L$set$2,LFE4727-LFB4727
	.quad L$set$2
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB8707-.
	.set L$set$4,LFE8707-LFB8707
	.quad L$set$4
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE3:
LSFDE5:
	.set L$set$5,LEFDE5-LASFDE5
	.long L$set$5
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB8720-.
	.set L$set$6,LFE8720-LFB8720
	.quad L$set$6
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE5:
LSFDE7:
	.set L$set$7,LEFDE7-LASFDE7
	.long L$set$7
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB4726-.
	.set L$set$8,LFE4726-LFB4726
	.quad L$set$8
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$9,LCFI0-LFB4726
	.long L$set$9
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$10,LCFI1-LCFI0
	.long L$set$10
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$11,LCFI2-LCFI1
	.long L$set$11
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE7:
LSFDE9:
	.set L$set$12,LEFDE9-LASFDE9
	.long L$set$12
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB8711-.
	.set L$set$13,LFE8711-LFB8711
	.quad L$set$13
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE9:
LSFDE11:
	.set L$set$14,LEFDE11-LASFDE11
	.long L$set$14
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB7646-.
	.set L$set$15,LFE7646-LFB7646
	.quad L$set$15
	.uleb128 0x8
	.quad	LLSDA7646-.
	.byte	0x4
	.set L$set$16,LCFI3-LFB7646
	.long L$set$16
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$17,LCFI4-LCFI3
	.long L$set$17
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$18,LCFI5-LCFI4
	.long L$set$18
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$19,LCFI6-LCFI5
	.long L$set$19
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$20,LCFI7-LCFI6
	.long L$set$20
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xdd
	.byte	0xde
	.byte	0x4
	.set L$set$21,LCFI8-LCFI7
	.long L$set$21
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$22,LCFI9-LCFI8
	.long L$set$22
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE11:
LSFDE13:
	.set L$set$23,LEFDE13-LASFDE13
	.long L$set$23
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB10365-.
	.set L$set$24,LFE10365-LFB10365
	.quad L$set$24
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$25,LCFI10-LFB10365
	.long L$set$25
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$26,LCFI11-LCFI10
	.long L$set$26
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$27,LCFI12-LCFI11
	.long L$set$27
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE13:
LSFDE15:
	.set L$set$28,LEFDE15-LASFDE15
	.long L$set$28
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB10366-.
	.set L$set$29,LFE10366-LFB10366
	.quad L$set$29
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$30,LCFI13-LFB10366
	.long L$set$30
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$31,LCFI14-LCFI13
	.long L$set$31
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$32,LCFI15-LCFI14
	.long L$set$32
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.set L$set$33,LCFI16-LCFI15
	.long L$set$33
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE15:
LSFDE17:
	.set L$set$34,LEFDE17-LASFDE17
	.long L$set$34
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB10368-.
	.set L$set$35,LFE10368-LFB10368
	.quad L$set$35
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$36,LCFI17-LFB10368
	.long L$set$36
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$37,LCFI18-LCFI17
	.long L$set$37
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$38,LCFI19-LCFI18
	.long L$set$38
	.byte	0x95
	.uleb128 0x4
	.byte	0x4
	.set L$set$39,LCFI20-LCFI19
	.long L$set$39
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$40,LCFI21-LCFI20
	.long L$set$40
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$41,LCFI22-LCFI21
	.long L$set$41
	.byte	0xb
	.align	3
LEFDE17:
LSFDE19:
	.set L$set$42,LEFDE19-LASFDE19
	.long L$set$42
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB7668-.
	.set L$set$43,LFE7668-LFB7668
	.quad L$set$43
	.uleb128 0x8
	.quad	LLSDA7668-.
	.byte	0x4
	.set L$set$44,LCFI23-LFB7668
	.long L$set$44
	.byte	0xe
	.uleb128 0xa0
	.byte	0x9d
	.uleb128 0x14
	.byte	0x9e
	.uleb128 0x13
	.byte	0x4
	.set L$set$45,LCFI24-LCFI23
	.long L$set$45
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$46,LCFI25-LCFI24
	.long L$set$46
	.byte	0x97
	.uleb128 0xe
	.byte	0x98
	.uleb128 0xd
	.byte	0x4
	.set L$set$47,LCFI26-LCFI25
	.long L$set$47
	.byte	0x93
	.uleb128 0x12
	.byte	0x94
	.uleb128 0x11
	.byte	0x95
	.uleb128 0x10
	.byte	0x96
	.uleb128 0xf
	.byte	0x4
	.set L$set$48,LCFI27-LCFI26
	.long L$set$48
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$49,LCFI28-LCFI27
	.long L$set$49
	.byte	0xb
	.align	3
LEFDE19:
LSFDE21:
	.set L$set$50,LEFDE21-LASFDE21
	.long L$set$50
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB7647-.
	.set L$set$51,LFE7647-LFB7647
	.quad L$set$51
	.uleb128 0x8
	.quad	LLSDA7647-.
	.byte	0x4
	.set L$set$52,LCFI29-LFB7647
	.long L$set$52
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$53,LCFI30-LCFI29
	.long L$set$53
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$54,LCFI31-LCFI30
	.long L$set$54
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$55,LCFI32-LCFI31
	.long L$set$55
	.byte	0xb
	.byte	0x4
	.set L$set$56,LCFI33-LCFI32
	.long L$set$56
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE21:
LSFDE23:
	.set L$set$57,LEFDE23-LASFDE23
	.long L$set$57
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB2842-.
	.set L$set$58,LFE2842-LFB2842
	.quad L$set$58
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$59,LCFI34-LFB2842
	.long L$set$59
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$60,LCFI35-LCFI34
	.long L$set$60
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$61,LCFI36-LCFI35
	.long L$set$61
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE23:
LSFDE25:
	.set L$set$62,LEFDE25-LASFDE25
	.long L$set$62
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB2804-.
	.set L$set$63,LFE2804-LFB2804
	.quad L$set$63
	.uleb128 0x8
	.quad	LLSDA2804-.
	.byte	0x4
	.set L$set$64,LCFI37-LFB2804
	.long L$set$64
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$65,LCFI38-LCFI37
	.long L$set$65
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$66,LCFI39-LCFI38
	.long L$set$66
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$67,LCFI40-LCFI39
	.long L$set$67
	.byte	0xd3
	.byte	0x4
	.set L$set$68,LCFI41-LCFI40
	.long L$set$68
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$69,LCFI42-LCFI41
	.long L$set$69
	.byte	0xb
	.byte	0x4
	.set L$set$70,LCFI43-LCFI42
	.long L$set$70
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$71,LCFI44-LCFI43
	.long L$set$71
	.byte	0xb
	.byte	0x4
	.set L$set$72,LCFI45-LCFI44
	.long L$set$72
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$73,LCFI46-LCFI45
	.long L$set$73
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE25:
LSFDE27:
	.set L$set$74,LEFDE27-LASFDE27
	.long L$set$74
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB2850-.
	.set L$set$75,LFE2850-LFB2850
	.quad L$set$75
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$76,LCFI47-LFB2850
	.long L$set$76
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$77,LCFI48-LCFI47
	.long L$set$77
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$78,LCFI49-LCFI48
	.long L$set$78
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$79,LCFI50-LCFI49
	.long L$set$79
	.byte	0xd3
	.byte	0x4
	.set L$set$80,LCFI51-LCFI50
	.long L$set$80
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$81,LCFI52-LCFI51
	.long L$set$81
	.byte	0xb
	.byte	0x4
	.set L$set$82,LCFI53-LCFI52
	.long L$set$82
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$83,LCFI54-LCFI53
	.long L$set$83
	.byte	0xb
	.byte	0x4
	.set L$set$84,LCFI55-LCFI54
	.long L$set$84
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$85,LCFI56-LCFI55
	.long L$set$85
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE27:
LSFDE29:
	.set L$set$86,LEFDE29-LASFDE29
	.long L$set$86
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB6914-.
	.set L$set$87,LFE6914-LFB6914
	.quad L$set$87
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$88,LCFI57-LFB6914
	.long L$set$88
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$89,LCFI58-LCFI57
	.long L$set$89
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$90,LCFI59-LCFI58
	.long L$set$90
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$91,LCFI60-LCFI59
	.long L$set$91
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x4
	.set L$set$92,LCFI61-LCFI60
	.long L$set$92
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0x6
	.uleb128 0x4f
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE29:
LSFDE31:
	.set L$set$93,LEFDE31-LASFDE31
	.long L$set$93
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB8692-.
	.set L$set$94,LFE8692-LFB8692
	.quad L$set$94
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$95,LCFI62-LFB8692
	.long L$set$95
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$96,LCFI63-LCFI62
	.long L$set$96
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$97,LCFI64-LCFI63
	.long L$set$97
	.byte	0x93
	.uleb128 0xa
	.byte	0x94
	.uleb128 0x9
	.byte	0x4
	.set L$set$98,LCFI65-LCFI64
	.long L$set$98
	.byte	0x95
	.uleb128 0x8
	.byte	0x96
	.uleb128 0x7
	.byte	0x97
	.uleb128 0x6
	.byte	0x98
	.uleb128 0x5
	.byte	0x4
	.set L$set$99,LCFI66-LCFI65
	.long L$set$99
	.byte	0x99
	.uleb128 0x4
	.byte	0x4
	.set L$set$100,LCFI67-LCFI66
	.long L$set$100
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$101,LCFI68-LCFI67
	.long L$set$101
	.byte	0xb
	.align	3
LEFDE31:
LSFDE33:
	.set L$set$102,LEFDE33-LASFDE33
	.long L$set$102
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB7649-.
	.set L$set$103,LFE7649-LFB7649
	.quad L$set$103
	.uleb128 0x8
	.quad	LLSDA7649-.
	.byte	0x4
	.set L$set$104,LCFI69-LFB7649
	.long L$set$104
	.byte	0xe
	.uleb128 0x1c0
	.byte	0x9d
	.uleb128 0x38
	.byte	0x9e
	.uleb128 0x37
	.byte	0x4
	.set L$set$105,LCFI70-LCFI69
	.long L$set$105
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$106,LCFI71-LCFI70
	.long L$set$106
	.byte	0x93
	.uleb128 0x36
	.byte	0x94
	.uleb128 0x35
	.byte	0x4
	.set L$set$107,LCFI72-LCFI71
	.long L$set$107
	.byte	0x95
	.uleb128 0x34
	.byte	0x96
	.uleb128 0x33
	.byte	0x97
	.uleb128 0x32
	.byte	0x98
	.uleb128 0x31
	.byte	0x99
	.uleb128 0x30
	.byte	0x9a
	.uleb128 0x2f
	.byte	0x9b
	.uleb128 0x2e
	.byte	0x9c
	.uleb128 0x2d
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x2c
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x2b
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x2a
	.byte	0x4
	.set L$set$108,LCFI73-LCFI72
	.long L$set$108
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0x6
	.uleb128 0x4f
	.byte	0x6
	.uleb128 0x4d
	.byte	0x6
	.uleb128 0x4e
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$109,LCFI74-LCFI73
	.long L$set$109
	.byte	0xb
	.align	3
LEFDE33:
LSFDE35:
	.set L$set$110,LEFDE35-LASFDE35
	.long L$set$110
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB10359-.
	.set L$set$111,LFE10359-LFB10359
	.quad L$set$111
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$112,LCFI75-LFB10359
	.long L$set$112
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$113,LCFI76-LCFI75
	.long L$set$113
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$114,LCFI77-LCFI76
	.long L$set$114
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE35:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_b2_batch.cpp
	.subsections_via_symbols
