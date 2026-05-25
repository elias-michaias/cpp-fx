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
__ZL10direct_inci:
LFB7774:
; b1_dispatch.cpp:40: [[gnu::noinline]] static int direct_inc(int x) { return x + 1; }
	add	w0, w0, 1	;, x,
	ret	
LFE7774:
	.align	2
	.p2align 5,,15
__ZZ4mainEN4Impl3incEi:
LFB7818:
; b1_dispatch.cpp:81:       [[gnu::noinline]] int inc(int x) override { return x + 1; }
	add	w0, w1, 1	;, x,
	ret	
LFE7818:
	.align	2
	.p2align 5,,15
__ZZ4mainEN4ImplD1Ev:
LFB8617:
; b1_dispatch.cpp:80:     struct Impl : Base {
	ret	
LFE8617:
	.align	2
	.p2align 5,,15
__ZNSt17_Function_handlerIFiiEZ4mainEUliE_E9_M_invokeERKSt9_Any_dataOi:
LFB8974:
; b1_dispatch.cpp:68:     std::function<int(int)> fn = [](int x) { return x + 1; };
	ldr	w0, [x1]	;, *__args#0_4(D)
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:294:       }
	add	w0, w0, 1	;, *__args#0_4(D),
	ret	
LFE8974:
	.align	2
	.p2align 5,,15
__ZNSt17_Function_handlerIFiiEZ4mainEUliE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation:
LFB8977:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:272: 	switch (__op)
	cbz	w2, L8	; __op,
	cmp	w2, 1	; __op,
	beq	L9		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:287:       }
	mov	w0, 0	;,
	ret	
	.p2align 2,,3
L9:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:280: 	    __dest._M_access<_Functor*>() = _Base::_M_get_pointer(__source);
	str	x1, [x0]	; __source,* __dest
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:287:       }
	mov	w0, 0	;,
	ret	
	.p2align 2,,3
L8:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:276: 	    __dest._M_access<const type_info*>() = &typeid(_Functor);
	adrp	x1, __ZTIZ4mainEUliE_@PAGE	; tmp107,
	add	x1, x1, __ZTIZ4mainEUliE_@PAGEOFF;	; tmp106, tmp107,
	str	x1, [x0]	; tmp106,* __dest
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:287:       }
	mov	w0, 0	;,
	ret	
LFE8977:
	.align	2
	.p2align 5,,15
	.globl __ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.weak_definition __ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
__ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
LFB8989:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x0, [x1, 8]	; _6, MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr
; b1_dispatch.cpp:34:   void handle(Increment e, auto r) { r(e.value + 1); }
	ldr	w2, [x1]	;, MEM[(struct PerformAwaitable *)_3(D)].effect_.value
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x0]	; MEM[(void (*<T11f>) (void *) *)_6], MEM[(void (*<T11f>) (void *) *)_6]
; b1_dispatch.cpp:34:   void handle(Increment e, auto r) { r(e.value + 1); }
	add	w2, w2, 1	; _5, MEM[(struct PerformAwaitable *)_3(D)].effect_.value,
; ../../effects.hpp:1229:   pa->result_ = std::move(v);
	str	w2, [x1, 4]	; _5, MEM[(struct PerformAwaitable *)_3(D)].result_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x16, x3	; MEM[(void (*<T11f>) (void *) *)_6], MEM[(void (*<T11f>) (void *) *)_6]
	br	x16		; MEM[(void (*<T11f>) (void *) *)_6]
LFE8989:
	.align	2
	.p2align 5,,15
__ZZ4mainEN4ImplD0Ev:
LFB8618:
; b1_dispatch.cpp:80:     struct Impl : Base {
	mov	x1, 8	;,
	b	__ZdlPvm		;
LFE8618:
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
	bhi	L16		;,
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
	bhi	L16		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x3, x3, x7	; _6, _22, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x4	; <retval>, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x3, x3, x4	; prephitmp_1, _6, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x4, x3, [x5, 8]	; <retval>, prephitmp_1,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x4, L16	; <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x3, x3, x1	; _10, prephitmp_1, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x4, x1	; _8, <retval>, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x3, [x5, 8]	; _8, _10,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:430:     }
	ret	
	.p2align 2,,3
L16:
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
__ZZ4mainEN4Impl3incEi.constprop.0:
LFB10647:
; b1_dispatch.cpp:81:       [[gnu::noinline]] int inc(int x) override { return x + 1; }
	add	w0, w0, 1	;, x,
	ret	
LFE10647:
	.align	2
	.p2align 5,,15
__Z6fx_incP17_ZL6fx_inci.Frame.actor:
LFB7802:
	mov	x1, x0	; frame_ptr, frame_ptr
; b1_dispatch.cpp:46: }
	ldrh	w0, [x0, 172]	; _1, frame_ptr_8(D)->_Coro_resume_index
	tbz	x0, 0, L25	; _1,,
; b1_dispatch.cpp:46: }
	cmp	w0, 7	; _1,
	bhi	L26		;,
L27:
L33:
L34:
L35:
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI3:
	mov	x29, sp	;,
LCFI4:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp140, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_8(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_8(D) + 128B]._M_exception_object
	cbz	x2, L36	; MEM[(struct exception_ptr *)frame_ptr_8(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L36:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp145, frame_ptr,
	ldr	x2, [x0, 48]	; _36, MEM[(struct SmallAny *)frame_ptr_8(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L37	; _36,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _36
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L37:
; b1_dispatch.cpp:46: }
	ldrb	w0, [x1, 174]	; frame_ptr_8(D)->_Coro_frame_needs_free, frame_ptr_8(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L54	; frame_ptr_8(D)->_Coro_frame_needs_free,,
L32:
L24:
; b1_dispatch.cpp:46: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L25:
; b1_dispatch.cpp:46: }
	cmp	w0, 4	; _1,
	beq	L28		;,
	bhi	L29		;,
	cbz	w0, L30	; _1,
L31:
	ldr	x4, [x1, 160]	; caller$_M_fr_ptr, frame_ptr_8(D)->_Coro_self_handle._M_fr_ptr
; b1_dispatch.cpp:46: }
	mov	w0, 4	; tmp124,
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	mov	w6, 1	; tmp123,
; ../../effects.hpp:1210:     caller_ = caller;
	add	x3, x1, 184	; tmp126, frame_ptr,
; b1_dispatch.cpp:46: }
	ldr	w5, [x1, 168]	;, frame_ptr_8(D)->x
	strh	w0, [x1, 172]	; tmp124, frame_ptr_8(D)->_Coro_resume_index
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	adrp	x0, __ZN2fx6detail12effect_tag_vI9IncrementEE@GOTPAGE	; tmp132,
	ldr	x0, [x0, __ZN2fx6detail12effect_tag_vI9IncrementEE@GOTPAGEOFF]	; tmp132,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	add	x2, x4, 16	; __t_20, caller$_M_fr_ptr,
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	strb	w6, [x1, 175]	; tmp123, frame_ptr_8(D)->_Coro_initial_await_resume_called
	stp	w5, wzr, [x1, 184]	; _3,,
; ../../effects.hpp:1210:     caller_ = caller;
	stp	x4, x2, [x1, 192]	; caller$_M_fr_ptr, __t_20,
; b1_dispatch.cpp:46: }
	str	w5, [x1, 208]	; _3, frame_ptr_8(D)->T002_2_3.value
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	stp	x0, x3, [x4, 112]	; tmp132, tmp126,
	ret	
	.p2align 2,,3
L54:
LCFI6:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 224]	; mr, MEM[(struct memory_resource * *)frame_ptr_8(D) + 224B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L38	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x3, [x0]	; mr_40->_vptr.memory_resource, mr_40->_vptr.memory_resource
	adrp	x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp150,
	ldr	x2, [x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp150,
	ldr	x4, [x3, 24]	; _42, MEM[(int (*) () *)_41 + 24B]
	cmp	x4, x2	; _42, tmp150
	beq	L24		;,
	mov	x3, 16	;,
	mov	x2, 232	;,
	blr	x4		; _42
	b	L24		;
	.p2align 2,,3
L30:
LCFI7:
; b1_dispatch.cpp:46: }
	mov	w0, 2	; tmp122,
; b1_dispatch.cpp:46: }
	str	x1, [x1, 160]	; frame_ptr, frame_ptr_8(D)->_Coro_self_handle._M_fr_ptr
; b1_dispatch.cpp:46: }
	strb	wzr, [x1, 175]	;, frame_ptr_8(D)->_Coro_initial_await_resume_called
; b1_dispatch.cpp:46: }
	strh	w0, [x1, 172]	; tmp122, frame_ptr_8(D)->_Coro_resume_index
	ret	
	.p2align 2,,3
L28:
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	ldr	w0, [x1, 188]	;, MEM[(type &)frame_ptr_8(D) + 188]
	mov	w3, 1	; tmp137,
; b1_dispatch.cpp:46: }
	mov	w2, 6	; tmp138,
; b1_dispatch.cpp:46: }
	str	xzr, [x1]	;, frame_ptr_8(D)->_Coro_resume_fn
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	strb	w3, [x1, 148]	; tmp137, MEM <unsigned char> [(struct promise_type *)frame_ptr_8(D) + 148B]
; b1_dispatch.cpp:46: }
	strh	w2, [x1, 172]	; tmp138, frame_ptr_8(D)->_Coro_resume_index
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	str	w0, [x1, 144]	; MEM[(type &)frame_ptr_8(D) + 188], MEM <int> [(struct promise_type *)frame_ptr_8(D) + 144B]
	ret	
	.p2align 2,,3
L29:
; b1_dispatch.cpp:46: }
	cmp	w0, 6	; _1,
	beq	L35		;,
L26:
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	brk #1000
	.p2align 2,,3
L38:
LCFI8:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b1_dispatch.cpp:46: }
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 232	;,
; b1_dispatch.cpp:46: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI9:
LEHB0:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE0:
LFE7802:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
LLSDA7802:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7802-LLSDACSB7802
LLSDACSB7802:
	.uleb128 LEHB0-LFB7802
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
LLSDACSE7802:
	.text
	.cstring
	.align	3
lC0:
	.ascii "basic_string: construction from null is not valid\0"
	.text
	.align	2
	.p2align 5,,15
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0:
LFB10650:
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
	cbz	x1, L65	; __s,
	mov	x19, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x0, x1	;, __s
	mov	x20, x1	; __s, __s
	bl	_strlen		;
	mov	x2, x0	; _4, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:233: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	; _4,
	bhi	L66		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x0, 1	; _4,
	beq	L67		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:423: 	if (__n == 0)
	cbnz	x0, L58	; _4,
L60:
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
L67:
LCFI15:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x20]	;, MEM[(const char_type &)__s_3(D)]
	strb	w0, [x19, 16]	; MEM[(const char_type &)__s_3(D)], MEM[(char_type &)this_1(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L60		;
L66:
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
L58:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, __s
	mov	x0, x21	;, _2
	str	x2, [x29, 56]	; _4, %sfp
	bl	_memcpy		;
	ldr	x2, [x29, 56]	; _4, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	L60		;
L65:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:711: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, lC0@PAGE	; tmp110,
	add	x0, x0, lC0@PAGEOFF;	;, tmp110,
	bl	__ZSt19__throw_logic_errorPKc		;
LFE10650:
	.cstring
	.align	3
lC1:
	.ascii "fx: unhandled effect -- no matching handler installed\0"
	.text
	.align	2
	.p2align 5,,15
__ZZ4mainENKUlvE2_clEv:
LFB7933:
	stp	x29, x30, [sp, -160]!	;,,,
LCFI16:
	mov	x29, sp	;,
LCFI17:
	stp	x23, x24, [sp, 48]	;,,
LCFI18:
	mov	x24, x0	; __closure, __closure
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
LCFI19:
; b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	ldr	x1, [x24]	; __closure_5(D)->__sink, __closure_5(D)->__sink
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	ldr	w22, [x1]	;, *_1
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x21, [x0]	; mr, *_34
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x21, L69	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x1, [x21]	; mr_35->_vptr.memory_resource, mr_35->_vptr.memory_resource
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp151,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp151,
	ldr	x3, [x1, 16]	; _38, MEM[(int (*) () *)_37 + 16B]
	cmp	x3, x0	; _38, tmp151
	bne	L70		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x21, 16]	; _50, MEM[(size_t &)mr_35 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 231	; _50,
	bls	L73		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x3, [x21, 8]	; __intptr, MEM[(void * &)mr_35 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x2, x0, #232	; _59, _50,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x1, x3, 15	; _55, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x1, x1, -16	; __aligned, _55,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x4, x1, x3	; __diff_58, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x4, x2	; __diff_58, _59
	bhi	L73		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x0, x0, x3	; _228, _50, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x19, x1	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x0, x0, x1	; _61, _228, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x1, x0, [x21, 8]	; __p, _61,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x1, L73	; __p,
L72:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x0, x0, #232	; _70, _61,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x19, 232	; _68, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x0, [x21, 8]	; _68, _70,
L74:
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	adrp	x0, __Z6fx_incP17_ZL6fx_inci.Frame.actor@PAGE	; tmp160,
	adrp	x1, __Z6fx_incP17_ZL6fx_inci.Frame.destroy@PAGE	; tmp162,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp169
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	add	x0, x0, __Z6fx_incP17_ZL6fx_inci.Frame.actor@PAGEOFF;	; tmp159, tmp160,
	add	x1, x1, __Z6fx_incP17_ZL6fx_inci.Frame.destroy@PAGEOFF;	; tmp161, tmp162,
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x20, x19, 16	; tmp241, __p,
	strb	wzr, [x19, 16]	;, MEM[(struct PromiseAbortBase *)raw_41 + 16B].aborted
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	mov	w2, 65536	; tmp175,
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	stp	x0, x1, [x19]	; tmp159, tmp161,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x19, 144	; _33, __p,
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	mov	x0, x19	;, __p
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	add	x23, x29, 96	; tmp243,,
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	str	w22, [x19, 168]	; _2, MEM[(struct _ZL6fx_inci.Frame *)raw_41].x
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	add	x22, x19, 32	; _78, __p,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x21, [x19, 224]	; mr, MEM[(struct memory_resource * *)raw_41 + 224B]
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x20, 8]	;, MEM[(struct PromiseAbortBase *)raw_41 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x19, 32]	; MEM[(struct SmallAny *)raw_41 + 32B].buf_
	stp	xzr, xzr, [x22, 16]	; MEM[(struct SmallAny *)raw_41 + 32B].buf_
	stp	xzr, xzr, [x22, 32]	; MEM[(struct SmallAny *)raw_41 + 32B].buf_
	str	q31, [x19, 80]	; tmp169, MEM <vector(2) long unsigned int> [(void *)raw_41 + 80B]
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_41 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x19, 112]	; tmp169, MEM <vector(2) long unsigned int> [(const void * *)raw_41 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x19, 128]	;, MEM[(struct exception_ptr *)raw_41 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x19, 148]	;, MEM[(struct _Optional_payload_base *)raw_41 + 144B]._M_engaged
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	str	w2, [x19, 172]	; tmp175, MEM <unsigned int> [(void *)raw_41 + 172B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x20, 120]	; _33, MEM[(struct promise_type *)raw_41 + 16B].D.175877.D.174844.result_ptr
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	bl	__Z6fx_incP17_ZL6fx_inci.Frame.actor		;
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	adrp	x1, __ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGE	; tmp183,
	ldr	x1, [x1, __ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGEOFF]	; tmp183,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x2, x29, 80	; tmp181,,
; ../../effects.hpp:247: struct HandlerNode {
	str	xzr, [x29, 136]	;, MEM[(struct HandlerNode *)&guard].on_return_any_fn
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	adrp	x3, __ZN2fx6detail12effect_tag_vI9IncrementEE@GOTPAGE	; tmp180,
	ldr	x3, [x3, __ZN2fx6detail12effect_tag_vI9IncrementEE@GOTPAGEOFF]	; tmp180,
; ../../effects.hpp:752:     saved = detail::stack_top;
	adrp	x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	;,
; b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	ldr	x24, [x24]	; _3, __closure_5(D)->__sink
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x3, x23, [x29, 96]	; tmp180, tmp243,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	stp	x2, x1, [x29, 112]	; tmp181, tmp183,
; ../../effects.hpp:752:     saved = detail::stack_top;
	bl	___emutls_get_address		;
	mov	x21, x0	; _72,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x2, [x19]	; MEM[(void (*<T11f>) (void *) *)raw_41], MEM[(void (*<T11f>) (void *) *)raw_41]
	mov	x0, x19	;, __p
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x21]	; stack_top.48_73, *_72
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x23, [x21]	; tmp243, *_72
; ../../effects.hpp:753:     node.prev = saved;
	str	x1, [x29, 128]	; stack_top.48_73, guard.node.prev
; ../../effects.hpp:752:     saved = detail::stack_top;
	str	x1, [x29, 144]	; stack_top.48_73, guard.saved
LEHB1:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)raw_41]
	.p2align 5,,15
L75:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x1, [x19]	; MEM[(void * *)raw_41], MEM[(void * *)raw_41]
	cbz	x1, L115	; MEM[(void * *)raw_41],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x21]	; n, *_72
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x2, [x20, 96]	; _90, MEM[(struct promise_type &)raw_41 + 16].D.175877.D.174844.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L79	; n,
	b	L76		;
	.p2align 2,,3
L77:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_27->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L76	; n,
L79:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_27->effect_tag, n_27->effect_tag
	cmp	x2, x1	; _90, n_27->effect_tag
	bne	L77		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_27->dispatch, n_27->dispatch
	ldr	x1, [x20, 104]	;, MEM[(struct promise_type &)raw_41 + 16].D.175877.D.174844.payload_ptr
	blr	x2		; n_27->dispatch
LEHE1:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x20]	; MEM[(struct promise_type &)raw_41 + 16].D.175877.D.174844.aborted, MEM[(struct promise_type &)raw_41 + 16].D.175877.D.174844.aborted
	tbz	x0, 0, L75	; MEM[(struct promise_type &)raw_41 + 16].D.175877.D.174844.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x20, 8]	; MEM[(struct PromiseAbortBase *)raw_41 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_41 + 16B].abort_owner
; ../../effects.hpp:893:       return std::nullopt;
	mov	w3, 0	; SR.520,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	cmp	x0, x23	; MEM[(struct PromiseAbortBase *)raw_41 + 16B].abort_owner, tmp243
	beq	L89		;,
L86:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 144]	; guard.saved, guard.saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x19	;, __p
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)raw_41 + 8B], MEM[(void (*<T11f>) (void *) *)raw_41 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x21]	; guard.saved, *_72
; b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	str	w3, [x24]	; SR.520, *_3
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_41 + 8B]
; b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 160	;,,,
LCFI20:
	ret	
L73:
LCFI21:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x0, x21	;, mr
	mov	x2, 16	;,
	mov	x1, 232	;,
LEHB2:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x19, x0, [x21, 8]	; __p, _61,
	b	L72		;
L115:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x19, 128]	; _95, MEM[(const struct exception_ptr *)raw_41 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x0, L116	; _95,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x19, 16]	; MEM[(struct PromiseAbortBase *)raw_41 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_41 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	w3, [x19, 144]	;, MEM[(int &)raw_41 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L86	; MEM[(struct PromiseAbortBase *)raw_41 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x20, 8]	; MEM[(struct PromiseAbortBase *)raw_41 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_41 + 16B].abort_owner
	cmp	x0, x23	; MEM[(struct PromiseAbortBase *)raw_41 + 16B].abort_owner, tmp243
	bne	L86		;,
L89:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x22, 48]	; _81, MEM[(struct SmallAny *)raw_41 + 32B].destroy_
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x19, 16]	;, MEM[(struct PromiseAbortBase *)raw_41 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w3, [x19, 32]	;, MEM[(type &)_79]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L86	; _81,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x22	;, _78
	str	w3, [x29, 76]	; SR.520, %sfp
	blr	x1		; _81
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x19, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_41 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	w3, [x29, 76]	;, %sfp
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_41 + 32B].type_tag_
	b	L86		;
L69:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 232	;,
	bl	__Znwm		;
	mov	x19, x0	; __p, __p
	b	L74		;
L70:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 232	;,
	mov	x0, x21	;, mr
	blr	x3		; _38
LEHE2:
	mov	x19, x0	; __p, __p
	b	L74		;
L116:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x0, [x29, 88]	; _95, MEM[(struct exception_ptr *)&D.231451]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 88	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	add	x0, x29, 88	;,,
LEHB3:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE3:
L76:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp196,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _104,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp196,
LEHB4:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE4:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _104
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB5:
	bl	___cxa_throw		;
LEHE5:
L93:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x20, x0	; tmp199, tmp252
	b	L81		;
L94:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 88]	; D.231451._M_exception_object, D.231451._M_exception_object
	mov	x20, x0	; tmp251,
	cbz	x1, L81	; D.231451._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 88	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L81		;
L95:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x20, x0	; tmp250,
	mov	x0, x22	;, _104
	bl	___cxa_free_exception		;
L81:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 144]	; guard.saved, guard.saved
	str	x0, [x21]	; guard.saved, *_72
; ../../effects.hpp:622:     if (h)
	cbz	x19, L91	; __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)raw_41 + 8B], MEM[(void (*<T11f>) (void *) *)raw_41 + 8B]
	mov	x0, x19	;, __p
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_41 + 8B]
L91:
	mov	x0, x20	;, tmp199
LEHB6:
	bl	__Unwind_Resume		;
LEHE6:
LFE7933:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
LLSDA7933:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7933-LLSDACSB7933
LLSDACSB7933:
	.uleb128 LEHB1-LFB7933
	.uleb128 LEHE1-LEHB1
	.uleb128 L93-LFB7933
	.uleb128 0
	.uleb128 LEHB2-LFB7933
	.uleb128 LEHE2-LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB3-LFB7933
	.uleb128 LEHE3-LEHB3
	.uleb128 L94-LFB7933
	.uleb128 0
	.uleb128 LEHB4-LFB7933
	.uleb128 LEHE4-LEHB4
	.uleb128 L95-LFB7933
	.uleb128 0
	.uleb128 LEHB5-LFB7933
	.uleb128 LEHE5-LEHB5
	.uleb128 L93-LFB7933
	.uleb128 0
	.uleb128 LEHB6-LFB7933
	.uleb128 LEHE6-LEHB6
	.uleb128 0
	.uleb128 0
LLSDACSE7933:
	.text
	.align	2
	.p2align 5,,15
__Z6fx_incP17_ZL6fx_inci.Frame.destroy:
LFB7803:
	mov	x1, x0	; frame_ptr, frame_ptr
	ldrh	w0, [x0, 172]	; tmp114, frame_ptr_4(D)->_Coro_resume_index
	orr	w0, w0, 1	; _2, tmp114,
	strh	w0, [x1, 172]	; _2, frame_ptr_4(D)->_Coro_resume_index
; b1_dispatch.cpp:46: }
	cmp	w0, 7	; _2,
	bhi	L125		;,
L119:
L120:
L121:
L122:
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI22:
	mov	x29, sp	;,
LCFI23:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp117, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object
	cbz	x2, L124	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L124:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp122, frame_ptr,
	ldr	x2, [x0, 48]	; _18, MEM[(struct SmallAny *)frame_ptr_4(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L126	; _18,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _18
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L126:
; b1_dispatch.cpp:46: }
	ldrb	w0, [x1, 174]	; frame_ptr_4(D)->_Coro_frame_needs_free, frame_ptr_4(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L137	; frame_ptr_4(D)->_Coro_frame_needs_free,,
L127:
L117:
; b1_dispatch.cpp:46: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI24:
	ret	
	.p2align 2,,3
L137:
LCFI25:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 224]	; mr, MEM[(struct memory_resource * *)frame_ptr_4(D) + 224B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L128	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x3, [x0]	; mr_22->_vptr.memory_resource, mr_22->_vptr.memory_resource
	adrp	x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp127,
	ldr	x2, [x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp127,
	ldr	x4, [x3, 24]	; _24, MEM[(int (*) () *)_23 + 24B]
	cmp	x4, x2	; _24, tmp127
	beq	L117		;,
	mov	x3, 16	;,
	mov	x2, 232	;,
	blr	x4		; _24
	b	L117		;
	.p2align 2,,3
L128:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b1_dispatch.cpp:46: }
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 232	;,
; b1_dispatch.cpp:46: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI26:
LEHB7:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE7:
L118:
L125:
; b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	brk #1000
LFE7803:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
LLSDA7803:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7803-LLSDACSB7803
LLSDACSB7803:
	.uleb128 LEHB7-LFB7803
	.uleb128 LEHE7-LEHB7
	.uleb128 0
	.uleb128 0
LLSDACSE7803:
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
	beq	L145		;,
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
L145:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:742:       basic_string(basic_string&& __str) noexcept
	stp	x29, x30, [sp, -48]!	;,,,
LCFI27:
	mov	x29, sp	;,
LCFI28:
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
LCFI29:
	ret	
LFE2842:
	.align	2
	.p2align 5,,15
	.globl __ZNSt7__cxx119to_stringEm
	.weak_definition __ZNSt7__cxx119to_stringEm
__ZNSt7__cxx119to_stringEm:
LFB2850:
	mov	x4, x0	; __val, __val
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	x0, 9	; __val,
	bls	L147		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	mov	x6, 22859	; tmp190,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	x5, 34463	; tmp191,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4588:   {
	stp	x29, x30, [sp, -272]!	;,,,
LCFI30:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x6, 0x3886, lsl 16	; tmp190,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4588:   {
	mov	x29, sp	;,
LCFI31:
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
	b	L152		;
	.p2align 2,,3
L148:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	cmp	x1, 999	; __value,
	bls	L168		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	cmp	x1, x3	; __value, tmp189
	bls	L169		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	umulh	x0, x1, x6	; tmp133, __value, tmp190
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:74: 	  __n += 4;
	add	w2, w2, 4	; __n, __n,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	x1, x5	; __value, tmp191
	bls	L149		;,
	lsr	x1, x0, 11	; __value, tmp133,
L152:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	cmp	x1, 99	; __value,
	bhi	L148		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w2, w2, 1	; __n, __n,
L149:
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
	bls	L154		;,
L170:
	str	x19, [x29, 16]	;,
LCFI32:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x12, 29	; _1,
	bls	L159		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x12, 1	; _31, _1,
	mov	x19, x12	; __res, _1
L155:
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
LCFI33:
	str	x0, [x8]	; _4, MEM[(struct basic_string *)__str_5(D)]._M_dataplus._M_p
	ldr	w2, [x29, 52]	;, %sfp
L154:
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
	bls	L156		;,
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
L157:
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
	bhi	L157		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:104:       if (__val >= 10)
	cmp	x6, 999	; __val,
	bhi	L156		;,
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
LCFI34:
	ret	
	.p2align 2,,3
L156:
LCFI35:
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
LCFI36:
	ret	
	.p2align 2,,3
L168:
LCFI37:
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
	bhi	L170		;,
	b	L154		;
	.p2align 2,,3
L169:
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
	bhi	L170		;,
	b	L154		;
	.p2align 2,,3
L159:
LCFI38:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	mov	x19, 30	; __res,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 31	; _31,
	b	L155		;
L147:
LCFI39:
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
lC2:
	.ascii "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\0"
	.text
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
LCFI40:
	mov	x29, sp	;,
LCFI41:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC3@PAGE	; tmp135,
	mov	x2, 2	;,
	add	x1, x1, lC3@PAGEOFF;	;, tmp135,
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	stp	x19, x20, [sp, 16]	;,,
LCFI42:
	mov	x20, x0	; r, r
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ldr	d31, [x20, 32]	; r_2(D)->iters, r_2(D)->iters
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	str	d15, [sp, 32]	;,
LCFI43:
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
LCFI44:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	b	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LFE6914:
	.cstring
	.align	3
lC6:
	.ascii "basic_string::_M_replace\0"
	.align	3
lC7:
	.ascii "b1: per-invocation dispatch overhead  (N = \0"
	.align	3
lC8:
	.ascii "basic_string::append\0"
	.align	3
lC9:
	.ascii " iterations)\0"
	.align	3
lC10:
	.ascii "\12=== \0"
	.align	3
lC11:
	.ascii " ===\12\0"
	.align	3
lC12:
	.ascii "  Each iteration dispatches once and returns an int.\12\0"
	.align	3
lC13:
	.ascii "  Fx: one coroutine-frame alloc per iteration; zero per-perform allocs.\12\12\0"
	.align	3
lC14:
	.ascii "direct non-virtual call\0"
	.align	3
lC15:
	.ascii "std::function\0"
	.align	3
lC16:
	.ascii "virtual dispatch\0"
	.align	3
lC17:
	.ascii "fx::perform (1 perform / coroutine)\0"
	.align	3
lC18:
	.ascii "\12Note: perform() overhead is dominated by the coroutine frame alloc.\12\0"
	.align	3
lC19:
	.ascii "      Use b2_batch to see the amortised cost across many performs.\12\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align	2
	.p2align 5,,15
	.globl _main
_main:
LFB7804:
	stp	x29, x30, [sp, -272]!	;,,,
LCFI45:
; b1_dispatch.cpp:53:   section("b1: per-invocation dispatch overhead  (N = " + std::to_string(N) +
	mov	x0, 16960	;,
; b1_dispatch.cpp:50: int main() {
	mov	x29, sp	;,
LCFI46:
; b1_dispatch.cpp:53:   section("b1: per-invocation dispatch overhead  (N = " + std::to_string(N) +
	movk	x0, 0xf, lsl 16	;,,
; b1_dispatch.cpp:50: int main() {
; b1_dispatch.cpp:53:   section("b1: per-invocation dispatch overhead  (N = " + std::to_string(N) +
	add	x8, x29, 160	;,,
; b1_dispatch.cpp:50: int main() {
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
	str	x27, [sp, 80]	;,
LEHB8:
LCFI47:
; b1_dispatch.cpp:53:   section("b1: per-invocation dispatch overhead  (N = " + std::to_string(N) +
	bl	__ZNSt7__cxx119to_stringEm		;
LEHE8:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x21, [x29, 168]	; __sz, MEM[(struct basic_string *)_158]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 44	; tmp260,
	movk	x0, 0x8000, lsl 48	; tmp260,,
	stp	x25, x26, [x29, 64]	;,,
LCFI48:
	add	x0, x21, x0	; _488, __sz, tmp260
	cmp	x0, 42	; _488,
	bls	L278		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x19, [x29, 160]	; _281, MEM[(struct basic_string *)_158]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x25, x29, 176	; tmp536,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:549:       const size_type __new_size = __old_size + __len2 - __len1;
	add	x23, x21, 43	; _279, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x19, x25	; _281, tmp536
	beq	L175		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x0, [x29, 176]	; __sz, MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:551:       if (__new_size <= this->capacity())
	cmp	x23, x0	; _279, __sz
	bhi	L176		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_function.h:454: 	return (__UINTPTR_TYPE__)__x < (__UINTPTR_TYPE__)__y;
	adrp	x22, lC7@PAGE	; tmp534,
	add	x3, x22, lC7@PAGEOFF;	; __x.23_288, tmp534,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x19, x3	; _281, __x.23_288
	bls	L279		;,
L177:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	cbnz	x21, L179	; __sz,
L180:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x0, x22, lC7@PAGEOFF;	; tmp273, tmp534,
	ldp	q30, q29, [x0]	; MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "], MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "],
	ldr	q31, [x0, 27]	; MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "], MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "]
	stp	q30, q29, [x19]	; MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "], MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "],* _281
	str	q31, [x19, 27]	; MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "], MEM <char[1:43]> [(void *)_281]
L181:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x2, [x29, 160]	; MEM[(struct basic_string *)_158]._M_dataplus._M_p, MEM[(struct basic_string *)_158]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	add	x22, x29, 192	; tmp537,,
	add	x1, x29, 160	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x23, [x29, 168]	; _279, MEM[(struct basic_string *)_158]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	mov	x0, x22	;, tmp537
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x2, x23]	;, MEM[(char_type &)_300]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x19, [x29, 200]	; __sz, MEM[(struct basic_string *)_169]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 13	; tmp303,
	movk	x0, 0x8000, lsl 48	; tmp303,,
	add	x0, x19, x0	; _64, __sz, tmp303
	cmp	x0, 11	; _64,
	bls	L280		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x21, [x29, 192]	; _344, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x23, x29, 208	; tmp538,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:447:       const size_type __len = __n + this->size();
	add	x24, x19, 12	; __len, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x21, x23	; _344, tmp538
	beq	L281		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x0, [x29, 208]	; __sz, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x24, x0	; __len, __sz
	bhi	L193		;,
L191:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x0, lC9@PAGE	; tmp310,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:452: 	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
	add	x1, x21, x19	; _348, _344, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x0, x0, lC9@PAGEOFF;	; tmp309, tmp310,
	ldr	x2, [x0]	; MEM <char[1:12]> [(void *)" iterations)"], MEM <char[1:12]> [(void *)" iterations)"]
	ldr	w0, [x0, 8]	;, MEM <char[1:12]> [(void *)" iterations)"]
	str	x2, [x21, x19]	; MEM <char[1:12]> [(void *)" iterations)"], MEM <char[1:12]> [(void *)_348]
	str	w0, [x1, 8]	; MEM <char[1:12]> [(void *)" iterations)"], MEM <char[1:12]> [(void *)_348]
L194:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x2, [x29, 192]	; MEM[(struct basic_string *)_169]._M_dataplus._M_p, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	add	x21, x29, 224	; tmp532,,
	mov	x1, x22	;, tmp537
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x24, [x29, 200]	; __len, MEM[(struct basic_string *)_169]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	mov	x0, x21	;, tmp532
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x2, x24]	;, MEM[(char_type &)_351]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC10@PAGE	; tmp344,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 5	;,
	add	x1, x1, lC10@PAGEOFF;	;, tmp344,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldp	x19, x24, [x29, 224]	; _55, __sz,
LEHB9:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/string_view:769:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, x24	;, __sz
	mov	x1, x19	;, _55
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC11@PAGE	; tmp348,
	mov	x2, 5	;,
	add	x1, x1, lC11@PAGEOFF;	;, tmp348,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LEHE9:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _81, MEM[(struct basic_string *)_164]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x24, x29, 240	; tmp533,,
	stp	d14, d15, [x29, 112]	;,,
LCFI49:
	cmp	x0, x24	; _81, tmp533
	beq	L201		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L201:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _77, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _77, tmp538
	beq	L202		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L202:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 160]	; _73, MEM[(struct basic_string *)_158]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	; _73, tmp536
	beq	L203		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 176]	; MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L203:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC12@PAGE	; tmp362,
	mov	x2, 53	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC12@PAGEOFF;	;, tmp362,
LEHB10:
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC13@PAGE	; tmp365,
	mov	x2, 73	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC13@PAGEOFF;	;, tmp365,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b1_dispatch.cpp:62:         bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
	adrp	x1, lC14@PAGE	; tmp368,
	mov	x0, x22	;, tmp537
	add	x1, x1, lC14@PAGEOFF;	;, tmp368,
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE10:
; b1_dispatch.cpp:62:         bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
	mov	w0, 0	;,
	bl	__ZL10direct_inci		;
	bl	__ZL10direct_inci		;
	bl	__ZL10direct_inci		;
	mov	w19, w0	; sink, sink
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x1, 16960	; ivtmp_397,
	mov	x25, x0	; start,
	movk	x1, 0xf, lsl 16	; ivtmp_397,,
	.p2align 5,,15
L204:
; b1_dispatch.cpp:62:         bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
	mov	w0, w19	;, sink
	bl	__ZL10direct_inci		;
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x1, x1, #1	; ivtmp_397, ivtmp_397,
; b1_dispatch.cpp:62:         bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
	mov	w19, w0	; sink, sink
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	bne	L204		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x25	; _408, end, start
; bench.hpp:44: }
	mov	x1, x22	;, tmp537
	mov	x0, x21	;, tmp532
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d15, x2	;, _408
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 16960	; tmp373,
; b1_dispatch.cpp:61:     print_result(
	mov	x0, x21	;, tmp532
; bench.hpp:44: }
	str	d15, [x29, 264]	;, MEM[(struct BenchResult *)_164].total_ns
	movk	x1, 0xf, lsl 16	; tmp373,,
	str	x1, [x29, 256]	; tmp373, MEM[(struct BenchResult *)_164].iters
LEHB11:
; b1_dispatch.cpp:61:     print_result(
	bl	__Z12print_resultRK11BenchResult		;
LEHE11:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _89, MEM[(const struct basic_string *)_164]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _89, tmp533
	beq	L205		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L205:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _85, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _85, tmp538
	beq	L206		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L206:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:453: 	      _M_invoker = &_My_handler::_M_invoke;
	adrp	x2, __ZNSt17_Function_handlerIFiiEZ4mainEUliE_E9_M_invokeERKSt9_Any_dataOi@PAGE	; tmp384,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	adrp	x3, __ZNSt17_Function_handlerIFiiEZ4mainEUliE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation@PAGE	; tmp386,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:439: 	: _Function_base()
	stp	xzr, xzr, [x29, 160]	; MEM <char[16]> [(struct _Function_base *)_158]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:453: 	      _M_invoker = &_My_handler::_M_invoke;
	add	x2, x2, __ZNSt17_Function_handlerIFiiEZ4mainEUliE_E9_M_invokeERKSt9_Any_dataOi@PAGEOFF;	; tmp383, tmp384,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	add	x3, x3, __ZNSt17_Function_handlerIFiiEZ4mainEUliE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation@PAGEOFF;	; tmp385, tmp386,
; b1_dispatch.cpp:70:     print_result(bench("std::function", N, [&] { sink = fn(sink); }));
	adrp	x1, lC15@PAGE	; tmp388,
	mov	x0, x22	;, tmp537
	add	x1, x1, lC15@PAGEOFF;	;, tmp388,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:454: 	      _M_manager = &_My_handler::_M_manager;
	stp	x3, x2, [x29, 176]	; tmp385, tmp383,
LEHB12:
; b1_dispatch.cpp:70:     print_result(bench("std::function", N, [&] { sink = fn(sink); }));
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE12:
; b1_dispatch.cpp:69:     int sink = 0;
	mov	w19, 0	; sink,
; b1_dispatch.cpp:70:     print_result(bench("std::function", N, [&] { sink = fn(sink); }));
	mov	x25, 3	; ivtmp_420,
	.p2align 5,,15
L208:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:591: 	if (_M_empty())
	ldr	x0, [x29, 176]	; MEM[(const struct _Function_base *)_158]._M_manager, MEM[(const struct _Function_base *)_158]._M_manager
	str	w19, [x29, 224]	; sink, MEM[(int *)_164]
	cbz	x0, L282	; MEM[(const struct _Function_base *)_158]._M_manager,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:593: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	ldr	x2, [x29, 184]	; MEM[(struct function *)_158]._M_invoker, MEM[(struct function *)_158]._M_invoker
	mov	x1, x21	;, tmp532
	add	x0, x29, 160	;,,
LEHB13:
	blr	x2		; MEM[(struct function *)_158]._M_invoker
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x25, x25, #1	; ivtmp_420, ivtmp_420,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:593: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	mov	w19, w0	; sink, sink
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	bne	L208		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x25, 16960	; ivtmp_435,
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x26, x0	; start,
	movk	x25, 0xf, lsl 16	; ivtmp_435,,
	.p2align 5,,15
L210:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:591: 	if (_M_empty())
	ldr	x0, [x29, 176]	; MEM[(const struct _Function_base *)_158]._M_manager, MEM[(const struct _Function_base *)_158]._M_manager
	str	w19, [x29, 224]	; sink, MEM[(int *)_164]
	cbz	x0, L283	; MEM[(const struct _Function_base *)_158]._M_manager,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:593: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	ldr	x2, [x29, 184]	; MEM[(struct function *)_158]._M_invoker, MEM[(struct function *)_158]._M_invoker
	mov	x1, x21	;, tmp532
	add	x0, x29, 160	;,,
	blr	x2		; MEM[(struct function *)_158]._M_invoker
LEHE13:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x25, x25, #1	; ivtmp_435, ivtmp_435,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:593: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	mov	w19, w0	; sink, sink
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	bne	L210		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x26	; _426, end, start
; bench.hpp:44: }
	mov	x1, x22	;, tmp537
	mov	x0, x21	;, tmp532
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d14, x2	;, _426
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 16960	; tmp401,
; b1_dispatch.cpp:70:     print_result(bench("std::function", N, [&] { sink = fn(sink); }));
	mov	x0, x21	;, tmp532
; bench.hpp:44: }
	str	d14, [x29, 264]	;, MEM[(struct BenchResult *)_164].total_ns
	movk	x1, 0xf, lsl 16	; tmp401,,
	str	x1, [x29, 256]	; tmp401, MEM[(struct BenchResult *)_164].iters
LEHB14:
; b1_dispatch.cpp:70:     print_result(bench("std::function", N, [&] { sink = fn(sink); }));
	bl	__Z12print_resultRK11BenchResult		;
LEHE14:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _98, MEM[(const struct basic_string *)_164]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _98, tmp533
	beq	L211		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L211:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _94, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _94, tmp538
	beq	L212		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L212:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	ldr	x3, [x29, 176]	; _103, MEM[(struct _Function_base *)_158]._M_manager
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	cbz	x3, L213	; _103,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:246: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	mov	w2, 3	;,
	add	x1, x29, 160	;,,
	add	x0, x29, 160	;,,
	blr	x3		; _103
L213:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/unique_ptr.h:1085:     { return unique_ptr<_Tp>(new _Tp(std::forward<_Args>(__args)...)); }
	mov	x0, 8	;,
LEHB15:
	bl	__Znwm		;
LEHE15:
; b1_dispatch.cpp:80:     struct Impl : Base {
	adrp	x2, __ZTVZ4mainE4Impl@PAGE+16	; tmp415,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/unique_ptr.h:1085:     { return unique_ptr<_Tp>(new _Tp(std::forward<_Args>(__args)...)); }
	mov	x25, x0	; _102, _102
; b1_dispatch.cpp:80:     struct Impl : Base {
	add	x2, x2, __ZTVZ4mainE4Impl@PAGEOFF+16;	; tmp414, tmp415,
; b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	adrp	x1, lC16@PAGE	; tmp417,
	mov	x0, x22	;, tmp537
	add	x1, x1, lC16@PAGEOFF;	;, tmp417,
; b1_dispatch.cpp:80:     struct Impl : Base {
	str	x2, [x25]	; tmp414, MEM[(struct Impl *)_102].D.176831._vptr.Base
LEHB16:
; b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE16:
; b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	mov	w0, 0	;,
	stp	d12, d13, [x29, 96]	;,,
LCFI50:
	bl	__ZZ4mainEN4Impl3incEi.constprop.0		;
	bl	__ZZ4mainEN4Impl3incEi.constprop.0		;
	bl	__ZZ4mainEN4Impl3incEi.constprop.0		;
	mov	w19, w0	; sink, sink
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x1, 16960	; ivtmp_455,
	mov	x26, x0	; start,
	movk	x1, 0xf, lsl 16	; ivtmp_455,,
	.p2align 5,,15
L214:
; b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	mov	w0, w19	;, sink
	bl	__ZZ4mainEN4Impl3incEi.constprop.0		;
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x1, x1, #1	; ivtmp_455, ivtmp_455,
; b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	mov	w19, w0	; sink, sink
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	bne	L214		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x26	; _464, end, start
; bench.hpp:44: }
	mov	x1, x22	;, tmp537
	mov	x0, x21	;, tmp532
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d13, x2	;, _464
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 16960	; tmp422,
; b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	mov	x0, x21	;, tmp532
; bench.hpp:44: }
	str	d13, [x29, 264]	;, MEM[(struct BenchResult *)_164].total_ns
	movk	x1, 0xf, lsl 16	; tmp422,,
	str	x1, [x29, 256]	; tmp422, MEM[(struct BenchResult *)_164].iters
LEHB17:
; b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	bl	__Z12print_resultRK11BenchResult		;
LEHE17:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _109, MEM[(const struct basic_string *)_164]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _109, tmp533
	beq	L215		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L215:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _105, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _105, tmp538
	beq	L216		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L216:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b1_dispatch.cpp:80:     struct Impl : Base {
	mov	x1, 8	;,
	mov	x0, x25	;, _102
	bl	__ZdlPvm		;
; b1_dispatch.cpp:92:     print_result(bench("fx::perform (1 perform / coroutine)", N,
	adrp	x1, lC17@PAGE	; tmp433,
	mov	x0, x22	;, tmp537
; b1_dispatch.cpp:91:     int sink = 0;
	str	wzr, [x29, 156]	;, sink
; b1_dispatch.cpp:92:     print_result(bench("fx::perform (1 perform / coroutine)", N,
	add	x1, x1, lC17@PAGEOFF;	;, tmp433,
; b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	mov	x19, 3	; ivtmp_460,
LEHB18:
; b1_dispatch.cpp:92:     print_result(bench("fx::perform (1 perform / coroutine)", N,
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE18:
; b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	add	x0, x29, 156	; tmp435,,
	str	x0, [x29, 160]	; tmp435, MEM[(struct ._anon_184 *)_158].__sink
	.p2align 5,,15
L217:
; bench.hpp:35:     fn();
	add	x0, x29, 160	;,,
LEHB19:
	bl	__ZZ4mainENKUlvE2_clEv		;
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x19, x19, #1	; ivtmp_460, ivtmp_460,
	bne	L217		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x19, 16960	; ivtmp_493,
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x25, x0	; start,
	movk	x19, 0xf, lsl 16	; ivtmp_493,,
	.p2align 5,,15
L218:
; bench.hpp:39:     fn();
	add	x0, x29, 160	;,,
	bl	__ZZ4mainENKUlvE2_clEv		;
LEHE19:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x19, x19, #1	; ivtmp_493, ivtmp_493,
	bne	L218		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x25	; _474, end, start
; bench.hpp:44: }
	mov	x1, x22	;, tmp537
	mov	x0, x21	;, tmp532
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d12, x2	;, _474
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 16960	; tmp441,
; b1_dispatch.cpp:92:     print_result(bench("fx::perform (1 perform / coroutine)", N,
	mov	x0, x21	;, tmp532
; bench.hpp:44: }
	str	d12, [x29, 264]	;, MEM[(struct BenchResult *)_164].total_ns
	movk	x1, 0xf, lsl 16	; tmp441,,
	str	x1, [x29, 256]	; tmp441, MEM[(struct BenchResult *)_164].iters
LEHB20:
; b1_dispatch.cpp:92:     print_result(bench("fx::perform (1 perform / coroutine)", N,
	bl	__Z12print_resultRK11BenchResult		;
LEHE20:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _119, MEM[(const struct basic_string *)_164]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _119, tmp533
	beq	L219		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L219:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _115, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _115, tmp538
	beq	L220		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L220:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC18@PAGE	; tmp452,
	mov	x2, 69	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC18@PAGEOFF;	;, tmp452,
LEHB21:
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC19@PAGE	; tmp455,
	mov	x2, 67	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC19@PAGEOFF;	;, tmp455,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LEHE21:
; b1_dispatch.cpp:101: }
	ldr	x27, [sp, 80]	;,
	mov	w0, 0	;,
	ldp	x25, x26, [x29, 64]	;,,
LCFI51:
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	d12, d13, [x29, 96]	;,,
LCFI52:
	ldp	d14, d15, [x29, 112]	;,,
LCFI53:
	ldp	x29, x30, [sp], 272	;,,,
LCFI54:
	ret	
L179:
LCFI55:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:460: 	if (__n == 1)
	cmp	x21, 1	; __sz,
	beq	L284		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	mov	x2, x21	;, __sz
	mov	x1, x19	;, _281
	add	x0, x19, 43	;, _281,
	bl	_memmove		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	b	L180		;
L279:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	add	x0, x19, x21	; _290, _281, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x3, x0	; __x.23_288, _290
	bhi	L177		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:576: 	    _M_replace_cold(__p, __len1, __s, __len2, __how_much);
	mov	x5, x21	;, __sz
	mov	x1, x19	;, _281
	mov	x4, 43	;,
	mov	x2, 0	;,
	add	x0, x29, 160	;,,
LEHB22:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm		;
LEHE22:
	b	L181		;
L281:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x24, 15	; __len,
	bls	L191		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x27, 30	; __new_capacity,
L192:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x27, 1	; _448, __new_capacity,
L196:
LEHB23:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE23:
	mov	x26, x0	; _388, _388
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x3, x0, x19	; _399, _388, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x19, 1	; __sz,
	beq	L285		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x21	;, _344
	mov	x2, x19	;, __sz
	str	x3, [x29, 136]	; _399, %sfp
	bl	_memcpy		;
	adrp	x0, lC9@PAGE	; tmp331,
	ldr	x3, [x29, 136]	; _399, %sfp
	add	x0, x0, lC9@PAGEOFF;	; tmp330, tmp331,
	ldr	x1, [x0]	; MEM <char[1:12]> [(void *)" iterations)"], MEM <char[1:12]> [(void *)" iterations)"]
	ldr	w0, [x0, 8]	;, MEM <char[1:12]> [(void *)" iterations)"]
	str	x1, [x26, x19]	; MEM <char[1:12]> [(void *)" iterations)"], MEM <char[1:12]> [(void *)_399]
	str	w0, [x3, 8]	; MEM <char[1:12]> [(void *)" iterations)"], MEM <char[1:12]> [(void *)_399]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x21, x23	; _344, tmp538
	beq	L199		;,
L198:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x21	;, _344
	add	x1, x1, 1	;, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L199:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x26, [x29, 192]	; _388, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x27, [x29, 208]	; __new_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L194		;
L193:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x0, x0, 1	; __new_capacity, __sz,
	mov	x27, x0	; __new_capacity, __new_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x24, x0	; __len, __new_capacity
	bcc	L195		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x19, 13	; _448, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x27, x24	; __new_capacity, __len
	b	L196		;
L284:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x19]	;, MEM[(const char_type &)_281]
	strb	w0, [x19, 43]	; MEM[(const char_type &)_281], MEM[(char_type &)_281 + 43]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L180		;
L175:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x21, 44	; _390, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x24, x23	; __new_capacity, _279
L184:
LEHB24:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE24:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x1, lC7@PAGE	; tmp283,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x22, x0	; _337, _337
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x1, x1, lC7@PAGEOFF;	; tmp282, tmp283,
	ldp	q30, q29, [x1]	; MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "], MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "],
	ldr	q31, [x1, 27]	; MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "], MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "]
	stp	q30, q29, [x0]	; MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "], MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "],* _337
	str	q31, [x0, 27]	; MEM <char[1:43]> [(void *)"b1: per-invocation dispatch overhead  (N = "], MEM <char[1:43]> [(void *)_337]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:369:       if (__how_much)
	cbz	x21, L275	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x21, 1	; __sz,
	beq	L286		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x21	;, __sz
	mov	x1, x19	;, _281
	add	x0, x0, 43	;, _337,
	bl	_memcpy		;
L275:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x19, x25	; _281, tmp536
	beq	L188		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 176]	; MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x19	;, _281
	add	x1, x1, 1	;, MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L188:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x22, [x29, 160]	; _337, MEM[(struct basic_string *)_158]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x24, [x29, 176]	; __new_capacity, MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L181		;
L286:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x19]	; _323, MEM[(const char_type &)_281]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x22, 43]	; _323, MEM[(char_type &)_337 + 43]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L275		;
L285:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x0, lC9@PAGE	; tmp319,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w2, [x21]	; _363, MEM[(const char_type &)_344]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x0, x0, lC9@PAGEOFF;	; tmp318, tmp319,
	ldr	x1, [x0]	; MEM <char[1:12]> [(void *)" iterations)"], MEM <char[1:12]> [(void *)" iterations)"]
	ldr	w0, [x0, 8]	;, MEM <char[1:12]> [(void *)" iterations)"]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w2, [x26]	; _363, MEM[(char_type &)_388]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	str	x1, [x26, 1]	; MEM <char[1:12]> [(void *)" iterations)"], MEM <char[1:12]> [(void *)_399]
	str	w0, [x3, 8]	; MEM <char[1:12]> [(void *)" iterations)"], MEM <char[1:12]> [(void *)_399]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x21, x23	; _344, tmp538
	bne	L198		;,
	b	L199		;
L195:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	mov	x0, 9223372036854775806	; tmp315,
	cmp	x27, x0	; __new_capacity, tmp315
	bls	L192		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x27, x0	; __new_capacity, tmp315
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _448,
	b	L196		;
L176:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x24, x0, 1	; __new_capacity, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x23, x24	; _279, __new_capacity
	bcs	L175		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	mov	x0, 9223372036854775806	; tmp280,
	cmp	x24, x0	; __new_capacity, tmp280
	bhi	L245		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x24, 1	; _390, __new_capacity,
	b	L184		;
L245:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x24, x0	; __new_capacity, tmp280
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _390,
	b	L184		;
L248:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp462, tmp557
L223:
	ldr	x0, [x29, 192]	; _128, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _128, tmp538
	beq	L225		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L225:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 160]	; _132, MEM[(struct basic_string *)_158]._M_dataplus._M_p
	stp	d12, d13, [x29, 96]	;,,
LCFI56:
	stp	d14, d15, [x29, 112]	;,,
LCFI57:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	; _132, tmp536
	beq	L243		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 176]	; MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_158].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L243		;
L250:
LCFI58:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 224]	; _136, MEM[(const struct basic_string *)_164]._M_dataplus._M_p
	mov	x19, x0	; tmp559,
	stp	d12, d13, [x29, 96]	;,,
LCFI59:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x24	; _136, tmp533
	beq	L242		;,
L277:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _162
	add	x1, x1, 1	;, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L242:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _167, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _167, tmp538
	beq	L243		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L243:
	mov	x0, x19	;, tmp522
LEHB25:
	bl	__Unwind_Resume		;
LEHE25:
L280:
LCFI60:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC8@PAGE	; tmp305,
	add	x23, x29, 208	; tmp538,,
	add	x0, x0, lC8@PAGEOFF;	;, tmp305,
LEHB26:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE26:
L278:
	adrp	x0, lC6@PAGE	; tmp262,
	add	x25, x29, 176	; tmp536,,
	add	x0, x0, lC6@PAGEOFF;	;, tmp262,
LEHB27:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE27:
L257:
LCFI61:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 224]	; _162, MEM[(const struct basic_string *)_164]._M_dataplus._M_p
	mov	x19, x0	; tmp565,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x24	; _162, tmp533
	bne	L277		;,
	b	L242		;
L249:
LCFI62:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 224]	; _124, MEM[(struct basic_string *)_164]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 240	; tmp459,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp556,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x1	; _124, tmp459
	beq	L223		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _124
	add	x1, x1, 1	;, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L223		;
L247:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp470, tmp558
	b	L225		;
L256:
LCFI63:
	mov	x19, x0	; tmp522, tmp566
	b	L242		;
L255:
	ldr	x2, [x29, 224]	; _153, MEM[(const struct basic_string *)_164]._M_dataplus._M_p
	mov	x19, x0	; tmp563,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x24	; _153, tmp533
	beq	L237		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _153
	add	x1, x1, 1	;, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L237:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _157, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _157, tmp538
	bne	L287		;,
L239:
; b1_dispatch.cpp:80:     struct Impl : Base {
	mov	x0, x25	;, _102
	mov	x1, 8	;,
	bl	__ZdlPvm		;
	mov	x0, x19	;, tmp516
LEHB28:
	bl	__Unwind_Resume		;
LEHE28:
L254:
LCFI64:
	mov	x19, x0	; tmp516, tmp564
	stp	d12, d13, [x29, 96]	;,,
LCFI65:
	b	L239		;
L253:
LCFI66:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 224]	; _144, MEM[(const struct basic_string *)_164]._M_dataplus._M_p
	mov	x19, x0	; tmp560,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x24	; _144, tmp533
	beq	L232		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _144
	add	x1, x1, 1	;, MEM[(struct basic_string *)_164].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L232:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _148, MEM[(struct basic_string *)_169]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _148, tmp538
	beq	L234		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L234:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	ldr	x3, [x29, 176]	; _152, MEM[(struct _Function_base *)_158]._M_manager
	stp	d12, d13, [x29, 96]	;,,
LCFI67:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	cbz	x3, L243	; _152,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:246: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	add	x1, x29, 160	;,,
	mov	w2, 3	;,
	mov	x0, x1	;,
	blr	x3		; _152
	b	L243		;
L287:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_169].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L239		;
L283:
LCFI68:
LEHB29:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:592: 	  __throw_bad_function_call();
	bl	__ZSt25__throw_bad_function_callv		;
L252:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp492, tmp561
	b	L232		;
L282:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:592: 	  __throw_bad_function_call();
	bl	__ZSt25__throw_bad_function_callv		;
LEHE29:
L251:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/std_function.h:245:       if (_M_manager)
	mov	x19, x0	; tmp500, tmp562
	b	L234		;
LFE7804:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
LLSDA7804:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7804-LLSDACSB7804
LLSDACSB7804:
	.uleb128 LEHB8-LFB7804
	.uleb128 LEHE8-LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB9-LFB7804
	.uleb128 LEHE9-LEHB9
	.uleb128 L249-LFB7804
	.uleb128 0
	.uleb128 LEHB10-LFB7804
	.uleb128 LEHE10-LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB11-LFB7804
	.uleb128 LEHE11-LEHB11
	.uleb128 L250-LFB7804
	.uleb128 0
	.uleb128 LEHB12-LFB7804
	.uleb128 LEHE12-LEHB12
	.uleb128 L251-LFB7804
	.uleb128 0
	.uleb128 LEHB13-LFB7804
	.uleb128 LEHE13-LEHB13
	.uleb128 L252-LFB7804
	.uleb128 0
	.uleb128 LEHB14-LFB7804
	.uleb128 LEHE14-LEHB14
	.uleb128 L253-LFB7804
	.uleb128 0
	.uleb128 LEHB15-LFB7804
	.uleb128 LEHE15-LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB16-LFB7804
	.uleb128 LEHE16-LEHB16
	.uleb128 L254-LFB7804
	.uleb128 0
	.uleb128 LEHB17-LFB7804
	.uleb128 LEHE17-LEHB17
	.uleb128 L255-LFB7804
	.uleb128 0
	.uleb128 LEHB18-LFB7804
	.uleb128 LEHE18-LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB19-LFB7804
	.uleb128 LEHE19-LEHB19
	.uleb128 L256-LFB7804
	.uleb128 0
	.uleb128 LEHB20-LFB7804
	.uleb128 LEHE20-LEHB20
	.uleb128 L257-LFB7804
	.uleb128 0
	.uleb128 LEHB21-LFB7804
	.uleb128 LEHE21-LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB22-LFB7804
	.uleb128 LEHE22-LEHB22
	.uleb128 L247-LFB7804
	.uleb128 0
	.uleb128 LEHB23-LFB7804
	.uleb128 LEHE23-LEHB23
	.uleb128 L248-LFB7804
	.uleb128 0
	.uleb128 LEHB24-LFB7804
	.uleb128 LEHE24-LEHB24
	.uleb128 L247-LFB7804
	.uleb128 0
	.uleb128 LEHB25-LFB7804
	.uleb128 LEHE25-LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB26-LFB7804
	.uleb128 LEHE26-LEHB26
	.uleb128 L248-LFB7804
	.uleb128 0
	.uleb128 LEHB27-LFB7804
	.uleb128 LEHE27-LEHB27
	.uleb128 L247-LFB7804
	.uleb128 0
	.uleb128 LEHB28-LFB7804
	.uleb128 LEHE28-LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB29-LFB7804
	.uleb128 LEHE29-LEHB29
	.uleb128 L252-LFB7804
	.uleb128 0
LLSDACSE7804:
	.section __TEXT,__text_startup,regular,pure_instructions
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
	.p2align 5,,15
__GLOBAL__sub_I_b1_dispatch.cpp:
LFB10644:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x1, __ZStL8__ioinit@PAGE	; tmp102,
; b1_dispatch.cpp:101: }
	stp	x29, x30, [sp, -32]!	;,,,
LCFI69:
	mov	x29, sp	;,
LCFI70:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	add	x1, x1, __ZStL8__ioinit@PAGEOFF;	; tmp101, tmp102,
; b1_dispatch.cpp:101: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	mov	x0, x1	;, tmp101
	str	x1, [x29, 24]	; tmp101, %sfp
	bl	__ZNSt8ios_base4InitC1Ev		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x2, ___dso_handle@PAGE	; tmp104,
	ldr	x1, [x29, 24]	; tmp101, %sfp
; b1_dispatch.cpp:101: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	add	x2, x2, ___dso_handle@PAGEOFF;	;, tmp104,
; b1_dispatch.cpp:101: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI71:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE	;,
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]	;,
	b	___cxa_atexit		;
LFE10644:
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
__ZTIZ4mainE4Base:
; <anonymous>:
; <anonymous>:
	.xword	__ZTVN10__cxxabiv117__class_type_infoE+16
; <anonymous>:
	.xword	__ZTSZ4mainE4Base
	.const
	.align	3
__ZTSZ4mainE4Base:
	.ascii "*Z4mainE4Base\0"
	.const_data
	.align	3
__ZTIZ4mainE4Impl:
; <anonymous>:
; <anonymous>:
	.xword	__ZTVN10__cxxabiv120__si_class_type_infoE+16
; <anonymous>:
	.xword	__ZTSZ4mainE4Impl
; <anonymous>:
	.xword	__ZTIZ4mainE4Base
	.const
	.align	3
__ZTSZ4mainE4Impl:
	.ascii "*Z4mainE4Impl\0"
	.const_data
	.align	3
__ZTIZ4mainEUliE_:
; <anonymous>:
; <anonymous>:
	.xword	__ZTVN10__cxxabiv117__class_type_infoE+16
; <anonymous>:
	.xword	__ZTSZ4mainEUliE_
	.const
	.align	3
__ZTSZ4mainEUliE_:
	.ascii "*Z4mainEUliE_\0"
	.const_data
	.align	3
__ZTVZ4mainE4Impl:
	.xword	0
	.xword	__ZTIZ4mainE4Impl
	.xword	__ZZ4mainEN4Impl3incEi
	.xword	__ZZ4mainEN4ImplD1Ev
	.xword	__ZZ4mainEN4ImplD0Ev
	.globl __ZN2fx6detail12effect_tag_vI9IncrementEE
	.weak_definition __ZN2fx6detail12effect_tag_vI9IncrementEE
	.const
__ZN2fx6detail12effect_tag_vI9IncrementEE:
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
	.quad	LFB7774-.
	.set L$set$4,LFE7774-LFB7774
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
	.quad	LFB7818-.
	.set L$set$6,LFE7818-LFB7818
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
	.quad	LFB8617-.
	.set L$set$8,LFE8617-LFB8617
	.quad L$set$8
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE7:
LSFDE9:
	.set L$set$9,LEFDE9-LASFDE9
	.long L$set$9
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB8974-.
	.set L$set$10,LFE8974-LFB8974
	.quad L$set$10
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE9:
LSFDE11:
	.set L$set$11,LEFDE11-LASFDE11
	.long L$set$11
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB8977-.
	.set L$set$12,LFE8977-LFB8977
	.quad L$set$12
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE11:
LSFDE13:
	.set L$set$13,LEFDE13-LASFDE13
	.long L$set$13
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB8989-.
	.set L$set$14,LFE8989-LFB8989
	.quad L$set$14
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE13:
LSFDE15:
	.set L$set$15,LEFDE15-LASFDE15
	.long L$set$15
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB8618-.
	.set L$set$16,LFE8618-LFB8618
	.quad L$set$16
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE15:
LSFDE17:
	.set L$set$17,LEFDE17-LASFDE17
	.long L$set$17
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB4726-.
	.set L$set$18,LFE4726-LFB4726
	.quad L$set$18
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$19,LCFI0-LFB4726
	.long L$set$19
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$20,LCFI1-LCFI0
	.long L$set$20
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$21,LCFI2-LCFI1
	.long L$set$21
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE17:
LSFDE19:
	.set L$set$22,LEFDE19-LASFDE19
	.long L$set$22
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB10647-.
	.set L$set$23,LFE10647-LFB10647
	.quad L$set$23
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE19:
LSFDE21:
	.set L$set$24,LEFDE21-LASFDE21
	.long L$set$24
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB7802-.
	.set L$set$25,LFE7802-LFB7802
	.quad L$set$25
	.uleb128 0x8
	.quad	LLSDA7802-.
	.byte	0x4
	.set L$set$26,LCFI3-LFB7802
	.long L$set$26
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$27,LCFI4-LCFI3
	.long L$set$27
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$28,LCFI5-LCFI4
	.long L$set$28
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$29,LCFI6-LCFI5
	.long L$set$29
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$30,LCFI7-LCFI6
	.long L$set$30
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xdd
	.byte	0xde
	.byte	0x4
	.set L$set$31,LCFI8-LCFI7
	.long L$set$31
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$32,LCFI9-LCFI8
	.long L$set$32
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE21:
LSFDE23:
	.set L$set$33,LEFDE23-LASFDE23
	.long L$set$33
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB10650-.
	.set L$set$34,LFE10650-LFB10650
	.quad L$set$34
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$35,LCFI10-LFB10650
	.long L$set$35
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$36,LCFI11-LCFI10
	.long L$set$36
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$37,LCFI12-LCFI11
	.long L$set$37
	.byte	0x95
	.uleb128 0x4
	.byte	0x4
	.set L$set$38,LCFI13-LCFI12
	.long L$set$38
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$39,LCFI14-LCFI13
	.long L$set$39
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
	.set L$set$40,LCFI15-LCFI14
	.long L$set$40
	.byte	0xb
	.align	3
LEFDE23:
LSFDE25:
	.set L$set$41,LEFDE25-LASFDE25
	.long L$set$41
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB7933-.
	.set L$set$42,LFE7933-LFB7933
	.quad L$set$42
	.uleb128 0x8
	.quad	LLSDA7933-.
	.byte	0x4
	.set L$set$43,LCFI16-LFB7933
	.long L$set$43
	.byte	0xe
	.uleb128 0xa0
	.byte	0x9d
	.uleb128 0x14
	.byte	0x9e
	.uleb128 0x13
	.byte	0x4
	.set L$set$44,LCFI17-LCFI16
	.long L$set$44
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$45,LCFI18-LCFI17
	.long L$set$45
	.byte	0x97
	.uleb128 0xe
	.byte	0x98
	.uleb128 0xd
	.byte	0x4
	.set L$set$46,LCFI19-LCFI18
	.long L$set$46
	.byte	0x93
	.uleb128 0x12
	.byte	0x94
	.uleb128 0x11
	.byte	0x95
	.uleb128 0x10
	.byte	0x96
	.uleb128 0xf
	.byte	0x4
	.set L$set$47,LCFI20-LCFI19
	.long L$set$47
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
	.set L$set$48,LCFI21-LCFI20
	.long L$set$48
	.byte	0xb
	.align	3
LEFDE25:
LSFDE27:
	.set L$set$49,LEFDE27-LASFDE27
	.long L$set$49
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB7803-.
	.set L$set$50,LFE7803-LFB7803
	.quad L$set$50
	.uleb128 0x8
	.quad	LLSDA7803-.
	.byte	0x4
	.set L$set$51,LCFI22-LFB7803
	.long L$set$51
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$52,LCFI23-LCFI22
	.long L$set$52
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$53,LCFI24-LCFI23
	.long L$set$53
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$54,LCFI25-LCFI24
	.long L$set$54
	.byte	0xb
	.byte	0x4
	.set L$set$55,LCFI26-LCFI25
	.long L$set$55
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE27:
LSFDE29:
	.set L$set$56,LEFDE29-LASFDE29
	.long L$set$56
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB2842-.
	.set L$set$57,LFE2842-LFB2842
	.quad L$set$57
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$58,LCFI27-LFB2842
	.long L$set$58
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$59,LCFI28-LCFI27
	.long L$set$59
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$60,LCFI29-LCFI28
	.long L$set$60
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE29:
LSFDE31:
	.set L$set$61,LEFDE31-LASFDE31
	.long L$set$61
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB2850-.
	.set L$set$62,LFE2850-LFB2850
	.quad L$set$62
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$63,LCFI30-LFB2850
	.long L$set$63
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$64,LCFI31-LCFI30
	.long L$set$64
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$65,LCFI32-LCFI31
	.long L$set$65
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$66,LCFI33-LCFI32
	.long L$set$66
	.byte	0xd3
	.byte	0x4
	.set L$set$67,LCFI34-LCFI33
	.long L$set$67
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$68,LCFI35-LCFI34
	.long L$set$68
	.byte	0xb
	.byte	0x4
	.set L$set$69,LCFI36-LCFI35
	.long L$set$69
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$70,LCFI37-LCFI36
	.long L$set$70
	.byte	0xb
	.byte	0x4
	.set L$set$71,LCFI38-LCFI37
	.long L$set$71
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$72,LCFI39-LCFI38
	.long L$set$72
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE31:
LSFDE33:
	.set L$set$73,LEFDE33-LASFDE33
	.long L$set$73
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB6914-.
	.set L$set$74,LFE6914-LFB6914
	.quad L$set$74
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$75,LCFI40-LFB6914
	.long L$set$75
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$76,LCFI41-LCFI40
	.long L$set$76
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$77,LCFI42-LCFI41
	.long L$set$77
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$78,LCFI43-LCFI42
	.long L$set$78
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x4
	.set L$set$79,LCFI44-LCFI43
	.long L$set$79
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
LEFDE33:
LSFDE35:
	.set L$set$80,LEFDE35-LASFDE35
	.long L$set$80
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB7804-.
	.set L$set$81,LFE7804-LFB7804
	.quad L$set$81
	.uleb128 0x8
	.quad	LLSDA7804-.
	.byte	0x4
	.set L$set$82,LCFI45-LFB7804
	.long L$set$82
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$83,LCFI46-LCFI45
	.long L$set$83
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$84,LCFI47-LCFI46
	.long L$set$84
	.byte	0x93
	.uleb128 0x20
	.byte	0x94
	.uleb128 0x1f
	.byte	0x95
	.uleb128 0x1e
	.byte	0x96
	.uleb128 0x1d
	.byte	0x97
	.uleb128 0x1c
	.byte	0x98
	.uleb128 0x1b
	.byte	0x9b
	.uleb128 0x18
	.byte	0x4
	.set L$set$85,LCFI48-LCFI47
	.long L$set$85
	.byte	0x9a
	.uleb128 0x19
	.byte	0x99
	.uleb128 0x1a
	.byte	0x4
	.set L$set$86,LCFI49-LCFI48
	.long L$set$86
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x14
	.byte	0x4
	.set L$set$87,LCFI50-LCFI49
	.long L$set$87
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x4c
	.uleb128 0x16
	.byte	0x4
	.set L$set$88,LCFI51-LCFI50
	.long L$set$88
	.byte	0xda
	.byte	0xd9
	.byte	0x4
	.set L$set$89,LCFI52-LCFI51
	.long L$set$89
	.byte	0x6
	.uleb128 0x4d
	.byte	0x6
	.uleb128 0x4c
	.byte	0x4
	.set L$set$90,LCFI53-LCFI52
	.long L$set$90
	.byte	0x6
	.uleb128 0x4f
	.byte	0x6
	.uleb128 0x4e
	.byte	0x4
	.set L$set$91,LCFI54-LCFI53
	.long L$set$91
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
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
	.set L$set$92,LCFI55-LCFI54
	.long L$set$92
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x20
	.byte	0x94
	.uleb128 0x1f
	.byte	0x95
	.uleb128 0x1e
	.byte	0x96
	.uleb128 0x1d
	.byte	0x97
	.uleb128 0x1c
	.byte	0x98
	.uleb128 0x1b
	.byte	0x99
	.uleb128 0x1a
	.byte	0x9a
	.uleb128 0x19
	.byte	0x9b
	.uleb128 0x18
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$93,LCFI56-LCFI55
	.long L$set$93
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x4c
	.uleb128 0x16
	.byte	0x4
	.set L$set$94,LCFI57-LCFI56
	.long L$set$94
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x14
	.byte	0x4
	.set L$set$95,LCFI58-LCFI57
	.long L$set$95
	.byte	0x6
	.uleb128 0x4c
	.byte	0x6
	.uleb128 0x4d
	.byte	0x4
	.set L$set$96,LCFI59-LCFI58
	.long L$set$96
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x4c
	.uleb128 0x16
	.byte	0x4
	.set L$set$97,LCFI60-LCFI59
	.long L$set$97
	.byte	0x6
	.uleb128 0x4c
	.byte	0x6
	.uleb128 0x4d
	.byte	0x6
	.uleb128 0x4e
	.byte	0x6
	.uleb128 0x4f
	.byte	0x4
	.set L$set$98,LCFI61-LCFI60
	.long L$set$98
	.byte	0x5
	.uleb128 0x4c
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x13
	.byte	0x4
	.set L$set$99,LCFI62-LCFI61
	.long L$set$99
	.byte	0x6
	.uleb128 0x4c
	.byte	0x6
	.uleb128 0x4d
	.byte	0x6
	.uleb128 0x4e
	.byte	0x6
	.uleb128 0x4f
	.byte	0x4
	.set L$set$100,LCFI63-LCFI62
	.long L$set$100
	.byte	0x5
	.uleb128 0x4c
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x13
	.byte	0x4
	.set L$set$101,LCFI64-LCFI63
	.long L$set$101
	.byte	0x6
	.uleb128 0x4c
	.byte	0x6
	.uleb128 0x4d
	.byte	0x4
	.set L$set$102,LCFI65-LCFI64
	.long L$set$102
	.byte	0xa
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x4c
	.uleb128 0x16
	.byte	0x4
	.set L$set$103,LCFI66-LCFI65
	.long L$set$103
	.byte	0xb
	.byte	0x4
	.set L$set$104,LCFI67-LCFI66
	.long L$set$104
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x4c
	.uleb128 0x16
	.byte	0x4
	.set L$set$105,LCFI68-LCFI67
	.long L$set$105
	.byte	0x6
	.uleb128 0x4c
	.byte	0x6
	.uleb128 0x4d
	.align	3
LEFDE35:
LSFDE37:
	.set L$set$106,LEFDE37-LASFDE37
	.long L$set$106
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB10644-.
	.set L$set$107,LFE10644-LFB10644
	.quad L$set$107
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$108,LCFI69-LFB10644
	.long L$set$108
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$109,LCFI70-LCFI69
	.long L$set$109
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$110,LCFI71-LCFI70
	.long L$set$110
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE37:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_b1_dispatch.cpp
	.subsections_via_symbols
