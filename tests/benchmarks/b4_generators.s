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
__Z9raw_rangeP20_ZL9raw_rangei.Frame.actor:
LFB7662:
; b4_generators.cpp:55: }
	ldrh	w1, [x0, 36]	; _1, frame_ptr_15(D)->_Coro_resume_index
	tbz	x1, 0, L4	; _1,,
; b4_generators.cpp:55: }
	cmp	w1, 7	; _1,
	bhi	L5		;,
L6:
L14:
L15:
L16:
; b4_generators.cpp:55: }
	ldrb	w1, [x0, 38]	; frame_ptr_15(D)->_Coro_frame_needs_free, frame_ptr_15(D)->_Coro_frame_needs_free
	tbnz	x1, 0, L23	; frame_ptr_15(D)->_Coro_frame_needs_free,,
L11:
	ret	
	.p2align 2,,3
L4:
; b4_generators.cpp:55: }
	cmp	w1, 4	; _1,
	beq	L7		;,
	bhi	L8		;,
	cbz	w1, L9	; _1,
L10:
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	mov	w2, 1	; tmp117,
; b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	mov	w1, 0	; _4,
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	strb	w2, [x0, 39]	; tmp117, frame_ptr_15(D)->_Coro_initial_await_resume_called
; b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	ldr	w2, [x0, 32]	;, frame_ptr_15(D)->n
; b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	str	w1, [x0, 44]	; _4, frame_ptr_15(D)->i_2_3
; b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	cmp	w2, w1	; frame_ptr_15(D)->n, _4
	bgt	L13		;,
L24:
; b4_generators.cpp:55: }
	mov	w1, 6	; tmp121,
; b4_generators.cpp:55: }
	str	xzr, [x0]	;, frame_ptr_15(D)->_Coro_resume_fn
; b4_generators.cpp:55: }
	strh	w1, [x0, 36]	; tmp121, frame_ptr_15(D)->_Coro_resume_index
; b4_generators.cpp:55: }
	ret	
	.p2align 2,,3
L23:
; b4_generators.cpp:55: }
	mov	x1, 56	;,
	b	__ZdlPvm		;
	.p2align 2,,3
L9:
; b4_generators.cpp:55: }
	mov	w1, 2	; tmp116,
; b4_generators.cpp:55: }
	str	x0, [x0, 24]	; frame_ptr, frame_ptr_15(D)->_Coro_self_handle._M_fr_ptr
; b4_generators.cpp:55: }
	strb	wzr, [x0, 39]	;, frame_ptr_15(D)->_Coro_initial_await_resume_called
; b4_generators.cpp:55: }
	strh	w1, [x0, 36]	; tmp116, frame_ptr_15(D)->_Coro_resume_index
; b4_generators.cpp:55: }
	ret	
	.p2align 2,,3
L7:
; b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	ldr	w1, [x0, 44]	;, frame_ptr_15(D)->i_2_3
; b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	ldr	w2, [x0, 32]	;, frame_ptr_15(D)->n
; b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	add	w1, w1, 1	; _4, frame_ptr_15(D)->i_2_3,
; b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	str	w1, [x0, 44]	; _4, frame_ptr_15(D)->i_2_3
; b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	cmp	w2, w1	; frame_ptr_15(D)->n, _4
	ble	L24		;,
L13:
; b4_generators.cpp:55: }
	mov	w2, 4	; tmp118,
; b4_generators.cpp:37:       current = v;
	str	w1, [x0, 16]	; _4, MEM[(struct promise_type *)frame_ptr_15(D) + 16B].current
; b4_generators.cpp:55: }
	strh	w2, [x0, 36]	; tmp118, frame_ptr_15(D)->_Coro_resume_index
	ret	
	.p2align 2,,3
L8:
; b4_generators.cpp:55: }
	cmp	w1, 6	; _1,
	beq	L16		;,
L5:
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	brk #1000
LFE7662:
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
	bhi	L28		;,
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
	bhi	L28		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x3, x3, x7	; _6, _22, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x4	; <retval>, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x3, x3, x4	; prephitmp_1, _6, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x4, x3, [x5, 8]	; <retval>, prephitmp_1,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x4, L28	; <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x3, x3, x1	; _10, prephitmp_1, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x4, x1	; _8, <retval>, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x3, [x5, 8]	; _8, _10,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:430:     }
	ret	
	.p2align 2,,3
L28:
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
__ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation:
LFB8811:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:272: 	switch (__op)
	cbz	w2, L36	; __op,
	cmp	w2, 1	; __op,
	bne	L42		;,
L41:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:154: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	str	x1, [x0]	; MEM[(const struct ._anon_184 &)__source_4(D)],* __dest
L39:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:287:       }
	mov	w0, 0	;,
	ret	
	.p2align 2,,3
L42:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:185: 	  switch (__op)
	cmp	w2, 2	; __op,
	bne	L39		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:154: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	ldr	x1, [x1]	; MEM[(const struct ._anon_184 &)__source_4(D)], MEM[(const struct ._anon_184 &)__source_4(D)]
	b	L41		;
	.p2align 2,,3
L36:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:276: 	    __dest._M_access<const type_info*>() = &typeid(_Functor);
	adrp	x1, __ZTIZZ4mainENKUlvE1_clEvEUliE_@PAGE	; tmp107,
	add	x1, x1, __ZTIZZ4mainENKUlvE1_clEvEUliE_@PAGEOFF;	; tmp106, tmp107,
	str	x1, [x0]	; tmp106,* __dest
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:287:       }
	mov	w0, 0	;,
	ret	
LFE8811:
	.align	2
	.p2align 5,,15
__Z8fx_rangeP19_ZL8fx_rangei.Frame.actor:
LFB7690:
	mov	x1, x0	; frame_ptr, frame_ptr
; b4_generators.cpp:63: }
	ldrh	w0, [x0, 156]	; _1, frame_ptr_12(D)->_Coro_resume_index
	tbz	x0, 0, L44	; _1,,
; b4_generators.cpp:63: }
	cmp	w0, 7	; _1,
	bhi	L45		;,
L46:
L54:
L55:
L56:
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI3:
	mov	x29, sp	;,
LCFI4:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp141, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_12(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_12(D) + 128B]._M_exception_object
	cbz	x2, L57	; MEM[(struct exception_ptr *)frame_ptr_12(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L57:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp146, frame_ptr,
	ldr	x2, [x0, 48]	; _38, MEM[(struct SmallAny *)frame_ptr_12(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L58	; _38,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _38
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L58:
; b4_generators.cpp:63: }
	ldrb	w0, [x1, 158]	; frame_ptr_12(D)->_Coro_frame_needs_free, frame_ptr_12(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L75	; frame_ptr_12(D)->_Coro_frame_needs_free,,
L51:
L43:
; b4_generators.cpp:63: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L44:
; b4_generators.cpp:63: }
	cmp	w0, 4	; _1,
	beq	L47		;,
	bhi	L48		;,
	cbz	w0, L49	; _1,
L50:
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	mov	w2, 1	; tmp124,
; b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	mov	w0, 0	; _5,
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	strb	w2, [x1, 159]	; tmp124, frame_ptr_12(D)->_Coro_initial_await_resume_called
; b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	ldr	w2, [x1, 152]	;, frame_ptr_12(D)->n
; b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	str	w0, [x1, 164]	; _5, frame_ptr_12(D)->i_2_3
; b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	cmp	w2, w0	; frame_ptr_12(D)->n, _5
	bgt	L53		;,
L76:
; b4_generators.cpp:63: }
	mov	w0, 6	; tmp139,
; b4_generators.cpp:63: }
	str	xzr, [x1]	;, frame_ptr_12(D)->_Coro_resume_fn
; b4_generators.cpp:63: }
	strh	w0, [x1, 156]	; tmp139, frame_ptr_12(D)->_Coro_resume_index
	ret	
	.p2align 2,,3
L75:
LCFI6:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 208]	; mr, MEM[(struct memory_resource * *)frame_ptr_12(D) + 208B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L59	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x3, [x0]	; mr_42->_vptr.memory_resource, mr_42->_vptr.memory_resource
	adrp	x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp151,
	ldr	x2, [x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp151,
	ldr	x4, [x3, 24]	; _44, MEM[(int (*) () *)_43 + 24B]
	cmp	x4, x2	; _44, tmp151
	beq	L43		;,
	mov	x3, 16	;,
	mov	x2, 216	;,
	blr	x4		; _44
	b	L43		;
	.p2align 2,,3
L49:
LCFI7:
; b4_generators.cpp:63: }
	mov	w0, 2	; tmp123,
; b4_generators.cpp:63: }
	str	x1, [x1, 144]	; frame_ptr, frame_ptr_12(D)->_Coro_self_handle._M_fr_ptr
; b4_generators.cpp:63: }
	strb	wzr, [x1, 159]	;, frame_ptr_12(D)->_Coro_initial_await_resume_called
; b4_generators.cpp:63: }
	strh	w0, [x1, 156]	; tmp123, frame_ptr_12(D)->_Coro_resume_index
	ret	
	.p2align 2,,3
L47:
; b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	ldr	w0, [x1, 164]	;, frame_ptr_12(D)->i_2_3
; b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	ldr	w2, [x1, 152]	;, frame_ptr_12(D)->n
; b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	add	w0, w0, 1	; _5, frame_ptr_12(D)->i_2_3,
; b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	str	w0, [x1, 164]	; _5, frame_ptr_12(D)->i_2_3
; b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	cmp	w2, w0	; frame_ptr_12(D)->n, _5
	ble	L76		;,
L53:
	ldr	x4, [x1, 144]	; caller$_M_fr_ptr, frame_ptr_12(D)->_Coro_self_handle._M_fr_ptr
; b4_generators.cpp:63: }
	mov	w5, 4	; tmp125,
; ../../effects.hpp:1210:     caller_ = caller;
	add	x3, x1, 176	; tmp127, frame_ptr,
; ../../effects.hpp:579:     return a;
	str	w0, [x1, 176]	; _5, MEM <int> [(struct _ZL8fx_rangei.Frame *)frame_ptr_12(D) + 176B]
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	adrp	x2, __ZN2fx6detail12effect_tag_vI4EmitIiEEE@GOTPAGE	; tmp133,
	ldr	x2, [x2, __ZN2fx6detail12effect_tag_vI4EmitIiEEE@GOTPAGEOFF]	; tmp133,
; b4_generators.cpp:63: }
	str	w0, [x1, 200]	; _5, frame_ptr_12(D)->T003_3_4.value
	strh	w5, [x1, 156]	; tmp125, frame_ptr_12(D)->_Coro_resume_index
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	add	x0, x4, 16	; __t_19, caller$_M_fr_ptr,
; ../../effects.hpp:1210:     caller_ = caller;
	stp	x4, x0, [x1, 184]	; caller$_M_fr_ptr, __t_19,
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	stp	x2, x3, [x4, 112]	; tmp133, tmp127,
	ret	
	.p2align 2,,3
L48:
; b4_generators.cpp:63: }
	cmp	w0, 6	; _1,
	beq	L56		;,
L45:
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	brk #1000
	.p2align 2,,3
L59:
LCFI8:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b4_generators.cpp:63: }
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 216	;,
; b4_generators.cpp:63: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI9:
LEHB0:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE0:
LFE7690:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
LLSDA7690:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7690-LLSDACSB7690
LLSDACSB7690:
	.uleb128 LEHB0-LFB7690
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
LLSDACSE7690:
	.text
	.cstring
	.align	3
lC0:
	.ascii "basic_string: construction from null is not valid\0"
	.text
	.align	2
	.p2align 5,,15
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0:
LFB10518:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI10:
	mov	x29, sp	;,
LCFI11:
	str	x21, [sp, 32]	;,
LCFI12:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x21, x0, 16	; _2, this,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:706:       basic_string(const _CharT* __s, const _Alloc& __a = _Alloc())
	stp	x19, x20, [sp, 16]	;,,
LCFI13:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:205: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [x0]	; _2, MEM[(struct _Alloc_hider *)this_1(D)]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:710: 	if (__s == 0)
	cbz	x1, L87	; __s,
	mov	x19, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x0, x1	;, __s
	mov	x20, x1	; __s, __s
	bl	_strlen		;
	mov	x2, x0	; _4, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:233: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	; _4,
	bhi	L88		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x0, 1	; _4,
	beq	L89		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:423: 	if (__n == 0)
	cbnz	x0, L80	; _4,
L82:
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
LCFI14:
	ret	
L89:
LCFI15:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x20]	;, MEM[(const char_type &)__s_3(D)]
	strb	w0, [x19, 16]	; MEM[(const char_type &)__s_3(D)], MEM[(char_type &)this_1(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L82		;
L88:
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
L80:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, __s
	mov	x0, x21	;, _2
	str	x2, [x29, 56]	; _4, %sfp
	bl	_memcpy		;
	ldr	x2, [x29, 56]	; _4, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	L82		;
L87:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:711: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, lC0@PAGE	; tmp110,
	add	x0, x0, lC0@PAGEOFF;	;, tmp110,
	bl	__ZSt19__throw_logic_errorPKc		;
LFE10518:
	.cstring
	.align	3
lC1:
	.ascii "vector::_M_realloc_append\0"
	.text
	.align	2
	.p2align 5,,15
	.globl __ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_
	.weak_definition __ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_
__ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_:
LFB9097:
	ldr	x0, [x0, 16]	; MEM[(struct HandlerNode *)_2(D)].real_handler_ptr, MEM[(struct HandlerNode *)_2(D)].real_handler_ptr
	mov	x4, x1	; D.193719, D.193719
	ldr	w5, [x1]	;, MEM <const int> [(struct PerformAwaitable *)_3(D)]
	ldr	x3, [x0]	; _7, MEM[(struct vector & *)hh_4]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	ldp	x2, x1, [x3, 8]	; _9, _10,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x2, x1	; _9, _10
	beq	L91		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x0, [x4, 8]	; _14, MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w5, [x2], 4	; e, *_9
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)_14], MEM[(void (*<T11f>) (void *) *)_14]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1423: 	    ++this->_M_impl._M_finish;
	str	x2, [x3, 8]	; _12, _7->D.174736._M_impl.D.174027._M_finish
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x16, x1	; MEM[(void (*<T11f>) (void *) *)_14], MEM[(void (*<T11f>) (void *) *)_14]
	br	x16		; MEM[(void (*<T11f>) (void *) *)_14]
	.p2align 2,,3
L91:
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x29, x30, [sp, -80]!	;,,,
LCFI16:
	mov	x29, sp	;,
LCFI17:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	mov	x8, 2305843009213693951	; tmp130,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	ldr	x7, [x3]	; _17, MEM[(const struct vector *)_7].D.174736._M_impl.D.174027._M_start
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	str	x19, [sp, 16]	;,
LCFI18:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x2, x2, x7	; _18, _9, _17
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	asr	x6, x2, 2	; __dif_19, _18,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	cmp	x6, x8	; __dif_19, tmp130
	beq	L105		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:263:       if (__a < __b)
	cmp	x6, 0	; __dif_19,
	csinc	x0, x6, xzr, ne	; _21, __dif_19,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2201: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x0, x0, x6	; __len_22, _21, __dif_19
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2202: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x0, x8	; __len_22, tmp130
	csel	x0, x0, x8, ls	; __len_22, __len_22, tmp130,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x0, x0, 2	; _39, __len_22,
	mov	x19, x0	; _39, _39
	str	x4, [x29, 32]	; D.193719, %sfp
	str	w5, [x29, 40]	; e, %sfp
	stp	x2, x7, [x29, 48]	; _18, _17,
	stp	x1, x3, [x29, 64]	; _10, _7,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	ldr	w5, [x29, 40]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x6, x0	; _40, _40
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	ldp	x2, x7, [x29, 48]	; _18, _17,
	ldp	x1, x3, [x29, 64]	; _10, _7,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w5, [x0, x2]	; e, *_27
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	ldr	x4, [x29, 32]	; D.193719, %sfp
	cbz	x2, L94	; _18,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1337: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	x1, x7	;, _17
	stp	x4, x0, [x29, 40]	; D.193719, _40,
	stp	x3, x2, [x29, 56]	; _7, _18,
	str	x7, [x29, 72]	; _17, %sfp
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	ldp	x3, x2, [x29, 56]	; _7, _18,
	ldp	x4, x6, [x29, 40]	; D.193719, _40,
	ldr	x1, [x3, 16]	; _10, _7->D.174736._M_impl.D.174027._M_end_of_storage
	ldr	x7, [x29, 72]	; _17, %sfp
L94:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:601: 	    ++__new_finish;
	add	x2, x2, 4	; _29, _18,
	add	x2, x6, x2	; __new_finish, _40, _29
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1882: 	  if (_M_storage)
	cbz	x7, L95	; _17,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x7	;, _10, _17
	mov	x0, x7	;, _17
	stp	x4, x6, [x29, 48]	; D.193719, _40,
	stp	x2, x3, [x29, 64]	; __new_finish, _7,
	bl	__ZdlPvm		;
	ldp	x4, x6, [x29, 48]	; D.193719, _40,
	ldp	x2, x3, [x29, 64]	; __new_finish, _7,
L95:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	x0, x6, x19	; _35, _40, _39
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	stp	x6, x2, [x3]	; _40, __new_finish,* _7
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	ldr	x19, [sp, 16]	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	str	x0, [x3, 16]	; _35, _7->D.174736._M_impl.D.174027._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x0, [x4, 8]	; _14, MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)_14], MEM[(void (*<T11f>) (void *) *)_14]
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	ldp	x29, x30, [sp], 80	;,,,
LCFI19:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x16, x1	; MEM[(void (*<T11f>) (void *) *)_14], MEM[(void (*<T11f>) (void *) *)_14]
	br	x16		; MEM[(void (*<T11f>) (void *) *)_14]
L105:
LCFI20:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2199: 	  __throw_length_error(__N(__s));
	adrp	x0, lC1@PAGE	; tmp132,
	add	x0, x0, lC1@PAGEOFF;	;, tmp132,
	bl	__ZSt20__throw_length_errorPKc		;
LFE9097:
	.align	2
	.p2align 5,,15
__Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy:
LFB7663:
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	ldrh	w2, [x0, 36]	; tmp106, frame_ptr_4(D)->_Coro_resume_index
	orr	w2, w2, 1	; _2, tmp106,
	strh	w2, [x0, 36]	; _2, frame_ptr_4(D)->_Coro_resume_index
; b4_generators.cpp:55: }
	cmp	w2, 7	; _2,
	bhi	L114		;,
L108:
L109:
L110:
L111:
; b4_generators.cpp:55: }
	ldrb	w1, [x0, 38]	; frame_ptr_4(D)->_Coro_frame_needs_free, frame_ptr_4(D)->_Coro_frame_needs_free
	tbnz	x1, 0, L116	; frame_ptr_4(D)->_Coro_frame_needs_free,,
L113:
	ret	
	.p2align 2,,3
L116:
; b4_generators.cpp:55: }
	mov	x1, 56	;,
	b	__ZdlPvm		;
L107:
L114:
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	brk #1000
LFE7663:
	.cstring
	.align	3
lC2:
	.ascii "fx: unhandled effect -- no matching handler installed\0"
	.text
	.align	2
	.p2align 5,,15
__ZZ4mainENKUlvE3_clEv:
LFB7770:
	stp	x29, x30, [sp, -176]!	;,,,
LCFI21:
	mov	x29, sp	;,
LCFI22:
	stp	x21, x22, [sp, 32]	;,,
LCFI23:
	mov	x22, x0	; __closure, __closure
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 20000	;,
; b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	stp	x19, x20, [sp, 16]	;,,
	str	x23, [sp, 48]	;,
LCFI24:
; b4_generators.cpp:143:       std::vector<int> v;
	stp	xzr, xzr, [x29, 80]	; v
	str	xzr, [x29, 96]	;, v
LEHB1:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE1:
	mov	x1, x0	; tmp236,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x2, 20000	;,
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x2, x1, x2	; _64, tmp153,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:96: 	  this->_M_impl._M_start = __tmp;
	stp	x1, x1, [x29, 80]	; tmp153, tmp153,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x2, [x29, 96]	; _64, v.D.174736._M_impl.D.174027._M_end_of_storage
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x21, [x0]	; mr, *_72
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x21, L118	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x1, [x21]	; mr_73->_vptr.memory_resource, mr_73->_vptr.memory_resource
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp158,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp158,
	ldr	x3, [x1, 16]	; _76, MEM[(int (*) () *)_75 + 16B]
	cmp	x3, x0	; _76, tmp158
	bne	L119		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x21, 16]	; _88, MEM[(size_t &)mr_73 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 215	; _88,
	bls	L122		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x3, [x21, 8]	; __intptr, MEM[(void * &)mr_73 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x2, x0, #216	; _97, _88,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x1, x3, 15	; _93, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x1, x1, -16	; __aligned, _93,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x4, x1, x3	; __diff_96, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x4, x2	; __diff_96, _97
	bhi	L122		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x0, x0, x3	; _46, _88, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x20, x1	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x0, x0, x1	; _99, _46, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x1, x0, [x21, 8]	; __p, _99,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x1, L122	; __p,
L123:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x0, x0, #216	; _108, _99,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x20, 216	; _106, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x0, [x21, 8]	; _106, _108,
L124:
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	adrp	x0, __Z8fx_rangeP19_ZL8fx_rangei.Frame.actor@PAGE	; tmp167,
	adrp	x2, __Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy@PAGE	; tmp169,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp176
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	add	x0, x0, __Z8fx_rangeP19_ZL8fx_rangei.Frame.actor@PAGEOFF;	; tmp166, tmp167,
	add	x2, x2, __Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy@PAGEOFF;	; tmp168, tmp169,
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x19, x20, 16	; tmp234, __p,
	strb	wzr, [x20, 16]	;, MEM[(struct PromiseAbortBase *)raw_79 + 16B].aborted
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	add	x23, x29, 112	; tmp185,,
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	stp	x0, x2, [x20]	; tmp166, tmp168,* __p
	mov	x2, 5000	; tmp181,
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	mov	x0, x20	;, __p
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	movk	x2, 0x1, lsl 48	; tmp181,,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x21, [x20, 208]	; mr, MEM[(struct memory_resource * *)raw_79 + 208B]
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x19, 8]	;, MEM[(struct PromiseAbortBase *)raw_79 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_79 + 32B].buf_
	stp	xzr, xzr, [x20, 48]	; MEM[(struct SmallAny *)raw_79 + 32B].buf_
	stp	xzr, xzr, [x20, 64]	; MEM[(struct SmallAny *)raw_79 + 32B].buf_
	str	q31, [x20, 80]	; tmp176, MEM <vector(2) long unsigned int> [(void *)raw_79 + 80B]
	str	xzr, [x20, 96]	;, MEM[(struct SmallAny *)raw_79 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	stp	q31, q31, [x20, 112]	; tmp176, tmp176,
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	str	x2, [x20, 152]	; tmp181, MEM <unsigned long> [(void *)raw_79 + 152B]
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	bl	__Z8fx_rangeP19_ZL8fx_rangei.Frame.actor		;
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	adrp	x1, __ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_@GOTPAGE	; tmp186,
	ldr	x1, [x1, __ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_@GOTPAGEOFF]	; tmp186,
; b4_generators.cpp:145:       fx_range(N).run(CollectInts{.out = v});
	add	x0, x29, 80	; tmp182,,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x2, x29, 64	; tmp184,,
; ../../effects.hpp:247: struct HandlerNode {
	str	xzr, [x29, 152]	;, MEM[(struct HandlerNode *)&guard].on_return_any_fn
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	adrp	x3, __ZN2fx6detail12effect_tag_vI4EmitIiEEE@GOTPAGE	; tmp183,
	ldr	x3, [x3, __ZN2fx6detail12effect_tag_vI4EmitIiEEE@GOTPAGEOFF]	; tmp183,
; b4_generators.cpp:145:       fx_range(N).run(CollectInts{.out = v});
	str	x0, [x29, 64]	; tmp182, D.176203.out
; ../../effects.hpp:752:     saved = detail::stack_top;
	adrp	x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	;,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	stp	x2, x1, [x29, 128]	; tmp184, tmp186,
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x3, x23, [x29, 112]	; tmp183, tmp185,
; ../../effects.hpp:752:     saved = detail::stack_top;
	bl	___emutls_get_address		;
	mov	x21, x0	; _110,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x2, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_79], MEM[(void (*<T11f>) (void *) *)raw_79]
	mov	x0, x20	;, __p
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x21]	; stack_top.77_111, *_110
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x23, [x21]	; tmp185, *_110
; ../../effects.hpp:753:     node.prev = saved;
	str	x1, [x29, 144]	; stack_top.77_111, guard.node.prev
; ../../effects.hpp:752:     saved = detail::stack_top;
	str	x1, [x29, 160]	; stack_top.77_111, guard.saved
LEHB2:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)raw_79]
	.p2align 5,,15
L125:
; ../../effects.hpp:1070:     while (!h.done()) {
	ldr	x1, [x20]	; MEM[(void * *)raw_79], MEM[(void * *)raw_79]
	cbz	x1, L167	; MEM[(void * *)raw_79],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x21]	; n, *_110
; ../../effects.hpp:1072:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x2, [x19, 96]	; _119, MEM[(struct promise_type &)raw_79 + 16].D.173410.D.173402.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L129	; n,
	b	L126		;
	.p2align 2,,3
L127:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_19->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L126	; n,
L129:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_19->effect_tag, n_19->effect_tag
	cmp	x2, x1	; _119, n_19->effect_tag
	bne	L127		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_19->dispatch, n_19->dispatch
	ldr	x1, [x19, 104]	;, MEM[(struct promise_type &)raw_79 + 16].D.173410.D.173402.payload_ptr
	blr	x2		; n_19->dispatch
LEHE2:
; ../../effects.hpp:1073:       if (h.promise().aborted)
	ldrb	w1, [x19]	; MEM[(struct promise_type &)raw_79 + 16].D.173410.D.173402.aborted, MEM[(struct promise_type &)raw_79 + 16].D.173410.D.173402.aborted
	tbz	x1, 0, L125	; MEM[(struct promise_type &)raw_79 + 16].D.173410.D.173402.aborted,,
L132:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 160]	; _77, guard.saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_79 + 8B], MEM[(void (*<T11f>) (void *) *)raw_79 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x21]	; _77, *_110
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_79 + 8B]
; b4_generators.cpp:146:       sink += v.back();
	ldr	x1, [x22]	; _1, __closure_15(D)->__sink
; b4_generators.cpp:146:       sink += v.back();
	ldp	x0, x2, [x29, 80]	; _13, MEM[(int * const &)&v + 8],
; b4_generators.cpp:146:       sink += v.back();
	ldrsw	x3, [x2, -4]	; _3, MEM[(value_type &)_23 + 18446744073709551612]
	ldr	x2, [x1]	; *_1, *_1
	add	x2, x2, x3	; _4, *_1, _3
	str	x2, [x1]	; _4, *_1
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x0, L117	; _13,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x29, 96]	; MEM[(struct _Vector_base *)&v]._M_impl.D.174027._M_end_of_storage, MEM[(struct _Vector_base *)&v]._M_impl.D.174027._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	;, MEM[(struct _Vector_base *)&v]._M_impl.D.174027._M_end_of_storage, _13
	bl	__ZdlPvm		;
L117:
; b4_generators.cpp:147:     }));
	ldr	x23, [sp, 48]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 176	;,,,
LCFI25:
	ret	
L122:
LCFI26:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x21	;, mr
LEHB3:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
LEHE3:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x20, x0, [x21, 8]	; __p, _99,
	b	L123		;
L167:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x20, 128]	; _124, MEM[(const struct exception_ptr *)raw_79 + 128B]._M_exception_object
; ../../effects.hpp:1076:     if (h.promise().exception)
	cbz	x0, L132	; _124,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x0, [x29, 72]	; _124, MEM[(struct exception_ptr *)&D.224222]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 72	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:1077:       std::rethrow_exception(h.promise().exception);
	add	x0, x29, 72	;,,
LEHB4:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE4:
	.p2align 2,,3
L118:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 216	;,
LEHB5:
	bl	__Znwm		;
	mov	x20, x0	; __p, __p
	b	L124		;
L119:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x21	;, mr
	blr	x3		; _76
LEHE5:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x20, x0	; __p, __p
	b	L124		;
L144:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x19, x0	; tmp202, tmp244
L131:
	ldr	x0, [x29, 160]	; guard.saved, guard.saved
	str	x0, [x21]	; guard.saved, *_110
; ../../effects.hpp:622:     if (h)
	cbz	x20, L141	; __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_79 + 8B], MEM[(void (*<T11f>) (void *) *)raw_79 + 8B]
	mov	x0, x20	;, __p
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_79 + 8B]
L141:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	ldr	x0, [x29, 80]	; _28, MEM[(struct _Vector_base *)&v]._M_impl.D.174027._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x0, L142	; _28,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x29, 96]	; MEM[(struct _Vector_base *)&v]._M_impl.D.174027._M_end_of_storage, MEM[(struct _Vector_base *)&v]._M_impl.D.174027._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	;, MEM[(struct _Vector_base *)&v]._M_impl.D.174027._M_end_of_storage, _28
	bl	__ZdlPvm		;
L142:
	mov	x0, x19	;, tmp230
LEHB6:
	bl	__Unwind_Resume		;
LEHE6:
L145:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 72]	; D.224222._M_exception_object, D.224222._M_exception_object
	mov	x19, x0	; tmp243,
	cbz	x1, L131	; D.224222._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 72	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L131		;
L126:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC2@PAGE	; tmp199,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _132,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC2@PAGEOFF;	;, tmp199,
LEHB7:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE7:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _132
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB8:
	bl	___cxa_throw		;
LEHE8:
L143:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	mov	x19, x0	; tmp230, tmp245
	b	L141		;
L146:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x19, x0	; tmp242,
	mov	x0, x22	;, _132
	bl	___cxa_free_exception		;
	b	L131		;
LFE7770:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
LLSDA7770:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7770-LLSDACSB7770
LLSDACSB7770:
	.uleb128 LEHB1-LFB7770
	.uleb128 LEHE1-LEHB1
	.uleb128 L143-LFB7770
	.uleb128 0
	.uleb128 LEHB2-LFB7770
	.uleb128 LEHE2-LEHB2
	.uleb128 L144-LFB7770
	.uleb128 0
	.uleb128 LEHB3-LFB7770
	.uleb128 LEHE3-LEHB3
	.uleb128 L143-LFB7770
	.uleb128 0
	.uleb128 LEHB4-LFB7770
	.uleb128 LEHE4-LEHB4
	.uleb128 L145-LFB7770
	.uleb128 0
	.uleb128 LEHB5-LFB7770
	.uleb128 LEHE5-LEHB5
	.uleb128 L143-LFB7770
	.uleb128 0
	.uleb128 LEHB6-LFB7770
	.uleb128 LEHE6-LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB7-LFB7770
	.uleb128 LEHE7-LEHB7
	.uleb128 L146-LFB7770
	.uleb128 0
	.uleb128 LEHB8-LFB7770
	.uleb128 LEHE8-LEHB8
	.uleb128 L144-LFB7770
	.uleb128 0
LLSDACSE7770:
	.text
	.align	2
	.p2align 5,,15
__ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi:
LFB8807:
	ldr	x3, [x0]	; _7, MEM[(struct vector & *)__functor_2(D)]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/invoke.h:63:     { return std::forward<_Fn>(__f)(std::forward<_Args>(__args)...); }
	ldr	w4, [x1]	;, *__args#0_4(D)
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	ldp	x2, x1, [x3, 8]	; _9, _10,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x2, x1	; _9, _10
	beq	L169		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w4, [x2], 4	; _3, *_9
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1423: 	    ++this->_M_impl._M_finish;
	str	x2, [x3, 8]	; _12, _7->D.174736._M_impl.D.174027._M_finish
	ret	
	.p2align 2,,3
L169:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:290:       _M_invoke(const _Any_data& __functor, _ArgTypes&&... __args)
	stp	x29, x30, [sp, -80]!	;,,,
LCFI27:
	mov	x29, sp	;,
LCFI28:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	mov	x7, 2305843009213693951	; tmp126,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	ldr	x6, [x3]	; _14, MEM[(const struct vector *)_7].D.174736._M_impl.D.174027._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:290:       _M_invoke(const _Any_data& __functor, _ArgTypes&&... __args)
	str	x19, [sp, 16]	;,
LCFI29:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x2, x2, x6	; _15, _9, _14
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	asr	x5, x2, 2	; __dif_16, _15,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	cmp	x5, x7	; __dif_16, tmp126
	beq	L183		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:263:       if (__a < __b)
	cmp	x5, 0	; __dif_16,
	csinc	x0, x5, xzr, ne	; _18, __dif_16,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2201: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x0, x0, x5	; __len_19, _18, __dif_16
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2202: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x0, x7	; __len_19, tmp126
	csel	x0, x0, x7, ls	; __len_19, __len_19, tmp126,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x0, x0, 2	; _36, __len_19,
	mov	x19, x0	; _36, _36
	stp	x2, x6, [x29, 40]	; _15, _14,
	stp	x1, x3, [x29, 56]	; _10, _7,
	str	w4, [x29, 72]	; _3, %sfp
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	ldr	w4, [x29, 72]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x5, x0	; _37, _37
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	ldp	x2, x6, [x29, 40]	; _15, _14,
	ldp	x1, x3, [x29, 56]	; _10, _7,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w4, [x0, x2]	; _3, *_24
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	cbz	x2, L172	; _15,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1337: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	x1, x6	;, _14
	stp	x0, x3, [x29, 48]	; _37, _7,
	stp	x2, x6, [x29, 64]	; _15, _14,
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	ldp	x5, x3, [x29, 48]	; _37, _7,
	ldp	x2, x6, [x29, 64]	; _15, _14,
	ldr	x1, [x3, 16]	; _10, _7->D.174736._M_impl.D.174027._M_end_of_storage
L172:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:601: 	    ++__new_finish;
	add	x2, x2, 4	; _26, _15,
	add	x2, x5, x2	; __new_finish, _37, _26
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1882: 	  if (_M_storage)
	cbz	x6, L173	; _14,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x6	;, _10, _14
	mov	x0, x6	;, _14
	stp	x5, x2, [x29, 56]	; _37, __new_finish,
	str	x3, [x29, 72]	; _7, %sfp
	bl	__ZdlPvm		;
	ldr	x3, [x29, 72]	; _7, %sfp
	ldp	x5, x2, [x29, 56]	; _37, __new_finish,
L173:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	x0, x5, x19	; _32, _37, _36
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	stp	x5, x2, [x3]	; _37, __new_finish,* _7
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:294:       }
	ldr	x19, [sp, 16]	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	str	x0, [x3, 16]	; _32, _7->D.174736._M_impl.D.174027._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:294:       }
	ldp	x29, x30, [sp], 80	;,,,
LCFI30:
	ret	
L183:
LCFI31:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2199: 	  __throw_length_error(__N(__s));
	adrp	x0, lC1@PAGE	; tmp128,
	add	x0, x0, lC1@PAGEOFF;	;, tmp128,
	bl	__ZSt20__throw_length_errorPKc		;
LFE8807:
	.align	2
	.p2align 5,,15
__Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy:
LFB7691:
	mov	x1, x0	; frame_ptr, frame_ptr
	ldrh	w0, [x0, 156]	; tmp114, frame_ptr_4(D)->_Coro_resume_index
	orr	w0, w0, 1	; _2, tmp114,
	strh	w0, [x1, 156]	; _2, frame_ptr_4(D)->_Coro_resume_index
; b4_generators.cpp:63: }
	cmp	w0, 7	; _2,
	bhi	L192		;,
L186:
L187:
L188:
L189:
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI32:
	mov	x29, sp	;,
LCFI33:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp117, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object
	cbz	x2, L191	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L191:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp122, frame_ptr,
	ldr	x2, [x0, 48]	; _20, MEM[(struct SmallAny *)frame_ptr_4(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L193	; _20,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _20
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L193:
; b4_generators.cpp:63: }
	ldrb	w0, [x1, 158]	; frame_ptr_4(D)->_Coro_frame_needs_free, frame_ptr_4(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L204	; frame_ptr_4(D)->_Coro_frame_needs_free,,
L194:
L184:
; b4_generators.cpp:63: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI34:
	ret	
	.p2align 2,,3
L204:
LCFI35:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 208]	; mr, MEM[(struct memory_resource * *)frame_ptr_4(D) + 208B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L195	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x3, [x0]	; mr_24->_vptr.memory_resource, mr_24->_vptr.memory_resource
	adrp	x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp127,
	ldr	x2, [x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp127,
	ldr	x4, [x3, 24]	; _26, MEM[(int (*) () *)_25 + 24B]
	cmp	x4, x2	; _26, tmp127
	beq	L184		;,
	mov	x3, 16	;,
	mov	x2, 216	;,
	blr	x4		; _26
	b	L184		;
	.p2align 2,,3
L195:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b4_generators.cpp:63: }
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 216	;,
; b4_generators.cpp:63: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI36:
LEHB9:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE9:
L185:
L192:
; b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	brk #1000
LFE7691:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
LLSDA7691:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7691-LLSDACSB7691
LLSDACSB7691:
	.uleb128 LEHB9-LFB7691
	.uleb128 LEHE9-LEHB9
	.uleb128 0
	.uleb128 0
LLSDACSE7691:
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
	beq	L212		;,
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
L212:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:742:       basic_string(basic_string&& __str) noexcept
	stp	x29, x30, [sp, -48]!	;,,,
LCFI37:
	mov	x29, sp	;,
LCFI38:
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
LCFI39:
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
	bls	L214		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	mov	x9, 22859	; tmp208,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	w7, 34463	; tmp209,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4534:   {
	stp	x29, x30, [sp, -272]!	;,,,
LCFI40:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x9, 0x3886, lsl 16	; tmp208,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4534:   {
	mov	x29, sp	;,
LCFI41:
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
	b	L220		;
	.p2align 2,,3
L215:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	cmp	w1, 999	; __value,
	bls	L234		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	cmp	w1, w6	; __value, tmp207
	bls	L235		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	uxtw	x3, w1	; _21, __value
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:74: 	  __n += 4;
	add	w5, w2, 4	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	umulh	x3, x3, x9	; tmp144, _21, tmp208
	lsr	x3, x3, 11	; _22, tmp144,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	w1, w7	; __value, tmp209
	bls	L219		;,
	mov	w2, w5	; __pos, __n
	mov	w1, w3	; __value, _22
L220:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	cmp	w1, 99	; __value,
	bhi	L215		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w5, w2, 1	; __n, __pos,
L216:
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
	bls	L222		;,
	str	x19, [x29, 16]	;,
LCFI42:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x6, 29	; _4,
	bls	L227		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x6, 1	; _63, _4,
	mov	x19, x6	; __res, _4
L223:
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
LCFI43:
	str	x0, [x8]	; _11, MEM[(struct basic_string *)__str_12(D)]._M_dataplus._M_p
	ldr	w10, [x29, 52]	;, %sfp
L222:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:89:       constexpr char __digits[201] =
	adrp	x1, lC3@PAGE	; tmp157,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4540:       __p[0] = '-';
	mov	w3, 45	; tmp155,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4541:       __detail::__to_chars_10_impl(__p + (int)__neg, __len, __uval);
	add	x7, x0, w10, uxtw	; _35, _11, __neg
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:89:       constexpr char __digits[201] =
	add	x1, x1, lC3@PAGEOFF;	; tmp156, tmp157,
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
	bls	L224		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	mov	w13, 34079	; tmp175,
	mov	w12, 100	; tmp178,
	movk	w13, 0x51eb, lsl 16	; tmp175,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:96:       while (__val >= 100)
	mov	w11, 9999	; tmp194,
	.p2align 5,,15
L225:
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
	bhi	L225		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:104:       if (__val >= 10)
	cmp	w9, 999	; __val,
	bhi	L224		;,
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
LCFI44:
	ret	
	.p2align 2,,3
L224:
LCFI45:
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
LCFI46:
	ret	
	.p2align 2,,3
L234:
LCFI47:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	add	w5, w2, 2	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w2, w2, 1	; __pos, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	b	L216		;
	.p2align 2,,3
L235:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	add	w5, w2, 3	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	add	w2, w2, 2	; __pos, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	b	L216		;
	.p2align 2,,3
L219:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	add	w2, w2, 3	; __pos, __pos,
	b	L216		;
	.p2align 2,,3
L227:
LCFI48:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	mov	x19, 30	; __res,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 31	; _63,
	b	L223		;
L214:
LCFI49:
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
lC3:
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
	bls	L237		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	mov	x6, 22859	; tmp190,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	x5, 34463	; tmp191,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4588:   {
	stp	x29, x30, [sp, -272]!	;,,,
LCFI50:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x6, 0x3886, lsl 16	; tmp190,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4588:   {
	mov	x29, sp	;,
LCFI51:
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
	b	L242		;
	.p2align 2,,3
L238:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	cmp	x1, 999	; __value,
	bls	L258		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	cmp	x1, x3	; __value, tmp189
	bls	L259		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	umulh	x0, x1, x6	; tmp133, __value, tmp190
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:74: 	  __n += 4;
	add	w2, w2, 4	; __n, __n,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	x1, x5	; __value, tmp191
	bls	L239		;,
	lsr	x1, x0, 11	; __value, tmp133,
L242:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	cmp	x1, 99	; __value,
	bhi	L238		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w2, w2, 1	; __n, __n,
L239:
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
	bls	L244		;,
L260:
	str	x19, [x29, 16]	;,
LCFI52:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x12, 29	; _1,
	bls	L249		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x12, 1	; _31, _1,
	mov	x19, x12	; __res, _1
L245:
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
LCFI53:
	str	x0, [x8]	; _4, MEM[(struct basic_string *)__str_5(D)]._M_dataplus._M_p
	ldr	w2, [x29, 52]	;, %sfp
L244:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:89:       constexpr char __digits[201] =
	adrp	x1, lC3@PAGE	; tmp138,
	add	x7, x29, 64	; tmp187,,
	add	x1, x1, lC3@PAGEOFF;	; tmp137, tmp138,
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
	bls	L246		;,
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
L247:
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
	bhi	L247		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:104:       if (__val >= 10)
	cmp	x6, 999	; __val,
	bhi	L246		;,
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
LCFI54:
	ret	
	.p2align 2,,3
L246:
LCFI55:
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
LCFI56:
	ret	
	.p2align 2,,3
L258:
LCFI57:
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
	bhi	L260		;,
	b	L244		;
	.p2align 2,,3
L259:
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
	bhi	L260		;,
	b	L244		;
	.p2align 2,,3
L249:
LCFI58:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	mov	x19, 30	; __res,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 31	; _31,
	b	L245		;
L237:
LCFI59:
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
lC4:
	.ascii "  \0"
	.align	3
lC5:
	.ascii " \0"
	.align	3
lC6:
	.ascii " ns/iter\12\0"
	.text
	.align	2
	.p2align 5,,15
	.globl __Z12print_resultRK11BenchResult
	.weak_definition __Z12print_resultRK11BenchResult
__Z12print_resultRK11BenchResult:
LFB6914:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI60:
	mov	x29, sp	;,
LCFI61:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC4@PAGE	; tmp135,
	mov	x2, 2	;,
	add	x1, x1, lC4@PAGEOFF;	;, tmp135,
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	stp	x19, x20, [sp, 16]	;,,
LCFI62:
	mov	x20, x0	; r, r
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ldr	d31, [x20, 32]	; r_2(D)->iters, r_2(D)->iters
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	str	d15, [sp, 32]	;,
LCFI63:
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
	adrp	x1, lC5@PAGE	; tmp152,
	mov	x2, 1	;,
	add	x1, x1, lC5@PAGEOFF;	;, tmp152,
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
	adrp	x1, lC6@PAGE	; tmp164,
; bench.hpp:52: }
	ldr	d15, [sp, 32]	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	x2, 9	;,
; bench.hpp:52: }
	ldp	x19, x20, [sp, 16]	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	add	x1, x1, lC6@PAGEOFF;	;, tmp164,
; bench.hpp:52: }
	ldp	x29, x30, [sp], 48	;,,,
LCFI64:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	b	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LFE6914:
	.cstring
	.align	3
lC7:
	.ascii "basic_string::append\0"
	.align	3
lC8:
	.ascii "basic_string::_M_create\0"
	.text
	.align	2
	.p2align 5,,15
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc:
LFB8784:
	stp	x29, x30, [sp, -96]!	;,,,
LCFI65:
	mov	x29, sp	;,
LCFI66:
	stp	x19, x20, [sp, 16]	;,,
LCFI67:
	mov	x19, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x0, x1	;, __s
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1580:       append(const _CharT* __s)
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI68:
	mov	x23, x1	; __s, __s
	str	x25, [sp, 64]	;,
LCFI69:
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
	bcc	L306		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x22, x19	; _13, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:447:       const size_type __len = __n + this->size();
	add	x21, x2, x3	; __len, __sz, _8
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x20, [x22], 16	; _12, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	beq	L307		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x0, [x19, 16]	; __sz, MEM[(const struct basic_string *)this_4(D)].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x21, x0	; __len, __sz
	bhi	L270		;,
L266:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:451: 	  if (__n)
	cbz	x3, L271	; _8,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:452: 	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
	add	x0, x20, x2	; _16, _12, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	beq	L308		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x3	;, _8
	mov	x1, x23	;, __s
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x20, [x19]	; _12, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
L271:
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
LCFI70:
	ret	
	.p2align 2,,3
L270:
LCFI71:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmp	x21, x1	; __len, tmp130
	bhi	L267		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x0, x0, 1	; __new_capacity, __sz,
	stp	x3, x2, [x29, 80]	; _8, __sz,
	mov	x25, x0	; __new_capacity, __new_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x21, x0	; __len, __new_capacity
	bcs	L309		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	cmp	x0, x1	; __new_capacity, tmp130
	bls	L310		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 9223372036854775807	;,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	mov	x1, 9223372036854775806	; tmp130,
	cbnz	x2, L297	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	beq	L311		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x25, x1	; __new_capacity, tmp130
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	mov	x0, x24	; _15, _32
	.p2align 5,,15
L280:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x3	;, _8
	mov	x1, x23	;, __s
	bl	_memcpy		;
L289:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	beq	L305		;,
L288:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 16]	; this_4(D)->D.56371._M_allocated_capacity, this_4(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x20	;, _12
	add	x1, x1, 1	;, this_4(D)->D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L305:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	x20, x24	; _12, _32
L283:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x24, [x19]	; _32, this_4(D)->_M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x25, [x19, 16]	; __new_capacity, this_4(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L271		;
	.p2align 2,,3
L309:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	add	x0, x21, 1	;, __len,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x2, L276	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x25, x21	; __new_capacity, __len
L275:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x2, 1	; __sz,
	beq	L312		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, _12
	mov	x0, x24	;, _32
	stp	x2, x3, [x29, 80]	; __sz, _8,
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	ldr	x3, [x29, 88]	; _8, %sfp
	cbz	x3, L289	; _8,
	ldr	x2, [x29, 80]	; __sz, %sfp
	b	L279		;
	.p2align 2,,3
L307:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x21, 15	; __len,
	bls	L266		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmp	x21, x1	; __len, tmp130
	bhi	L267		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x21, 29	; __len,
	bls	L268		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	add	x0, x21, 1	;, __len,
	stp	x3, x2, [x29, 80]	; _8, __sz,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x2, L276	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x2, 1	; __sz,
	beq	L313		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, _12
	stp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x25, x21	; __new_capacity, __len
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	bl	_memcpy		;
	ldp	x3, x2, [x29, 80]	; _8, __sz,
	.p2align 5,,15
L279:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x0, x24, x2	; _15, _32, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	bne	L280		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
	strb	w0, [x24, x2]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_35]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L289		;
	.p2align 2,,3
L308:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x23]	; _17, MEM[(const char_type &)__s_2(D)]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x20, x2]	; _17, MEM[(char_type &)_16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x20, [x19]	; _12, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L271		;
	.p2align 2,,3
L268:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 31	;,
	stp	x3, x2, [x29, 80]	; _8, __sz,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbnz	x2, L291	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	beq	L314		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x25, 30	; __new_capacity,
	b	L280		;
	.p2align 2,,3
L276:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x3	;, _8
	mov	x1, x23	;, __s
	mov	x0, x24	;, _32
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	beq	L296		;,
	mov	x25, x21	; __new_capacity, __len
	b	L288		;
	.p2align 2,,3
L310:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	add	x0, x0, 1	;, __new_capacity,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbnz	x2, L275	; __sz,
	b	L279		;
	.p2align 2,,3
L312:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x20]	; _31, MEM[(const char_type &)_12]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; _31, MEM[(char_type &)_42]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	cbz	x3, L289	; _8,
L285:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x0, x24, 1	; _15, _32,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	bne	L280		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
	strb	w0, [x24, 1]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_104]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	bne	L288		;,
	b	L305		;
	.p2align 2,,3
L297:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x25, x1	; __new_capacity, tmp130
	b	L275		;
	.p2align 2,,3
L291:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x25, 30	; __new_capacity,
	b	L275		;
L311:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x25, x1	; __new_capacity, tmp130
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_52]
	b	L288		;
L296:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	mov	x20, x24	; _12, _32
	mov	x25, x21	; __new_capacity, __len
	b	L283		;
L313:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x20]	; _123, MEM[(const char_type &)_12]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x25, x21	; __new_capacity, __len
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; _123, MEM[(char_type &)_23]
	b	L285		;
L314:
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x20, x24	; _12, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x25, 30	; __new_capacity,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_128]
	b	L283		;
L306:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC7@PAGE	; tmp132,
	add	x0, x0, lC7@PAGEOFF;	;, tmp132,
	bl	__ZSt20__throw_length_errorPKc		;
L267:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	adrp	x0, lC8@PAGE	; tmp141,
	add	x0, x0, lC8@PAGEOFF;	;, tmp141,
	bl	__ZSt20__throw_length_errorPKc		;
LFE8784:
	.cstring
	.align	3
lC9:
	.ascii "basic_string::_M_replace\0"
	.align	3
lC10:
	.ascii "b4: generators / collection  (N=\0"
	.align	3
lC11:
	.ascii ", reps=\0"
	.align	3
lC12:
	.ascii ")\0"
	.align	3
lC13:
	.ascii "\12=== \0"
	.align	3
lC14:
	.ascii " ===\12\0"
	.align	3
lC15:
	.ascii "  Each iteration generates N integers and collects them into a vector.\12\12\0"
	.align	3
lC16:
	.ascii "direct push_back loop\0"
	.align	3
lC17:
	.ascii "template callback (inlined)\0"
	.align	3
lC18:
	.ascii "std::function callback\0"
	.align	3
lC19:
	.ascii "raw coroutine generator (co_yield)\0"
	.align	3
lC20:
	.ascii "Emit<int> effect (fx)\0"
	.align	3
lC21:
	.ascii "\12Notes:\12\0"
	.align	3
lC22:
	.ascii "  raw generator \342\211\210 Emit<int>: both suspend/resume per value.\12\0"
	.align	3
lC23:
	.ascii "  Emit<int> adds handler-stack walk + resume per yield (zero extra alloc).\12\0"
	.align	3
lC24:
	.ascii "  The gap vs callback = coroutine overhead.\12\0"
	.align	3
lC25:
	.ascii "  Emit<int> advantage: producer and consumer are fully decoupled;\12\0"
	.align	3
lC26:
	.ascii "  handlers are swappable without changing the producer.\12\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align	2
	.p2align 5,,15
	.globl _main
_main:
LFB7693:
	stp	x29, x30, [sp, -416]!	;,,,
LCFI72:
	mov	x29, sp	;,
LCFI73:
; b4_generators.cpp:78:   section("b4: generators / collection  (N=" + std::to_string(N) +
	mov	w0, 5000	;,
; b4_generators.cpp:74: int main() {
	stp	x25, x26, [sp, 64]	;,,
LCFI74:
; b4_generators.cpp:78:   section("b4: generators / collection  (N=" + std::to_string(N) +
	add	x25, x29, 208	; tmp1113,,
	mov	x8, x25	;, tmp1113
; b4_generators.cpp:74: int main() {
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
	stp	x27, x28, [sp, 80]	;,,
	stp	d11, d12, [sp, 96]	;,,
	stp	d13, d14, [sp, 112]	;,,
	str	d15, [sp, 128]	;,
LCFI75:
; b4_generators.cpp:78:   section("b4: generators / collection  (N=" + std::to_string(N) +
	bl	__ZNSt7__cxx119to_stringEi		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x20, [x29, 216]	; __sz, D.174743._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 33	; tmp508,
	movk	x0, 0x8000, lsl 48	; tmp508,,
	add	x0, x20, x0	; _384, __sz, tmp508
	cmp	x0, 31	; _384,
	bls	L702		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x19, [x29, 208]	; _348, D.174743._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x21, x29, 224	; tmp1114,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:549:       const size_type __new_size = __old_size + __len2 - __len1;
	add	x24, x20, 32	; _346, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x19, x21	; _348, tmp1114
	beq	L317		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x22, [x29, 224]	; __sz, D.174743.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:551:       if (__new_size <= this->capacity())
	cmp	x24, x22	; _346, __sz
	bhi	L318		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_function.h:454: 	return (__UINTPTR_TYPE__)__x < (__UINTPTR_TYPE__)__y;
	adrp	x22, lC10@PAGE	; tmp1127,
	add	x3, x22, lC10@PAGEOFF;	; __x.23_355, tmp1127,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x19, x3	; _348, __x.23_355
	bls	L703		;,
L319:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	cbnz	x20, L321	; __sz,
L322:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x22, x22, lC10@PAGEOFF;	; tmp521, tmp1127,
	ldp	q31, q30, [x22]	; MEM <char[1:32]> [(void *)"b4: generators / collection  (N="], MEM <char[1:32]> [(void *)"b4: generators / collection  (N="],
	stp	q31, q30, [x19]	; MEM <char[1:32]> [(void *)"b4: generators / collection  (N="], MEM <char[1:32]> [(void *)"b4: generators / collection  (N="],* _348
L323:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x2, [x29, 208]	; D.174743._M_dataplus._M_p, D.174743._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	mov	x1, x25	;, tmp1113
	add	x0, x29, 240	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x24, [x29, 216]	; _346, D.174743._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x2, x24]	;, MEM[(char_type &)_367]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	adrp	x1, lC11@PAGE	; tmp549,
	add	x0, x29, 240	;,,
	add	x1, x1, lC11@PAGEOFF;	;, tmp549,
LEHB10:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc		;
LEHE10:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	add	x22, x29, 272	; tmp1115,,
	mov	x1, x0	;, _89
	mov	x0, x22	;, tmp1115
; b4_generators.cpp:79:           ", reps=" + std::to_string(REPS) + ")");
	add	x24, x29, 304	; tmp1117,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; b4_generators.cpp:79:           ", reps=" + std::to_string(REPS) + ")");
	mov	x0, 2000	;,
	mov	x8, x24	;, tmp1117
LEHB11:
	bl	__ZNSt7__cxx119to_stringEm		;
LEHE11:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x26, [x29, 312]	; __sz, MEM[(struct basic_string *)_1500]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x23, x29, 288	; tmp1116,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldp	x20, x19, [x29, 272]	; MEM[(struct basic_string *)_1487]._M_dataplus._M_p, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3951: 	  const auto __size = __lhs.size() + __rhs.size();
	add	x28, x19, x26	; __size, __sz, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x23	; MEM[(struct basic_string *)_1487]._M_dataplus._M_p, tmp1116
	beq	L704		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x0, [x29, 288]	; __sz, MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3952: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	cmp	x28, x0	; __size, __sz
	bls	L705		;,
L332:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x27, [x29, 304]	; MEM[(struct basic_string *)_1500]._M_dataplus._M_p, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x25, x29, 320	; tmp1119,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x3, x27	; _413, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x27, x25	; MEM[(struct basic_string *)_1500]._M_dataplus._M_p, tmp1119
	beq	L335		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3952: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	ldr	x1, [x29, 320]	; MEM[(struct basic_string *)_1500].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1500].D.56371._M_allocated_capacity
	cmp	x28, x1	; __size, MEM[(struct basic_string *)_1500].D.56371._M_allocated_capacity
	bls	L336		;,
L335:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x1, 9223372036854775806	; tmp559,
	sub	x1, x1, x19	; _421, tmp559, __sz
	cmp	x26, x1	; __sz, _421
	bhi	L525		;,
L526:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x28, x0	; __size, __sz
	bhi	L339		;,
L333:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:451: 	  if (__n)
	cbz	x26, L340	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:452: 	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
	add	x0, x20, x19	; _429, MEM[(struct basic_string *)_1487]._M_dataplus._M_p, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x26, 1	; __sz,
	beq	L706		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x26	;, __sz
	mov	x1, x3	;, _413
	bl	_memcpy		;
	ldr	x20, [x29, 272]	; MEM[(struct basic_string *)_1487]._M_dataplus._M_p, MEM[(struct basic_string *)_1487]._M_dataplus._M_p
L340:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x28, [x29, 280]	; __size, MEM[(struct basic_string *)_1487]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, x29, 352	; tmp1122,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x20, x28]	;, MEM[(char_type &)_432]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:282: 	    if (_M_string_length > _S_local_capacity)
	ldp	x0, x19, [x29, 272]	; _471, pretmp_1046,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [x29, 176]	; tmp1122, %sfp
	str	x1, [x29, 336]	; tmp1122, MEM[(struct _Alloc_hider *)_1156]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _471, tmp1116
	beq	L707		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x29, 288]	; MEM[(struct basic_string &)_1487].D.56371._M_allocated_capacity, MEM[(struct basic_string &)_1487].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x0, [x29, 336]	; _471, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x1, [x29, 352]	; MEM[(struct basic_string &)_1487].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
L351:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x23, xzr, [x29, 272]	; tmp1116,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x29, 288]	;, MEM[(char_type &)_1487 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x19, [x29, 344]	; pretmp_1046,
L352:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	adrp	x1, lC12@PAGE	; tmp643,
	add	x0, x29, 336	; tmp1120,,
	add	x1, x1, lC12@PAGEOFF;	;, tmp643,
	str	x0, [x29, 168]	; tmp1120, %sfp
LEHB12:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc		;
LEHE12:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	add	x20, x29, 368	; tmp1123,,
	mov	x1, x0	;, _77
	mov	x0, x20	;, tmp1123
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC13@PAGE	; tmp647,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 5	;,
	add	x1, x1, lC13@PAGEOFF;	;, tmp647,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldp	x19, x26, [x29, 368]	; _66, __sz,
LEHB13:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/string_view:769:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, x26	;, __sz
	mov	x1, x19	;, _66
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC14@PAGE	; tmp651,
	mov	x2, 5	;,
	add	x1, x1, lC14@PAGEOFF;	;, tmp651,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LEHE13:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 368]	; _111, MEM[(struct basic_string *)_1728]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 384	; tmp1125,,
	str	x1, [x29, 160]	; tmp1125, %sfp
	cmp	x0, x1	; _111, tmp1125
	beq	L365		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 384]	; MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L365:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 176]	; tmp1122, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 336]	; _107, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _107, tmp1122
	beq	L366		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 352]	; MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L366:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 304]	; _103, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	; _103, tmp1119
	beq	L367		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 320]	; MEM[(struct basic_string *)_1500].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1500].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1500].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L367:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 272]	; _99, MEM[(struct basic_string *)_1487]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _99, tmp1116
	beq	L368		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 288]	; MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L368:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 240]	; _95, D.174744._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 256	; tmp669,,
	cmp	x0, x1	; _95, tmp669
	beq	L369		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 256]	; D.174744.D.56371._M_allocated_capacity, D.174744.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.174744.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L369:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 208]	; _43, D.174743._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x21	; _43, tmp1114
	beq	L370		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 224]	; D.174743.D.56371._M_allocated_capacity, D.174743.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.174743.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L370:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC15@PAGE	; tmp677,
	mov	x2, 72	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC15@PAGEOFF;	;, tmp677,
; b4_generators.cpp:85:     long long sink = 0;
	mov	x25, 0	; sink,
LEHB14:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b4_generators.cpp:86:     print_result(bench("direct push_back loop", REPS, [&] {
	ldr	x0, [x29, 168]	;, %sfp
	adrp	x1, lC16@PAGE	; tmp680,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	mov	x26, 2305843009213693951	; tmp1184,
; b4_generators.cpp:86:     print_result(bench("direct push_back loop", REPS, [&] {
	add	x1, x1, lC16@PAGEOFF;	;, tmp680,
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	mov	w28, 5000	; tmp1185,
; b4_generators.cpp:86:     print_result(bench("direct push_back loop", REPS, [&] {
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE14:
	mov	x0, 3	; ivtmp_1107,
	str	x0, [x29, 200]	; ivtmp_1107, %sfp
	.p2align 5,,15
L378:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 20000	;,
LEHB15:
	bl	__Znwm		;
LEHE15:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x4, 20000	;,
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	mov	w27, 0	; i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x2, x0	; __new_finish, __new_finish
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x1, x0, x4	; v$D174736$_M_impl$D174027$_M_end_of_storage, __new_finish,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:96: 	  this->_M_impl._M_start = __tmp;
	mov	x21, x0	; v$D174736$_M_impl$D174027$_M_start, __new_finish
	b	L376		;
	.p2align 2,,3
L709:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w27, [x2], 4	; i, *v$8_60
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	add	w27, w27, 1	; i, i,
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	cmp	w27, w28	; i, tmp1185
	beq	L708		;,
L376:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x2, x1	; __new_finish, v$D174736$_M_impl$D174027$_M_end_of_storage
	bne	L709		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x23, x2, x21	; _591, __new_finish, v$D174736$_M_impl$D174027$_M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	asr	x0, x23, 2	; __dif_621, _591,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	cmp	x0, x26	; __dif_621, tmp1184
	beq	L710		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:263:       if (__a < __b)
	cmp	x0, 0	; __dif_621,
	csinc	x19, x0, xzr, ne	; _623, __dif_621,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2201: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x19, x19, x0	; __len_624, _623, __dif_621
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2202: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x19, x26	; __len_624, tmp1184
	csel	x19, x19, x26, ls	; __len_624, __len_624, tmp1184,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x19, x19, 2	; _641, __len_624,
	mov	x0, x19	;, _641
LEHB16:
	bl	__Znwm		;
LEHE16:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w27, [x0, x23]	; i, *_629
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x4, x0	; _642, _642
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	cbz	x23, L374	; _591,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1337: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	x2, x23	;, _591
	mov	x1, x21	;, v$D174736$_M_impl$D174027$_M_start
	str	x0, [x29, 192]	; _642, %sfp
	bl	_memcpy		;
	ldr	x4, [x29, 192]	; _642, %sfp
L374:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:601: 	    ++__new_finish;
	add	x2, x23, 4	; _631, _591,
	add	x2, x4, x2	; __new_finish, _642, _631
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1882: 	  if (_M_storage)
	cbz	x21, L375	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, x23	;, _591
	mov	x0, x21	;, v$D174736$_M_impl$D174027$_M_start
	stp	x4, x2, [x29, 184]	; _642, __new_finish,
	bl	__ZdlPvm		;
	ldp	x4, x2, [x29, 184]	; _642, __new_finish,
L375:
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	add	w27, w27, 1	; i, i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	x1, x4, x19	; v$D174736$_M_impl$D174027$_M_end_of_storage, _642, _641
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	mov	x21, x4	; v$D174736$_M_impl$D174027$_M_start, _642
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	cmp	w27, w28	; i, tmp1185
	bne	L376		;,
	.p2align 5,,15
L708:
; b4_generators.cpp:90:       sink += v.back();
	ldrsw	x0, [x2, -4]	; _583, MEM[(value_type &)v$8_59 + 18446744073709551612]
	add	x25, x25, x0	; sink, sink, _583
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x21, L377	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x21	;, v$D174736$_M_impl$D174027$_M_end_of_storage, v$D174736$_M_impl$D174027$_M_start
	mov	x0, x21	;, v$D174736$_M_impl$D174027$_M_start
	bl	__ZdlPvm		;
L377:
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	ldr	x0, [x29, 200]	; ivtmp_1107, %sfp
	subs	x0, x0, #1	; ivtmp_1107, ivtmp_1107,
	str	x0, [x29, 200]	; ivtmp_1107, %sfp
	bne	L378		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	mov	x26, 2305843009213693951	; tmp1177,
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	mov	w28, 5000	; tmp1178,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	str	x0, [x29, 152]	;, %sfp
	mov	x0, 2000	; ivtmp_1143,
	str	x0, [x29, 200]	; ivtmp_1143, %sfp
	.p2align 5,,15
L390:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 20000	;,
LEHB17:
	bl	__Znwm		;
LEHE17:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x3, 20000	;,
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	mov	w27, 0	; i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x2, x0	; __new_finish, __new_finish
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x1, x0, x3	; v$D174736$_M_impl$D174027$_M_end_of_storage, __new_finish,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:96: 	  this->_M_impl._M_start = __tmp;
	mov	x21, x0	; v$D174736$_M_impl$D174027$_M_start, __new_finish
	b	L388		;
	.p2align 2,,3
L712:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w27, [x2], 4	; i, *v$8_25
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	add	w27, w27, 1	; i, i,
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	cmp	w27, w28	; i, tmp1178
	beq	L711		;,
L388:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x2, x1	; __new_finish, v$D174736$_M_impl$D174027$_M_end_of_storage
	bne	L712		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x23, x2, x21	; _660, __new_finish, v$D174736$_M_impl$D174027$_M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	asr	x0, x23, 2	; __dif_690, _660,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	cmp	x0, x26	; __dif_690, tmp1177
	beq	L713		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:263:       if (__a < __b)
	cmp	x0, 0	; __dif_690,
	csinc	x19, x0, xzr, ne	; _692, __dif_690,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2201: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x19, x19, x0	; __len_693, _692, __dif_690
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2202: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x19, x26	; __len_693, tmp1177
	csel	x19, x19, x26, ls	; __len_693, __len_693, tmp1177,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x19, x19, 2	; _710, __len_693,
	mov	x0, x19	;, _710
LEHB18:
	bl	__Znwm		;
LEHE18:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w27, [x0, x23]	; i, *_698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x4, x0	; _711, _711
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	cbz	x23, L386	; _660,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1337: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	x2, x23	;, _660
	mov	x1, x21	;, v$D174736$_M_impl$D174027$_M_start
	str	x0, [x29, 192]	; _711, %sfp
	bl	_memcpy		;
	ldr	x4, [x29, 192]	; _711, %sfp
L386:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:601: 	    ++__new_finish;
	add	x2, x23, 4	; _700, _660,
	add	x2, x4, x2	; __new_finish, _711, _700
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1882: 	  if (_M_storage)
	cbz	x21, L387	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, x23	;, _660
	mov	x0, x21	;, v$D174736$_M_impl$D174027$_M_start
	stp	x4, x2, [x29, 184]	; _711, __new_finish,
	bl	__ZdlPvm		;
	ldp	x4, x2, [x29, 184]	; _711, __new_finish,
L387:
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	add	w27, w27, 1	; i, i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	x1, x4, x19	; v$D174736$_M_impl$D174027$_M_end_of_storage, _711, _710
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	mov	x21, x4	; v$D174736$_M_impl$D174027$_M_start, _711
; b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	cmp	w27, w28	; i, tmp1178
	bne	L388		;,
	.p2align 5,,15
L711:
; b4_generators.cpp:90:       sink += v.back();
	ldrsw	x0, [x2, -4]	; _652, MEM[(value_type &)v$8_1312 + 18446744073709551612]
	add	x25, x25, x0	; sink, sink, _652
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x21, L389	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x21	;, v$D174736$_M_impl$D174027$_M_end_of_storage, v$D174736$_M_impl$D174027$_M_start
	mov	x0, x21	;, v$D174736$_M_impl$D174027$_M_start
	bl	__ZdlPvm		;
L389:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	ldr	x0, [x29, 200]	; ivtmp_1143, %sfp
	subs	x0, x0, #1	; ivtmp_1143, ivtmp_1143,
	str	x0, [x29, 200]	; ivtmp_1143, %sfp
	bne	L390		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 152]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 168]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _563, end, start
; bench.hpp:44: }
	mov	x0, x20	;, tmp1123
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d15, x2	;, _563
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 2000	; tmp737,
; b4_generators.cpp:86:     print_result(bench("direct push_back loop", REPS, [&] {
	mov	x0, x20	;, tmp1123
; bench.hpp:44: }
	str	d15, [x29, 408]	;, MEM[(struct BenchResult *)_1728].total_ns
	str	x1, [x29, 400]	; tmp737, MEM[(struct BenchResult *)_1728].iters
LEHB19:
; b4_generators.cpp:86:     print_result(bench("direct push_back loop", REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE19:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 160]	; tmp1125, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 368]	; _119, MEM[(const struct basic_string *)_1728]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _119, tmp1125
	beq	L394		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 384]	; MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L394:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 176]	; tmp1122, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 336]	; _115, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _115, tmp1122
	beq	L395		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 352]	; MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L395:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b4_generators.cpp:105:     print_result(bench("template callback (inlined)", REPS, [&] {
	ldr	x0, [x29, 168]	;, %sfp
	adrp	x1, lC17@PAGE	; tmp748,
; b4_generators.cpp:97:     long long sink = 0;
	mov	x26, 0	; sink,
; b4_generators.cpp:105:     print_result(bench("template callback (inlined)", REPS, [&] {
	add	x1, x1, lC17@PAGEOFF;	;, tmp748,
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	mov	w25, 5000	; tmp1171,
LEHB20:
; b4_generators.cpp:105:     print_result(bench("template callback (inlined)", REPS, [&] {
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE20:
	mov	x0, 3	; ivtmp_1152,
	str	x0, [x29, 200]	; ivtmp_1152, %sfp
	.p2align 5,,15
L407:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 20000	;,
LEHB21:
	bl	__Znwm		;
LEHE21:
	mov	x19, x0	; __new_finish,
	mov	x0, 20000	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x23, x19, x0	; v$D174736$_M_impl$D174027$_M_end_of_storage, __new_finish,
LEHB22:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE22:
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	mov	w28, 0	; i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:96: 	  this->_M_impl._M_start = __tmp;
	mov	x21, x19	; v$D174736$_M_impl$D174027$_M_start, __new_finish
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	str	x0, [x29, 192]	;, %sfp
	b	L401		;
	.p2align 2,,3
L715:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w28, [x19], 4	; i, *v$D174736$_M_impl$D174027$_M_finish_1303
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	add	w28, w28, 1	; i, i,
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	cmp	w28, w25	; i, tmp1171
	beq	L714		;,
L401:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x19, x23	; __new_finish, v$D174736$_M_impl$D174027$_M_end_of_storage
	bne	L715		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x27, x23, x21	; _820, v$D174736$_M_impl$D174027$_M_end_of_storage, v$D174736$_M_impl$D174027$_M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	mov	x0, 2305843009213693951	; tmp1272,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	asr	x1, x27, 2	; __dif_807, _820,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	cmp	x1, x0	; __dif_807, tmp1272
	beq	L716		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:263:       if (__a < __b)
	cmp	x1, 0	; __dif_807,
	csinc	x0, x1, xzr, ne	; _809, __dif_807,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2201: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x0, x0, x1	; __len_810, _809, __dif_807
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2202: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	mov	x1, 2305843009213693951	; tmp1273,
	cmp	x0, x1	; __len_810, tmp1273
	csel	x0, x0, x1, ls	; __len_810, __len_810, tmp1274,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x0, x0, 2	; _827, __len_810,
	str	x0, [x29, 184]	; _827, %sfp
LEHB23:
	bl	__Znwm		;
LEHE23:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w28, [x0, x27]	; i, *_815
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x23, x0	; _828, _828
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	cbz	x27, L399	; _820,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1337: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	x2, x27	;, _820
	mov	x1, x21	;, v$D174736$_M_impl$D174027$_M_start
	bl	_memcpy		;
L399:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:601: 	    ++__new_finish;
	add	x19, x27, 4	; _817, _820,
	add	x19, x23, x19	; __new_finish, _828, _817
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1882: 	  if (_M_storage)
	cbz	x21, L400	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, x27	;, _820
	mov	x0, x21	;, v$D174736$_M_impl$D174027$_M_start
	bl	__ZdlPvm		;
L400:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	ldr	x0, [x29, 184]	; _827, %sfp
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	add	w28, w28, 1	; i, i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	mov	x21, x23	; _828, _828
	add	x23, x23, x0	; v$D174736$_M_impl$D174027$_M_end_of_storage, _828, _827
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	cmp	w28, w25	; i, tmp1171
	bne	L401		;,
	.p2align 5,,15
L714:
; b4_generators.cpp:102:       sink += v.back(); // keep reference alive
	ldr	x0, [x29, 192]	; _798, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, 20000	;,
; b4_generators.cpp:102:       sink += v.back(); // keep reference alive
	ldrsw	x2, [x0, -4]	; _767, MEM[(value_type &)_798 + 18446744073709551612]
	add	x26, x26, x2	; sink, sink, _767
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x21, L403	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x23, x21	;, v$D174736$_M_impl$D174027$_M_end_of_storage, v$D174736$_M_impl$D174027$_M_start
	mov	x0, x21	;, v$D174736$_M_impl$D174027$_M_start
	bl	__ZdlPvm		;
L403:
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	ldr	x0, [x29, 200]	; ivtmp_1152, %sfp
	subs	x0, x0, #1	; ivtmp_1152, ivtmp_1152,
	str	x0, [x29, 200]	; ivtmp_1152, %sfp
	bne	L407		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	mov	w25, 5000	; tmp1164,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	str	x0, [x29, 152]	;, %sfp
	mov	x0, 2000	; ivtmp_1160,
	str	x0, [x29, 200]	; ivtmp_1160, %sfp
	.p2align 5,,15
L421:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 20000	;,
LEHB24:
	bl	__Znwm		;
LEHE24:
	mov	x19, x0	; __new_finish,
	mov	x0, 20000	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x23, x19, x0	; v$D174736$_M_impl$D174027$_M_end_of_storage, __new_finish,
LEHB25:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE25:
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	mov	w28, 0	; i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:96: 	  this->_M_impl._M_start = __tmp;
	mov	x21, x19	; v$D174736$_M_impl$D174027$_M_start, __new_finish
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	str	x0, [x29, 192]	;, %sfp
	b	L415		;
	.p2align 2,,3
L718:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w28, [x19], 4	; i, *v$D174736$_M_impl$D174027$_M_finish_1829
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	add	w28, w28, 1	; i, i,
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	cmp	w28, w25	; i, tmp1164
	beq	L717		;,
L415:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x23, x19	; v$D174736$_M_impl$D174027$_M_end_of_storage, __new_finish
	bne	L718		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x27, x23, x21	; _927, v$D174736$_M_impl$D174027$_M_end_of_storage, v$D174736$_M_impl$D174027$_M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	mov	x0, 2305843009213693951	; tmp1284,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	asr	x1, x27, 2	; __dif_914, _927,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	cmp	x1, x0	; __dif_914, tmp1284
	beq	L719		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:263:       if (__a < __b)
	cmp	x1, 0	; __dif_914,
	csinc	x0, x1, xzr, ne	; _916, __dif_914,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2201: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x0, x0, x1	; __len_917, _916, __dif_914
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2202: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	mov	x1, 2305843009213693951	; tmp1285,
	cmp	x0, x1	; __len_917, tmp1285
	csel	x0, x0, x1, ls	; __len_917, __len_917, tmp1286,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x0, x0, 2	; _934, __len_917,
	str	x0, [x29, 184]	; _934, %sfp
LEHB26:
	bl	__Znwm		;
LEHE26:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w28, [x0, x27]	; i, *_922
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x23, x0	; _935, _935
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	cbz	x27, L413	; _927,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1337: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	x2, x27	;, _927
	mov	x1, x21	;, v$D174736$_M_impl$D174027$_M_start
	bl	_memcpy		;
L413:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:601: 	    ++__new_finish;
	add	x19, x27, 4	; _924, _927,
	add	x19, x23, x19	; __new_finish, _935, _924
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1882: 	  if (_M_storage)
	cbz	x21, L414	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, x27	;, _927
	mov	x0, x21	;, v$D174736$_M_impl$D174027$_M_start
	bl	__ZdlPvm		;
L414:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	ldr	x0, [x29, 184]	; _934, %sfp
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	add	w28, w28, 1	; i, i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	mov	x21, x23	; _935, _935
	add	x23, x23, x0	; v$D174736$_M_impl$D174027$_M_end_of_storage, _935, _934
; b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	cmp	w28, w25	; i, tmp1164
	bne	L415		;,
	.p2align 5,,15
L717:
; b4_generators.cpp:102:       sink += v.back(); // keep reference alive
	ldr	x0, [x29, 192]	; _905, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, 20000	;,
; b4_generators.cpp:102:       sink += v.back(); // keep reference alive
	ldrsw	x2, [x0, -4]	; _874, MEM[(value_type &)_905 + 18446744073709551612]
	add	x26, x26, x2	; sink, sink, _874
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x21, L417	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x23, x21	;, v$D174736$_M_impl$D174027$_M_end_of_storage, v$D174736$_M_impl$D174027$_M_start
	mov	x0, x21	;, v$D174736$_M_impl$D174027$_M_start
	bl	__ZdlPvm		;
L417:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	ldr	x0, [x29, 200]	; ivtmp_1160, %sfp
	subs	x0, x0, #1	; ivtmp_1160, ivtmp_1160,
	str	x0, [x29, 200]	; ivtmp_1160, %sfp
	bne	L421		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 152]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 168]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _719, end, start
; bench.hpp:44: }
	mov	x0, x20	;, tmp1123
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d14, x2	;, _719
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 2000	; tmp811,
; b4_generators.cpp:105:     print_result(bench("template callback (inlined)", REPS, [&] {
	mov	x0, x20	;, tmp1123
; bench.hpp:44: }
	str	d14, [x29, 408]	;, MEM[(struct BenchResult *)_1728].total_ns
	str	x1, [x29, 400]	; tmp811, MEM[(struct BenchResult *)_1728].iters
LEHB27:
; b4_generators.cpp:105:     print_result(bench("template callback (inlined)", REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE27:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 160]	; tmp1125, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 368]	; _128, MEM[(const struct basic_string *)_1728]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _128, tmp1125
	beq	L423		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 384]	; MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L423:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 176]	; tmp1122, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 336]	; _124, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _124, tmp1122
	beq	L424		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 352]	; MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L424:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b4_generators.cpp:116:     print_result(bench("std::function callback", REPS, [&] {
	ldr	x0, [x29, 168]	;, %sfp
	adrp	x1, lC18@PAGE	; tmp822,
; b4_generators.cpp:115:     long long sink = 0;
	mov	x21, 0	; sink,
; b4_generators.cpp:116:     print_result(bench("std::function callback", REPS, [&] {
	add	x1, x1, lC18@PAGEOFF;	;, tmp822,
	mov	x23, 3	; ivtmp_1768,
LEHB28:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE28:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:453: 	      _M_invoker = &_My_handler::_M_invoke;
	adrp	x0, __ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi@PAGE	; tmp1298,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x27, 20000	; tmp1155,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:453: 	      _M_invoker = &_My_handler::_M_invoke;
	add	x26, x0, __ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi@PAGEOFF;	; tmp1157, tmp1298,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	adrp	x0, __ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation@PAGE	; tmp1299,
	add	x25, x0, __ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation@PAGEOFF;	; tmp1159, tmp1299,
	.p2align 5,,15
L431:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 20000	;,
; b4_generators.cpp:117:       std::vector<int> v;
	stp	xzr, xzr, [x29, 304]	; MEM[(struct vector *)_1500]
	str	xzr, [x29, 320]	;, MEM[(struct vector *)_1500]
LEHB29:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE29:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x1, x0, x27	; _985, tmp824, tmp1155
; b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	mov	w28, 0	; i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:96: 	  this->_M_impl._M_start = __tmp;
	stp	x0, x0, [x29, 304]	; tmp824, tmp824,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	mov	x3, x25	; prephitmp_1137, tmp1159
; b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	mov	w19, 5000	; tmp1154,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x1, [x29, 320]	; _985, MEM[(struct vector *)_1500].D.174736._M_impl.D.174027._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:154: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	stp	x24, xzr, [x29, 368]	; tmp1117,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	stp	x25, x26, [x29, 384]	; tmp1159, tmp1157,
	.p2align 5,,15
L426:
	str	w28, [x29, 272]	; i, MEM[(int *)_1487]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:591: 	if (_M_empty())
	cbz	x3, L720	; prephitmp_1137,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:593: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	ldr	x3, [x29, 392]	; MEM[(struct function *)_1728]._M_invoker, MEM[(struct function *)_1728]._M_invoker
	mov	x1, x22	;, tmp1115
	mov	x0, x20	;, tmp1123
LEHB30:
	blr	x3		; MEM[(struct function *)_1728]._M_invoker
LEHE30:
; b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	add	w28, w28, 1	; i, i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	ldr	x3, [x29, 384]	; prephitmp_1137, MEM[(struct _Function_base *)_1728]._M_manager
; b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	cmp	w28, w19	; i, tmp1154
	bne	L426		;,
; b4_generators.cpp:121:       sink += v.back();
	ldr	x0, [x29, 312]	; MEM[(int * const &)_1500 + 8], MEM[(int * const &)_1500 + 8]
; b4_generators.cpp:121:       sink += v.back();
	ldrsw	x0, [x0, -4]	; _954, MEM[(value_type &)_950 + 18446744073709551612]
	add	x21, x21, x0	; sink, sink, _954
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	cbz	x3, L427	; prephitmp_1137,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:246: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	mov	w2, 3	;,
	mov	x1, x20	;, tmp1123
	mov	x0, x20	;, tmp1123
	blr	x3		; prephitmp_1137
L427:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	ldr	x0, [x29, 304]	; _957, MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x0, L428	; _957,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x29, 320]	; MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_end_of_storage, MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	;, MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_end_of_storage, _957
	bl	__ZdlPvm		;
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x23, x23, #1	; ivtmp_1768, ivtmp_1768,
	bne	L431		;,
L430:
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 200]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:453: 	      _M_invoker = &_My_handler::_M_invoke;
	adrp	x0, __ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi@PAGE	; tmp1300,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x23, 2000	; ivtmp_1792,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:453: 	      _M_invoker = &_My_handler::_M_invoke;
	add	x26, x0, __ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi@PAGEOFF;	; tmp1150, tmp1300,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	adrp	x0, __ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation@PAGE	; tmp1301,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x27, 20000	; tmp1149,
; b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	mov	w19, 5000	; tmp1152,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	add	x25, x0, __ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation@PAGEOFF;	; tmp1151, tmp1301,
	.p2align 5,,15
L443:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 20000	;,
; b4_generators.cpp:117:       std::vector<int> v;
	stp	xzr, xzr, [x29, 304]	; MEM[(struct vector *)_1500]
	str	xzr, [x29, 320]	;, MEM[(struct vector *)_1500]
LEHB31:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE31:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x1, x0, x27	; _1030, tmp852, tmp1149
; b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	mov	w28, 0	; i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:96: 	  this->_M_impl._M_start = __tmp;
	stp	x0, x0, [x29, 304]	; tmp852, tmp852,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	mov	x3, x25	; prephitmp_1066, tmp1151
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x1, [x29, 320]	; _1030, MEM[(struct vector *)_1500].D.174736._M_impl.D.174027._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:154: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	stp	x24, xzr, [x29, 368]	; tmp1117,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	stp	x25, x26, [x29, 384]	; tmp1151, tmp1150,
	.p2align 5,,15
L438:
	str	w28, [x29, 272]	; i, MEM[(int *)_1487]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:591: 	if (_M_empty())
	cbz	x3, L721	; prephitmp_1066,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:593: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	ldr	x2, [x29, 392]	; MEM[(struct function *)_1728]._M_invoker, MEM[(struct function *)_1728]._M_invoker
	mov	x1, x22	;, tmp1115
	mov	x0, x20	;, tmp1123
LEHB32:
	blr	x2		; MEM[(struct function *)_1728]._M_invoker
LEHE32:
; b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	add	w28, w28, 1	; i, i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	ldr	x3, [x29, 384]	; prephitmp_1066, MEM[(struct _Function_base *)_1728]._M_manager
; b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	cmp	w28, w19	; i, tmp1152
	bne	L438		;,
; b4_generators.cpp:121:       sink += v.back();
	ldr	x0, [x29, 312]	; MEM[(int * const &)_1500 + 8], MEM[(int * const &)_1500 + 8]
; b4_generators.cpp:121:       sink += v.back();
	ldrsw	x0, [x0, -4]	; _999, MEM[(value_type &)_995 + 18446744073709551612]
	add	x21, x21, x0	; sink, sink, _999
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	cbz	x3, L439	; prephitmp_1066,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:246: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	mov	w2, 3	;,
	mov	x1, x20	;, tmp1123
	mov	x0, x20	;, tmp1123
	blr	x3		; prephitmp_1066
L439:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	ldr	x0, [x29, 304]	; _1002, MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x0, L440	; _1002,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x29, 320]	; MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_end_of_storage, MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	;, MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_end_of_storage, _1002
	bl	__ZdlPvm		;
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x23, x23, #1	; ivtmp_1792, ivtmp_1792,
	bne	L443		;,
L442:
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 200]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 168]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _943, end, start
; bench.hpp:44: }
	mov	x0, x20	;, tmp1123
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d13, x2	;, _943
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 2000	; tmp881,
; b4_generators.cpp:116:     print_result(bench("std::function callback", REPS, [&] {
	mov	x0, x20	;, tmp1123
; bench.hpp:44: }
	str	d13, [x29, 408]	;, MEM[(struct BenchResult *)_1728].total_ns
	str	x1, [x29, 400]	; tmp881, MEM[(struct BenchResult *)_1728].iters
LEHB33:
; b4_generators.cpp:116:     print_result(bench("std::function callback", REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE33:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 160]	; tmp1125, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 368]	; _137, MEM[(const struct basic_string *)_1728]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _137, tmp1125
	beq	L448		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 384]	; MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L448:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 176]	; tmp1122, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 336]	; _133, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _133, tmp1122
	beq	L449		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 352]	; MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L449:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b4_generators.cpp:129:     print_result(bench("raw coroutine generator (co_yield)", REPS, [&] {
	ldr	x0, [x29, 168]	;, %sfp
	adrp	x1, lC19@PAGE	; tmp892,
; b4_generators.cpp:128:     long long sink = 0;
	mov	x25, 0	; sink,
; b4_generators.cpp:129:     print_result(bench("raw coroutine generator (co_yield)", REPS, [&] {
	add	x1, x1, lC19@PAGEOFF;	;, tmp892,
LEHB34:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE34:
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	adrp	x0, __Z9raw_rangeP20_ZL9raw_rangei.Frame.actor@PAGE	; tmp1306,
	add	x0, x0, __Z9raw_rangeP20_ZL9raw_rangei.Frame.actor@PAGEOFF;	; tmp1144, tmp1306,
	str	x0, [x29, 152]	; tmp1144, %sfp
	adrp	x0, __Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy@PAGE	; tmp1308,
	add	x0, x0, __Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy@PAGEOFF;	; tmp1146, tmp1308,
	str	x0, [x29, 144]	; tmp1146, %sfp
; b4_generators.cpp:129:     print_result(bench("raw coroutine generator (co_yield)", REPS, [&] {
	mov	x0, 3	; ivtmp_1189,
	str	x0, [x29, 184]	; ivtmp_1189, %sfp
	.p2align 5,,15
L465:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 20000	;,
LEHB35:
	bl	__Znwm		;
LEHE35:
	mov	x21, x0	; __new_finish,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x2, 20000	;,
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	mov	x0, 56	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x26, x21, x2	; v$D174736$_M_impl$D174027$_M_end_of_storage, __new_finish,
LEHB36:
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	bl	__Znwm		;
LEHE36:
L450:
L451:
L452:
L453:
L454:
L455:
L456:
	mov	x19, x0	; _1092, _1092
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	ldp	x2, x0, [x29, 144]	; tmp1146, tmp1144,
	mov	w1, 5000	; tmp901,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:96: 	  this->_M_impl._M_start = __tmp;
	mov	x27, x21	; v$D174736$_M_impl$D174027$_M_start, __new_finish
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	mov	x28, 2305843009213693951	; tmp1142,
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	str	w1, [x19, 16]	; tmp901, _1092->_Coro_promise.current
	stp	x0, x2, [x19]	; tmp1144, tmp1146,* _1092
; b4_generators.cpp:55: }
	mov	x0, 5000	; tmp1312,
	movk	x0, 0x2, lsl 32	; tmp1312,,
	movk	x0, 0x1, lsl 48	; tmp1312,,
	stp	x19, x0, [x19, 24]	; _1092, tmp1312,
L457:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x19	;, _1092
	ldr	x1, [x19]	; MEM[(void (*<T11f>) (void *) *)_1092], MEM[(void (*<T11f>) (void *) *)_1092]
LEHB37:
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_1092]
; b4_generators.cpp:133:       while (gen.next()) v.push_back(gen.value());
	ldr	x0, [x19]	; MEM[(void * *)_1092], MEM[(void * *)_1092]
	cbz	x0, L722	; MEM[(void * *)_1092],
L463:
; b4_generators.cpp:50:   T value() const { return h.promise().current; }
	ldr	w1, [x19, 16]	;, MEM[(struct promise_type &)_1092 + 16].current
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x21, x26	; __new_finish, v$D174736$_M_impl$D174027$_M_end_of_storage
	beq	L458		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x19	;, _1092
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w1, [x21], 4	; _1047, *v$8_1
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x19]	; MEM[(void (*<T11f>) (void *) *)_1092], MEM[(void (*<T11f>) (void *) *)_1092]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_1092]
LEHE37:
; b4_generators.cpp:133:       while (gen.next()) v.push_back(gen.value());
	ldr	x0, [x19]	; MEM[(void * *)_1092], MEM[(void * *)_1092]
	cbnz	x0, L463	; MEM[(void * *)_1092],
L722:
; b4_generators.cpp:134:       sink += v.back();
	ldrsw	x2, [x21, -4]	; _1054, MEM[(value_type &)v$8_1 + 18446744073709551612]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x19	;, _1092
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)_1092 + 8B], MEM[(void (*<T11f>) (void *) *)_1092 + 8B]
; b4_generators.cpp:134:       sink += v.back();
	add	x25, x25, x2	; sink, sink, _1054
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_1092 + 8B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x27, L464	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x26, x27	;, v$D174736$_M_impl$D174027$_M_end_of_storage, v$D174736$_M_impl$D174027$_M_start
	mov	x0, x27	;, v$D174736$_M_impl$D174027$_M_start
	bl	__ZdlPvm		;
L464:
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	ldr	x0, [x29, 184]	; ivtmp_1189, %sfp
	subs	x0, x0, #1	; ivtmp_1189, ivtmp_1189,
	str	x0, [x29, 184]	; ivtmp_1189, %sfp
	bne	L465		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	mov	x28, 2305843009213693951	; tmp1140,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	str	x0, [x29, 152]	;, %sfp
	mov	x0, 2000	; ivtmp_1191,
	str	x0, [x29, 184]	; ivtmp_1191, %sfp
	.p2align 5,,15
L486:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 20000	;,
LEHB38:
	bl	__Znwm		;
LEHE38:
	mov	x21, x0	; __new_finish,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x1, 20000	;,
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	mov	x0, 56	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x26, x21, x1	; v$D174736$_M_impl$D174027$_M_end_of_storage, __new_finish,
LEHB39:
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	bl	__Znwm		;
LEHE39:
L471:
L472:
L473:
L474:
L475:
L476:
L477:
	mov	x19, x0	; _1177, _1177
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	adrp	x1, __Z9raw_rangeP20_ZL9raw_rangei.Frame.actor@PAGE	; tmp1316,
	adrp	x0, __Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy@PAGE	; tmp1317,
	add	x1, x1, __Z9raw_rangeP20_ZL9raw_rangei.Frame.actor@PAGEOFF;	; tmp936, tmp1316,
	add	x0, x0, __Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy@PAGEOFF;	; tmp938, tmp1317,
	mov	w2, 5000	; tmp940,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:96: 	  this->_M_impl._M_start = __tmp;
	mov	x27, x21	; v$D174736$_M_impl$D174027$_M_start, __new_finish
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	stp	x1, x0, [x19]	; tmp936, tmp938,* _1177
; b4_generators.cpp:55: }
	mov	x0, 5000	; tmp1318,
	movk	x0, 0x2, lsl 32	; tmp1318,,
	movk	x0, 0x1, lsl 48	; tmp1318,,
; b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	str	w2, [x19, 16]	; tmp940, _1177->_Coro_promise.current
; b4_generators.cpp:55: }
	stp	x19, x0, [x19, 24]	; _1177, tmp1318,
L478:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x19	;, _1177
	ldr	x1, [x19]	; MEM[(void (*<T11f>) (void *) *)_1177], MEM[(void (*<T11f>) (void *) *)_1177]
LEHB40:
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_1177]
; b4_generators.cpp:133:       while (gen.next()) v.push_back(gen.value());
	ldr	x0, [x19]	; MEM[(void * *)_1177], MEM[(void * *)_1177]
	cbz	x0, L723	; MEM[(void * *)_1177],
L484:
; b4_generators.cpp:50:   T value() const { return h.promise().current; }
	ldr	w1, [x19, 16]	;, MEM[(struct promise_type &)_1177 + 16].current
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x21, x26	; __new_finish, v$D174736$_M_impl$D174027$_M_end_of_storage
	beq	L479		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x19	;, _1177
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w1, [x21], 4	; _1132, *v$8_65
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x19]	; MEM[(void (*<T11f>) (void *) *)_1177], MEM[(void (*<T11f>) (void *) *)_1177]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_1177]
LEHE40:
; b4_generators.cpp:133:       while (gen.next()) v.push_back(gen.value());
	ldr	x0, [x19]	; MEM[(void * *)_1177], MEM[(void * *)_1177]
	cbnz	x0, L484	; MEM[(void * *)_1177],
L723:
; b4_generators.cpp:134:       sink += v.back();
	ldrsw	x2, [x21, -4]	; _1139, MEM[(value_type &)v$8_65 + 18446744073709551612]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x19	;, _1177
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)_1177 + 8B], MEM[(void (*<T11f>) (void *) *)_1177 + 8B]
; b4_generators.cpp:134:       sink += v.back();
	add	x25, x25, x2	; sink, sink, _1139
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_1177 + 8B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x27, L485	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x26, x27	;, v$D174736$_M_impl$D174027$_M_end_of_storage, v$D174736$_M_impl$D174027$_M_start
	mov	x0, x27	;, v$D174736$_M_impl$D174027$_M_start
	bl	__ZdlPvm		;
L485:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	ldr	x0, [x29, 184]	; ivtmp_1191, %sfp
	subs	x0, x0, #1	; ivtmp_1191, ivtmp_1191,
	str	x0, [x29, 184]	; ivtmp_1191, %sfp
	bne	L486		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 152]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 168]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _1043, end, start
; bench.hpp:44: }
	mov	x0, x20	;, tmp1123
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d12, x2	;, _1043
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 2000	; tmp973,
; b4_generators.cpp:129:     print_result(bench("raw coroutine generator (co_yield)", REPS, [&] {
	mov	x0, x20	;, tmp1123
; bench.hpp:44: }
	str	d12, [x29, 408]	;, MEM[(struct BenchResult *)_1728].total_ns
	str	x1, [x29, 400]	; tmp973, MEM[(struct BenchResult *)_1728].iters
LEHB41:
; b4_generators.cpp:129:     print_result(bench("raw coroutine generator (co_yield)", REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE41:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 160]	; tmp1125, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 368]	; _146, MEM[(const struct basic_string *)_1728]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _146, tmp1125
	beq	L491		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 384]	; MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L491:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 176]	; tmp1122, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 336]	; _142, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _142, tmp1122
	beq	L492		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 352]	; MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L492:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	adrp	x1, lC20@PAGE	; tmp984,
; b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	mov	x19, 3	; ivtmp_1206,
; b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	ldr	x0, [x29, 168]	;, %sfp
	add	x1, x1, lC20@PAGEOFF;	;, tmp984,
; b4_generators.cpp:141:     long long sink = 0;
	str	xzr, [x29, 272]	;, MEM[(long long int *)_1487]
LEHB42:
; b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE42:
; b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	str	x22, [x29, 304]	; tmp1115, MEM[(struct ._anon_186 *)_1500].__sink
	.p2align 5,,15
L493:
; bench.hpp:35:     fn();
	mov	x0, x24	;, tmp1117
LEHB43:
	bl	__ZZ4mainENKUlvE3_clEv		;
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x19, x19, #1	; ivtmp_1206, ivtmp_1206,
	bne	L493		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x21, x0	; start,
	mov	x19, 2000	; ivtmp_1248,
	.p2align 5,,15
L494:
; bench.hpp:39:     fn();
	mov	x0, x24	;, tmp1117
	bl	__ZZ4mainENKUlvE3_clEv		;
LEHE43:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x19, x19, #1	; ivtmp_1248, ivtmp_1248,
	bne	L494		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x21	; _1223, end, start
; bench.hpp:44: }
	ldr	x1, [x29, 168]	;, %sfp
	mov	x0, x20	;, tmp1123
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d11, x2	;, _1223
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 2000	; tmp992,
; b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	mov	x0, x20	;, tmp1123
; bench.hpp:44: }
	str	d11, [x29, 408]	;, MEM[(struct BenchResult *)_1728].total_ns
	str	x1, [x29, 400]	; tmp992, MEM[(struct BenchResult *)_1728].iters
LEHB44:
; b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE44:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 160]	; tmp1125, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 368]	; _155, MEM[(const struct basic_string *)_1728]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _155, tmp1125
	beq	L495		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 384]	; MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L495:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 176]	; tmp1122, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 336]	; _151, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _151, tmp1122
	beq	L496		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 352]	; MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L496:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC21@PAGE	; tmp1003,
	mov	x2, 8	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC21@PAGEOFF;	;, tmp1003,
LEHB45:
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC22@PAGE	; tmp1006,
	mov	x2, 62	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC22@PAGEOFF;	;, tmp1006,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC23@PAGE	; tmp1009,
	mov	x2, 75	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC23@PAGEOFF;	;, tmp1009,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC24@PAGE	; tmp1012,
	mov	x2, 44	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC24@PAGEOFF;	;, tmp1012,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC25@PAGE	; tmp1015,
	mov	x2, 66	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC25@PAGEOFF;	;, tmp1015,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC26@PAGE	; tmp1018,
	mov	x2, 56	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC26@PAGEOFF;	;, tmp1018,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LEHE45:
; b4_generators.cpp:159: }
	ldr	d15, [sp, 128]	;,
	mov	w0, 0	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x27, x28, [sp, 80]	;,,
	ldp	d11, d12, [sp, 96]	;,,
	ldp	d13, d14, [sp, 112]	;,,
	ldp	x29, x30, [sp], 416	;,,,
LCFI76:
	ret	
L321:
LCFI77:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:460: 	if (__n == 1)
	cmp	x20, 1	; __sz,
	beq	L724		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	mov	x2, x20	;, __sz
	mov	x1, x19	;, _348
	add	x0, x19, 32	;, _348,
	bl	_memmove		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	b	L322		;
L703:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	add	x0, x19, x20	; _357, _348, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x3, x0	; __x.23_355, _357
	bhi	L319		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:576: 	    _M_replace_cold(__p, __len1, __s, __len2, __how_much);
	mov	x5, x20	;, __sz
	mov	x1, x19	;, _348
	mov	x4, 32	;,
	mov	x2, 0	;,
	mov	x0, x25	;, tmp1113
LEHB46:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm		;
LEHE46:
	b	L323		;
L339:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	mov	x1, 9223372036854775806	; tmp569,
	cmp	x28, x1	; __size, tmp569
	bhi	L725		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x27, x0, 1	; __new_capacity, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x28, x27	; __size, __new_capacity
	bcc	L343		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x28, 1	; _1166, __size,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x27, x28	; __new_capacity, __size
L344:
	str	x3, [x29, 200]	; _413, %sfp
LEHB47:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE47:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldr	x3, [x29, 200]	; _413, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x4, x0	; _469, _469
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x19, L345	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x19, 1	; __sz,
	beq	L726		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	;, __sz
	mov	x1, x20	;, MEM[(struct basic_string *)_1487]._M_dataplus._M_p
	stp	x0, x3, [x29, 192]	; _469, _413,
	bl	_memcpy		;
	ldp	x4, x3, [x29, 192]	; _469, _413,
L345:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	cmp	x3, 0	; _413,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	ccmp	x26, 0, 4, ne	; __sz,,,
	beq	L347		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x0, x4, x19	; _448, _469, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x26, 1	; __sz,
	beq	L727		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x26	;, __sz
	mov	x1, x3	;, _413
	str	x4, [x29, 200]	; _469, %sfp
	bl	_memcpy		;
	ldr	x4, [x29, 200]	; _469, %sfp
L347:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x23	; MEM[(struct basic_string *)_1487]._M_dataplus._M_p, tmp1116
	beq	L349		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 288]	; MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x20	;, MEM[(struct basic_string *)_1487]._M_dataplus._M_p
	str	x4, [x29, 200]	; _469, %sfp
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
	ldr	x4, [x29, 200]	; _469, %sfp
L349:
	mov	x20, x4	; MEM[(struct basic_string *)_1487]._M_dataplus._M_p, _469
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x4, [x29, 272]	; _469, MEM[(struct basic_string *)_1487]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x27, [x29, 288]	; __new_capacity, MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L340		;
L336:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 9223372036854775806	; tmp610,
	sub	x0, x0, x26	; _1377, tmp610, __sz
	cmp	x19, x0	; __sz, _1377
	bhi	L728		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x27, x20	; MEM[(struct basic_string *)_1500]._M_dataplus._M_p, MEM[(struct basic_string *)_1487]._M_dataplus._M_p
	bls	L729		;,
L354:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	cmp	x26, 0	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	ccmp	x19, 0, 4, ne	; __sz,,,
	beq	L730		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:571: 		this->_S_move(__p + __len2, __p + __len1, __how_much);
	add	x0, x27, x19	; _500, MEM[(struct basic_string *)_1500]._M_dataplus._M_p, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:460: 	if (__n == 1)
	cmp	x26, 1	; __sz,
	beq	L731		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	mov	x2, x26	;, __sz
	mov	x1, x27	;, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
	bl	_memmove		;
L360:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x19, 1	; __sz,
	beq	L732		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x0, x27	;, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
	mov	x2, x19	;, __sz
	mov	x1, x20	;, MEM[(struct basic_string *)_1487]._M_dataplus._M_p
	bl	_memcpy		;
	ldr	x27, [x29, 304]	; MEM[(struct basic_string *)_1500]._M_dataplus._M_p, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	L358		;
	.p2align 2,,3
L458:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x2, x26, x27	; _1122, v$D174736$_M_impl$D174027$_M_end_of_storage, v$D174736$_M_impl$D174027$_M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	asr	x0, x2, 2	; __dif_1109, _1122,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	cmp	x0, x28	; __dif_1109, tmp1142
	beq	L733		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:263:       if (__a < __b)
	cmp	x0, 0	; __dif_1109,
	csinc	x23, x0, xzr, ne	; _1111, __dif_1109,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2201: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x23, x23, x0	; __len_1112, _1111, __dif_1109
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2202: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x23, x28	; __len_1112, tmp1142
	csel	x23, x23, x28, ls	; __len_1112, __len_1112, tmp1142,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x23, x23, 2	; _1129, __len_1112,
	mov	x0, x23	;, _1129
	str	x2, [x29, 192]	; _1122, %sfp
	str	w1, [x29, 200]	; _1047, %sfp
LEHB48:
	bl	__Znwm		;
LEHE48:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	ldr	x2, [x29, 192]	; _1122, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x3, x0	; _1130, _1130
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	ldr	w1, [x29, 200]	;, %sfp
	str	w1, [x0, x2]	; _1047, *_1117
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	cbz	x2, L461	; _1122,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1337: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	x1, x27	;, v$D174736$_M_impl$D174027$_M_start
	stp	x0, x2, [x29, 192]	; _1130, _1122,
	bl	_memcpy		;
	ldp	x3, x2, [x29, 192]	; _1130, _1122,
L461:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:601: 	    ++__new_finish;
	add	x21, x2, 4	; _1119, _1122,
	add	x21, x3, x21	; __new_finish, _1130, _1119
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1882: 	  if (_M_storage)
	cbz	x27, L462	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, x2	;, _1122
	mov	x0, x27	;, v$D174736$_M_impl$D174027$_M_start
	str	x3, [x29, 200]	; _1130, %sfp
	bl	__ZdlPvm		;
	ldr	x3, [x29, 200]	; _1130, %sfp
L462:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	x26, x3, x23	; v$D174736$_M_impl$D174027$_M_end_of_storage, _1130, _1129
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	mov	x27, x3	; v$D174736$_M_impl$D174027$_M_start, _1130
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:647:     }
	b	L457		;
	.p2align 2,,3
L479:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x2, x26, x27	; _1207, v$D174736$_M_impl$D174027$_M_end_of_storage, v$D174736$_M_impl$D174027$_M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	asr	x0, x2, 2	; __dif_1194, _1207,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	cmp	x0, x28	; __dif_1194, tmp1140
	beq	L734		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:263:       if (__a < __b)
	cmp	x0, 0	; __dif_1194,
	csinc	x23, x0, xzr, ne	; _1196, __dif_1194,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2201: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x23, x23, x0	; __len_1197, _1196, __dif_1194
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2202: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x23, x28	; __len_1197, tmp1140
	csel	x23, x23, x28, ls	; __len_1197, __len_1197, tmp1140,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x23, x23, 2	; _1214, __len_1197,
	mov	x0, x23	;, _1214
	str	x2, [x29, 192]	; _1207, %sfp
	str	w1, [x29, 200]	; _1132, %sfp
LEHB49:
	bl	__Znwm		;
LEHE49:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	ldr	x2, [x29, 192]	; _1207, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x3, x0	; _1215, _1215
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	ldr	w1, [x29, 200]	;, %sfp
	str	w1, [x0, x2]	; _1132, *_1202
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	cbz	x2, L482	; _1207,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1337: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	x1, x27	;, v$D174736$_M_impl$D174027$_M_start
	stp	x0, x2, [x29, 192]	; _1215, _1207,
	bl	_memcpy		;
	ldp	x3, x2, [x29, 192]	; _1215, _1207,
L482:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:601: 	    ++__new_finish;
	add	x21, x2, 4	; _1204, _1207,
	add	x21, x3, x21	; __new_finish, _1215, _1204
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1882: 	  if (_M_storage)
	cbz	x27, L483	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, x2	;, _1207
	mov	x0, x27	;, v$D174736$_M_impl$D174027$_M_start
	str	x3, [x29, 200]	; _1215, %sfp
	bl	__ZdlPvm		;
	ldr	x3, [x29, 200]	; _1215, %sfp
L483:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	x26, x3, x23	; v$D174736$_M_impl$D174027$_M_end_of_storage, _1215, _1214
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	mov	x27, x3	; v$D174736$_M_impl$D174027$_M_start, _1215
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:647:     }
	b	L478		;
L440:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x23, x23, #1	; ivtmp_1792, ivtmp_1792,
	bne	L443		;,
	b	L442		;
L428:
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x23, x23, #1	; ivtmp_1768, ivtmp_1768,
	bne	L431		;,
	b	L430		;
L705:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x1, 9223372036854775806	; tmp1110,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x3, [x29, 304]	; _413, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
	add	x25, x29, 320	; tmp1119,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	sub	x1, x1, x19	; _1616, tmp1110, __sz
	cmp	x26, x1	; __sz, _1616
	bls	L526		;,
L525:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC7@PAGE	; tmp561,
	add	x0, x0, lC7@PAGEOFF;	;, tmp561,
LEHB50:
	bl	__ZSt20__throw_length_errorPKc		;
L729:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	add	x0, x27, x26	; _495, MEM[(struct basic_string *)_1500]._M_dataplus._M_p, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x20, x0	; MEM[(struct basic_string *)_1487]._M_dataplus._M_p, _495
	bhi	L354		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:576: 	    _M_replace_cold(__p, __len1, __s, __len2, __how_much);
	mov	x5, x26	;, __sz
	mov	x4, x19	;, __sz
	mov	x3, x20	;, MEM[(struct basic_string *)_1487]._M_dataplus._M_p
	mov	x1, x27	;, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
	mov	x2, 0	;,
	mov	x0, x24	;, tmp1117
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm		;
LEHE50:
	ldr	x27, [x29, 304]	; MEM[(struct basic_string *)_1500]._M_dataplus._M_p, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
	b	L358		;
L706:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x3]	; _430, MEM[(const char_type &)_1725]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x20, x19]	; _430, MEM[(char_type &)_429]
	ldr	x20, [x29, 272]	; MEM[(struct basic_string *)_1487]._M_dataplus._M_p, MEM[(struct basic_string *)_1487]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L340		;
L343:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	cmp	x27, x1	; __new_capacity, tmp569
	bls	L735		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x27, x1	; __new_capacity, tmp569
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _1166,
	b	L344		;
L724:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x19]	;, MEM[(const char_type &)_348]
	strb	w0, [x19, 32]	; MEM[(const char_type &)_348], MEM[(char_type &)_348 + 32]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L322		;
L707:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldr	x0, [x29, 176]	;, %sfp
	add	x2, x19, 1	;, pretmp_1046,
	mov	x1, x23	;, tmp1116
	bl	_memcpy		;
	b	L351		;
L704:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3952: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	cmp	x28, 15	; __size,
	bls	L736		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	mov	x0, 15	; __sz,
	b	L332		;
L317:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x20, 33	; _1764, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x22, x24	; __new_capacity, _346
L326:
LEHB51:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE51:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x1, lC10@PAGE	; tmp530,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x23, x0	; _404, _404
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x1, x1, lC10@PAGEOFF;	; tmp529, tmp530,
	ldp	q31, q30, [x1]	; MEM <char[1:32]> [(void *)"b4: generators / collection  (N="], MEM <char[1:32]> [(void *)"b4: generators / collection  (N="],
	stp	q31, q30, [x0]	; MEM <char[1:32]> [(void *)"b4: generators / collection  (N="], MEM <char[1:32]> [(void *)"b4: generators / collection  (N="],* _404
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:369:       if (__how_much)
	cbz	x20, L685	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x20, 1	; __sz,
	beq	L737		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x20	;, __sz
	mov	x1, x19	;, _348
	add	x0, x0, 32	;, _404,
	bl	_memcpy		;
L685:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x19, x21	; _348, tmp1114
	beq	L330		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 224]	; D.174743.D.56371._M_allocated_capacity, D.174743.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x19	;, _348
	add	x1, x1, 1	;, D.174743.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L330:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x23, [x29, 208]	; _404, D.174743._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x22, [x29, 224]	; __new_capacity, D.174743.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L323		;
L736:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x3, [x29, 304]	; _413, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
	add	x25, x29, 320	; tmp1119,,
	b	L333		;
L737:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x19]	; _390, MEM[(const char_type &)_348]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x23, 32]	; _390, MEM[(char_type &)_404 + 32]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L685		;
L730:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:572: 	      if (__len2)
	cbnz	x19, L360	; __sz,
L358:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x28, [x29, 312]	; __size, MEM[(struct basic_string *)_1500]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x1, x29, 352	; tmp1122,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x27, x28]	;, MEM[(char_type &)_505]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:282: 	    if (_M_string_length > _S_local_capacity)
	ldp	x0, x19, [x29, 304]	; _544, pretmp_1052,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x1, [x29, 176]	; tmp1122, %sfp
	str	x1, [x29, 336]	; tmp1122, MEM[(struct _Alloc_hider *)_1156]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	; _544, tmp1119
	beq	L738		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x29, 320]	; MEM[(struct basic_string &)_1500].D.56371._M_allocated_capacity, MEM[(struct basic_string &)_1500].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x0, [x29, 336]	; _544, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x1, [x29, 352]	; MEM[(struct basic_string &)_1500].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
L364:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x25, xzr, [x29, 304]	; tmp1119,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x29, 320]	;, MEM[(char_type &)_1500 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x19, [x29, 344]	; pretmp_1052,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:763:       }
	b	L352		;
L727:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x3]	; _449, MEM[(const char_type &)_1717]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x4, x19]	; _449, MEM[(char_type &)_448]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L347		;
L726:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x20]	; _444, MEM[(const char_type &)_409]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x4]	; _444, MEM[(char_type &)_469]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L345		;
L731:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x27]	; _502, MEM[(const char_type &)_413]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x27, x19]	; _502, MEM[(char_type &)_500]
	b	L360		;
L732:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x20]	; _503, MEM[(const char_type &)_409]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x27]	; _503, MEM[(char_type &)_413]
	ldr	x27, [x29, 304]	; MEM[(struct basic_string *)_1500]._M_dataplus._M_p, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L358		;
L738:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldr	x0, [x29, 176]	;, %sfp
	add	x2, x19, 1	;, pretmp_1052,
	mov	x1, x25	;, tmp1119
	bl	_memcpy		;
	b	L364		;
L735:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x27, 1	; _1166, __new_capacity,
	b	L344		;
L318:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x22, x22, 1	; __new_capacity, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x24, x22	; _346, __new_capacity
	bcs	L317		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	mov	x0, 9223372036854775806	; tmp527,
	cmp	x22, x0	; __new_capacity, tmp527
	bhi	L530		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x22, 1	; _1764, __new_capacity,
	b	L326		;
L530:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x22, x0	; __new_capacity, tmp527
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _1764,
	b	L326		;
L539:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1101, tmp1246
L523:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 176]	; tmp1122, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 336]	; _220, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _220, tmp1122
	beq	L524		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 352]	; MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L524:
	mov	x0, x19	;, tmp1101
LEHB52:
	bl	__Unwind_Resume		;
L537:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1025, tmp1233
L499:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 176]	; tmp1122, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 336]	; _164, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _164, tmp1122
	beq	L501		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 352]	; MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L501:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 304]	; _168, MEM[(struct basic_string *)_1500]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	; _168, tmp1119
	beq	L503		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 320]	; MEM[(struct basic_string *)_1500].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1500].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1500].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L503:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 272]	; _172, MEM[(struct basic_string *)_1487]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _172, tmp1116
	beq	L505		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 288]	; MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1487].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L505:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 240]	; _176, D.174744._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 256	; tmp1048,,
	cmp	x0, x1	; _176, tmp1048
	beq	L507		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 256]	; D.174744.D.56371._M_allocated_capacity, D.174744.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.174744.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L507:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 208]	; _180, D.174743._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x21	; _180, tmp1114
	beq	L524		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 224]	; D.174743.D.56371._M_allocated_capacity, D.174743.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.174743.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L524		;
L541:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x20, x0	; tmp778, tmp1241
L409:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 176]	; tmp1122, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 336]	; _196, MEM[(struct basic_string *)_1156]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _196, tmp1122
	beq	L514		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 352]	; MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1156].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L514:
	mov	x0, x20	;, tmp778
	bl	__Unwind_Resume		;
LEHE52:
L558:
	mov	x20, x0	; tmp803, tmp1208
L418:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x19, L409	; __new_finish,
L739:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x23, x19	;, v$D174736$_M_impl$D174027$_M_end_of_storage, __new_finish
	mov	x0, x19	;, __new_finish
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	b	L409		;
L559:
	mov	x20, x0	; tmp803, tmp1208
	b	L418		;
L716:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2199: 	  __throw_length_error(__N(__s));
	adrp	x0, lC1@PAGE	; tmp756,
	add	x0, x0, lC1@PAGEOFF;	;, tmp756,
LEHB53:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE53:
L550:
L697:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x20, x0	; tmp1248,
	ldr	x0, [x29, 192]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	mov	x19, x21	; __new_finish, v$D174736$_M_impl$D174027$_M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, 20000	;,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbnz	x19, L739	; __new_finish,
	b	L409		;
L551:
	b	L697		;
L719:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2199: 	  __throw_length_error(__N(__s));
	adrp	x0, lC1@PAGE	; tmp786,
	add	x0, x0, lC1@PAGEOFF;	;, tmp786,
LEHB54:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE54:
L542:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 368]	; _192, MEM[(const struct basic_string *)_1728]._M_dataplus._M_p
	mov	x20, x0	; tmp1240,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 160]	; tmp1125, %sfp
	cmp	x2, x0	; _192, tmp1125
	beq	L409		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 384]	; MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _192
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L409		;
L533:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1051, tmp1237
	b	L507		;
L536:
	mov	x19, x0	; tmp1033, tmp1234
	b	L501		;
L540:
L701:
	ldr	x2, [x29, 368]	; _216, MEM[(const struct basic_string *)_1728]._M_dataplus._M_p
	mov	x19, x0	; tmp1245,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 160]	; tmp1125, %sfp
	cmp	x2, x0	; _216, tmp1125
	beq	L523		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 384]	; MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _216
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L523		;
L548:
L690:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	mov	x19, x0	; tmp1198,
	cbz	x21, L523	; v$D174736$_M_impl$D174027$_M_start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, x23	;, _660
	mov	x0, x21	;, v$D174736$_M_impl$D174027$_M_start
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	b	L523		;
L549:
	b	L690		;
L713:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2199: 	  __throw_length_error(__N(__s));
	adrp	x0, lC1@PAGE	; tmp714,
	add	x0, x0, lC1@PAGEOFF;	;, tmp714,
LEHB55:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE55:
L538:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 368]	; _160, MEM[(struct basic_string *)_1728]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 384	; tmp1022,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1232,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x1	; _160, tmp1022
	beq	L499		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 384]	; MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _160
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1728].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L499		;
L728:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC9@PAGE	; tmp612,
	add	x0, x0, lC9@PAGEOFF;	;, tmp612,
LEHB56:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE56:
L546:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1101, tmp1246
	b	L523		;
L547:
	b	L701		;
L535:
	add	x23, x29, 288	; tmp1116,,
	mov	x19, x0	; tmp1039, tmp1235
	b	L503		;
L534:
	mov	x19, x0	; tmp1045, tmp1236
	b	L505		;
L702:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC9@PAGE	; tmp510,
	add	x21, x29, 224	; tmp1114,,
	add	x0, x0, lC9@PAGEOFF;	;, tmp510,
LEHB57:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE57:
L710:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2199: 	  __throw_length_error(__N(__s));
	adrp	x0, lC1@PAGE	; tmp687,
	add	x0, x0, lC1@PAGEOFF;	;, tmp687,
LEHB58:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE58:
L552:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	mov	x19, x0	; tmp872, tmp1216
L446:
	ldr	x0, [x29, 304]	; _1007, MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x0, L523	; _1007,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x29, 320]	; MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_end_of_storage, MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	;, MEM[(struct _Vector_base *)_1500]._M_impl.D.174027._M_end_of_storage, _1007
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	b	L523		;
L720:
LEHB59:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:592: 	  __throw_bad_function_call();
	bl	__ZSt25__throw_bad_function_callv		;
LEHE59:
L553:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	ldr	x3, [x29, 384]	; _961, MEM[(struct _Function_base *)_1728]._M_manager
	mov	x19, x0	; tmp1211,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	cbz	x3, L446	; _961,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:246: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	mov	w2, 3	;,
	mov	x1, x20	;, tmp1123
	mov	x0, x20	;, tmp1
	blr	x3		; _961
	b	L446		;
L554:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	mov	x19, x0	; tmp872, tmp1216
	b	L446		;
L721:
LEHB60:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:592: 	  __throw_bad_function_call();
	bl	__ZSt25__throw_bad_function_callv		;
LEHE60:
L555:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	ldr	x3, [x29, 384]	; _1006, MEM[(struct _Function_base *)_1728]._M_manager
	mov	x19, x0	; tmp1215,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	cbz	x3, L446	; _1006,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:246: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	mov	w2, 3	;,
	mov	x1, x20	;, tmp1123
	mov	x0, x20	;, tmp1
	blr	x3		; _1006
	b	L446		;
L543:
	b	L701		;
L544:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1101, tmp1246
	b	L523		;
L560:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	x19, x0	; tmp965, tmp1228
L490:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x26, x21	;, v$D174736$_M_impl$D174027$_M_end_of_storage, __new_finish
	mov	x0, x21	;, __new_finish
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	b	L523		;
L556:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)_1092 + 8B], MEM[(void (*<T11f>) (void *) *)_1092 + 8B]
	mov	x20, x0	; tmp1221,
	mov	x0, x19	;, _1092
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_1092 + 8B]
	mov	x19, x20	; tmp926, tmp1221
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x27, L523	; v$D174736$_M_impl$D174027$_M_start,
	mov	x21, x27	; __new_finish, v$D174736$_M_impl$D174027$_M_start
	b	L490		;
L733:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2199: 	  __throw_length_error(__N(__s));
	adrp	x0, lC1@PAGE	; tmp906,
	add	x0, x0, lC1@PAGEOFF;	;, tmp906,
LEHB61:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE61:
L561:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	x19, x0	; tmp965, tmp1228
	b	L490		;
L557:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)_1177 + 8B], MEM[(void (*<T11f>) (void *) *)_1177 + 8B]
	mov	x20, x0	; tmp1227,
	mov	x0, x19	;, _1177
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_1177 + 8B]
	mov	x19, x20	; tmp965, tmp1227
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x27, L523	; v$D174736$_M_impl$D174027$_M_start,
	mov	x21, x27	; __new_finish, v$D174736$_M_impl$D174027$_M_start
	b	L490		;
L734:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2199: 	  __throw_length_error(__N(__s));
	adrp	x0, lC1@PAGE	; tmp945,
	add	x0, x0, lC1@PAGEOFF;	;, tmp945,
LEHB62:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE62:
L545:
	b	L701		;
L725:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	adrp	x0, lC8@PAGE	; tmp571,
	add	x0, x0, lC8@PAGEOFF;	;, tmp571,
LEHB63:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE63:
LFE7693:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
LLSDA7693:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7693-LLSDACSB7693
LLSDACSB7693:
	.uleb128 LEHB10-LFB7693
	.uleb128 LEHE10-LEHB10
	.uleb128 L534-LFB7693
	.uleb128 0
	.uleb128 LEHB11-LFB7693
	.uleb128 LEHE11-LEHB11
	.uleb128 L535-LFB7693
	.uleb128 0
	.uleb128 LEHB12-LFB7693
	.uleb128 LEHE12-LEHB12
	.uleb128 L537-LFB7693
	.uleb128 0
	.uleb128 LEHB13-LFB7693
	.uleb128 LEHE13-LEHB13
	.uleb128 L538-LFB7693
	.uleb128 0
	.uleb128 LEHB14-LFB7693
	.uleb128 LEHE14-LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB15-LFB7693
	.uleb128 LEHE15-LEHB15
	.uleb128 L539-LFB7693
	.uleb128 0
	.uleb128 LEHB16-LFB7693
	.uleb128 LEHE16-LEHB16
	.uleb128 L548-LFB7693
	.uleb128 0
	.uleb128 LEHB17-LFB7693
	.uleb128 LEHE17-LEHB17
	.uleb128 L539-LFB7693
	.uleb128 0
	.uleb128 LEHB18-LFB7693
	.uleb128 LEHE18-LEHB18
	.uleb128 L549-LFB7693
	.uleb128 0
	.uleb128 LEHB19-LFB7693
	.uleb128 LEHE19-LEHB19
	.uleb128 L540-LFB7693
	.uleb128 0
	.uleb128 LEHB20-LFB7693
	.uleb128 LEHE20-LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB21-LFB7693
	.uleb128 LEHE21-LEHB21
	.uleb128 L541-LFB7693
	.uleb128 0
	.uleb128 LEHB22-LFB7693
	.uleb128 LEHE22-LEHB22
	.uleb128 L558-LFB7693
	.uleb128 0
	.uleb128 LEHB23-LFB7693
	.uleb128 LEHE23-LEHB23
	.uleb128 L550-LFB7693
	.uleb128 0
	.uleb128 LEHB24-LFB7693
	.uleb128 LEHE24-LEHB24
	.uleb128 L541-LFB7693
	.uleb128 0
	.uleb128 LEHB25-LFB7693
	.uleb128 LEHE25-LEHB25
	.uleb128 L559-LFB7693
	.uleb128 0
	.uleb128 LEHB26-LFB7693
	.uleb128 LEHE26-LEHB26
	.uleb128 L551-LFB7693
	.uleb128 0
	.uleb128 LEHB27-LFB7693
	.uleb128 LEHE27-LEHB27
	.uleb128 L542-LFB7693
	.uleb128 0
	.uleb128 LEHB28-LFB7693
	.uleb128 LEHE28-LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB29-LFB7693
	.uleb128 LEHE29-LEHB29
	.uleb128 L552-LFB7693
	.uleb128 0
	.uleb128 LEHB30-LFB7693
	.uleb128 LEHE30-LEHB30
	.uleb128 L553-LFB7693
	.uleb128 0
	.uleb128 LEHB31-LFB7693
	.uleb128 LEHE31-LEHB31
	.uleb128 L554-LFB7693
	.uleb128 0
	.uleb128 LEHB32-LFB7693
	.uleb128 LEHE32-LEHB32
	.uleb128 L555-LFB7693
	.uleb128 0
	.uleb128 LEHB33-LFB7693
	.uleb128 LEHE33-LEHB33
	.uleb128 L543-LFB7693
	.uleb128 0
	.uleb128 LEHB34-LFB7693
	.uleb128 LEHE34-LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB35-LFB7693
	.uleb128 LEHE35-LEHB35
	.uleb128 L544-LFB7693
	.uleb128 0
	.uleb128 LEHB36-LFB7693
	.uleb128 LEHE36-LEHB36
	.uleb128 L560-LFB7693
	.uleb128 0
	.uleb128 LEHB37-LFB7693
	.uleb128 LEHE37-LEHB37
	.uleb128 L556-LFB7693
	.uleb128 0
	.uleb128 LEHB38-LFB7693
	.uleb128 LEHE38-LEHB38
	.uleb128 L544-LFB7693
	.uleb128 0
	.uleb128 LEHB39-LFB7693
	.uleb128 LEHE39-LEHB39
	.uleb128 L561-LFB7693
	.uleb128 0
	.uleb128 LEHB40-LFB7693
	.uleb128 LEHE40-LEHB40
	.uleb128 L557-LFB7693
	.uleb128 0
	.uleb128 LEHB41-LFB7693
	.uleb128 LEHE41-LEHB41
	.uleb128 L545-LFB7693
	.uleb128 0
	.uleb128 LEHB42-LFB7693
	.uleb128 LEHE42-LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB43-LFB7693
	.uleb128 LEHE43-LEHB43
	.uleb128 L546-LFB7693
	.uleb128 0
	.uleb128 LEHB44-LFB7693
	.uleb128 LEHE44-LEHB44
	.uleb128 L547-LFB7693
	.uleb128 0
	.uleb128 LEHB45-LFB7693
	.uleb128 LEHE45-LEHB45
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB46-LFB7693
	.uleb128 LEHE46-LEHB46
	.uleb128 L533-LFB7693
	.uleb128 0
	.uleb128 LEHB47-LFB7693
	.uleb128 LEHE47-LEHB47
	.uleb128 L536-LFB7693
	.uleb128 0
	.uleb128 LEHB48-LFB7693
	.uleb128 LEHE48-LEHB48
	.uleb128 L556-LFB7693
	.uleb128 0
	.uleb128 LEHB49-LFB7693
	.uleb128 LEHE49-LEHB49
	.uleb128 L557-LFB7693
	.uleb128 0
	.uleb128 LEHB50-LFB7693
	.uleb128 LEHE50-LEHB50
	.uleb128 L536-LFB7693
	.uleb128 0
	.uleb128 LEHB51-LFB7693
	.uleb128 LEHE51-LEHB51
	.uleb128 L533-LFB7693
	.uleb128 0
	.uleb128 LEHB52-LFB7693
	.uleb128 LEHE52-LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB53-LFB7693
	.uleb128 LEHE53-LEHB53
	.uleb128 L550-LFB7693
	.uleb128 0
	.uleb128 LEHB54-LFB7693
	.uleb128 LEHE54-LEHB54
	.uleb128 L551-LFB7693
	.uleb128 0
	.uleb128 LEHB55-LFB7693
	.uleb128 LEHE55-LEHB55
	.uleb128 L549-LFB7693
	.uleb128 0
	.uleb128 LEHB56-LFB7693
	.uleb128 LEHE56-LEHB56
	.uleb128 L536-LFB7693
	.uleb128 0
	.uleb128 LEHB57-LFB7693
	.uleb128 LEHE57-LEHB57
	.uleb128 L533-LFB7693
	.uleb128 0
	.uleb128 LEHB58-LFB7693
	.uleb128 LEHE58-LEHB58
	.uleb128 L548-LFB7693
	.uleb128 0
	.uleb128 LEHB59-LFB7693
	.uleb128 LEHE59-LEHB59
	.uleb128 L553-LFB7693
	.uleb128 0
	.uleb128 LEHB60-LFB7693
	.uleb128 LEHE60-LEHB60
	.uleb128 L555-LFB7693
	.uleb128 0
	.uleb128 LEHB61-LFB7693
	.uleb128 LEHE61-LEHB61
	.uleb128 L556-LFB7693
	.uleb128 0
	.uleb128 LEHB62-LFB7693
	.uleb128 LEHE62-LEHB62
	.uleb128 L557-LFB7693
	.uleb128 0
	.uleb128 LEHB63-LFB7693
	.uleb128 LEHE63-LEHB63
	.uleb128 L536-LFB7693
	.uleb128 0
LLSDACSE7693:
	.section __TEXT,__text_startup,regular,pure_instructions
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
	.p2align 5,,15
__GLOBAL__sub_I_b4_generators.cpp:
LFB10510:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x1, __ZStL8__ioinit@PAGE	; tmp102,
; b4_generators.cpp:159: }
	stp	x29, x30, [sp, -32]!	;,,,
LCFI78:
	mov	x29, sp	;,
LCFI79:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	add	x1, x1, __ZStL8__ioinit@PAGEOFF;	; tmp101, tmp102,
; b4_generators.cpp:159: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	mov	x0, x1	;, tmp101
	str	x1, [x29, 24]	; tmp101, %sfp
	bl	__ZNSt8ios_base4InitC1Ev		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x2, ___dso_handle@PAGE	; tmp104,
	ldr	x1, [x29, 24]	; tmp101, %sfp
; b4_generators.cpp:159: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	add	x2, x2, ___dso_handle@PAGEOFF;	;, tmp104,
; b4_generators.cpp:159: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI80:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE	;,
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]	;,
	b	___cxa_atexit		;
LFE10510:
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
__ZTIZZ4mainENKUlvE1_clEvEUliE_:
; <anonymous>:
; <anonymous>:
	.xword	__ZTVN10__cxxabiv117__class_type_infoE+16
; <anonymous>:
	.xword	__ZTSZZ4mainENKUlvE1_clEvEUliE_
	.const
	.align	3
__ZTSZZ4mainENKUlvE1_clEvEUliE_:
	.ascii "*ZZ4mainENKUlvE1_clEvEUliE_\0"
	.globl __ZN2fx6detail12effect_tag_vI4EmitIiEEE
	.weak_definition __ZN2fx6detail12effect_tag_vI4EmitIiEEE
__ZN2fx6detail12effect_tag_vI4EmitIiEEE:
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
	.quad	LFB7662-.
	.set L$set$4,LFE7662-LFB7662
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
	.quad	LFB4726-.
	.set L$set$6,LFE4726-LFB4726
	.quad L$set$6
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$7,LCFI0-LFB4726
	.long L$set$7
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$8,LCFI1-LCFI0
	.long L$set$8
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$9,LCFI2-LCFI1
	.long L$set$9
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE5:
LSFDE7:
	.set L$set$10,LEFDE7-LASFDE7
	.long L$set$10
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB8811-.
	.set L$set$11,LFE8811-LFB8811
	.quad L$set$11
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE7:
LSFDE9:
	.set L$set$12,LEFDE9-LASFDE9
	.long L$set$12
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB7690-.
	.set L$set$13,LFE7690-LFB7690
	.quad L$set$13
	.uleb128 0x8
	.quad	LLSDA7690-.
	.byte	0x4
	.set L$set$14,LCFI3-LFB7690
	.long L$set$14
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$15,LCFI4-LCFI3
	.long L$set$15
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$16,LCFI5-LCFI4
	.long L$set$16
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$17,LCFI6-LCFI5
	.long L$set$17
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$18,LCFI7-LCFI6
	.long L$set$18
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xdd
	.byte	0xde
	.byte	0x4
	.set L$set$19,LCFI8-LCFI7
	.long L$set$19
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$20,LCFI9-LCFI8
	.long L$set$20
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE9:
LSFDE11:
	.set L$set$21,LEFDE11-LASFDE11
	.long L$set$21
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB10518-.
	.set L$set$22,LFE10518-LFB10518
	.quad L$set$22
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$23,LCFI10-LFB10518
	.long L$set$23
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$24,LCFI11-LCFI10
	.long L$set$24
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$25,LCFI12-LCFI11
	.long L$set$25
	.byte	0x95
	.uleb128 0x4
	.byte	0x4
	.set L$set$26,LCFI13-LCFI12
	.long L$set$26
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$27,LCFI14-LCFI13
	.long L$set$27
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
	.set L$set$28,LCFI15-LCFI14
	.long L$set$28
	.byte	0xb
	.align	3
LEFDE11:
LSFDE13:
	.set L$set$29,LEFDE13-LASFDE13
	.long L$set$29
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB9097-.
	.set L$set$30,LFE9097-LFB9097
	.quad L$set$30
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$31,LCFI16-LFB9097
	.long L$set$31
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$32,LCFI17-LCFI16
	.long L$set$32
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$33,LCFI18-LCFI17
	.long L$set$33
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$34,LCFI19-LCFI18
	.long L$set$34
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$35,LCFI20-LCFI19
	.long L$set$35
	.byte	0xb
	.align	3
LEFDE13:
LSFDE15:
	.set L$set$36,LEFDE15-LASFDE15
	.long L$set$36
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB7663-.
	.set L$set$37,LFE7663-LFB7663
	.quad L$set$37
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE15:
LSFDE17:
	.set L$set$38,LEFDE17-LASFDE17
	.long L$set$38
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB7770-.
	.set L$set$39,LFE7770-LFB7770
	.quad L$set$39
	.uleb128 0x8
	.quad	LLSDA7770-.
	.byte	0x4
	.set L$set$40,LCFI21-LFB7770
	.long L$set$40
	.byte	0xe
	.uleb128 0xb0
	.byte	0x9d
	.uleb128 0x16
	.byte	0x9e
	.uleb128 0x15
	.byte	0x4
	.set L$set$41,LCFI22-LCFI21
	.long L$set$41
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$42,LCFI23-LCFI22
	.long L$set$42
	.byte	0x95
	.uleb128 0x12
	.byte	0x96
	.uleb128 0x11
	.byte	0x4
	.set L$set$43,LCFI24-LCFI23
	.long L$set$43
	.byte	0x93
	.uleb128 0x14
	.byte	0x94
	.uleb128 0x13
	.byte	0x97
	.uleb128 0x10
	.byte	0x4
	.set L$set$44,LCFI25-LCFI24
	.long L$set$44
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$45,LCFI26-LCFI25
	.long L$set$45
	.byte	0xb
	.align	3
LEFDE17:
LSFDE19:
	.set L$set$46,LEFDE19-LASFDE19
	.long L$set$46
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB8807-.
	.set L$set$47,LFE8807-LFB8807
	.quad L$set$47
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$48,LCFI27-LFB8807
	.long L$set$48
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$49,LCFI28-LCFI27
	.long L$set$49
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$50,LCFI29-LCFI28
	.long L$set$50
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$51,LCFI30-LCFI29
	.long L$set$51
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$52,LCFI31-LCFI30
	.long L$set$52
	.byte	0xb
	.align	3
LEFDE19:
LSFDE21:
	.set L$set$53,LEFDE21-LASFDE21
	.long L$set$53
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB7691-.
	.set L$set$54,LFE7691-LFB7691
	.quad L$set$54
	.uleb128 0x8
	.quad	LLSDA7691-.
	.byte	0x4
	.set L$set$55,LCFI32-LFB7691
	.long L$set$55
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$56,LCFI33-LCFI32
	.long L$set$56
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$57,LCFI34-LCFI33
	.long L$set$57
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$58,LCFI35-LCFI34
	.long L$set$58
	.byte	0xb
	.byte	0x4
	.set L$set$59,LCFI36-LCFI35
	.long L$set$59
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE21:
LSFDE23:
	.set L$set$60,LEFDE23-LASFDE23
	.long L$set$60
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB2842-.
	.set L$set$61,LFE2842-LFB2842
	.quad L$set$61
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$62,LCFI37-LFB2842
	.long L$set$62
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$63,LCFI38-LCFI37
	.long L$set$63
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$64,LCFI39-LCFI38
	.long L$set$64
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE23:
LSFDE25:
	.set L$set$65,LEFDE25-LASFDE25
	.long L$set$65
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB2804-.
	.set L$set$66,LFE2804-LFB2804
	.quad L$set$66
	.uleb128 0x8
	.quad	LLSDA2804-.
	.byte	0x4
	.set L$set$67,LCFI40-LFB2804
	.long L$set$67
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$68,LCFI41-LCFI40
	.long L$set$68
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$69,LCFI42-LCFI41
	.long L$set$69
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$70,LCFI43-LCFI42
	.long L$set$70
	.byte	0xd3
	.byte	0x4
	.set L$set$71,LCFI44-LCFI43
	.long L$set$71
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$72,LCFI45-LCFI44
	.long L$set$72
	.byte	0xb
	.byte	0x4
	.set L$set$73,LCFI46-LCFI45
	.long L$set$73
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$74,LCFI47-LCFI46
	.long L$set$74
	.byte	0xb
	.byte	0x4
	.set L$set$75,LCFI48-LCFI47
	.long L$set$75
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$76,LCFI49-LCFI48
	.long L$set$76
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE25:
LSFDE27:
	.set L$set$77,LEFDE27-LASFDE27
	.long L$set$77
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB2850-.
	.set L$set$78,LFE2850-LFB2850
	.quad L$set$78
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$79,LCFI50-LFB2850
	.long L$set$79
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$80,LCFI51-LCFI50
	.long L$set$80
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$81,LCFI52-LCFI51
	.long L$set$81
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$82,LCFI53-LCFI52
	.long L$set$82
	.byte	0xd3
	.byte	0x4
	.set L$set$83,LCFI54-LCFI53
	.long L$set$83
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$84,LCFI55-LCFI54
	.long L$set$84
	.byte	0xb
	.byte	0x4
	.set L$set$85,LCFI56-LCFI55
	.long L$set$85
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$86,LCFI57-LCFI56
	.long L$set$86
	.byte	0xb
	.byte	0x4
	.set L$set$87,LCFI58-LCFI57
	.long L$set$87
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$88,LCFI59-LCFI58
	.long L$set$88
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE27:
LSFDE29:
	.set L$set$89,LEFDE29-LASFDE29
	.long L$set$89
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB6914-.
	.set L$set$90,LFE6914-LFB6914
	.quad L$set$90
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$91,LCFI60-LFB6914
	.long L$set$91
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$92,LCFI61-LCFI60
	.long L$set$92
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$93,LCFI62-LCFI61
	.long L$set$93
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$94,LCFI63-LCFI62
	.long L$set$94
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x4
	.set L$set$95,LCFI64-LCFI63
	.long L$set$95
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
	.set L$set$96,LEFDE31-LASFDE31
	.long L$set$96
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB8784-.
	.set L$set$97,LFE8784-LFB8784
	.quad L$set$97
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$98,LCFI65-LFB8784
	.long L$set$98
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$99,LCFI66-LCFI65
	.long L$set$99
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$100,LCFI67-LCFI66
	.long L$set$100
	.byte	0x93
	.uleb128 0xa
	.byte	0x94
	.uleb128 0x9
	.byte	0x4
	.set L$set$101,LCFI68-LCFI67
	.long L$set$101
	.byte	0x95
	.uleb128 0x8
	.byte	0x96
	.uleb128 0x7
	.byte	0x97
	.uleb128 0x6
	.byte	0x98
	.uleb128 0x5
	.byte	0x4
	.set L$set$102,LCFI69-LCFI68
	.long L$set$102
	.byte	0x99
	.uleb128 0x4
	.byte	0x4
	.set L$set$103,LCFI70-LCFI69
	.long L$set$103
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
	.set L$set$104,LCFI71-LCFI70
	.long L$set$104
	.byte	0xb
	.align	3
LEFDE31:
LSFDE33:
	.set L$set$105,LEFDE33-LASFDE33
	.long L$set$105
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB7693-.
	.set L$set$106,LFE7693-LFB7693
	.quad L$set$106
	.uleb128 0x8
	.quad	LLSDA7693-.
	.byte	0x4
	.set L$set$107,LCFI72-LFB7693
	.long L$set$107
	.byte	0xe
	.uleb128 0x1a0
	.byte	0x9d
	.uleb128 0x34
	.byte	0x9e
	.uleb128 0x33
	.byte	0x4
	.set L$set$108,LCFI73-LCFI72
	.long L$set$108
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$109,LCFI74-LCFI73
	.long L$set$109
	.byte	0x99
	.uleb128 0x2c
	.byte	0x9a
	.uleb128 0x2b
	.byte	0x4
	.set L$set$110,LCFI75-LCFI74
	.long L$set$110
	.byte	0x93
	.uleb128 0x32
	.byte	0x94
	.uleb128 0x31
	.byte	0x95
	.uleb128 0x30
	.byte	0x96
	.uleb128 0x2f
	.byte	0x97
	.uleb128 0x2e
	.byte	0x98
	.uleb128 0x2d
	.byte	0x9b
	.uleb128 0x2a
	.byte	0x9c
	.uleb128 0x29
	.byte	0x5
	.uleb128 0x4b
	.uleb128 0x28
	.byte	0x5
	.uleb128 0x4c
	.uleb128 0x27
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x26
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x25
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x24
	.byte	0x4
	.set L$set$111,LCFI76-LCFI75
	.long L$set$111
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
	.byte	0x6
	.uleb128 0x4b
	.byte	0x6
	.uleb128 0x4c
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$112,LCFI77-LCFI76
	.long L$set$112
	.byte	0xb
	.align	3
LEFDE33:
LSFDE35:
	.set L$set$113,LEFDE35-LASFDE35
	.long L$set$113
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB10510-.
	.set L$set$114,LFE10510-LFB10510
	.quad L$set$114
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$115,LCFI78-LFB10510
	.long L$set$115
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$116,LCFI79-LCFI78
	.long L$set$116
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$117,LCFI80-LCFI79
	.long L$set$117
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
	.xword	__GLOBAL__sub_I_b4_generators.cpp
	.subsections_via_symbols
