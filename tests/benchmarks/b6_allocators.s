	.arch armv8.5-a
	.build_version macos,  16, 0
; GNU C++23 (Homebrew GCC 15.1.0) version 15.1.0 (aarch64-apple-darwin24)
;	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed: -fPIC -mmacosx-version-min=16.0.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -O3 -std=c++23
	.text
	.align	2
	.p2align 5,,15
	.globl __ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.weak_definition __ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
__ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
LFB8095:
; ../../effects.hpp:697:       auto &hh =
	ldr	x3, [x0, 16]	; hh, MEM[(struct HandlerNode *)_2(D)].real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x0, [x1, 8]	; _7, MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr
; b6_allocators.cpp:122:   void handle(Tick, auto resume) { resume(n++); }
	ldr	w2, [x3]	;, hh_4->n
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x4, [x0]	; MEM[(void (*<T11f>) (void *) *)_7], MEM[(void (*<T11f>) (void *) *)_7]
; b6_allocators.cpp:122:   void handle(Tick, auto resume) { resume(n++); }
	add	w5, w2, 1	; _6, _5,
	str	w5, [x3]	; _6, hh_4->n
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x16, x4	; MEM[(void (*<T11f>) (void *) *)_7], MEM[(void (*<T11f>) (void *) *)_7]
; ../../effects.hpp:1229:   pa->result_ = std::move(v);
	str	w2, [x1, 4]	; _5, MEM[(struct PerformAwaitable *)_3(D)].result_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	br	x16		; MEM[(void (*<T11f>) (void *) *)_7]
LFE8095:
	.align	2
	.p2align 5,,15
	.globl __ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.weak_definition __ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
__ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
LFB8137:
; ../../effects.hpp:697:       auto &hh =
	ldr	x3, [x0, 16]	; hh, MEM[(struct HandlerNode *)_2(D)].real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x0, [x1, 8]	; _7, MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr
; b6_allocators.cpp:122:   void handle(Tick, auto resume) { resume(n++); }
	ldr	w2, [x3]	;, hh_4->n
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x4, [x0]	; MEM[(void (*<T11f>) (void *) *)_7], MEM[(void (*<T11f>) (void *) *)_7]
; b6_allocators.cpp:122:   void handle(Tick, auto resume) { resume(n++); }
	add	w5, w2, 1	; _6, _5,
	str	w5, [x3]	; _6, hh_4->n
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x16, x4	; MEM[(void (*<T11f>) (void *) *)_7], MEM[(void (*<T11f>) (void *) *)_7]
; ../../effects.hpp:1229:   pa->result_ = std::move(v);
	str	w2, [x1, 4]	; _5, MEM[(struct PerformAwaitable *)_3(D)].result_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	br	x16		; MEM[(void (*<T11f>) (void *) *)_7]
LFE8137:
	.align	2
	.p2align 5,,15
	.globl __ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm
	.weak_definition __ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm
__ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm:
LFB9053:
; b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	add	x4, x0, 16	; _7, this,
; b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	cmp	x1, x4	; ptr, _7
	bcc	L5		;,
; b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	add	x4, x0, 1072	; _12, this,
; b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	cmp	x1, x4	; ptr, _12
	bcs	L5		;,
; b6_allocators.cpp:101:     b->next = head_;
	ldr	x2, [x0, 1072]	; _2, this_5(D)->head_
; b6_allocators.cpp:101:     b->next = head_;
	str	x2, [x1]	; _2, MEM[(union Block *)ptr_6(D)].next
; b6_allocators.cpp:102:     head_ = b;
	str	x1, [x0, 1072]	; ptr, this_5(D)->head_
	ret	
	.p2align 2,,3
L5:
; b6_allocators.cpp:94:   void do_deallocate(void *ptr, std::size_t n,
	stp	x29, x30, [sp, -16]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
; b6_allocators.cpp:97:       fallback_->deallocate(ptr, n, align); // came from fallback
	ldr	x0, [x0, 1080]	; _1, this_5(D)->fallback_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x4, [x0]	; _1->_vptr.memory_resource, _1->_vptr.memory_resource
	ldr	x4, [x4, 24]	; MEM[(int (*) () *)_13 + 24B], MEM[(int (*) () *)_13 + 24B]
	blr	x4		; MEM[(int (*) () *)_13 + 24B]
; b6_allocators.cpp:103:   }
	ldp	x29, x30, [sp], 16	;,,,
LCFI2:
	ret	
LFE9053:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
LLSDA9053:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE9053-LLSDACSB9053
LLSDACSB9053:
LLSDACSE9053:
	.text
	.align	2
	.p2align 5,,15
	.globl __ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE
	.weak_definition __ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE
__ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE:
LFB9054:
; b6_allocators.cpp:106:     return this == &o;
	cmp	x0, x1	; this, o
; b6_allocators.cpp:107:   }
	cset	w0, eq	;,
	ret	
LFE9054:
	.align	2
	.p2align 5,,15
	.globl __ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm
	.weak_definition __ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm
__ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm:
LFB9056:
; b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	add	x4, x0, 16	; _7, this,
; b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	cmp	x1, x4	; ptr, _7
	bcc	L12		;,
; b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	add	x4, x0, 2128	; _12, this,
; b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	cmp	x1, x4	; ptr, _12
	bcs	L12		;,
; b6_allocators.cpp:101:     b->next = head_;
	ldr	x2, [x0, 2128]	; _2, this_5(D)->head_
; b6_allocators.cpp:101:     b->next = head_;
	str	x2, [x1]	; _2, MEM[(union Block *)ptr_6(D)].next
; b6_allocators.cpp:102:     head_ = b;
	str	x1, [x0, 2128]	; ptr, this_5(D)->head_
	ret	
	.p2align 2,,3
L12:
; b6_allocators.cpp:94:   void do_deallocate(void *ptr, std::size_t n,
	stp	x29, x30, [sp, -16]!	;,,,
LCFI3:
	mov	x29, sp	;,
LCFI4:
; b6_allocators.cpp:97:       fallback_->deallocate(ptr, n, align); // came from fallback
	ldr	x0, [x0, 2136]	; _1, this_5(D)->fallback_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x4, [x0]	; _1->_vptr.memory_resource, _1->_vptr.memory_resource
	ldr	x4, [x4, 24]	; MEM[(int (*) () *)_13 + 24B], MEM[(int (*) () *)_13 + 24B]
	blr	x4		; MEM[(int (*) () *)_13 + 24B]
; b6_allocators.cpp:103:   }
	ldp	x29, x30, [sp], 16	;,,,
LCFI5:
	ret	
LFE9056:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
LLSDA9056:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE9056-LLSDACSB9056
LLSDACSB9056:
LLSDACSE9056:
	.text
	.align	2
	.p2align 5,,15
	.globl __ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE
	.weak_definition __ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE
__ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE:
LFB9057:
; b6_allocators.cpp:106:     return this == &o;
	cmp	x0, x1	; this, o
; b6_allocators.cpp:107:   }
	cset	w0, eq	;,
	ret	
LFE9057:
	.align	2
	.p2align 5,,15
	.globl __ZN12FreeListSlabILm520ELm2EED1Ev
	.weak_definition __ZN12FreeListSlabILm520ELm2EED1Ev
__ZN12FreeListSlabILm520ELm2EED1Ev:
LFB7007:
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	adrp	x1, __ZTV12FreeListSlabILm520ELm2EE@GOTPAGE	; tmp104,
	ldr	x1, [x1, __ZTV12FreeListSlabILm520ELm2EE@GOTPAGEOFF]	; tmp104,
	add	x1, x1, 16	; tmp103, tmp104,
	str	x1, [x0]	; tmp103, this_3(D)->D.161435._vptr.memory_resource
	b	__ZNSt3pmr15memory_resourceD2Ev		;
LFE7007:
	.align	2
	.p2align 5,,15
	.globl __ZN12FreeListSlabILm520ELm4EED1Ev
	.weak_definition __ZN12FreeListSlabILm520ELm4EED1Ev
__ZN12FreeListSlabILm520ELm4EED1Ev:
LFB6978:
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	adrp	x1, __ZTV12FreeListSlabILm520ELm4EE@GOTPAGE	; tmp104,
	ldr	x1, [x1, __ZTV12FreeListSlabILm520ELm4EE@GOTPAGEOFF]	; tmp104,
	add	x1, x1, 16	; tmp103, tmp104,
	str	x1, [x0]	; tmp103, this_3(D)->D.159499._vptr.memory_resource
	b	__ZNSt3pmr15memory_resourceD2Ev		;
LFE6978:
	.align	2
	.p2align 5,,15
	.globl __ZN12FreeListSlabILm520ELm2EED0Ev
	.weak_definition __ZN12FreeListSlabILm520ELm2EED0Ev
__ZN12FreeListSlabILm520ELm2EED0Ev:
LFB7008:
	adrp	x1, __ZTV12FreeListSlabILm520ELm2EE@GOTPAGE	; tmp104,
	ldr	x1, [x1, __ZTV12FreeListSlabILm520ELm2EE@GOTPAGEOFF]	; tmp104,
	stp	x29, x30, [sp, -32]!	;,,,
LCFI6:
	mov	x29, sp	;,
LCFI7:
	str	x19, [sp, 16]	;,
LCFI8:
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	mov	x19, x0	; this, this
	add	x1, x1, 16	; tmp103, tmp104,
	str	x1, [x0]	; tmp103, this_2(D)->D.161435._vptr.memory_resource
	bl	__ZNSt3pmr15memory_resourceD2Ev		;
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	mov	x0, x19	;, this
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	ldr	x19, [sp, 16]	;,
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	mov	x1, 1088	;,
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	ldp	x29, x30, [sp], 32	;,,,
LCFI9:
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	b	__ZdlPvm		;
LFE7008:
	.align	2
	.p2align 5,,15
	.globl __ZN12FreeListSlabILm520ELm4EED0Ev
	.weak_definition __ZN12FreeListSlabILm520ELm4EED0Ev
__ZN12FreeListSlabILm520ELm4EED0Ev:
LFB6979:
	adrp	x1, __ZTV12FreeListSlabILm520ELm4EE@GOTPAGE	; tmp104,
	ldr	x1, [x1, __ZTV12FreeListSlabILm520ELm4EE@GOTPAGEOFF]	; tmp104,
	stp	x29, x30, [sp, -32]!	;,,,
LCFI10:
	mov	x29, sp	;,
LCFI11:
	str	x19, [sp, 16]	;,
LCFI12:
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	mov	x19, x0	; this, this
	add	x1, x1, 16	; tmp103, tmp104,
	str	x1, [x0]	; tmp103, this_2(D)->D.159499._vptr.memory_resource
	bl	__ZNSt3pmr15memory_resourceD2Ev		;
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	mov	x0, x19	;, this
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	ldr	x19, [sp, 16]	;,
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	mov	x1, 2144	;,
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	ldp	x29, x30, [sp], 32	;,,,
LCFI13:
; b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	b	__ZdlPvm		;
LFE6979:
	.align	2
	.p2align 5,,15
__Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor:
LFB6948:
	mov	x1, x0	; frame_ptr, frame_ptr
; b6_allocators.cpp:133: }
	ldrh	w0, [x0, 168]	; _1, frame_ptr_15(D)->_Coro_resume_index
	tbz	x0, 0, L25	; _1,,
; b6_allocators.cpp:133: }
	cmp	w0, 7	; _1,
	bhi	L26		;,
L27:
L34:
L35:
L36:
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI14:
	mov	x29, sp	;,
LCFI15:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp146, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object
	cbz	x2, L37	; MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L37:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp151, frame_ptr,
	ldr	x2, [x0, 48]	; _46, MEM[(struct SmallAny *)frame_ptr_15(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L38	; _46,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _46
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L38:
; b6_allocators.cpp:133: }
	ldrb	w0, [x1, 170]	; frame_ptr_15(D)->_Coro_frame_needs_free, frame_ptr_15(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L55	; frame_ptr_15(D)->_Coro_frame_needs_free,,
L32:
; b6_allocators.cpp:133: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI16:
	ret	
	.p2align 2,,3
L25:
; b6_allocators.cpp:133: }
	cmp	w0, 4	; _1,
	beq	L28		;,
	bhi	L29		;,
	cbz	w0, L30	; _1,
L31:
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	mov	w0, 1	; tmp126,
; b6_allocators.cpp:128:   long long sum = 0;
	str	xzr, [x1, 176]	;, frame_ptr_15(D)->sum_1_2
; b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	str	wzr, [x1, 184]	;, frame_ptr_15(D)->i_2_3
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	strb	w0, [x1, 171]	; tmp126, frame_ptr_15(D)->_Coro_initial_await_resume_called
L33:
	ldr	x3, [x1, 160]	; caller$_M_fr_ptr, frame_ptr_15(D)->_Coro_self_handle._M_fr_ptr
; b6_allocators.cpp:133: }
	mov	w4, 4	; tmp127,
; ../../effects.hpp:1210:     caller_ = caller;
	add	x2, x1, 192	; tmp129, frame_ptr,
; ../../effects.hpp:579:     return a;
	str	wzr, [x1, 196]	;, MEM <result_type> [(struct _ZL15make_batch_corov.Frame *)frame_ptr_15(D) + 196B]
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	adrp	x0, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGE	; tmp135,
	ldr	x0, [x0, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGEOFF]	; tmp135,
; b6_allocators.cpp:133: }
	strh	w4, [x1, 168]	; tmp127, frame_ptr_15(D)->_Coro_resume_index
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	add	x1, x3, 16	; __t_26, caller$_M_fr_ptr,
; ../../effects.hpp:1210:     caller_ = caller;
	stp	x3, x1, [x2, 8]	; caller$_M_fr_ptr, __t_26,
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	stp	x0, x2, [x3, 112]	; tmp135, tmp129,
	ret	
	.p2align 2,,3
L55:
LCFI17:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 224]	; mr, MEM[(struct memory_resource * *)frame_ptr_15(D) + 224B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L39	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x4, [x0]	; mr_50->_vptr.memory_resource, mr_50->_vptr.memory_resource
	mov	x3, 16	;,
	mov	x2, 232	;,
	ldr	x4, [x4, 24]	; MEM[(int (*) () *)_51 + 24B], MEM[(int (*) () *)_51 + 24B]
	blr	x4		; MEM[(int (*) () *)_51 + 24B]
; b6_allocators.cpp:133: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI18:
	ret	
	.p2align 2,,3
L30:
; b6_allocators.cpp:133: }
	mov	w0, 2	; tmp125,
; b6_allocators.cpp:133: }
	str	x1, [x1, 160]	; frame_ptr, frame_ptr_15(D)->_Coro_self_handle._M_fr_ptr
; b6_allocators.cpp:133: }
	strb	wzr, [x1, 171]	;, frame_ptr_15(D)->_Coro_initial_await_resume_called
; b6_allocators.cpp:133: }
	strh	w0, [x1, 168]	; tmp125, frame_ptr_15(D)->_Coro_resume_index
	ret	
	.p2align 2,,3
L28:
; b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	ldr	w2, [x1, 184]	;, frame_ptr_15(D)->i_2_3
; b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	mov	w4, 4999	; tmp142,
; ../../effects.hpp:1216:   typename E::result_type await_resume() { return std::move(result_); }
	ldr	w3, [x1, 196]	;, MEM[(type &)frame_ptr_15(D) + 196]
; b6_allocators.cpp:130:     sum += perform(Tick{});
	ldr	x0, [x1, 176]	; frame_ptr_15(D)->sum_1_2, frame_ptr_15(D)->sum_1_2
	add	x0, x0, w3, sxtw	; _6, frame_ptr_15(D)->sum_1_2, _24
; b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	add	w2, w2, 1	; _8, frame_ptr_15(D)->i_2_3,
; b6_allocators.cpp:130:     sum += perform(Tick{});
	str	x0, [x1, 176]	; _6, frame_ptr_15(D)->sum_1_2
; b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	stp	w2, w3, [x1, 184]	; _8, _24,
; b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	cmp	w2, w4	; _8, tmp142
	ble	L33		;,
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	mov	w3, 1	; tmp143,
; b6_allocators.cpp:133: }
	mov	w2, 6	; tmp144,
; b6_allocators.cpp:133: }
	str	xzr, [x1]	;, frame_ptr_15(D)->_Coro_resume_fn
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	str	x0, [x1, 144]	; _6, MEM <long long int> [(struct promise_type *)frame_ptr_15(D) + 144B]
	strb	w3, [x1, 152]	; tmp143, MEM <unsigned char> [(struct promise_type *)frame_ptr_15(D) + 152B]
; b6_allocators.cpp:133: }
	strh	w2, [x1, 168]	; tmp144, frame_ptr_15(D)->_Coro_resume_index
	ret	
	.p2align 2,,3
L29:
; b6_allocators.cpp:133: }
	cmp	w0, 6	; _1,
	beq	L36		;,
L26:
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	brk #1000
	.p2align 2,,3
L39:
LCFI19:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b6_allocators.cpp:133: }
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 232	;,
; b6_allocators.cpp:133: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI20:
LEHB0:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE0:
LFE6948:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
LLSDA6948:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6948-LLSDACSB6948
LLSDACSB6948:
	.uleb128 LEHB0-LFB6948
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
LLSDACSE6948:
	.text
	.align	2
	.p2align 5,,15
	.globl __ZN12FreeListSlabILm520ELm4EE11do_allocateEmm
	.weak_definition __ZN12FreeListSlabILm520ELm4EE11do_allocateEmm
__ZN12FreeListSlabILm520ELm4EE11do_allocateEmm:
LFB9055:
; b6_allocators.cpp:86:   void *do_allocate(std::size_t n, std::size_t align) override {
	mov	x3, x0	; this, this
; b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	cmp	x1, 520	; n,
	bhi	L57		;,
; b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	ldr	x0, [x0, 2128]	; _1, this_6(D)->head_
; b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	cbz	x0, L57	; _1,
; b6_allocators.cpp:90:     head_ = b->next;
	ldr	x1, [x0]	; _2, _1->next
; b6_allocators.cpp:90:     head_ = b->next;
	str	x1, [x3, 2128]	; _2, this_6(D)->head_
; b6_allocators.cpp:92:   }
	ret	
	.p2align 2,,3
L57:
	ldr	x0, [x3, 2136]	; _13, MEM[(struct memory_resource * *)this_6(D) + 2136B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x3, [x0]	; _13->_vptr.memory_resource, _13->_vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x3, [x3, 16]	; MEM[(int (*) () *)_15 + 16B], MEM[(int (*) () *)_15 + 16B]
	mov	x16, x3	; MEM[(int (*) () *)_15 + 16B], MEM[(int (*) () *)_15 + 16B]
	br	x16		; MEM[(int (*) () *)_15 + 16B]
LFE9055:
	.align	2
	.p2align 5,,15
	.globl __ZN12FreeListSlabILm520ELm2EE11do_allocateEmm
	.weak_definition __ZN12FreeListSlabILm520ELm2EE11do_allocateEmm
__ZN12FreeListSlabILm520ELm2EE11do_allocateEmm:
LFB9052:
; b6_allocators.cpp:86:   void *do_allocate(std::size_t n, std::size_t align) override {
	mov	x3, x0	; this, this
; b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	cmp	x1, 520	; n,
	bhi	L60		;,
; b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	ldr	x0, [x0, 1072]	; _1, this_6(D)->head_
; b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	cbz	x0, L60	; _1,
; b6_allocators.cpp:90:     head_ = b->next;
	ldr	x1, [x0]	; _2, _1->next
; b6_allocators.cpp:90:     head_ = b->next;
	str	x1, [x3, 1072]	; _2, this_6(D)->head_
; b6_allocators.cpp:92:   }
	ret	
	.p2align 2,,3
L60:
	ldr	x0, [x3, 1080]	; _13, MEM[(struct memory_resource * *)this_6(D) + 1080B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x3, [x0]	; _13->_vptr.memory_resource, _13->_vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x3, [x3, 16]	; MEM[(int (*) () *)_15 + 16B], MEM[(int (*) () *)_15 + 16B]
	mov	x16, x3	; MEM[(int (*) () *)_15 + 16B], MEM[(int (*) () *)_15 + 16B]
	br	x16		; MEM[(int (*) () *)_15 + 16B]
LFE9052:
	.align	2
	.p2align 5,,15
__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
LFB9846:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:736:       if (!__s)
	cbz	x1, L66	; __s,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:734:     operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
	stp	x29, x30, [sp, -48]!	;,,,
LCFI21:
	mov	x29, sp	;,
LCFI22:
	str	x19, [sp, 16]	;,
LCFI23:
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
LCFI24:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	b	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	.p2align 2,,3
L66:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:737: 	__out.setstate(ios_base::badbit);
	ldr	x1, [x0]	; __out_2(D)->_vptr.basic_ostream, __out_2(D)->_vptr.basic_ostream
	ldr	x1, [x1, -24]	; MEM[(long int *)_9 + -24B], MEM[(long int *)_9 + -24B]
	add	x0, x0, x1	; _12, __out, MEM[(long int *)_9 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:198:   { return _Ios_Iostate(static_cast<int>(__a) | static_cast<int>(__b)); }
	ldr	w1, [x0, 32]	;, MEM[(const struct basic_ios *)_12].D.74430._M_streambuf_state
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_ios.h:167:       { this->clear(this->rdstate() | __state); }
	orr	w1, w1, 1	;, MEM[(const struct basic_ios *)_12].D.74430._M_streambuf_state,
	b	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate		;
LFE9846:
	.cstring
	.align	3
lC0:
	.ascii "basic_string: construction from null is not valid\0"
	.text
	.align	2
	.p2align 5,,15
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0:
LFB9848:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI25:
	mov	x29, sp	;,
LCFI26:
	str	x21, [sp, 32]	;,
LCFI27:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x21, x0, 16	; _2, this,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:706:       basic_string(const _CharT* __s, const _Alloc& __a = _Alloc())
	stp	x19, x20, [sp, 16]	;,,
LCFI28:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:205: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [x0]	; _2, MEM[(struct _Alloc_hider *)this_1(D)]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:710: 	if (__s == 0)
	cbz	x1, L77	; __s,
	mov	x19, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x0, x1	;, __s
	mov	x20, x1	; __s, __s
	bl	_strlen		;
	mov	x2, x0	; _4, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:233: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	; _4,
	bhi	L78		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x0, 1	; _4,
	beq	L79		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:423: 	if (__n == 0)
	cbnz	x0, L70	; _4,
L72:
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
LCFI29:
	ret	
L79:
LCFI30:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x20]	;, MEM[(const char_type &)__s_3(D)]
	strb	w0, [x19, 16]	; MEM[(const char_type &)__s_3(D)], MEM[(char_type &)this_1(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L72		;
L78:
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
L70:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, __s
	mov	x0, x21	;, _2
	str	x2, [x29, 56]	; _4, %sfp
	bl	_memcpy		;
	ldr	x2, [x29, 56]	; _4, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	L72		;
L77:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:711: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, lC0@PAGE	; tmp110,
	add	x0, x0, lC0@PAGEOFF;	;, tmp110,
	bl	__ZSt19__throw_logic_errorPKc		;
LFE9848:
	.align	2
	.p2align 5,,15
__ZL15make_batch_corov:
LFB6921:
	stp	x29, x30, [sp, -32]!	;,,,
LCFI31:
	mov	x29, sp	;,
LCFI32:
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	stp	x19, x20, [sp, 16]	;,,
LCFI33:
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	mov	x19, x8	; <retval>, <retval>
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x20, [x0]	; mr, *_32
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x20, L81	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x3, [x20]	; mr_33->_vptr.memory_resource, mr_33->_vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 232	;,
	mov	x0, x20	;, mr
	ldr	x3, [x3, 16]	; MEM[(int (*) () *)_35 + 16B], MEM[(int (*) () *)_35 + 16B]
	blr	x3		; MEM[(int (*) () *)_35 + 16B]
L82:
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	adrp	x2, __Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor@PAGE	; tmp118,
	adrp	x3, __Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy@PAGE	; tmp120,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp127
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	add	x2, x2, __Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor@PAGEOFF;	; tmp117, tmp118,
	add	x3, x3, __Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy@PAGEOFF;	; tmp119, tmp120,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_39 + 16B].aborted
	str	xzr, [x0, 24]	;, MEM[(struct PromiseAbortBase *)raw_39 + 16B].abort_owner
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	stp	x2, x3, [x0]	; tmp117, tmp119,* raw
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x2, x0, 144	; _16, raw,
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	mov	w3, 65536	; tmp133,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x0, 32]	; MEM[(struct SmallAny *)raw_39 + 32B].buf_
	stp	xzr, xzr, [x0, 48]	; MEM[(struct SmallAny *)raw_39 + 32B].buf_
	stp	xzr, xzr, [x0, 64]	; MEM[(struct SmallAny *)raw_39 + 32B].buf_
	str	q31, [x0, 80]	; tmp127, MEM <vector(2) long unsigned int> [(void *)raw_39 + 80B]
	str	xzr, [x0, 96]	;, MEM[(struct SmallAny *)raw_39 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x0, 112]	; tmp127, MEM <vector(2) long unsigned int> [(const void * *)raw_39 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	stp	xzr, x2, [x0, 128]	;, _16,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x0, 152]	;, MEM[(struct _Optional_payload_base *)raw_39 + 144B]._M_engaged
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	str	w3, [x0, 168]	; tmp133, MEM <unsigned int> [(void *)raw_39 + 168B]
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x20, [x0, 224]	; mr, MEM[(struct memory_resource * *)raw_39 + 224B]
; ../../effects.hpp:609:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	str	x0, [x19]	; raw, MEM[(struct OwnedHandle *)_14(D)]
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	bl	__Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor		;
; b6_allocators.cpp:133: }
	mov	x0, x19	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 32	;,,,
LCFI34:
	ret	
	.p2align 2,,3
L81:
LCFI35:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 232	;,
	bl	__Znwm		;
	b	L82		;
LFE6921:
	.cstring
	.align	3
lC1:
	.ascii "fx: unhandled effect -- no matching handler installed\0"
	.text
	.align	2
	.p2align 5,,15
__ZZ4mainENKUlvE0_clEv.isra.0:
LFB9853:
	stp	x29, x30, [sp, -240]!	;,,,
LCFI36:
	mov	x29, sp	;,
LCFI37:
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI38:
; ../../effects.hpp:783:     detail::current_mr = mr;
	add	x24, x29, 176	; tmp220,,
; b6_allocators.cpp:157:     print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
	str	x25, [sp, 64]	;,
LCFI39:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	ldp	x20, x19, [x0]	; _2, MEM[(const struct vector *)ISRA.650_27(D)].D.159133._M_impl.D.158419._M_finish,* ISRA.650
; b6_allocators.cpp:159:           buf.data(), buf.size(), std::pmr::null_memory_resource()};
	bl	__ZNSt3pmr20null_memory_resourceEv		;
	mov	x2, x0	; _6,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:455:       return __buffer_size * _S_growth_factor;
	fmov	s30, 1.5e+0	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	adrp	x1, __ZTVNSt3pmr25monotonic_buffer_resourceE@GOTPAGE	; tmp142,
	ldr	x1, [x1, __ZTVNSt3pmr25monotonic_buffer_resourceE@GOTPAGEOFF]	; tmp142,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x19, x19, x20	; _5, MEM[(const struct vector *)ISRA.650_27(D)].D.159133._M_impl.D.158419._M_finish, _2
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	xzr, [x29, 232]	;, arena._M_head
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:453:       if (__builtin_expect(__buffer_size == 0, false))
	cmp	x19, 0	; _5,
	csinc	x0, x19, xzr, ne	; _89, _5,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:455:       return __buffer_size * _S_growth_factor;
	scvtf	s31, x0	;, _89
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	str	x19, [x29, 192]	; _5, arena._M_avail
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	add	x1, x1, 16	; tmp141, tmp142,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	stp	x20, x19, [x29, 216]	; _2, _5,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:455:       return __buffer_size * _S_growth_factor;
	fmul	s30, s31, s30	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	stp	x1, x20, [x29, 176]	; tmp141, _2,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:455:       return __buffer_size * _S_growth_factor;
	fcvtzu	x1, s30	; tmp148,
	stp	x1, x2, [x29, 200]	; tmp148, _6,
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	bl	___emutls_get_address		;
	ldr	x25, [x0]	; current_mr.73_16, *_15
; b6_allocators.cpp:162:       do_not_optimize(make_batch_coro().run(h));
	add	x8, x29, 96	;,,
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	mov	x22, x0	; _15, _15
; ../../effects.hpp:783:     detail::current_mr = mr;
	str	x24, [x0]	; tmp220, *_15
; b6_allocators.cpp:161:       CountHandler h;
	str	wzr, [x29, 88]	;, h
LEHB1:
; b6_allocators.cpp:162:       do_not_optimize(make_batch_coro().run(h));
	bl	__ZL15make_batch_corov		;
LEHE1:
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	adrp	x1, __ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGE	; tmp155,
	ldr	x1, [x1, __ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGEOFF]	; tmp155,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x2, x29, 88	; tmp153,,
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	add	x23, x29, 112	; tmp221,,
; ../../effects.hpp:247: struct HandlerNode {
	str	xzr, [x29, 152]	;, MEM[(struct HandlerNode *)&guard].on_return_any_fn
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	adrp	x3, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGE	; tmp152,
	ldr	x3, [x3, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGEOFF]	; tmp152,
; ../../effects.hpp:752:     saved = detail::stack_top;
	adrp	x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	;,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	stp	x2, x1, [x29, 128]	; tmp153, tmp155,
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x3, x23, [x29, 112]	; tmp152, tmp221,
; ../../effects.hpp:752:     saved = detail::stack_top;
	bl	___emutls_get_address		;
	mov	x21, x0	; _63,
; b6_allocators.cpp:162:       do_not_optimize(make_batch_coro().run(h));
	ldr	x19, [x29, 96]	; SR.655, MEM[(struct Fx *)&D.207569]
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x21]	; stack_top.18_64, *_63
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x2, [x19]	; MEM[(void (*<T11f>) (void *) *)SR.655_80], MEM[(void (*<T11f>) (void *) *)SR.655_80]
	mov	x0, x19	;, SR.655
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x23, [x21]	; tmp221, *_63
; ../../effects.hpp:753:     node.prev = saved;
	str	x1, [x29, 144]	; stack_top.18_64, guard.node.prev
; ../../effects.hpp:752:     saved = detail::stack_top;
	str	x1, [x29, 160]	; stack_top.18_64, guard.saved
LEHB2:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)SR.655_80]
	.p2align 5,,15
L85:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x19]	; MEM[(void * *)SR.655_80], MEM[(void * *)SR.655_80]
	cbz	x0, L124	; MEM[(void * *)SR.655_80],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x21]	; n, *_63
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x20, x19, 16	; tmp219, SR.655,
	ldr	x2, [x20, 96]	; _81, MEM[(struct promise_type &)SR.655_80 + 16].D.155035.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L89	; n,
	b	L86		;
	.p2align 2,,3
L87:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_46->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L86	; n,
L89:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_46->effect_tag, n_46->effect_tag
	cmp	x2, x1	; _81, n_46->effect_tag
	bne	L87		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_46->dispatch, n_46->dispatch
	ldr	x1, [x20, 104]	;, MEM[(struct promise_type &)SR.655_80 + 16].D.155035.D.154002.payload_ptr
	blr	x2		; n_46->dispatch
LEHE2:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x19, 16]	; MEM[(struct promise_type &)SR.655_80 + 16].D.155035.D.154002.aborted, MEM[(struct promise_type &)SR.655_80 + 16].D.155035.D.154002.aborted
	tbz	x0, 0, L85	; MEM[(struct promise_type &)SR.655_80 + 16].D.155035.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x20, 8]	; MEM[(struct PromiseAbortBase *)SR.655_80 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.655_80 + 16B].abort_owner
; ../../effects.hpp:893:       return std::nullopt;
	mov	x20, 0	; SR.668,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	cmp	x0, x23	; MEM[(struct PromiseAbortBase *)SR.655_80 + 16B].abort_owner, tmp221
	beq	L99		;,
L96:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 160]	; guard.saved, guard.saved
	str	x0, [x21]	; guard.saved, *_63
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)SR.655_80 + 8B], MEM[(void (*<T11f>) (void *) *)SR.655_80 + 8B]
	mov	x0, x19	;, SR.655
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.655_80 + 8B]
; b6_allocators.cpp:163:     }));
	mov	x0, x24	;, tmp220
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x25, [x22]	; current_mr.73_16, *_15
; b6_allocators.cpp:163:     }));
	bl	__ZNSt3pmr25monotonic_buffer_resourceD1Ev		;
; b6_allocators.cpp:163:     }));
	ldr	x25, [sp, 64]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 240	;,,,
LCFI40:
	ret	
L124:
LCFI41:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x19, 128]	; _86, MEM[(const struct exception_ptr *)SR.655_80 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x0, L125	; _86,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x19, 16]	; MEM[(struct PromiseAbortBase *)SR.655_80 + 16B].aborted, MEM[(struct PromiseAbortBase *)SR.655_80 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	x20, [x19, 144]	; SR.668, MEM[(long long int &)SR.655_80 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L96	; MEM[(struct PromiseAbortBase *)SR.655_80 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x19, 24]	; MEM[(struct PromiseAbortBase *)SR.655_80 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.655_80 + 16B].abort_owner
	cmp	x0, x23	; MEM[(struct PromiseAbortBase *)SR.655_80 + 16B].abort_owner, tmp221
	bne	L96		;,
L99:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x19, 80]	; _72, MEM[(struct SmallAny *)SR.655_80 + 32B].destroy_
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x19, 16]	;, MEM[(struct PromiseAbortBase *)SR.655_80 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	x20, [x19, 32]	; SR.668, MEM[(type &)_70]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L96	; _72,
; ../../effects.hpp:133:       destroy_(buf_);
	add	x0, x19, 32	;, SR.655,
	blr	x1		; _72
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x19, 80]	; MEM <vector(2) long unsigned int> [(void *)SR.655_80 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x19, 96]	;, MEM[(struct SmallAny *)SR.655_80 + 32B].type_tag_
	b	L96		;
L125:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x0, [x29, 104]	; _86, MEM[(struct exception_ptr *)&D.207614]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 104	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	add	x0, x29, 104	;,,
LEHB3:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE3:
L105:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x20, x0	; tmp171, tmp229
L91:
	ldr	x0, [x29, 160]	; guard.saved, guard.saved
	str	x0, [x21]	; guard.saved, *_63
; ../../effects.hpp:622:     if (h)
	cbz	x19, L102	; SR.655,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)SR.655_80 + 8B], MEM[(void (*<T11f>) (void *) *)SR.655_80 + 8B]
	mov	x0, x19	;, SR.655
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.655_80 + 8B]
L102:
; b6_allocators.cpp:163:     }));
	mov	x0, x24	;, tmp220
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x25, [x22]	; current_mr.73_16, *_15
; b6_allocators.cpp:163:     }));
	bl	__ZNSt3pmr25monotonic_buffer_resourceD1Ev		;
	mov	x0, x20	;, tmp214
LEHB4:
	bl	__Unwind_Resume		;
LEHE4:
L106:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 104]	; D.207614._M_exception_object, D.207614._M_exception_object
	mov	x20, x0	; tmp228,
	cbz	x1, L91	; D.207614._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 104	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L91		;
L104:
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	mov	x20, x0	; tmp214, tmp230
	b	L102		;
L86:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp168,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x23, x0	; _95,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp168,
LEHB5:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE5:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x23	;, _95
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB6:
	bl	___cxa_throw		;
LEHE6:
L107:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x20, x0	; tmp227,
	mov	x0, x23	;, _95
	bl	___cxa_free_exception		;
	b	L91		;
LFE9853:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
LLSDA9853:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE9853-LLSDACSB9853
LLSDACSB9853:
	.uleb128 LEHB1-LFB9853
	.uleb128 LEHE1-LEHB1
	.uleb128 L104-LFB9853
	.uleb128 0
	.uleb128 LEHB2-LFB9853
	.uleb128 LEHE2-LEHB2
	.uleb128 L105-LFB9853
	.uleb128 0
	.uleb128 LEHB3-LFB9853
	.uleb128 LEHE3-LEHB3
	.uleb128 L106-LFB9853
	.uleb128 0
	.uleb128 LEHB4-LFB9853
	.uleb128 LEHE4-LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB5-LFB9853
	.uleb128 LEHE5-LEHB5
	.uleb128 L107-LFB9853
	.uleb128 0
	.uleb128 LEHB6-LFB9853
	.uleb128 LEHE6-LEHB6
	.uleb128 L105-LFB9853
	.uleb128 0
LLSDACSE9853:
	.text
	.align	2
	.p2align 5,,15
__ZZ4mainENKUlvE_clEv.isra.0:
LFB9855:
	stp	x29, x30, [sp, -144]!	;,,,
LCFI42:
	mov	x29, sp	;,
LCFI43:
; b6_allocators.cpp:151:     do_not_optimize(make_batch_coro().run(h));
	add	x8, x29, 64	;,,
; b6_allocators.cpp:149:   print_result(bench("1. Default new/delete", REPS, [&] {
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
LCFI44:
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	add	x22, x29, 80	; tmp190,,
; b6_allocators.cpp:150:     CountHandler h;
	str	wzr, [x29, 56]	;, h
LEHB7:
; b6_allocators.cpp:151:     do_not_optimize(make_batch_coro().run(h));
	bl	__ZL15make_batch_corov		;
LEHE7:
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	adrp	x1, __ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGE	; tmp131,
	ldr	x1, [x1, __ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGEOFF]	; tmp131,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x2, x29, 56	; tmp129,,
; ../../effects.hpp:247: struct HandlerNode {
	str	xzr, [x29, 120]	;, MEM[(struct HandlerNode *)&guard].on_return_any_fn
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	adrp	x3, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGE	; tmp128,
	ldr	x3, [x3, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGEOFF]	; tmp128,
; ../../effects.hpp:752:     saved = detail::stack_top;
	adrp	x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	;,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	stp	x2, x1, [x29, 96]	; tmp129, tmp131,
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x3, x22, [x29, 80]	; tmp128, tmp190,
; ../../effects.hpp:752:     saved = detail::stack_top;
	bl	___emutls_get_address		;
	mov	x21, x0	; _27,
; b6_allocators.cpp:151:     do_not_optimize(make_batch_coro().run(h));
	ldr	x19, [x29, 64]	; SR.679, MEM[(struct Fx *)&D.207665]
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x21]	; stack_top.18_28, *_27
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x2, [x19]	; MEM[(void (*<T11f>) (void *) *)SR.679_24], MEM[(void (*<T11f>) (void *) *)SR.679_24]
	mov	x0, x19	;, SR.679
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x22, [x21]	; tmp190, *_27
; ../../effects.hpp:753:     node.prev = saved;
	str	x1, [x29, 112]	; stack_top.18_28, guard.node.prev
; ../../effects.hpp:752:     saved = detail::stack_top;
	str	x1, [x29, 128]	; stack_top.18_28, guard.saved
LEHB8:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)SR.679_24]
	.p2align 5,,15
L127:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x1, [x19]	; MEM[(void * *)SR.679_24], MEM[(void * *)SR.679_24]
	cbz	x1, L164	; MEM[(void * *)SR.679_24],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x21]	; n, *_27
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x2, [x19, 112]	; _45, MEM[(struct promise_type &)SR.679_24 + 16].D.155035.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L131	; n,
	b	L128		;
	.p2align 2,,3
L129:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_16->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L128	; n,
L131:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_16->effect_tag, n_16->effect_tag
	cmp	x2, x1	; _45, n_16->effect_tag
	bne	L129		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_16->dispatch, n_16->dispatch
	ldr	x1, [x19, 120]	;, MEM[(struct promise_type &)SR.679_24 + 16].D.155035.D.154002.payload_ptr
	blr	x2		; n_16->dispatch
LEHE8:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w1, [x19, 16]	; MEM[(struct promise_type &)SR.679_24 + 16].D.155035.D.154002.aborted, MEM[(struct promise_type &)SR.679_24 + 16].D.155035.D.154002.aborted
	tbz	x1, 0, L127	; MEM[(struct promise_type &)SR.679_24 + 16].D.155035.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x19, 24]	; MEM[(struct PromiseAbortBase *)SR.679_24 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.679_24 + 16B].abort_owner
; ../../effects.hpp:893:       return std::nullopt;
	mov	x20, 0	; SR.692,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	cmp	x0, x22	; MEM[(struct PromiseAbortBase *)SR.679_24 + 16B].abort_owner, tmp190
	beq	L141		;,
L138:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 128]	; guard.saved, guard.saved
	str	x0, [x21]	; guard.saved, *_27
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)SR.679_24 + 8B], MEM[(void (*<T11f>) (void *) *)SR.679_24 + 8B]
	mov	x0, x19	;, SR.679
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.679_24 + 8B]
; b6_allocators.cpp:152:   }));
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 144	;,,,
LCFI45:
	ret	
L164:
LCFI46:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x19, 128]	; _50, MEM[(const struct exception_ptr *)SR.679_24 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x0, L165	; _50,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x19, 16]	; MEM[(struct PromiseAbortBase *)SR.679_24 + 16B].aborted, MEM[(struct PromiseAbortBase *)SR.679_24 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	x20, [x19, 144]	; SR.692, MEM[(long long int &)SR.679_24 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L138	; MEM[(struct PromiseAbortBase *)SR.679_24 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x19, 24]	; MEM[(struct PromiseAbortBase *)SR.679_24 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.679_24 + 16B].abort_owner
	cmp	x0, x22	; MEM[(struct PromiseAbortBase *)SR.679_24 + 16B].abort_owner, tmp190
	bne	L138		;,
L141:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x19, 80]	; _36, MEM[(struct SmallAny *)SR.679_24 + 32B].destroy_
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x19, 16]	;, MEM[(struct PromiseAbortBase *)SR.679_24 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	x20, [x19, 32]	; SR.692, MEM[(type &)_34]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L138	; _36,
; ../../effects.hpp:133:       destroy_(buf_);
	add	x0, x19, 32	;, SR.679,
	blr	x1		; _36
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x19, 80]	; MEM <vector(2) long unsigned int> [(void *)SR.679_24 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x19, 96]	;, MEM[(struct SmallAny *)SR.679_24 + 32B].type_tag_
	b	L138		;
L165:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x0, [x29, 72]	; _50, MEM[(struct exception_ptr *)&D.207695]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 72	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	add	x0, x29, 72	;,,
LEHB9:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE9:
L128:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp144,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _59,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp144,
LEHB10:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE10:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _59
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB11:
	bl	___cxa_throw		;
LEHE11:
L145:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x20, x0	; tmp147, tmp195
	b	L133		;
L146:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 72]	; D.207695._M_exception_object, D.207695._M_exception_object
	mov	x20, x0	; tmp194,
	cbz	x1, L133	; D.207695._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 72	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L133		;
L147:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x20, x0	; tmp193,
	mov	x0, x22	;, _59
	bl	___cxa_free_exception		;
L133:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 128]	; guard.saved, guard.saved
	str	x0, [x21]	; guard.saved, *_27
; ../../effects.hpp:622:     if (h)
	cbz	x19, L143	; SR.679,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)SR.679_24 + 8B], MEM[(void (*<T11f>) (void *) *)SR.679_24 + 8B]
	mov	x0, x19	;, SR.679
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.679_24 + 8B]
L143:
	mov	x0, x20	;, tmp147
LEHB12:
	bl	__Unwind_Resume		;
LEHE12:
LFE9855:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
LLSDA9855:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE9855-LLSDACSB9855
LLSDACSB9855:
	.uleb128 LEHB7-LFB9855
	.uleb128 LEHE7-LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB8-LFB9855
	.uleb128 LEHE8-LEHB8
	.uleb128 L145-LFB9855
	.uleb128 0
	.uleb128 LEHB9-LFB9855
	.uleb128 LEHE9-LEHB9
	.uleb128 L146-LFB9855
	.uleb128 0
	.uleb128 LEHB10-LFB9855
	.uleb128 LEHE10-LEHB10
	.uleb128 L147-LFB9855
	.uleb128 0
	.uleb128 LEHB11-LFB9855
	.uleb128 LEHE11-LEHB11
	.uleb128 L145-LFB9855
	.uleb128 0
	.uleb128 LEHB12-LFB9855
	.uleb128 LEHE12-LEHB12
	.uleb128 0
	.uleb128 0
LLSDACSE9855:
	.text
	.align	2
	.p2align 5,,15
__ZZ4mainENKUlvE1_clEv.isra.0:
LFB9856:
	stp	x29, x30, [sp, -240]!	;,,,
LCFI47:
	mov	x29, sp	;,
LCFI48:
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI49:
; ../../effects.hpp:783:     detail::current_mr = mr;
	add	x24, x29, 176	; tmp209,,
; b6_allocators.cpp:169:     print_result(bench("3. Monotonic (static buf, reset/iter)", REPS, [&] {
	str	x25, [sp, 64]	;,
LCFI50:
; b6_allocators.cpp:171:           sbuf.data(), sbuf.size(), std::pmr::null_memory_resource()};
	bl	__ZNSt3pmr20null_memory_resourceEv		;
	mov	x3, x0	; _1,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	adrp	x0, lC2@PAGE	; tmp224,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	adrp	x1, __ZTVNSt3pmr25monotonic_buffer_resourceE@GOTPAGE	; tmp131,
	ldr	x1, [x1, __ZTVNSt3pmr25monotonic_buffer_resourceE@GOTPAGEOFF]	; tmp131,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	adrp	x2, __ZZ4mainE4sbuf@PAGE	; tmp133,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	xzr, [x29, 232]	;, arena._M_head
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	ldr	q31, [x0, #lC2@PAGEOFF]	; tmp134,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	add	x2, x2, __ZZ4mainE4sbuf@PAGEOFF;	; tmp132, tmp133,
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	add	x1, x1, 16	; tmp130, tmp131,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:363:       _M_upstream(__upstream),
	stp	x3, x2, [x29, 208]	; _1, tmp132,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	stp	x1, x2, [x29, 176]	; tmp130, tmp132,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	str	q31, [x29, 192]	; tmp134, MEM <vector(2) long unsigned int> [(long unsigned int *)&arena + 16B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	d31, [x29, 224]	; tmp134, arena._M_orig_size
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	bl	___emutls_get_address		;
	ldr	x25, [x0]	; current_mr.73_3, *_2
; b6_allocators.cpp:174:       do_not_optimize(make_batch_coro().run(h));
	add	x8, x29, 96	;,,
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	mov	x22, x0	; _2, _2
; ../../effects.hpp:783:     detail::current_mr = mr;
	str	x24, [x0]	; tmp209, *_2
; b6_allocators.cpp:173:       CountHandler h;
	str	wzr, [x29, 88]	;, h
LEHB13:
; b6_allocators.cpp:174:       do_not_optimize(make_batch_coro().run(h));
	bl	__ZL15make_batch_corov		;
LEHE13:
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	adrp	x1, __ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGE	; tmp144,
	ldr	x1, [x1, __ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGEOFF]	; tmp144,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x2, x29, 88	; tmp142,,
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	add	x23, x29, 112	; tmp210,,
; ../../effects.hpp:247: struct HandlerNode {
	str	xzr, [x29, 152]	;, MEM[(struct HandlerNode *)&guard].on_return_any_fn
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	adrp	x3, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGE	; tmp141,
	ldr	x3, [x3, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGEOFF]	; tmp141,
; ../../effects.hpp:752:     saved = detail::stack_top;
	adrp	x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	;,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	stp	x2, x1, [x29, 128]	; tmp142, tmp144,
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x3, x23, [x29, 112]	; tmp141, tmp210,
; ../../effects.hpp:752:     saved = detail::stack_top;
	bl	___emutls_get_address		;
	mov	x21, x0	; _49,
; b6_allocators.cpp:174:       do_not_optimize(make_batch_coro().run(h));
	ldr	x19, [x29, 96]	; SR.703, MEM[(struct Fx *)&D.207746]
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x21]	; stack_top.18_50, *_49
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x2, [x19]	; MEM[(void (*<T11f>) (void *) *)SR.703_46], MEM[(void (*<T11f>) (void *) *)SR.703_46]
	mov	x0, x19	;, SR.703
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x23, [x21]	; tmp210, *_49
; ../../effects.hpp:753:     node.prev = saved;
	str	x1, [x29, 144]	; stack_top.18_50, guard.node.prev
; ../../effects.hpp:752:     saved = detail::stack_top;
	str	x1, [x29, 160]	; stack_top.18_50, guard.saved
LEHB14:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)SR.703_46]
	.p2align 5,,15
L167:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x19]	; MEM[(void * *)SR.703_46], MEM[(void * *)SR.703_46]
	cbz	x0, L206	; MEM[(void * *)SR.703_46],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x21]	; n, *_49
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x2, [x19, 112]	; _67, MEM[(struct promise_type &)SR.703_46 + 16].D.155035.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L171	; n,
	b	L168		;
	.p2align 2,,3
L169:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_32->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L168	; n,
L171:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_32->effect_tag, n_32->effect_tag
	cmp	x2, x1	; _67, n_32->effect_tag
	bne	L169		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_32->dispatch, n_32->dispatch
	ldr	x1, [x19, 120]	;, MEM[(struct promise_type &)SR.703_46 + 16].D.155035.D.154002.payload_ptr
	blr	x2		; n_32->dispatch
LEHE14:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x19, 16]	; MEM[(struct promise_type &)SR.703_46 + 16].D.155035.D.154002.aborted, MEM[(struct promise_type &)SR.703_46 + 16].D.155035.D.154002.aborted
	tbz	x0, 0, L167	; MEM[(struct promise_type &)SR.703_46 + 16].D.155035.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x19, 24]	; MEM[(struct PromiseAbortBase *)SR.703_46 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.703_46 + 16B].abort_owner
; ../../effects.hpp:893:       return std::nullopt;
	mov	x20, 0	; SR.716,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	cmp	x0, x23	; MEM[(struct PromiseAbortBase *)SR.703_46 + 16B].abort_owner, tmp210
	beq	L181		;,
L178:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 160]	; guard.saved, guard.saved
	str	x0, [x21]	; guard.saved, *_49
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)SR.703_46 + 8B], MEM[(void (*<T11f>) (void *) *)SR.703_46 + 8B]
	mov	x0, x19	;, SR.703
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.703_46 + 8B]
; b6_allocators.cpp:175:     }));
	mov	x0, x24	;, tmp209
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x25, [x22]	; current_mr.73_3, *_2
; b6_allocators.cpp:175:     }));
	bl	__ZNSt3pmr25monotonic_buffer_resourceD1Ev		;
; b6_allocators.cpp:175:     }));
	ldr	x25, [sp, 64]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 240	;,,,
LCFI51:
	ret	
L206:
LCFI52:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x19, 128]	; _72, MEM[(const struct exception_ptr *)SR.703_46 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x0, L207	; _72,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x19, 16]	; MEM[(struct PromiseAbortBase *)SR.703_46 + 16B].aborted, MEM[(struct PromiseAbortBase *)SR.703_46 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	x20, [x19, 144]	; SR.716, MEM[(long long int &)SR.703_46 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L178	; MEM[(struct PromiseAbortBase *)SR.703_46 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x19, 24]	; MEM[(struct PromiseAbortBase *)SR.703_46 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.703_46 + 16B].abort_owner
	cmp	x0, x23	; MEM[(struct PromiseAbortBase *)SR.703_46 + 16B].abort_owner, tmp210
	bne	L178		;,
L181:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x19, 80]	; _58, MEM[(struct SmallAny *)SR.703_46 + 32B].destroy_
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x19, 16]	;, MEM[(struct PromiseAbortBase *)SR.703_46 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	x20, [x19, 32]	; SR.716, MEM[(type &)_56]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L178	; _58,
; ../../effects.hpp:133:       destroy_(buf_);
	add	x0, x19, 32	;, SR.703,
	blr	x1		; _58
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x19, 80]	; MEM <vector(2) long unsigned int> [(void *)SR.703_46 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x19, 96]	;, MEM[(struct SmallAny *)SR.703_46 + 32B].type_tag_
	b	L178		;
L207:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x0, [x29, 104]	; _72, MEM[(struct exception_ptr *)&D.207795]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 104	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	add	x0, x29, 104	;,,
LEHB15:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE15:
L187:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x20, x0	; tmp160, tmp217
L173:
	ldr	x0, [x29, 160]	; guard.saved, guard.saved
	str	x0, [x21]	; guard.saved, *_49
; ../../effects.hpp:622:     if (h)
	cbz	x19, L184	; SR.703,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)SR.703_46 + 8B], MEM[(void (*<T11f>) (void *) *)SR.703_46 + 8B]
	mov	x0, x19	;, SR.703
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.703_46 + 8B]
L184:
; b6_allocators.cpp:175:     }));
	mov	x0, x24	;, tmp209
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x25, [x22]	; current_mr.73_3, *_2
; b6_allocators.cpp:175:     }));
	bl	__ZNSt3pmr25monotonic_buffer_resourceD1Ev		;
	mov	x0, x20	;, tmp203
LEHB16:
	bl	__Unwind_Resume		;
LEHE16:
L188:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 104]	; D.207795._M_exception_object, D.207795._M_exception_object
	mov	x20, x0	; tmp216,
	cbz	x1, L173	; D.207795._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 104	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L173		;
L186:
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	mov	x20, x0	; tmp203, tmp218
	b	L184		;
L168:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp157,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x23, x0	; _81,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp157,
LEHB17:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE17:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x23	;, _81
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB18:
	bl	___cxa_throw		;
LEHE18:
L189:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x20, x0	; tmp215,
	mov	x0, x23	;, _81
	bl	___cxa_free_exception		;
	b	L173		;
LFE9856:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
LLSDA9856:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE9856-LLSDACSB9856
LLSDACSB9856:
	.uleb128 LEHB13-LFB9856
	.uleb128 LEHE13-LEHB13
	.uleb128 L186-LFB9856
	.uleb128 0
	.uleb128 LEHB14-LFB9856
	.uleb128 LEHE14-LEHB14
	.uleb128 L187-LFB9856
	.uleb128 0
	.uleb128 LEHB15-LFB9856
	.uleb128 LEHE15-LEHB15
	.uleb128 L188-LFB9856
	.uleb128 0
	.uleb128 LEHB16-LFB9856
	.uleb128 LEHE16-LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB17-LFB9856
	.uleb128 LEHE17-LEHB17
	.uleb128 L189-LFB9856
	.uleb128 0
	.uleb128 LEHB18-LFB9856
	.uleb128 LEHE18-LEHB18
	.uleb128 L187-LFB9856
	.uleb128 0
LLSDACSE9856:
	.text
	.align	2
	.p2align 5,,15
__ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor:
LFB6992:
	mov	x1, x0	; frame_ptr, frame_ptr
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldrh	w0, [x0, 176]	; _1, frame_ptr_7(D)->_Coro_resume_index
	tbz	x0, 0, L209	; _1,,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmp	w0, 7	; _1,
	bhi	L210		;,
L211:
L217:
L218:
L219:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	stp	x29, x30, [sp, -32]!	;,,,
LCFI53:
	mov	x29, sp	;,
LCFI54:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp138, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_7(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_7(D) + 128B]._M_exception_object
	cbz	x2, L220	; MEM[(struct exception_ptr *)frame_ptr_7(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L220:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp143, frame_ptr,
	ldr	x2, [x0, 48]	; _33, MEM[(struct SmallAny *)frame_ptr_7(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L221	; _33,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _33
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L221:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldrb	w0, [x1, 178]	; frame_ptr_7(D)->_Coro_frame_needs_free, frame_ptr_7(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L238	; frame_ptr_7(D)->_Coro_frame_needs_free,,
L216:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldp	x29, x30, [sp], 32	;,,,
LCFI55:
	ret	
	.p2align 2,,3
L209:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmp	w0, 4	; _1,
	beq	L212		;,
	bhi	L213		;,
	cbz	w0, L214	; _1,
L215:
	ldr	x3, [x1, 160]	; caller$_M_fr_ptr, frame_ptr_7(D)->_Coro_self_handle._M_fr_ptr
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	w4, 1	; tmp121,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	w5, 4	; tmp122,
; ../../effects.hpp:1210:     caller_ = caller;
	add	x2, x1, 184	; tmp124, frame_ptr,
; ../../effects.hpp:579:     return a;
	str	wzr, [x1, 188]	;, MEM <result_type> [(struct _ZZ4mainENKUlvE4_clEv.Frame *)frame_ptr_7(D) + 188B]
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	adrp	x0, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGE	; tmp130,
	ldr	x0, [x0, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGEOFF]	; tmp130,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	strh	w5, [x1, 176]	; tmp122, frame_ptr_7(D)->_Coro_resume_index
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	strb	w4, [x1, 179]	; tmp121, frame_ptr_7(D)->_Coro_initial_await_resume_called
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	add	x1, x3, 16	; __t_19, caller$_M_fr_ptr,
; ../../effects.hpp:1210:     caller_ = caller;
	stp	x3, x1, [x2, 8]	; caller$_M_fr_ptr, __t_19,
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	stp	x0, x2, [x3, 112]	; tmp130, tmp124,
	ret	
	.p2align 2,,3
L238:
LCFI56:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 224]	; mr, MEM[(struct memory_resource * *)frame_ptr_7(D) + 224B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L222	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x4, [x0]	; mr_37->_vptr.memory_resource, mr_37->_vptr.memory_resource
	mov	x3, 16	;,
	mov	x2, 232	;,
	ldr	x4, [x4, 24]	; MEM[(int (*) () *)_38 + 24B], MEM[(int (*) () *)_38 + 24B]
	blr	x4		; MEM[(int (*) () *)_38 + 24B]
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldp	x29, x30, [sp], 32	;,,,
LCFI57:
	ret	
	.p2align 2,,3
L214:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	w0, 2	; tmp120,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	x1, [x1, 160]	; frame_ptr, frame_ptr_7(D)->_Coro_self_handle._M_fr_ptr
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	strb	wzr, [x1, 179]	;, frame_ptr_7(D)->_Coro_initial_await_resume_called
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	strh	w0, [x1, 176]	; tmp120, frame_ptr_7(D)->_Coro_resume_index
	ret	
	.p2align 2,,3
L212:
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	ldr	w0, [x1, 188]	;, MEM[(type &)frame_ptr_7(D) + 188]
	mov	w3, 1	; tmp135,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	w2, 6	; tmp136,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	xzr, [x1]	;, frame_ptr_7(D)->_Coro_resume_fn
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	strb	w3, [x1, 148]	; tmp135, MEM <unsigned char> [(struct promise_type *)frame_ptr_7(D) + 148B]
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	strh	w2, [x1, 176]	; tmp136, frame_ptr_7(D)->_Coro_resume_index
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	str	w0, [x1, 144]	; MEM[(type &)frame_ptr_7(D) + 188], MEM <int> [(struct promise_type *)frame_ptr_7(D) + 144B]
	ret	
	.p2align 2,,3
L213:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmp	w0, 6	; _1,
	beq	L219		;,
L210:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	brk #1000
	.p2align 2,,3
L222:
LCFI58:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 232	;,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldp	x29, x30, [sp], 32	;,,,
LCFI59:
LEHB19:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE19:
LFE6992:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
LLSDA6992:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6992-LLSDACSB6992
LLSDACSB6992:
	.uleb128 LEHB19-LFB6992
	.uleb128 LEHE19-LEHB19
	.uleb128 0
	.uleb128 0
LLSDACSE6992:
	.text
	.align	2
	.p2align 5,,15
__ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy:
LFB6993:
	mov	x1, x0	; frame_ptr, frame_ptr
	ldrh	w0, [x0, 176]	; tmp113, frame_ptr_4(D)->_Coro_resume_index
	orr	w0, w0, 1	; _2, tmp113,
	strh	w0, [x1, 176]	; _2, frame_ptr_4(D)->_Coro_resume_index
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmp	w0, 7	; _2,
	bhi	L247		;,
L241:
L242:
L243:
L244:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	stp	x29, x30, [sp, -32]!	;,,,
LCFI60:
	mov	x29, sp	;,
LCFI61:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp116, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object
	cbz	x2, L246	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L246:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp121, frame_ptr,
	ldr	x2, [x0, 48]	; _17, MEM[(struct SmallAny *)frame_ptr_4(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L248	; _17,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _17
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L248:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldrb	w0, [x1, 178]	; frame_ptr_4(D)->_Coro_frame_needs_free, frame_ptr_4(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L259	; frame_ptr_4(D)->_Coro_frame_needs_free,,
L249:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldp	x29, x30, [sp], 32	;,,,
LCFI62:
	ret	
	.p2align 2,,3
L259:
LCFI63:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 224]	; mr, MEM[(struct memory_resource * *)frame_ptr_4(D) + 224B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L250	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x4, [x0]	; mr_21->_vptr.memory_resource, mr_21->_vptr.memory_resource
	mov	x3, 16	;,
	mov	x2, 232	;,
	ldr	x4, [x4, 24]	; MEM[(int (*) () *)_22 + 24B], MEM[(int (*) () *)_22 + 24B]
	blr	x4		; MEM[(int (*) () *)_22 + 24B]
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldp	x29, x30, [sp], 32	;,,,
LCFI64:
	ret	
	.p2align 2,,3
L250:
LCFI65:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 232	;,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldp	x29, x30, [sp], 32	;,,,
LCFI66:
LEHB20:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE20:
L240:
L247:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	brk #1000
LFE6993:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
LLSDA6993:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6993-LLSDACSB6993
LLSDACSB6993:
	.uleb128 LEHB20-LFB6993
	.uleb128 LEHE20-LEHB20
	.uleb128 0
	.uleb128 0
LLSDACSE6993:
	.text
	.align	2
	.p2align 5,,15
__Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy:
LFB6949:
	mov	x1, x0	; frame_ptr, frame_ptr
	ldrh	w0, [x0, 168]	; tmp113, frame_ptr_4(D)->_Coro_resume_index
	orr	w0, w0, 1	; _2, tmp113,
	strh	w0, [x1, 168]	; _2, frame_ptr_4(D)->_Coro_resume_index
; b6_allocators.cpp:133: }
	cmp	w0, 7	; _2,
	bhi	L268		;,
L262:
L263:
L264:
L265:
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI67:
	mov	x29, sp	;,
LCFI68:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp116, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object
	cbz	x2, L267	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L267:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp121, frame_ptr,
	ldr	x2, [x0, 48]	; _24, MEM[(struct SmallAny *)frame_ptr_4(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L269	; _24,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _24
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L269:
; b6_allocators.cpp:133: }
	ldrb	w0, [x1, 170]	; frame_ptr_4(D)->_Coro_frame_needs_free, frame_ptr_4(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L280	; frame_ptr_4(D)->_Coro_frame_needs_free,,
L270:
; b6_allocators.cpp:133: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI69:
	ret	
	.p2align 2,,3
L280:
LCFI70:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 224]	; mr, MEM[(struct memory_resource * *)frame_ptr_4(D) + 224B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L271	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x4, [x0]	; mr_28->_vptr.memory_resource, mr_28->_vptr.memory_resource
	mov	x3, 16	;,
	mov	x2, 232	;,
	ldr	x4, [x4, 24]	; MEM[(int (*) () *)_29 + 24B], MEM[(int (*) () *)_29 + 24B]
	blr	x4		; MEM[(int (*) () *)_29 + 24B]
; b6_allocators.cpp:133: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI71:
	ret	
	.p2align 2,,3
L271:
LCFI72:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b6_allocators.cpp:133: }
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 232	;,
; b6_allocators.cpp:133: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI73:
LEHB21:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE21:
L261:
L268:
; b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	brk #1000
LFE6949:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
LLSDA6949:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6949-LLSDACSB6949
LLSDACSB6949:
	.uleb128 LEHB21-LFB6949
	.uleb128 LEHE21-LEHB21
	.uleb128 0
	.uleb128 0
LLSDACSE6949:
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
	beq	L288		;,
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
L288:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:742:       basic_string(basic_string&& __str) noexcept
	stp	x29, x30, [sp, -48]!	;,,,
LCFI74:
	mov	x29, sp	;,
LCFI75:
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
LCFI76:
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
	bls	L290		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	mov	x9, 22859	; tmp208,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	w7, 34463	; tmp209,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4534:   {
	stp	x29, x30, [sp, -272]!	;,,,
LCFI77:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x9, 0x3886, lsl 16	; tmp208,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4534:   {
	mov	x29, sp	;,
LCFI78:
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
	b	L296		;
	.p2align 2,,3
L291:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	cmp	w1, 999	; __value,
	bls	L310		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	cmp	w1, w6	; __value, tmp207
	bls	L311		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	uxtw	x3, w1	; _21, __value
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:74: 	  __n += 4;
	add	w5, w2, 4	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	umulh	x3, x3, x9	; tmp144, _21, tmp208
	lsr	x3, x3, 11	; _22, tmp144,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	w1, w7	; __value, tmp209
	bls	L295		;,
	mov	w2, w5	; __pos, __n
	mov	w1, w3	; __value, _22
L296:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	cmp	w1, 99	; __value,
	bhi	L291		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w5, w2, 1	; __n, __pos,
L292:
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
	bls	L298		;,
	str	x19, [x29, 16]	;,
LCFI79:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x6, 29	; _4,
	bls	L303		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x6, 1	; _63, _4,
	mov	x19, x6	; __res, _4
L299:
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
LCFI80:
	str	x0, [x8]	; _11, MEM[(struct basic_string *)__str_12(D)]._M_dataplus._M_p
	ldr	w10, [x29, 52]	;, %sfp
L298:
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
	bls	L300		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	mov	w13, 34079	; tmp175,
	mov	w12, 100	; tmp178,
	movk	w13, 0x51eb, lsl 16	; tmp175,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:96:       while (__val >= 100)
	mov	w11, 9999	; tmp194,
	.p2align 5,,15
L301:
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
	bhi	L301		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:104:       if (__val >= 10)
	cmp	w9, 999	; __val,
	bhi	L300		;,
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
LCFI81:
	ret	
	.p2align 2,,3
L300:
LCFI82:
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
LCFI83:
	ret	
	.p2align 2,,3
L310:
LCFI84:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	add	w5, w2, 2	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w2, w2, 1	; __pos, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	b	L292		;
	.p2align 2,,3
L311:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	add	w5, w2, 3	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	add	w2, w2, 2	; __pos, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	b	L292		;
	.p2align 2,,3
L295:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	add	w2, w2, 3	; __pos, __pos,
	b	L292		;
	.p2align 2,,3
L303:
LCFI85:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	mov	x19, 30	; __res,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 31	; _63,
	b	L299		;
L290:
LCFI86:
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
GCC_except_table9:
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
LFB6909:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI87:
	mov	x29, sp	;,
LCFI88:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC4@PAGE	; tmp135,
	mov	x2, 2	;,
	add	x1, x1, lC4@PAGEOFF;	;, tmp135,
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	stp	x19, x20, [sp, 16]	;,,
LCFI89:
	mov	x20, x0	; r, r
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ldr	d31, [x20, 32]	; r_2(D)->iters, r_2(D)->iters
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	str	d15, [sp, 32]	;,
LCFI90:
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
LCFI91:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	b	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LFE6909:
	.cstring
	.align	3
lC7:
	.ascii "\12=== \0"
	.align	3
lC8:
	.ascii " ===\12\0"
	.text
	.align	2
	.p2align 5,,15
	.globl __Z7sectionSt17basic_string_viewIcSt11char_traitsIcEE
	.weak_definition __Z7sectionSt17basic_string_viewIcSt11char_traitsIcEE
__Z7sectionSt17basic_string_viewIcSt11char_traitsIcEE:
LFB6910:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI92:
	mov	x29, sp	;,
LCFI93:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x3, lC7@PAGE	; tmp107,
	mov	x2, 5	;,
; bench.hpp:55: inline void section(std::string_view title) {
	stp	x19, x20, [sp, 16]	;,,
LCFI94:
	mov	x20, x1	; title, title
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	add	x1, x3, lC7@PAGEOFF;	;, tmp107,
	adrp	x19, __ZSt4cout@GOTPAGE	; tmp108,
	ldr	x19, [x19, __ZSt4cout@GOTPAGEOFF]	; tmp108,
; bench.hpp:55: inline void section(std::string_view title) {
	str	x21, [sp, 32]	;,
LCFI95:
; bench.hpp:55: inline void section(std::string_view title) {
	mov	x21, x0	; title, title
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	x0, x19	;, tmp108
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/string_view:769:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	mov	x2, x21	;, title
	mov	x1, x20	;, title
	mov	x0, x19	;, tmp108
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC8@PAGE	; tmp111,
; bench.hpp:57: }
	ldr	x21, [sp, 32]	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	x2, 5	;,
; bench.hpp:57: }
	ldp	x19, x20, [sp, 16]	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	add	x1, x1, lC8@PAGEOFF;	;, tmp111,
; bench.hpp:57: }
	ldp	x29, x30, [sp], 48	;,,,
LCFI96:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	b	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LFE6910:
	.cstring
	.align	3
lC9:
	.ascii "basic_string::_M_create\0"
	.text
	.align	2
	.p2align 5,,15
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
LFB8607:
	stp	x29, x30, [sp, -96]!	;,,,
LCFI97:
	mov	x29, sp	;,
LCFI98:
	stp	x25, x26, [sp, 64]	;,,
LCFI99:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x26, x0	; _26, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:356:     basic_string<_CharT, _Traits, _Alloc>::
	stp	x19, x20, [sp, 16]	;,,
LCFI100:
	mov	x19, x0	; this, this
	mov	x20, x1	; __pos, __pos
	stp	x21, x22, [sp, 32]	;,,
LCFI101:
	mov	x22, x3	; __s, __s
	stp	x23, x24, [sp, 48]	;,,
	stp	x27, x28, [sp, 80]	;,,
LCFI102:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:356:     basic_string<_CharT, _Traits, _Alloc>::
	mov	x28, x4	; __len2, __len2
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x5, [x0, 8]	; __sz, MEM[(const struct basic_string *)this_17(D)]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	sub	x0, x4, x2	; _60, __len2, __len1
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x27, [x26], 16	; _28, MEM[(const struct basic_string *)this_17(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	add	x23, x0, x5	; __new_capacity, _60, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x26, x27	; _26, _28
	beq	L345		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	mov	x3, 9223372036854775806	; tmp133,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x1, [x19, 16]	; __sz, MEM[(const struct basic_string *)this_17(D)].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmp	x23, x3	; __new_capacity, tmp133
	bhi	L318		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x23, 1	; _23, __new_capacity,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x23, x1	; __new_capacity, __sz
	bls	L324		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x1, x1, 1	; _52, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x23, x1	; __new_capacity, _52
	bcs	L324		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	cmp	x1, x3	; _52, tmp133
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _23,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	csel	x23, x3, x1, hi	; __new_capacity, tmp133, _52,
	csinc	x0, x0, x1, hi	; _23, _23, _52,
L324:
	add	x24, x20, x2	; _66, __pos, __len1
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:360:       const size_type __how_much = length() - __pos - __len1;
	sub	x25, x5, x24	; __how_much, __sz, _66
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
	mov	x21, x0	; _59, _59
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x20, L325	; __pos,
L351:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x20, 1	; __pos,
	beq	L346		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x20	;, __pos
	mov	x1, x27	;, _28
	bl	_memcpy		;
L325:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	cmp	x22, 0	; __s,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	ccmp	x28, 0, 4, ne	; __len2,,,
	beq	L327		;,
L352:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x0, x21, x20	; _7, _59, __pos
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x28, 1	; __len2,
	beq	L347		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x22	;, __s
	mov	x2, x28	;, __len2
	bl	_memcpy		;
L327:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:369:       if (__how_much)
	cbnz	x25, L348	; __how_much,
L329:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x26, x27	; _26, _28
	beq	L331		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 16]	; this_17(D)->D.56371._M_allocated_capacity, this_17(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x27	;, _28
	add	x1, x1, 1	;, this_17(D)->D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L331:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x21, [x19]	; _59, this_17(D)->_M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x23, [x19, 16]	; __new_capacity, this_17(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x27, x28, [sp, 80]	;,,
	ldp	x29, x30, [sp], 96	;,,,
LCFI103:
	ret	
	.p2align 2,,3
L348:
LCFI104:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:370: 	this->_S_copy(__r + __pos + __len2,
	add	x20, x20, x28	; _8, __pos, __len2
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:371: 		      _M_data() + __pos + __len1, __how_much);
	add	x1, x27, x24	; _11, _28, _66
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:370: 	this->_S_copy(__r + __pos + __len2,
	add	x0, x21, x20	; _9, _59, _8
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x25, 1	; __how_much,
	beq	L349		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x25	;, __how_much
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	L329		;
	.p2align 2,,3
L345:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	mov	x0, 9223372036854775806	; tmp131,
	cmp	x23, x0	; __new_capacity, tmp131
	bhi	L318		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	sub	x0, x23, #16	; _53, __new_capacity,
	cmp	x0, 13	; _53,
	bls	L350		;,
	add	x24, x20, x2	; _66, __pos, __len1
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x23, 1	; _23, __new_capacity,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:360:       const size_type __how_much = length() - __pos - __len1;
	sub	x25, x5, x24	; __how_much, __sz, _66
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
	mov	x21, x0	; _59, _59
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x20, L325	; __pos,
	b	L351		;
	.p2align 2,,3
L346:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x27]	; _31, MEM[(const char_type &)_28]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	cmp	x22, 0	; __s,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	ccmp	x28, 0, 4, ne	; __len2,,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x21]	; _31, MEM[(char_type &)_59]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	beq	L327		;,
	b	L352		;
	.p2align 2,,3
L347:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x22]	;, MEM[(const char_type &)__s_27(D)]
	strb	w0, [x21, x20]	; MEM[(const char_type &)__s_27(D)], MEM[(char_type &)_7]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:369:       if (__how_much)
	cbz	x25, L329	; __how_much,
	b	L348		;
	.p2align 2,,3
L349:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x27, x24]	; _34, MEM[(const char_type &)_11]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x21, x20]	; _34, MEM[(char_type &)_9]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L329		;
	.p2align 2,,3
L350:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x0, 31	; _23,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	mov	x23, 30	; __new_capacity,
	b	L324		;
L318:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	adrp	x0, lC9@PAGE	; tmp135,
	add	x0, x0, lC9@PAGEOFF;	;, tmp135,
	bl	__ZSt20__throw_length_errorPKc		;
LFE8607:
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
	.p2align 5,,15
__GLOBAL__sub_I_b6_allocators.cpp:
LFB9838:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x1, __ZStL8__ioinit@PAGE	; tmp102,
; b6_allocators.cpp:250: }
	stp	x29, x30, [sp, -32]!	;,,,
LCFI105:
	mov	x29, sp	;,
LCFI106:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	add	x1, x1, __ZStL8__ioinit@PAGEOFF;	; tmp101, tmp102,
; b6_allocators.cpp:250: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	mov	x0, x1	;, tmp101
	str	x1, [x29, 24]	; tmp101, %sfp
	bl	__ZNSt8ios_base4InitC1Ev		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x2, ___dso_handle@PAGE	; tmp104,
	ldr	x1, [x29, 24]	; tmp101, %sfp
; b6_allocators.cpp:250: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	add	x2, x2, ___dso_handle@PAGEOFF;	;, tmp104,
; b6_allocators.cpp:250: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI107:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE	;,
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]	;,
	b	___cxa_atexit		;
LFE9838:
	.cstring
	.align	3
lC10:
	.ascii "b6 \342\200\224 Coroutine frame allocator strategies\0"
	.align	3
lC11:
	.ascii "  Frame estimate     : \0"
	.align	3
lC12:
	.ascii " bytes\12\0"
	.align	3
lC13:
	.ascii "  Arena budget       : \0"
	.align	3
lC14:
	.ascii " KiB\12\0"
	.align	3
lC15:
	.ascii "  Batch              : \0"
	.align	3
lC16:
	.ascii " performs (zero-alloc) \303\227 \0"
	.align	3
lC17:
	.ascii " coroutines\12\0"
	.align	3
lC18:
	.ascii "  Note: per-perform payload allocation eliminated;\12\0"
	.align	3
lC19:
	.ascii "        only coroutine frame allocation is benchmarked.\12\0"
	.align	3
lC20:
	.ascii "Batch cost (per-coroutine ns)\0"
	.align	3
lC21:
	.ascii "1. Default new/delete\0"
	.align	3
lC22:
	.ascii "2. Monotonic (heap buf, reset/iter)\0"
	.align	3
lC23:
	.ascii "3. Monotonic (static buf, reset/iter)\0"
	.align	3
lC24:
	.ascii "4. PMR pool (steady-state)\0"
	.align	3
lC25:
	.ascii "5. Free-list slab (O(1), no vdispatch)\0"
	.align	3
lC26:
	.ascii "basic_string::_M_replace\0"
	.align	3
lC27:
	.ascii "Per-perform cost (\303\267 \0"
	.align	3
lC28:
	.ascii "basic_string::append\0"
	.align	3
lC29:
	.ascii ")\0"
	.align	3
lC30:
	.ascii "  Per-perform payload alloc: ZERO (stored in coroutine frame)\12\0"
	.align	3
lC31:
	.ascii "  (Divide per-coroutine ns above by \0"
	.align	3
lC32:
	.ascii " for residual per-perform overhead.)\12\0"
	.align	3
lC33:
	.ascii "Single-perform coroutine (worst-case frame amortisation)\0"
	.align	3
lC34:
	.ascii "1s. Default\0"
	.align	3
lC35:
	.ascii "4s. PMR pool\0"
	.align	3
lC36:
	.ascii "5s. Free-list slab\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align	2
	.p2align 5,,15
	.globl _main
_main:
LFB6950:
	sub	sp, sp, #624	;,,
LCFI108:
; b6_allocators.cpp:138:   section("b6 — Coroutine frame allocator strategies");
	adrp	x1, lC10@PAGE	; tmp623,
	mov	x0, 43	;,
	add	x1, x1, lC10@PAGEOFF;	;, tmp623,
; b6_allocators.cpp:137: int main() {
	stp	x29, x30, [sp]	;,,
LCFI109:
	mov	x29, sp	;,
LCFI110:
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
	stp	x25, x26, [sp, 64]	;,,
	stp	x27, x28, [sp, 80]	;,,
	stp	d8, d9, [sp, 96]	;,,
	stp	d10, d11, [sp, 112]	;,,
	stp	d12, d13, [sp, 128]	;,,
	stp	d14, d15, [sp, 144]	;,,
LCFI111:
LEHB22:
; b6_allocators.cpp:138:   section("b6 — Coroutine frame allocator strategies");
	bl	__Z7sectionSt17basic_string_viewIcSt11char_traitsIcEE		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC11@PAGE	; tmp625,
	mov	x2, 23	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC11@PAGEOFF;	;, tmp625,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:179:       { return _M_insert(__n); }
	mov	x1, 512	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZNSo9_M_insertImEERSoT_		;
; b6_allocators.cpp:139:   std::cout << "  Frame estimate     : " << kFrameEst << " bytes\n";
	adrp	x1, lC12@PAGE	; tmp629,
	add	x1, x1, lC12@PAGEOFF;	;, tmp629,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC13@PAGE	; tmp631,
	mov	x2, 23	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC13@PAGEOFF;	;, tmp631,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:179:       { return _M_insert(__n); }
	mov	x1, 64	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZNSo9_M_insertImEERSoT_		;
; b6_allocators.cpp:140:   std::cout << "  Arena budget       : " << kArena / 1024 << " KiB\n";
	adrp	x1, lC14@PAGE	; tmp635,
	add	x1, x1, lC14@PAGEOFF;	;, tmp635,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC15@PAGE	; tmp637,
	mov	x2, 23	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC15@PAGEOFF;	;, tmp637,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b6_allocators.cpp:141:   std::cout << "  Batch              : " << BATCH << " performs (zero-alloc) × "
	mov	w1, 5000	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZNSolsEi		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC16@PAGE	; tmp641,
	mov	x2, 26	;,
	add	x1, x1, lC16@PAGEOFF;	;, tmp641,
; b6_allocators.cpp:141:   std::cout << "  Batch              : " << BATCH << " performs (zero-alloc) × "
	mov	x19, x0	; _39,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b6_allocators.cpp:142:             << REPS << " coroutines\n";
	mov	x0, x19	;, _39
	mov	w1, 2000	;,
	bl	__ZNSolsEi		;
; b6_allocators.cpp:142:             << REPS << " coroutines\n";
	adrp	x1, lC17@PAGE	; tmp643,
	add	x1, x1, lC17@PAGEOFF;	;, tmp643,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC18@PAGE	; tmp645,
	mov	x2, 51	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC18@PAGEOFF;	;, tmp645,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b6_allocators.cpp:144:             << "        only coroutine frame allocation is benchmarked.\n";
	adrp	x1, lC19@PAGE	; tmp648,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC19@PAGEOFF;	;, tmp648,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; b6_allocators.cpp:146:   section("Batch cost (per-coroutine ns)");
	adrp	x1, lC20@PAGE	; tmp650,
	mov	x0, 29	;,
	add	x1, x1, lC20@PAGEOFF;	;, tmp650,
	bl	__Z7sectionSt17basic_string_viewIcSt11char_traitsIcEE		;
; b6_allocators.cpp:149:   print_result(bench("1. Default new/delete", REPS, [&] {
	add	x0, x29, 480	; tmp1970,,
	adrp	x1, lC21@PAGE	; tmp652,
	add	x1, x1, lC21@PAGEOFF;	;, tmp652,
	str	x0, [x29, 296]	; tmp1970, %sfp
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE22:
LEHB23:
; bench.hpp:35:     fn();
	bl	__ZZ4mainENKUlvE_clEv.isra.0		;
	bl	__ZZ4mainENKUlvE_clEv.isra.0		;
	bl	__ZZ4mainENKUlvE_clEv.isra.0		;
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x20, x0	; start,
	mov	x19, 2000	; ivtmp_1843,
	.p2align 5,,15
L356:
; bench.hpp:39:     fn();
	bl	__ZZ4mainENKUlvE_clEv.isra.0		;
LEHE23:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x19, x19, #1	; ivtmp_1843, ivtmp_1843,
	bne	L356		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x20	; _602, end, start
; bench.hpp:44: }
	ldr	x1, [x29, 296]	;, %sfp
	add	x26, x29, 544	; tmp1974,,
	mov	x0, x26	;, tmp1974
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d15, x2	;, _602
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 2000	; tmp657,
; b6_allocators.cpp:149:   print_result(bench("1. Default new/delete", REPS, [&] {
	mov	x0, x26	;, tmp1974
; bench.hpp:44: }
	str	d15, [x29, 584]	;, MEM[(struct BenchResult *)_166].total_ns
	str	x1, [x29, 576]	; tmp657, MEM[(struct BenchResult *)_166].iters
LEHB24:
; b6_allocators.cpp:149:   print_result(bench("1. Default new/delete", REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE24:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 544]	; _102, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 560	; tmp1975,,
	str	x1, [x29, 256]	; tmp1975, %sfp
	cmp	x0, x1	; _102, tmp1975
	beq	L357		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L357:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _137, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 496	; tmp1971,,
	str	x1, [x29, 248]	; tmp1971, %sfp
	cmp	x0, x1	; _137, tmp1971
	beq	L358		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L358:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 520	;,
	movk	x0, 0x1, lsl 16	;,,
LEHB25:
	bl	__Znwm		;
LEHE25:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x19, x0, 65536	; _616, _614,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x20, x0	; _614, _614
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	strb	wzr, [x0], 1	;, *_614
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x19, x19, 520	; _616, _616,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:951: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	mov	x2, 519	;,
	mov	w1, 0	;,
	movk	x2, 0x1, lsl 16	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	str	x20, [x29, 416]	; _614, MEM[(struct _Vector_base *)_927]._M_impl.D.158419._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x19, [x29, 432]	; _616, MEM[(struct _Vector_base *)_927]._M_impl.D.158419._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:951: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	bl	_memset		;
; b6_allocators.cpp:157:     print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
	adrp	x1, lC22@PAGE	; tmp675,
	ldr	x0, [x29, 296]	;, %sfp
	add	x1, x1, lC22@PAGEOFF;	;, tmp675,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2009: 	this->_M_impl._M_finish =
	str	x19, [x29, 424]	; _616, MEM[(struct vector *)_927].D.159133._M_impl.D.158419._M_finish
LEHB26:
; b6_allocators.cpp:157:     print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE26:
	add	x0, x29, 416	; tmp1968,,
	mov	x19, 3	; ivtmp_2477,
	str	x0, [x29, 320]	; tmp1968, %sfp
	.p2align 5,,15
L359:
; bench.hpp:35:     fn();
	ldr	x0, [x29, 320]	;, %sfp
LEHB27:
	bl	__ZZ4mainENKUlvE0_clEv.isra.0		;
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x19, x19, #1	; ivtmp_2477, ivtmp_2477,
	bne	L359		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x21, x0	; start,
	mov	x19, 2000	; ivtmp_1864,
	.p2align 5,,15
L360:
; bench.hpp:39:     fn();
	ldr	x0, [x29, 320]	;, %sfp
	bl	__ZZ4mainENKUlvE0_clEv.isra.0		;
LEHE27:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x19, x19, #1	; ivtmp_1864, ivtmp_1864,
	bne	L360		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x21	; _628, end, start
; bench.hpp:44: }
	ldr	x1, [x29, 296]	;, %sfp
	mov	x0, x26	;, tmp1974
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d14, x2	;, _628
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 2000	; tmp682,
; b6_allocators.cpp:157:     print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
	mov	x0, x26	;, tmp1974
; bench.hpp:44: }
	str	d14, [x29, 584]	;, MEM[(struct BenchResult *)_166].total_ns
	str	x1, [x29, 576]	; tmp682, MEM[(struct BenchResult *)_166].iters
LEHB28:
; b6_allocators.cpp:157:     print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE28:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 256]	; tmp1975, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 544]	; _191, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _191, tmp1975
	beq	L361		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L361:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _72, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _72, tmp1971
	beq	L362		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L362:
	mov	x1, 520	;,
	mov	x0, x20	;, _614
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	adrp	x28, __ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGE	; tmp2012,
	ldr	x28, [x28, __ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGEOFF]	; tmp2012,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movk	x1, 0x1, lsl 16	;,,
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	mov	x21, 3	; ivtmp_232,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	bl	__ZdlPvm		;
; b6_allocators.cpp:169:     print_result(bench("3. Monotonic (static buf, reset/iter)", REPS, [&] {
	ldr	x0, [x29, 320]	;, %sfp
	adrp	x1, lC23@PAGE	; tmp694,
	adrp	x24, __ZZ4mainE4sbuf@PAGE	; tmp1954,
	add	x1, x1, lC23@PAGEOFF;	;, tmp694,
LEHB29:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE29:
; b6_allocators.cpp:171:           sbuf.data(), sbuf.size(), std::pmr::null_memory_resource()};
	bl	__ZNSt3pmr20null_memory_resourceEv		;
	mov	x1, x0	; _643,
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b6_allocators.cpp:171:           sbuf.data(), sbuf.size(), std::pmr::null_memory_resource()};
	str	x1, [x29, 280]	; _643, %sfp
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	bl	___emutls_get_address		;
	mov	x25, x0	; _644, _644
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	adrp	x0, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGE	; tmp2011,
	ldr	x0, [x0, __ZN2fx6detail12effect_tag_vI4TickEE@GOTPAGEOFF]	; tmp2011,
	add	x2, x29, 352	; tmp1959,,
	adrp	x1, __ZTVNSt3pmr25monotonic_buffer_resourceE@GOTPAGE	; tmp1956,
	ldr	x1, [x1, __ZTVNSt3pmr25monotonic_buffer_resourceE@GOTPAGEOFF]	; tmp1956,
	str	x0, [x29, 328]	; tmp2011, %sfp
; ../../effects.hpp:752:     saved = detail::stack_top;
	adrp	x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	; tmp2013,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	; tmp2013,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	add	x23, x1, 16	; tmp697, tmp1956,
	str	x1, [x29, 216]	; tmp1956, %sfp
; ../../effects.hpp:752:     saved = detail::stack_top;
	stp	x0, x2, [x29, 304]	; tmp2013, tmp1959,
	.p2align 5,,15
L379:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	adrp	x1, lC2@PAGE	; tmp2260,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	add	x0, x24, __ZZ4mainE4sbuf@PAGEOFF;	; tmp699, tmp1954,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	ldr	q31, [x1, #lC2@PAGEOFF]	; tmp2259,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	str	x0, [x29, 552]	; tmp699, MEM[(struct monotonic_buffer_resource *)_166]._M_current_buf
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:363:       _M_upstream(__upstream),
	ldr	x1, [x29, 280]	; _643, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	x0, [x29, 584]	; tmp699, MEM[(struct monotonic_buffer_resource *)_166]._M_orig_buf
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	mov	x0, 520	; tmp2262,
	movk	x0, 0x1, lsl 16	; tmp2262,,
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	ldr	x22, [x25]	; current_mr.73_645, *_644
; ../../effects.hpp:783:     detail::current_mr = mr;
	str	x26, [x25]	; tmp1974, *_644
; b6_allocators.cpp:174:       do_not_optimize(make_batch_coro().run(h));
	ldr	x8, [x29, 312]	;, %sfp
; b6_allocators.cpp:173:       CountHandler h;
	str	wzr, [x29, 376]	;, MEM[(struct CountHandler *)_613]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	x23, [x29, 544]	; tmp697, MEM[(struct monotonic_buffer_resource *)_166].D.98092._vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	str	q31, [x29, 560]	; tmp2259, MEM <vector(2) long unsigned int> [(long unsigned int *)_166 + 16B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:363:       _M_upstream(__upstream),
	str	x1, [x29, 576]	; _643, MEM[(struct monotonic_buffer_resource *)_166]._M_upstream
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	x0, [x29, 592]	; tmp2262, MEM[(struct monotonic_buffer_resource *)_166]._M_orig_size
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	xzr, [x29, 600]	;, MEM[(struct monotonic_buffer_resource *)_166]._M_head
LEHB30:
; b6_allocators.cpp:174:       do_not_optimize(make_batch_coro().run(h));
	bl	__ZL15make_batch_corov		;
LEHE30:
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	ldr	x2, [x29, 328]	; tmp2011, %sfp
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x1, x29, 376	; tmp1962,,
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldp	x27, x0, [x29, 296]	; tmp1970,,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	str	x1, [x29, 288]	; tmp1962, %sfp
	stp	x1, x28, [x29, 496]	; tmp1962, tmp2012,
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x2, x27, [x29, 480]	; tmp2011, tmp1970,
; ../../effects.hpp:247: struct HandlerNode {
	str	xzr, [x29, 520]	;, MEM[(struct HandlerNode *)_121].on_return_any_fn
; ../../effects.hpp:752:     saved = detail::stack_top;
	bl	___emutls_get_address		;
	mov	x19, x0	; _656,
; b6_allocators.cpp:174:       do_not_optimize(make_batch_coro().run(h));
	ldr	x20, [x29, 352]	; SR.816, MEM[(struct Fx *)&D.208416]
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.18_657, *_656
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x2, [x20]	; MEM[(void (*<T11f>) (void *) *)SR.816_967], MEM[(void (*<T11f>) (void *) *)SR.816_967]
	mov	x0, x20	;, SR.816
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x27, [x19]	; tmp1970, *_656
; ../../effects.hpp:753:     node.prev = saved;
	str	x1, [x29, 512]	; stack_top.18_657, MEM[(struct ScopedHandler *)_121].node.prev
; ../../effects.hpp:752:     saved = detail::stack_top;
	str	x1, [x29, 528]	; stack_top.18_657, MEM[(struct ScopedHandler *)_121].saved
LEHB31:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)SR.816_967]
	.p2align 5,,15
L363:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)SR.816_967], MEM[(void * *)SR.816_967]
	cbz	x0, L838	; MEM[(void * *)SR.816_967],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_656
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x27, x20, 16	; tmp1932, SR.816,
	ldr	x1, [x27, 96]	; _674, MEM[(struct promise_type &)SR.816_967 + 16].D.155035.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L367	; n,
	b	L364		;
	.p2align 2,,3
L365:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_847->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L364	; n,
L367:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x2, [x0]	; n_847->effect_tag, n_847->effect_tag
	cmp	x1, x2	; _674, n_847->effect_tag
	bne	L365		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_847->dispatch, n_847->dispatch
	ldr	x1, [x27, 104]	;, MEM[(struct promise_type &)SR.816_967 + 16].D.155035.D.154002.payload_ptr
	blr	x2		; n_847->dispatch
LEHE31:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x20, 16]	; MEM[(struct promise_type &)SR.816_967 + 16].D.155035.D.154002.aborted, MEM[(struct promise_type &)SR.816_967 + 16].D.155035.D.154002.aborted
	tbz	x0, 0, L363	; MEM[(struct promise_type &)SR.816_967 + 16].D.155035.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x27, 8]	; MEM[(struct PromiseAbortBase *)SR.816_967 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.816_967 + 16B].abort_owner
; ../../effects.hpp:893:       return std::nullopt;
	mov	x1, 0	; SR.829,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x2, [x29, 296]	; tmp1970, %sfp
	cmp	x0, x2	; MEM[(struct PromiseAbortBase *)SR.816_967 + 16B].abort_owner, tmp1970
	beq	L377		;,
L374:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 528]	; MEM[(struct ScopedHandler *)_121].saved, MEM[(struct ScopedHandler *)_121].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_121].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)SR.816_967 + 8B], MEM[(void (*<T11f>) (void *) *)SR.816_967 + 8B]
	mov	x0, x20	;, SR.816
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.816_967 + 8B]
; b6_allocators.cpp:175:     }));
	mov	x0, x26	;, tmp1974
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x22, [x25]	; current_mr.73_645, *_644
; b6_allocators.cpp:175:     }));
	bl	__ZNSt3pmr25monotonic_buffer_resourceD1Ev		;
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x21, x21, #1	; ivtmp_232, ivtmp_232,
	bne	L379		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x20, x0	; start,
	mov	x21, 2000	; ivtmp_1875,
	.p2align 5,,15
L383:
LEHB32:
; bench.hpp:39:     fn();
	bl	__ZZ4mainENKUlvE1_clEv.isra.0		;
LEHE32:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x21, x21, #1	; ivtmp_1875, ivtmp_1875,
	bne	L383		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x20	; _640, end, start
; bench.hpp:44: }
	ldr	x1, [x29, 320]	;, %sfp
	mov	x0, x26	;, tmp1974
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d13, x2	;, _640
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 2000	; tmp779,
; b6_allocators.cpp:169:     print_result(bench("3. Monotonic (static buf, reset/iter)", REPS, [&] {
	mov	x0, x26	;, tmp1974
; bench.hpp:44: }
	str	d13, [x29, 584]	;, MEM[(struct BenchResult *)_166].total_ns
	str	x1, [x29, 576]	; tmp779, MEM[(struct BenchResult *)_166].iters
LEHB33:
; b6_allocators.cpp:169:     print_result(bench("3. Monotonic (static buf, reset/iter)", REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE33:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 256]	; tmp1975, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 544]	; _203, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _203, tmp1975
	beq	L384		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L384:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 416]	; _199, MEM[(struct basic_string *)_927]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 432	; tmp1969,,
	str	x1, [x29, 240]	; tmp1969, %sfp
	cmp	x0, x1	; _199, tmp1969
	beq	L385		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 432]	; MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L385:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x21, 520	; tmp789,
	movk	x21, 0x1, lsl 16	; tmp789,,
	mov	x0, x21	;, tmp789
LEHB34:
	bl	__Znwm		;
LEHE34:
	mov	x20, x0	; _698, _698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:951: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	sub	x2, x21, #1	;, tmp789,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	strb	wzr, [x0], 1	;, *_698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:951: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	mov	w1, 0	;,
	bl	_memset		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	adrp	x0, lC2@PAGE	; tmp2273,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	ldr	x2, [x29, 296]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	stp	xzr, xzr, [x29, 416]	; MEM <vector(2) long unsigned int> [(long unsigned int *)_927]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	ldr	q31, [x0, #lC2@PAGEOFF]	; tmp797,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	x20, [x29, 520]	; _698, MEM[(struct monotonic_buffer_resource *)_121]._M_orig_buf
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	ldr	x0, [x29, 216]	; tmp1956, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	x21, [x29, 528]	; tmp789, MEM[(struct monotonic_buffer_resource *)_121]._M_orig_size
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	ldr	x1, [x29, 320]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	xzr, [x29, 536]	;, MEM[(struct monotonic_buffer_resource *)_121]._M_head
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	str	q31, [x29, 496]	; tmp797, MEM <vector(2) long unsigned int> [(long unsigned int *)_121 + 16B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	add	x3, x0, 16	; tmp795, tmp1956,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	mov	x0, x26	;, tmp1974
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	stp	x3, x20, [x29, 480]	; tmp795, _698,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:363:       _M_upstream(__upstream),
	ldr	x3, [x29, 280]	; _643, %sfp
	str	x3, [x29, 512]	; _643, MEM[(struct monotonic_buffer_resource *)_121]._M_upstream
LEHB35:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	bl	__ZNSt3pmr28unsynchronized_pool_resourceC1ERKNS_12pool_optionsEPNS_15memory_resourceE		;
LEHE35:
; b6_allocators.cpp:186:     print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
	adrp	x1, lC24@PAGE	; tmp805,
	add	x0, x29, 384	; tmp1963,,
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	ldr	x21, [x25]	; current_mr.73_218, *_644
; b6_allocators.cpp:186:     print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
	add	x1, x1, lC24@PAGEOFF;	;, tmp805,
; ../../effects.hpp:783:     detail::current_mr = mr;
	str	x26, [x25]	; tmp1974, *_644
; b6_allocators.cpp:186:     print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
	str	x0, [x29, 312]	; tmp1963, %sfp
LEHB36:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE36:
LEHB37:
; bench.hpp:35:     fn();
	bl	__ZZ4mainENKUlvE_clEv.isra.0		;
	bl	__ZZ4mainENKUlvE_clEv.isra.0		;
	bl	__ZZ4mainENKUlvE_clEv.isra.0		;
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x22, x0	; start,
	mov	x23, 2000	; ivtmp_841,
	.p2align 5,,15
L386:
; bench.hpp:39:     fn();
	bl	__ZZ4mainENKUlvE_clEv.isra.0		;
LEHE37:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x23, x23, #1	; ivtmp_841, ivtmp_841,
	bne	L386		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x22	; _712, end, start
; bench.hpp:44: }
	ldp	x1, x22, [x29, 312]	;, tmp1968,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d12, x2	;, _712
; bench.hpp:44: }
	mov	x0, x22	;, tmp1968
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 2000	; tmp810,
; b6_allocators.cpp:186:     print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
	mov	x0, x22	;, tmp1968
; bench.hpp:44: }
	str	d12, [x29, 456]	;, MEM[(struct BenchResult *)_927].total_ns
	str	x1, [x29, 448]	; tmp810, MEM[(struct BenchResult *)_927].iters
LEHB38:
; b6_allocators.cpp:186:     print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE38:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 240]	; tmp1969, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 416]	; _223, MEM[(const struct basic_string *)_927]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _223, tmp1969
	beq	L387		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 432]	; MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L387:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 384]	; _219, MEM[(struct basic_string *)_612]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 400	; tmp1965,,
	str	x1, [x29, 208]	; tmp1965, %sfp
	cmp	x0, x1	; _219, tmp1965
	beq	L825		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 400]	; MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L825:
; b6_allocators.cpp:190:   }
	mov	x0, x26	;, tmp1974
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x21, [x25]	; current_mr.73_218, *_644
; b6_allocators.cpp:190:   }
	bl	__ZNSt3pmr28unsynchronized_pool_resourceD1Ev		;
; b6_allocators.cpp:190:   }
	ldr	x0, [x29, 296]	;, %sfp
	bl	__ZNSt3pmr25monotonic_buffer_resourceD1Ev		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, 520	;,
	mov	x0, x20	;, _698
	movk	x1, 0x1, lsl 16	;,,
; b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	adrp	x20, __ZGVZ4mainE4slab@PAGE	; tmp826,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	bl	__ZdlPvm		;
; b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	add	x20, x20, __ZGVZ4mainE4slab@PAGEOFF;	; tmp825, tmp826,
	ldapr	x0, [x20]	; _3,
; b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	tbz	x0, 0, L390	; _3,,
L826:
	adrp	x0, __ZZ4mainE4slab@PAGE	; tmp1977,
	str	x0, [x29, 232]	; tmp1977, %sfp
L391:
; ../../effects.hpp:783:     detail::current_mr = mr;
	add	x2, x0, __ZZ4mainE4slab@PAGEOFF;	; tmp861, tmp1977,
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	ldr	x0, [x25]	; current_mr.73_234, *_644
; b6_allocators.cpp:197:     print_result(bench("5. Free-list slab (O(1), no vdispatch)", REPS, [&] {
	adrp	x1, lC25@PAGE	; tmp864,
	add	x1, x1, lC25@PAGEOFF;	;, tmp864,
; ../../effects.hpp:783:     detail::current_mr = mr;
	str	x2, [x25]	; tmp861, *_644
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	str	x0, [x29, 224]	; current_mr.73_234, %sfp
; b6_allocators.cpp:197:     print_result(bench("5. Free-list slab (O(1), no vdispatch)", REPS, [&] {
	ldr	x0, [x29, 296]	;, %sfp
LEHB39:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE39:
	adrp	x0, __ZZ4mainE4slab@PAGE+544	; tmp1947,
	adrp	x2, __ZZ4mainE4slab@PAGE+1600	; tmp1939,
	adrp	x1, __ZZ4mainE4slab@PAGE+1072	; tmp1972,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	add	x27, x0, __ZZ4mainE4slab@PAGEOFF+544;	; tmp930, tmp1947,
	stp	x0, x2, [x29, 192]	; tmp1947, tmp1939,
	add	x0, x1, __ZZ4mainE4slab@PAGEOFF+1072;	; tmp934, tmp1972,
	adrp	x3, __ZZ4mainE4slab@PAGE+16	; tmp1976,
	add	x24, x2, __ZZ4mainE4slab@PAGEOFF+1600;	; tmp938, tmp1939,
; b6_allocators.cpp:197:     print_result(bench("5. Free-list slab (O(1), no vdispatch)", REPS, [&] {
	mov	x22, 3	; ivtmp_704,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	str	x0, [x29, 304]	; tmp934, %sfp
; b6_allocators.cpp:69:     head_ = &storage_[0];
	add	x0, x3, __ZZ4mainE4slab@PAGEOFF+16;	; tmp944, tmp1976,
	stp	x3, x1, [x29, 176]	; tmp1976, tmp1972,
	str	x0, [x29, 272]	; tmp944, %sfp
	add	x0, x29, 360	; tmp1960,,
	str	x0, [x29, 264]	; tmp1960, %sfp
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	ldr	x0, [x29, 232]	; tmp1977, %sfp
	add	x21, x0, __ZZ4mainE4slab@PAGEOFF;	; tmp928, tmp1977,
	.p2align 5,,15
L393:
	ldr	x0, [x29, 304]	; tmp934, %sfp
	str	x27, [x21, 16]	; tmp930, slab.storage_[0].next
	str	x24, [x21, 1072]	; tmp938, slab.storage_[2].next
; b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	str	xzr, [x21, 1600]	;, slab.storage_[3].next
; b6_allocators.cpp:199:       CountHandler h;
	str	wzr, [x29, 384]	;, MEM[(struct CountHandler *)_612]
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	str	x0, [x21, 544]	; tmp934, slab.storage_[1].next
; b6_allocators.cpp:69:     head_ = &storage_[0];
	ldp	x8, x0, [x29, 264]	;, tmp944,
	str	x0, [x21, 2128]	; tmp944, slab.head_
LEHB40:
; b6_allocators.cpp:200:       do_not_optimize(make_batch_coro().run(h));
	bl	__ZL15make_batch_corov		;
LEHE40:
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	ldr	x0, [x29, 328]	; tmp2011, %sfp
; ../../effects.hpp:752:     saved = detail::stack_top;
	add	x9, x29, 568	;,,
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	str	x26, [x29, 552]	; tmp1974, MEM[(struct ScopedHandler *)_166].node.handler_obj
; b6_allocators.cpp:200:       do_not_optimize(make_batch_coro().run(h));
	ldr	x20, [x29, 360]	; SR.833, MEM[(struct Fx *)&D.208500]
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.18_737, *_656
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	str	x0, [x29, 544]	; tmp2011, MEM[(struct ScopedHandler *)_166].node.effect_tag
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	ldr	x0, [x29, 312]	; tmp1963, %sfp
	str	x0, [x29, 560]	; tmp1963, MEM[(struct ScopedHandler *)_166].node.real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, SR.833
	ldr	x2, [x20]	; MEM[(void (*<T11f>) (void *) *)SR.833_1878], MEM[(void (*<T11f>) (void *) *)SR.833_1878]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x26, [x19]	; tmp1974, *_656
; ../../effects.hpp:752:     saved = detail::stack_top;
	stp	x28, x1, [x9]	; tmp2012, stack_top.18_737,
	stp	xzr, x1, [x9, 16]	;, stack_top.18_737,
LEHB41:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)SR.833_1878]
	.p2align 5,,15
L394:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)SR.833_1878], MEM[(void * *)SR.833_1878]
	cbz	x0, L839	; MEM[(void * *)SR.833_1878],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_656
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x23, x20, 16	; tmp1950, SR.833,
	ldr	x1, [x23, 96]	; _754, MEM[(struct promise_type &)SR.833_1878 + 16].D.155035.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L398	; n,
	b	L395		;
	.p2align 2,,3
L396:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_783->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L395	; n,
L398:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x2, [x0]	; n_783->effect_tag, n_783->effect_tag
	cmp	x1, x2	; _754, n_783->effect_tag
	bne	L396		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_783->dispatch, n_783->dispatch
	ldr	x1, [x23, 104]	;, MEM[(struct promise_type &)SR.833_1878 + 16].D.155035.D.154002.payload_ptr
	blr	x3		; n_783->dispatch
LEHE41:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x20, 16]	; MEM[(struct promise_type &)SR.833_1878 + 16].D.155035.D.154002.aborted, MEM[(struct promise_type &)SR.833_1878 + 16].D.155035.D.154002.aborted
	tbz	x0, 0, L394	; MEM[(struct promise_type &)SR.833_1878 + 16].D.155035.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x23, 8]	; MEM[(struct PromiseAbortBase *)SR.833_1878 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.833_1878 + 16B].abort_owner
; ../../effects.hpp:893:       return std::nullopt;
	mov	x1, 0	; SR.847,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)SR.833_1878 + 16B].abort_owner, tmp1974
	beq	L408		;,
L405:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)SR.833_1878 + 8B], MEM[(void (*<T11f>) (void *) *)SR.833_1878 + 8B]
	mov	x0, x20	;, SR.833
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.833_1878 + 8B]
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x22, x22, #1	; ivtmp_704, ivtmp_704,
	bne	L393		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 168]	;, %sfp
	mov	x22, 2000	; ivtmp_1293,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	ldr	x0, [x29, 232]	; tmp1977, %sfp
	add	x21, x0, __ZZ4mainE4slab@PAGEOFF;	; tmp1007, tmp1977,
	ldr	x0, [x29, 192]	; tmp1947, %sfp
	add	x0, x0, __ZZ4mainE4slab@PAGEOFF+544;	; tmp1009, tmp1947,
	str	x0, [x29, 304]	; tmp1009, %sfp
	ldr	x0, [x29, 184]	; tmp1972, %sfp
	add	x24, x0, __ZZ4mainE4slab@PAGEOFF+1072;	; tmp1013, tmp1972,
	ldr	x0, [x29, 200]	; tmp1939, %sfp
	add	x27, x0, __ZZ4mainE4slab@PAGEOFF+1600;	; tmp1017, tmp1939,
; b6_allocators.cpp:69:     head_ = &storage_[0];
	ldr	x0, [x29, 176]	; tmp1976, %sfp
	add	x0, x0, __ZZ4mainE4slab@PAGEOFF+16;	; tmp1023, tmp1976,
	str	x0, [x29, 272]	; tmp1023, %sfp
	add	x0, x29, 368	; tmp1961,,
	str	x0, [x29, 264]	; tmp1961, %sfp
	.p2align 5,,15
L413:
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	ldr	x0, [x29, 304]	; tmp1009, %sfp
	str	x24, [x21, 544]	; tmp1013, slab.storage_[1].next
	str	x27, [x21, 1072]	; tmp1017, slab.storage_[2].next
; b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	str	xzr, [x21, 1600]	;, slab.storage_[3].next
; b6_allocators.cpp:199:       CountHandler h;
	str	wzr, [x29, 384]	;, MEM[(struct CountHandler *)_612]
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	str	x0, [x21, 16]	; tmp1009, slab.storage_[0].next
; b6_allocators.cpp:69:     head_ = &storage_[0];
	ldp	x8, x0, [x29, 264]	;, tmp1023,
	str	x0, [x21, 2128]	; tmp1023, slab.head_
LEHB42:
; b6_allocators.cpp:200:       do_not_optimize(make_batch_coro().run(h));
	bl	__ZL15make_batch_corov		;
LEHE42:
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	ldr	x0, [x29, 328]	; tmp2011, %sfp
; ../../effects.hpp:752:     saved = detail::stack_top;
	add	x8, x29, 568	;,,
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	str	x26, [x29, 552]	; tmp1974, MEM[(struct ScopedHandler *)_166].node.handler_obj
; b6_allocators.cpp:200:       do_not_optimize(make_batch_coro().run(h));
	ldr	x20, [x29, 368]	; SR.851, MEM[(struct Fx *)&D.208545]
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.18_781, *_656
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	str	x0, [x29, 544]	; tmp2011, MEM[(struct ScopedHandler *)_166].node.effect_tag
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	ldr	x0, [x29, 312]	; tmp1963, %sfp
	str	x0, [x29, 560]	; tmp1963, MEM[(struct ScopedHandler *)_166].node.real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, SR.851
	ldr	x2, [x20]	; MEM[(void (*<T11f>) (void *) *)SR.851_731], MEM[(void (*<T11f>) (void *) *)SR.851_731]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x26, [x19]	; tmp1974, *_656
; ../../effects.hpp:752:     saved = detail::stack_top;
	stp	x28, x1, [x8]	; tmp2012, stack_top.18_781,
	stp	xzr, x1, [x8, 16]	;, stack_top.18_781,
LEHB43:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)SR.851_731]
	.p2align 5,,15
L414:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)SR.851_731], MEM[(void * *)SR.851_731]
	cbz	x0, L840	; MEM[(void * *)SR.851_731],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_656
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x23, x20, 16	; tmp1979, SR.851,
	ldr	x1, [x23, 96]	; _798, MEM[(struct promise_type &)SR.851_731 + 16].D.155035.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L418	; n,
	b	L415		;
	.p2align 2,,3
L416:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_775->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L415	; n,
L418:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x2, [x0]	; n_775->effect_tag, n_775->effect_tag
	cmp	x1, x2	; _798, n_775->effect_tag
	bne	L416		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_775->dispatch, n_775->dispatch
	ldr	x1, [x23, 104]	;, MEM[(struct promise_type &)SR.851_731 + 16].D.155035.D.154002.payload_ptr
	blr	x3		; n_775->dispatch
LEHE43:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x20, 16]	; MEM[(struct promise_type &)SR.851_731 + 16].D.155035.D.154002.aborted, MEM[(struct promise_type &)SR.851_731 + 16].D.155035.D.154002.aborted
	tbz	x0, 0, L414	; MEM[(struct promise_type &)SR.851_731 + 16].D.155035.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x23, 8]	; MEM[(struct PromiseAbortBase *)SR.851_731 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.851_731 + 16B].abort_owner
; ../../effects.hpp:893:       return std::nullopt;
	mov	x1, 0	; SR.865,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)SR.851_731 + 16B].abort_owner, tmp1974
	beq	L428		;,
L425:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)SR.851_731 + 8B], MEM[(void (*<T11f>) (void *) *)SR.851_731 + 8B]
	mov	x0, x20	;, SR.851
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.851_731 + 8B]
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x22, x22, #1	; ivtmp_1293, ivtmp_1293,
	bne	L413		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 168]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 296]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _722, end, start
; bench.hpp:44: }
	mov	x0, x26	;, tmp1974
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d11, x2	;, _722
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 2000	; tmp1029,
; b6_allocators.cpp:197:     print_result(bench("5. Free-list slab (O(1), no vdispatch)", REPS, [&] {
	mov	x0, x26	;, tmp1974
; bench.hpp:44: }
	str	d11, [x29, 584]	;, MEM[(struct BenchResult *)_166].total_ns
	str	x1, [x29, 576]	; tmp1029, MEM[(struct BenchResult *)_166].iters
LEHB44:
; b6_allocators.cpp:197:     print_result(bench("5. Free-list slab (O(1), no vdispatch)", REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE44:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 256]	; tmp1975, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 544]	; _239, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _239, tmp1975
	beq	L432		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L432:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _235, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _235, tmp1971
	beq	L433		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L433:
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	ldr	x1, [x29, 224]	; current_mr.73_234, %sfp
; b6_allocators.cpp:205:   section("Per-perform cost (÷ " + std::to_string(BATCH) + ")");
	mov	w0, 5000	;,
	ldr	x8, [x29, 320]	;, %sfp
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x1, [x25]	; current_mr.73_234, *_644
; b6_allocators.cpp:205:   section("Per-perform cost (÷ " + std::to_string(BATCH) + ")");
	bl	__ZNSt7__cxx119to_stringEi		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x22, [x29, 424]	; __sz, MEM[(struct basic_string *)_927]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 22	; tmp1041,
	movk	x0, 0x8000, lsl 48	; tmp1041,,
	add	x0, x22, x0	; _1700, __sz, tmp1041
	cmp	x0, 20	; _1700,
	bls	L841		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 240]	; tmp1969, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:549:       const size_type __new_size = __old_size + __len2 - __len1;
	add	x20, x22, 21	; _822, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x21, [x29, 416]	; _824, MEM[(struct basic_string *)_927]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x21, x0	; _824, tmp1969
	beq	L435		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x23, [x29, 432]	; __sz, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:551:       if (__new_size <= this->capacity())
	cmp	x20, x23	; _822, __sz
	bhi	L436		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_function.h:454: 	return (__UINTPTR_TYPE__)__x < (__UINTPTR_TYPE__)__y;
	adrp	x23, lC27@PAGE	; tmp1937,
	add	x3, x23, lC27@PAGEOFF;	; __x.48_831, tmp1937,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x21, x3	; _824, __x.48_831
	bls	L842		;,
L437:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	cbnz	x22, L439	; __sz,
L440:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x23, x23, lC27@PAGEOFF;	; tmp1054, tmp1937,
	ldp	x2, x3, [x23]	; MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "], MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "]
	ldr	x0, [x23, 13]	; MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "], MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "]
	stp	x2, x3, [x21]	; MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "], MEM <char[1:21]> [(void *)_824]
	str	x0, [x21, 13]	; MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "], MEM <char[1:21]> [(void *)_824]
L441:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x2, [x29, 416]	; MEM[(struct basic_string *)_927]._M_dataplus._M_p, MEM[(struct basic_string *)_927]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x20, [x29, 424]	; _822, MEM[(struct basic_string *)_927]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	ldr	x0, [x29, 296]	;, %sfp
	ldr	x1, [x29, 320]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x2, x20]	;, MEM[(char_type &)_843]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x1, [x29, 488]	; __sz, MEM[(struct basic_string *)_121]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 9223372036854775806	; tmp1081,
	cmp	x1, x0	; __sz, tmp1081
	beq	L843		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x4, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:447:       const size_type __len = __n + this->size();
	add	x20, x1, 1	; __len, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	mov	x3, 15	; tmp1982,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 480]	; _887, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x0, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
	cmp	x2, x4	; _887, tmp1971
	csel	x0, x0, x3, ne	; __sz, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, tmp1982,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x20, x0	; __len, __sz
	bhi	L451		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	mov	w0, 41	; tmp1086,
	strb	w0, [x2, x1]	; tmp1086, MEM[(char_type &)_891]
L452:
	ldr	x2, [x29, 480]	; MEM[(struct basic_string *)_121]._M_dataplus._M_p, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	mov	x0, x26	;, tmp1974
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x20, [x29, 488]	; __len, MEM[(struct basic_string *)_121]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	ldr	x1, [x29, 296]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x2, x20]	;, MEM[(char_type &)_894]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; b6_allocators.cpp:205:   section("Per-perform cost (÷ " + std::to_string(BATCH) + ")");
	ldr	x1, [x29, 544]	;, MEM[(struct basic_string *)_166]._M_dataplus._M_p
	ldr	x0, [x29, 552]	;, MEM[(struct basic_string *)_166]._M_string_length
LEHB45:
	bl	__Z7sectionSt17basic_string_viewIcSt11char_traitsIcEE		;
LEHE45:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 256]	; tmp1975, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 544]	; _255, MEM[(struct basic_string *)_166]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _255, tmp1975
	beq	L453		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L453:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _251, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _251, tmp1971
	beq	L454		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L454:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 240]	; tmp1969, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 416]	; _247, MEM[(struct basic_string *)_927]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _247, tmp1969
	beq	L455		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 432]	; MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L455:
; b6_allocators.cpp:207:       << "  Per-perform payload alloc: ZERO (stored in coroutine frame)\n";
	adrp	x1, lC30@PAGE	; tmp1106,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
; b6_allocators.cpp:219:   print_result(bench("1s. Default", SP_REPS, [&] {
	mov	x23, 3	; ivtmp_734,
; b6_allocators.cpp:207:       << "  Per-perform payload alloc: ZERO (stored in coroutine frame)\n";
	add	x1, x1, lC30@PAGEOFF;	;, tmp1106,
LEHB46:
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC31@PAGE	; tmp1109,
	mov	x2, 36	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC31@PAGEOFF;	;, tmp1109,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b6_allocators.cpp:208:   std::cout << "  (Divide per-coroutine ns above by " << BATCH
	mov	w1, 5000	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZNSolsEi		;
; b6_allocators.cpp:209:             << " for residual per-perform overhead.)\n";
	adrp	x1, lC32@PAGE	; tmp1113,
	add	x1, x1, lC32@PAGEOFF;	;, tmp1113,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; b6_allocators.cpp:212:   section("Single-perform coroutine (worst-case frame amortisation)");
	adrp	x1, lC33@PAGE	; tmp1114,
	mov	x0, 56	;,
	add	x1, x1, lC33@PAGEOFF;	;, tmp1114,
	bl	__Z7sectionSt17basic_string_viewIcSt11char_traitsIcEE		;
; b6_allocators.cpp:219:   print_result(bench("1s. Default", SP_REPS, [&] {
	adrp	x1, lC34@PAGE	; tmp1116,
	ldr	x0, [x29, 296]	;, %sfp
	add	x1, x1, lC34@PAGEOFF;	;, tmp1116,
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE46:
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	adrp	x0, __ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGE	; tmp2008,
	ldr	x0, [x0, __ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGEOFF]	; tmp2008,
	str	x0, [x29, 304]	; tmp2008, %sfp
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	adrp	x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGE	; tmp2335,
	add	x0, x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGEOFF;	; tmp2005, tmp2335,
	str	x0, [x29, 272]	; tmp2005, %sfp
	adrp	x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGE	; tmp2337,
	add	x0, x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGEOFF;	; tmp2007, tmp2337,
	str	x0, [x29, 264]	; tmp2007, %sfp
L474:
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x28, [x25]	; mr, *_644
; b6_allocators.cpp:220:     CountHandler h;
	str	wzr, [x29, 384]	;, MEM[(struct CountHandler *)_612]
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x28, L456	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x3, [x28]	; mr_918->_vptr.memory_resource, mr_918->_vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 232	;,
	mov	x0, x28	;, mr
	ldr	x3, [x3, 16]	; MEM[(int (*) () *)_920 + 16B], MEM[(int (*) () *)_920 + 16B]
LEHB47:
	blr	x3		; MEM[(int (*) () *)_920 + 16B]
LEHE47:
L828:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x20, x0	; raw, raw
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	add	x22, x0, 32	; _934, raw,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_924 + 16B].aborted
	add	x27, x0, 16	; tmp1930, raw,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x24, x0, 128	; tmp1942, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldp	x1, x0, [x29, 264]	; tmp2007, tmp2005,
	add	x21, x29, 336	; tmp1957,,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp1132
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	w2, 65536	; tmp1138,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	x21, [x20, 168]	; tmp1957, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_924].__closure
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x28, [x20, 224]	; mr, MEM[(struct memory_resource * *)raw_924 + 224B]
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	stp	x0, x1, [x20]	; tmp2005, tmp2007,* raw
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _916, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	x0, x20	;, raw
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x27, 8]	;, MEM[(struct PromiseAbortBase *)raw_924 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_924 + 32B].buf_
	stp	xzr, xzr, [x22, 16]	; MEM[(struct SmallAny *)raw_924 + 32B].buf_
	stp	xzr, xzr, [x22, 32]	; MEM[(struct SmallAny *)raw_924 + 32B].buf_
	str	q31, [x20, 80]	; tmp1132, MEM <vector(2) long unsigned int> [(void *)raw_924 + 80B]
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_924 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x20, 112]	; tmp1132, MEM <vector(2) long unsigned int> [(const void * *)raw_924 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_924 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_924 + 144B]._M_engaged
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	w2, [x20, 176]	; tmp1138, MEM <unsigned int> [(void *)raw_924 + 176B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x27, 120]	; _916, MEM[(struct promise_type *)raw_924 + 16B].D.160808.D.154002.result_ptr
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	bl	__ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor		;
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	ldr	x2, [x29, 328]	; tmp2011, %sfp
; ../../effects.hpp:752:     saved = detail::stack_top;
	add	x7, x29, 568	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, raw
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	str	x26, [x29, 552]	; tmp1974, MEM[(struct ScopedHandler *)_166].node.handler_obj
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.61_929, *_656
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	str	x2, [x29, 544]	; tmp2011, MEM[(struct ScopedHandler *)_166].node.effect_tag
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	ldp	x3, x2, [x29, 304]	; tmp2008, tmp1963,
	str	x2, [x29, 560]	; tmp1963, MEM[(struct ScopedHandler *)_166].node.real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x2, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_924], MEM[(void (*<T11f>) (void *) *)raw_924]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x26, [x19]	; tmp1974, *_656
; ../../effects.hpp:752:     saved = detail::stack_top;
	stp	x3, x1, [x7]	; tmp2008, stack_top.61_929,
	stp	xzr, x1, [x7, 16]	;, stack_top.61_929,
LEHB48:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)raw_924]
	.p2align 5,,15
L458:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_924], MEM[(void * *)raw_924]
	cbz	x0, L844	; MEM[(void * *)raw_924],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_656
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x2, [x27, 96]	; _946, MEM[(struct promise_type &)raw_924 + 16].D.160808.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L462	; n,
	b	L459		;
	.p2align 2,,3
L460:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_750->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L459	; n,
L462:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_750->effect_tag, n_750->effect_tag
	cmp	x2, x1	; _946, n_750->effect_tag
	bne	L460		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_750->dispatch, n_750->dispatch
	ldr	x1, [x27, 104]	;, MEM[(struct promise_type &)raw_924 + 16].D.160808.D.154002.payload_ptr
	blr	x2		; n_750->dispatch
LEHE48:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x27]	; MEM[(struct promise_type &)raw_924 + 16].D.160808.D.154002.aborted, MEM[(struct promise_type &)raw_924 + 16].D.160808.D.154002.aborted
	tbz	x0, 0, L458	; MEM[(struct promise_type &)raw_924 + 16].D.160808.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x27, 8]	; MEM[(struct PromiseAbortBase *)raw_924 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_924 + 16B].abort_owner
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)raw_924 + 16B].abort_owner, tmp1974
	beq	L635		;,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x1, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	mov	w0, 0	; tmp1193,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x1, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
L469:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_924 + 8B], MEM[(void (*<T11f>) (void *) *)raw_924 + 8B]
	mov	x0, x20	;, raw
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_924 + 8B]
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x23, x23, #1	; ivtmp_734, ivtmp_734,
	bne	L474		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 264]	;, %sfp
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	adrp	x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGE	; tmp2343,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x23, 41248	; ivtmp_818,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	add	x27, x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGEOFF;	; tmp2001, tmp2343,
	adrp	x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGE	; tmp2345,
	add	x0, x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGEOFF;	; tmp2002, tmp2345,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movk	x23, 0x7, lsl 16	; ivtmp_818,,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	x0, [x29, 272]	; tmp2002, %sfp
L492:
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x24, [x25]	; mr, *_644
; b6_allocators.cpp:220:     CountHandler h;
	str	wzr, [x29, 384]	;, MEM[(struct CountHandler *)_612]
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x24, L475	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x3, [x24]	; mr_972->_vptr.memory_resource, mr_972->_vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 232	;,
	mov	x0, x24	;, mr
	ldr	x3, [x3, 16]	; MEM[(int (*) () *)_974 + 16B], MEM[(int (*) () *)_974 + 16B]
LEHB49:
	blr	x3		; MEM[(int (*) () *)_974 + 16B]
LEHE49:
L829:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x20, x0	; raw, raw
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	add	x22, x0, 32	; _988, raw,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_978 + 16B].aborted
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x0, 144	; _970, raw,
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x28, x0, 16	; tmp1933, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldr	x0, [x29, 272]	; tmp2002, %sfp
	str	x21, [x20, 168]	; tmp1957, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_978].__closure
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	w2, 65536	; tmp1222,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x24, [x20, 224]	; mr, MEM[(struct memory_resource * *)raw_978 + 224B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x24, x20, 128	; tmp1945, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	stp	x27, x0, [x20]	; tmp2001, tmp2002,* raw
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	x0, x20	;, raw
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x28, 8]	;, MEM[(struct PromiseAbortBase *)raw_978 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_978 + 32B].buf_
	stp	xzr, xzr, [x22, 16]	; MEM[(struct SmallAny *)raw_978 + 32B].buf_
	stp	xzr, xzr, [x22, 32]	; MEM[(struct SmallAny *)raw_978 + 32B].buf_
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_978 + 80B]
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_978 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	stp	xzr, xzr, [x20, 112]	; MEM <vector(2) long unsigned int> [(const void * *)raw_978 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_978 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_978 + 144B]._M_engaged
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	w2, [x20, 176]	; tmp1222, MEM <unsigned int> [(void *)raw_978 + 176B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x28, 120]	; _970, MEM[(struct promise_type *)raw_978 + 16B].D.160808.D.154002.result_ptr
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	bl	__ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor		;
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	ldr	x2, [x29, 328]	; tmp2011, %sfp
; ../../effects.hpp:752:     saved = detail::stack_top;
	add	x6, x29, 568	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, raw
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	str	x26, [x29, 552]	; tmp1974, MEM[(struct ScopedHandler *)_166].node.handler_obj
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.61_983, *_656
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	str	x2, [x29, 544]	; tmp2011, MEM[(struct ScopedHandler *)_166].node.effect_tag
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	ldp	x3, x2, [x29, 304]	; tmp2008, tmp1963,
	str	x2, [x29, 560]	; tmp1963, MEM[(struct ScopedHandler *)_166].node.real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x2, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_978], MEM[(void (*<T11f>) (void *) *)raw_978]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x26, [x19]	; tmp1974, *_656
; ../../effects.hpp:752:     saved = detail::stack_top;
	stp	x3, x1, [x6]	; tmp2008, stack_top.61_983,
	stp	xzr, x1, [x6, 16]	;, stack_top.61_983,
LEHB50:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)raw_978]
	.p2align 5,,15
L477:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_978], MEM[(void * *)raw_978]
	cbz	x0, L845	; MEM[(void * *)raw_978],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_656
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x2, [x28, 96]	; _1000, MEM[(struct promise_type &)raw_978 + 16].D.160808.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L481	; n,
	b	L478		;
	.p2align 2,,3
L479:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_739->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L478	; n,
L481:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_739->effect_tag, n_739->effect_tag
	cmp	x2, x1	; _1000, n_739->effect_tag
	bne	L479		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_739->dispatch, n_739->dispatch
	ldr	x1, [x28, 104]	;, MEM[(struct promise_type &)raw_978 + 16].D.160808.D.154002.payload_ptr
	blr	x2		; n_739->dispatch
LEHE50:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x28]	; MEM[(struct promise_type &)raw_978 + 16].D.160808.D.154002.aborted, MEM[(struct promise_type &)raw_978 + 16].D.160808.D.154002.aborted
	tbz	x0, 0, L477	; MEM[(struct promise_type &)raw_978 + 16].D.160808.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x28, 8]	; MEM[(struct PromiseAbortBase *)raw_978 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_978 + 16B].abort_owner
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)raw_978 + 16B].abort_owner, tmp1974
	beq	L632		;,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x1, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	mov	w0, 0	; tmp1277,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x1, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
L488:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_978 + 8B], MEM[(void (*<T11f>) (void *) *)raw_978 + 8B]
	mov	x0, x20	;, raw
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_978 + 8B]
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x23, x23, #1	; ivtmp_818, ivtmp_818,
	bne	L492		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 264]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 296]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _902, end, start
; bench.hpp:44: }
	mov	x0, x26	;, tmp1974
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d10, x2	;, _902
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp1287,
; b6_allocators.cpp:219:   print_result(bench("1s. Default", SP_REPS, [&] {
	mov	x0, x26	;, tmp1974
; bench.hpp:44: }
	str	d10, [x29, 584]	;, MEM[(struct BenchResult *)_166].total_ns
	movk	x1, 0x7, lsl 16	; tmp1287,,
	str	x1, [x29, 576]	; tmp1287, MEM[(struct BenchResult *)_166].iters
LEHB51:
; b6_allocators.cpp:219:   print_result(bench("1s. Default", SP_REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE51:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 256]	; tmp1975, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 544]	; _263, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _263, tmp1975
	beq	L493		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L493:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _259, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _259, tmp1971
	beq	L494		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L494:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 65536	;,
LEHB52:
	bl	__Znwm		;
LEHE52:
	mov	x20, x0	; _1024, _1024
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:951: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	mov	x2, 65535	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	strb	wzr, [x0], 1	;, *_1024
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:951: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	mov	w1, 0	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	str	x20, [x29, 232]	; _1024, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:951: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	bl	_memset		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	adrp	x0, lC37@PAGE	; tmp2353,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	ldr	x2, [x29, 296]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	stp	xzr, xzr, [x29, 416]	; MEM <vector(2) long unsigned int> [(long unsigned int *)_927]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	ldr	q31, [x0, #lC37@PAGEOFF]	; tmp1304,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	x20, [x29, 520]	; _1024, MEM[(struct monotonic_buffer_resource *)_121]._M_orig_buf
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	ldr	x0, [x29, 216]	; tmp1956, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	xzr, [x29, 536]	;, MEM[(struct monotonic_buffer_resource *)_121]._M_head
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	ldr	x1, [x29, 320]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	str	q31, [x29, 496]	; tmp1304, MEM <vector(2) long unsigned int> [(long unsigned int *)_121 + 16B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	add	x3, x0, 16	; tmp1302, tmp1956,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	mov	x0, x26	;, tmp1974
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	str	d31, [x29, 528]	; tmp1304, MEM[(struct monotonic_buffer_resource *)_121]._M_orig_size
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	stp	x3, x20, [x29, 480]	; tmp1302, _1024,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:363:       _M_upstream(__upstream),
	ldr	x3, [x29, 280]	; _643, %sfp
	str	x3, [x29, 512]	; _643, MEM[(struct monotonic_buffer_resource *)_121]._M_upstream
LEHB53:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	bl	__ZNSt3pmr28unsynchronized_pool_resourceC1ERKNS_12pool_optionsEPNS_15memory_resourceE		;
LEHE53:
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	ldr	x0, [x25]	; current_mr.73_278, *_644
; b6_allocators.cpp:231:     print_result(bench("4s. PMR pool", SP_REPS, [&] {
	adrp	x1, lC35@PAGE	; tmp1312,
	add	x1, x1, lC35@PAGEOFF;	;, tmp1312,
; ../../effects.hpp:783:     detail::current_mr = mr;
	str	x26, [x25]	; tmp1974, *_644
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	str	x0, [x29, 264]	; current_mr.73_278, %sfp
; b6_allocators.cpp:231:     print_result(bench("4s. PMR pool", SP_REPS, [&] {
	ldr	x0, [x29, 312]	;, %sfp
LEHB54:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE54:
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	adrp	x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGE	; tmp2360,
; b6_allocators.cpp:231:     print_result(bench("4s. PMR pool", SP_REPS, [&] {
	mov	x23, 3	; ivtmp_1253,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	add	x0, x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGEOFF;	; tmp1996, tmp2360,
	str	x0, [x29, 280]	; tmp1996, %sfp
	adrp	x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGE	; tmp2362,
	add	x0, x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGEOFF;	; tmp1997, tmp2362,
	str	x0, [x29, 272]	; tmp1997, %sfp
L513:
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x27, [x25]	; mr, *_644
; b6_allocators.cpp:232:       CountHandler h;
	str	wzr, [x29, 344]	;, MEM[(struct CountHandler *)_919]
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x27, L495	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x3, [x27]	; mr_1054->_vptr.memory_resource, mr_1054->_vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 232	;,
	mov	x0, x27	;, mr
	ldr	x3, [x3, 16]	; MEM[(int (*) () *)_1056 + 16B], MEM[(int (*) () *)_1056 + 16B]
LEHB55:
	blr	x3		; MEM[(int (*) () *)_1056 + 16B]
LEHE55:
L830:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x20, x0	; raw, raw
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	add	x22, x0, 32	; _1070, raw,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_1060 + 16B].aborted
	add	x28, x0, 16	; tmp1936, raw,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x24, x0, 128	; tmp1949, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldp	x1, x0, [x29, 272]	; tmp1997, tmp1996,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	w3, 65536	; tmp1334,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	x21, [x20, 168]	; tmp1957, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1060].__closure
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x27, [x20, 224]	; mr, MEM[(struct memory_resource * *)raw_1060 + 224B]
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x27, x29, 344	; tmp1958,,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	stp	x0, x1, [x20]	; tmp1996, tmp1997,* raw
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _1052, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	x0, x20	;, raw
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x28, 8]	;, MEM[(struct PromiseAbortBase *)raw_1060 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_1060 + 32B].buf_
	stp	xzr, xzr, [x22, 16]	; MEM[(struct SmallAny *)raw_1060 + 32B].buf_
	stp	xzr, xzr, [x22, 32]	; MEM[(struct SmallAny *)raw_1060 + 32B].buf_
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_1060 + 80B]
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_1060 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	stp	xzr, xzr, [x20, 112]	; MEM <vector(2) long unsigned int> [(const void * *)raw_1060 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_1060 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_1060 + 144B]._M_engaged
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	w3, [x20, 176]	; tmp1334, MEM <unsigned int> [(void *)raw_1060 + 176B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x28, 120]	; _1052, MEM[(struct promise_type *)raw_1060 + 16B].D.160808.D.154002.result_ptr
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	bl	__ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor		;
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	ldr	x2, [x29, 328]	; tmp2011, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, raw
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.61_1065, *_656
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	ldr	x4, [x29, 304]	; tmp2008, %sfp
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	str	x2, [x29, 416]	; tmp2011, MEM[(struct ScopedHandler *)_927].node.effect_tag
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	ldr	x2, [x29, 320]	; tmp1968, %sfp
	stp	x2, x27, [x29, 424]	; tmp1968, tmp1958,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_1060], MEM[(void (*<T11f>) (void *) *)raw_1060]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x2, [x19]	; tmp1968, *_656
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x4, x1, [x29, 440]	; tmp2008, stack_top.61_1065,
; ../../effects.hpp:247: struct HandlerNode {
	stp	xzr, x1, [x29, 456]	;, stack_top.61_1065,
LEHB56:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_1060]
	.p2align 5,,15
L497:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_1060], MEM[(void * *)raw_1060]
	cbz	x0, L846	; MEM[(void * *)raw_1060],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_656
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x3, [x28, 96]	; _1082, MEM[(struct promise_type &)raw_1060 + 16].D.160808.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L501	; n,
	b	L498		;
	.p2align 2,,3
L499:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_668->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L498	; n,
L501:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_668->effect_tag, n_668->effect_tag
	cmp	x3, x1	; _1082, n_668->effect_tag
	bne	L499		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_668->dispatch, n_668->dispatch
	ldr	x1, [x28, 104]	;, MEM[(struct promise_type &)raw_1060 + 16].D.160808.D.154002.payload_ptr
	blr	x3		; n_668->dispatch
LEHE56:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x28]	; MEM[(struct promise_type &)raw_1060 + 16].D.160808.D.154002.aborted, MEM[(struct promise_type &)raw_1060 + 16].D.160808.D.154002.aborted
	tbz	x0, 0, L497	; MEM[(struct promise_type &)raw_1060 + 16].D.160808.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x28, 8]	; MEM[(struct PromiseAbortBase *)raw_1060 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1060 + 16B].abort_owner
	ldr	x1, [x29, 320]	; tmp1968, %sfp
	cmp	x0, x1	; MEM[(struct PromiseAbortBase *)raw_1060 + 16B].abort_owner, tmp1968
	beq	L629		;,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x1, [x29, 464]	; MEM[(struct ScopedHandler *)_927].saved, MEM[(struct ScopedHandler *)_927].saved
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	mov	w0, 0	; tmp1389,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x1, [x19]	; MEM[(struct ScopedHandler *)_927].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
L508:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1060 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1060 + 8B]
	mov	x0, x20	;, raw
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1060 + 8B]
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x23, x23, #1	; ivtmp_1253, ivtmp_1253,
	bne	L513		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 224]	;, %sfp
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	adrp	x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGE	; tmp2370,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x23, 41248	; ivtmp_195,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	add	x0, x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGEOFF;	; tmp1991, tmp2370,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movk	x23, 0x7, lsl 16	; ivtmp_195,,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	x0, [x29, 280]	; tmp1991, %sfp
	adrp	x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGE	; tmp2372,
	add	x0, x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGEOFF;	; tmp1992, tmp2372,
	str	x0, [x29, 272]	; tmp1992, %sfp
L531:
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x24, [x25]	; mr, *_644
; b6_allocators.cpp:232:       CountHandler h;
	str	wzr, [x29, 344]	;, MEM[(struct CountHandler *)_919]
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x24, L514	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x3, [x24]	; mr_1108->_vptr.memory_resource, mr_1108->_vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 232	;,
	mov	x0, x24	;, mr
	ldr	x3, [x3, 16]	; MEM[(int (*) () *)_1110 + 16B], MEM[(int (*) () *)_1110 + 16B]
LEHB57:
	blr	x3		; MEM[(int (*) () *)_1110 + 16B]
LEHE57:
L831:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x20, x0	; raw, raw
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	add	x22, x0, 32	; _1124, raw,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_1114 + 16B].aborted
	add	x28, x0, 16	; tmp1940, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ldp	x1, x0, [x29, 272]	; tmp1992, tmp1991,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	w3, 65536	; tmp1418,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	x21, [x20, 168]	; tmp1957, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1114].__closure
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x24, [x20, 224]	; mr, MEM[(struct memory_resource * *)raw_1114 + 224B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x24, x20, 128	; tmp1951, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	stp	x0, x1, [x20]	; tmp1991, tmp1992,* raw
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _1106, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	x0, x20	;, raw
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x28, 8]	;, MEM[(struct PromiseAbortBase *)raw_1114 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_1114 + 32B].buf_
	stp	xzr, xzr, [x22, 16]	; MEM[(struct SmallAny *)raw_1114 + 32B].buf_
	stp	xzr, xzr, [x22, 32]	; MEM[(struct SmallAny *)raw_1114 + 32B].buf_
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_1114 + 80B]
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_1114 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	stp	xzr, xzr, [x20, 112]	; MEM <vector(2) long unsigned int> [(const void * *)raw_1114 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_1114 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_1114 + 144B]._M_engaged
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	w3, [x20, 176]	; tmp1418, MEM <unsigned int> [(void *)raw_1114 + 176B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x28, 120]	; _1106, MEM[(struct promise_type *)raw_1114 + 16B].D.160808.D.154002.result_ptr
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	bl	__ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor		;
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	ldr	x2, [x29, 328]	; tmp2011, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, raw
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.61_1119, *_656
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	ldr	x4, [x29, 304]	; tmp2008, %sfp
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	str	x2, [x29, 416]	; tmp2011, MEM[(struct ScopedHandler *)_927].node.effect_tag
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	ldr	x2, [x29, 320]	; tmp1968, %sfp
	stp	x2, x27, [x29, 424]	; tmp1968, tmp1958,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_1114], MEM[(void (*<T11f>) (void *) *)raw_1114]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x2, [x19]	; tmp1968, *_656
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x4, x1, [x29, 440]	; tmp2008, stack_top.61_1119,
; ../../effects.hpp:247: struct HandlerNode {
	stp	xzr, x1, [x29, 456]	;, stack_top.61_1119,
LEHB58:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_1114]
	.p2align 5,,15
L516:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_1114], MEM[(void * *)raw_1114]
	cbz	x0, L847	; MEM[(void * *)raw_1114],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_656
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x3, [x28, 96]	; _1136, MEM[(struct promise_type &)raw_1114 + 16].D.160808.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L520	; n,
	b	L517		;
	.p2align 2,,3
L518:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_659->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L517	; n,
L520:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_659->effect_tag, n_659->effect_tag
	cmp	x3, x1	; _1136, n_659->effect_tag
	bne	L518		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_659->dispatch, n_659->dispatch
	ldr	x1, [x28, 104]	;, MEM[(struct promise_type &)raw_1114 + 16].D.160808.D.154002.payload_ptr
	blr	x3		; n_659->dispatch
LEHE58:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x28]	; MEM[(struct promise_type &)raw_1114 + 16].D.160808.D.154002.aborted, MEM[(struct promise_type &)raw_1114 + 16].D.160808.D.154002.aborted
	tbz	x0, 0, L516	; MEM[(struct promise_type &)raw_1114 + 16].D.160808.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x28, 8]	; MEM[(struct PromiseAbortBase *)raw_1114 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1114 + 16B].abort_owner
	ldr	x1, [x29, 320]	; tmp1968, %sfp
	cmp	x0, x1	; MEM[(struct PromiseAbortBase *)raw_1114 + 16B].abort_owner, tmp1968
	bne	L848		;,
L626:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x22, 48]	; _1127, MEM[(struct SmallAny *)raw_1114 + 32B].destroy_
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w24, [x22]	;, MEM[(type &)_1125]
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x28]	;, MEM[(struct PromiseAbortBase *)raw_1114 + 16B].aborted
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L530	; _1127,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x22	;, _1124
	blr	x1		; _1127
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_1114 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_1114 + 32B].type_tag_
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 464]	; MEM[(struct ScopedHandler *)_927].saved, MEM[(struct ScopedHandler *)_927].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_927].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
L527:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1114 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1114 + 8B]
	mov	x0, x20	;, raw
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1114 + 8B]
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x23, x23, #1	; ivtmp_195, ivtmp_195,
	bne	L531		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 224]	; start, %sfp
; bench.hpp:44: }
	ldp	x1, x20, [x29, 312]	;, tmp1968,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _1038, end, start
; bench.hpp:44: }
	mov	x0, x20	;, tmp1968
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d9, x2	;, _1038
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp1483,
; b6_allocators.cpp:231:     print_result(bench("4s. PMR pool", SP_REPS, [&] {
	mov	x0, x20	;, tmp1968
; bench.hpp:44: }
	str	d9, [x29, 456]	;, MEM[(struct BenchResult *)_927].total_ns
	movk	x1, 0x7, lsl 16	; tmp1483,,
	str	x1, [x29, 448]	; tmp1483, MEM[(struct BenchResult *)_927].iters
LEHB59:
; b6_allocators.cpp:231:     print_result(bench("4s. PMR pool", SP_REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE59:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 240]	; tmp1969, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 416]	; _283, MEM[(const struct basic_string *)_927]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _283, tmp1969
	beq	L532		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 432]	; MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L532:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 208]	; tmp1965, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 384]	; _279, MEM[(struct basic_string *)_612]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _279, tmp1965
	beq	L832		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 400]	; MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L832:
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	ldr	x1, [x29, 264]	; current_mr.73_278, %sfp
; b6_allocators.cpp:235:   }
	mov	x0, x26	;, tmp1974
; b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	adrp	x20, __ZGVZ4mainE9mini_slab@PAGE	; tmp1498,
	add	x20, x20, __ZGVZ4mainE9mini_slab@PAGEOFF;	; tmp1497, tmp1498,
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x1, [x25]	; current_mr.73_278, *_644
; b6_allocators.cpp:235:   }
	bl	__ZNSt3pmr28unsynchronized_pool_resourceD1Ev		;
; b6_allocators.cpp:235:   }
	ldr	x0, [x29, 296]	;, %sfp
	bl	__ZNSt3pmr25monotonic_buffer_resourceD1Ev		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	ldr	x0, [x29, 232]	;, %sfp
	mov	x1, 65536	;,
	bl	__ZdlPvm		;
; b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	ldapr	x0, [x20]	; _8,
; b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	tbz	x0, 0, L535	; _8,,
L833:
	adrp	x0, __ZZ4mainE9mini_slab@PAGE	; tmp1973,
	mov	x20, x0	; tmp1973, tmp1973
	str	x0, [x29, 264]	; tmp1973, %sfp
L536:
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	ldr	x0, [x25]	; current_mr.73_290, *_644
; ../../effects.hpp:783:     detail::current_mr = mr;
	add	x2, x20, __ZZ4mainE9mini_slab@PAGEOFF;	; tmp1525, tmp1973,
; b6_allocators.cpp:241:     print_result(bench("5s. Free-list slab", SP_REPS, [&] {
	adrp	x1, lC36@PAGE	; tmp1528,
	add	x1, x1, lC36@PAGEOFF;	;, tmp1528,
; ../../effects.hpp:783:     detail::current_mr = mr;
	str	x2, [x25]	; tmp1525, *_644
; ../../effects.hpp:782:       : prev_(detail::current_mr) {
	str	x0, [x29, 240]	; current_mr.73_290, %sfp
; b6_allocators.cpp:241:     print_result(bench("5s. Free-list slab", SP_REPS, [&] {
	ldr	x0, [x29, 296]	;, %sfp
LEHB60:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE60:
	adrp	x0, __ZZ4mainE9mini_slab@PAGE+544	; tmp1980,
	adrp	x1, __ZZ4mainE9mini_slab@PAGE+16	; tmp1967,
	mov	x23, 3	; ivtmp_1389,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	add	x24, x20, __ZZ4mainE9mini_slab@PAGEOFF;	; tmp1530, tmp1973,
	stp	x0, x1, [x29, 224]	; tmp1980, tmp1967,
	add	x0, x0, __ZZ4mainE9mini_slab@PAGEOFF+544;	; tmp1532, tmp1980,
	str	x0, [x29, 280]	; tmp1532, %sfp
; b6_allocators.cpp:69:     head_ = &storage_[0];
	add	x0, x1, __ZZ4mainE9mini_slab@PAGEOFF+16;	; tmp1538, tmp1967,
	str	x0, [x29, 272]	; tmp1538, %sfp
L556:
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	ldr	x0, [x29, 280]	; tmp1532, %sfp
; b6_allocators.cpp:243:       CountHandler h;
	str	wzr, [x29, 384]	;, MEM[(struct CountHandler *)_612]
; b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	str	xzr, [x24, 544]	;, mini_slab.storage_[1].next
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	str	x0, [x24, 16]	; tmp1532, mini_slab.storage_[0].next
; b6_allocators.cpp:69:     head_ = &storage_[0];
	ldr	x0, [x29, 272]	; tmp1538, %sfp
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x28, [x25]	; mr, *_644
; b6_allocators.cpp:69:     head_ = &storage_[0];
	str	x0, [x24, 1072]	; tmp1538, mini_slab.head_
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x28, L538	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x4, [x28]	; mr_1172->_vptr.memory_resource, mr_1172->_vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 232	;,
	mov	x0, x28	;, mr
	ldr	x4, [x4, 16]	; MEM[(int (*) () *)_1174 + 16B], MEM[(int (*) () *)_1174 + 16B]
LEHB61:
	blr	x4		; MEM[(int (*) () *)_1174 + 16B]
LEHE61:
L834:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x20, x0	; raw, raw
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	adrp	x1, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGE	; tmp2405,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp1554
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	adrp	x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGE	; tmp2404,
	add	x1, x1, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGEOFF;	; tmp1545, tmp2405,
	add	x0, x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGEOFF;	; tmp1543, tmp2404,
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x27, x20, 16	; tmp1943, raw,
	strb	wzr, [x20, 16]	;, MEM[(struct PromiseAbortBase *)raw_1178 + 16B].aborted
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	x21, [x20, 168]	; tmp1957, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1178].__closure
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	add	x22, x20, 32	; _1188, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	w4, 65536	; tmp1560,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	stp	x0, x1, [x20]	; tmp1543, tmp1545,* raw
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _1170, raw,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x2, x20, 128	; tmp1952, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	x0, x20	;, raw
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x28, [x20, 224]	; mr, MEM[(struct memory_resource * *)raw_1178 + 224B]
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x27, 8]	;, MEM[(struct PromiseAbortBase *)raw_1178 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_1178 + 32B].buf_
	stp	xzr, xzr, [x22, 16]	; MEM[(struct SmallAny *)raw_1178 + 32B].buf_
	stp	xzr, xzr, [x22, 32]	; MEM[(struct SmallAny *)raw_1178 + 32B].buf_
	str	q31, [x20, 80]	; tmp1554, MEM <vector(2) long unsigned int> [(void *)raw_1178 + 80B]
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_1178 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x20, 112]	; tmp1554, MEM <vector(2) long unsigned int> [(const void * *)raw_1178 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_1178 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_1178 + 144B]._M_engaged
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	w4, [x20, 176]	; tmp1560, MEM <unsigned int> [(void *)raw_1178 + 176B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x27, 120]	; _1170, MEM[(struct promise_type *)raw_1178 + 16B].D.160808.D.154002.result_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	x2, [x29, 288]	; tmp1952, %sfp
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	bl	__ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor		;
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	ldr	x2, [x29, 328]	; tmp2011, %sfp
; ../../effects.hpp:752:     saved = detail::stack_top;
	add	x5, x29, 568	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, raw
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	str	x26, [x29, 552]	; tmp1974, MEM[(struct ScopedHandler *)_166].node.handler_obj
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.61_1183, *_656
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	str	x2, [x29, 544]	; tmp2011, MEM[(struct ScopedHandler *)_166].node.effect_tag
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	ldr	x2, [x29, 312]	; tmp1963, %sfp
	str	x2, [x29, 560]	; tmp1963, MEM[(struct ScopedHandler *)_166].node.real_handler_ptr
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	ldr	x2, [x29, 304]	; tmp2008, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_1178], MEM[(void (*<T11f>) (void *) *)raw_1178]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x26, [x19]	; tmp1974, *_656
; ../../effects.hpp:752:     saved = detail::stack_top;
	stp	xzr, x1, [x5, 16]	;, stack_top.61_1183,
	stp	x2, x1, [x5]	; tmp2008, stack_top.61_1183,
LEHB62:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_1178]
	.p2align 5,,15
L540:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_1178], MEM[(void * *)raw_1178]
	cbz	x0, L849	; MEM[(void * *)raw_1178],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_656
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x3, [x27, 96]	; _1200, MEM[(struct promise_type &)raw_1178 + 16].D.160808.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L544	; n,
	b	L541		;
	.p2align 2,,3
L542:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_649->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L541	; n,
L544:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_649->effect_tag, n_649->effect_tag
	cmp	x3, x1	; _1200, n_649->effect_tag
	bne	L542		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_649->dispatch, n_649->dispatch
	ldr	x1, [x27, 104]	;, MEM[(struct promise_type &)raw_1178 + 16].D.160808.D.154002.payload_ptr
	blr	x3		; n_649->dispatch
LEHE62:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x27]	; MEM[(struct promise_type &)raw_1178 + 16].D.160808.D.154002.aborted, MEM[(struct promise_type &)raw_1178 + 16].D.160808.D.154002.aborted
	tbz	x0, 0, L540	; MEM[(struct promise_type &)raw_1178 + 16].D.160808.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x27, 8]	; MEM[(struct PromiseAbortBase *)raw_1178 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1178 + 16B].abort_owner
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)raw_1178 + 16B].abort_owner, tmp1974
	beq	L623		;,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x1, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	mov	w0, 0	; tmp1615,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x1, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
L551:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1178 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1178 + 8B]
	mov	x0, x20	;, raw
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1178 + 8B]
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x23, x23, #1	; ivtmp_1389, ivtmp_1389,
	bne	L556		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 216]	;, %sfp
	mov	x24, 41248	; ivtmp_898,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	ldr	x0, [x29, 264]	; tmp1973, %sfp
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movk	x24, 0x7, lsl 16	; ivtmp_898,,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	add	x23, x0, __ZZ4mainE9mini_slab@PAGEOFF;	; tmp1624, tmp1973,
	ldr	x0, [x29, 224]	; tmp1980, %sfp
	add	x0, x0, __ZZ4mainE9mini_slab@PAGEOFF+544;	; tmp1626, tmp1980,
	str	x0, [x29, 280]	; tmp1626, %sfp
; b6_allocators.cpp:69:     head_ = &storage_[0];
	ldr	x0, [x29, 232]	; tmp1967, %sfp
	add	x0, x0, __ZZ4mainE9mini_slab@PAGEOFF+16;	; tmp1632, tmp1967,
	str	x0, [x29, 272]	; tmp1632, %sfp
L574:
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	ldr	x0, [x29, 280]	; tmp1626, %sfp
; b6_allocators.cpp:243:       CountHandler h;
	str	wzr, [x29, 384]	;, MEM[(struct CountHandler *)_612]
; b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	str	xzr, [x23, 544]	;, mini_slab.storage_[1].next
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	str	x0, [x23, 16]	; tmp1626, mini_slab.storage_[0].next
; b6_allocators.cpp:69:     head_ = &storage_[0];
	ldr	x0, [x29, 272]	; tmp1632, %sfp
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x28, [x25]	; mr, *_644
; b6_allocators.cpp:69:     head_ = &storage_[0];
	str	x0, [x23, 1072]	; tmp1632, mini_slab.head_
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x28, L557	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x4, [x28]	; mr_1226->_vptr.memory_resource, mr_1226->_vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 232	;,
	mov	x0, x28	;, mr
	ldr	x4, [x4, 16]	; MEM[(int (*) () *)_1228 + 16B], MEM[(int (*) () *)_1228 + 16B]
LEHB63:
	blr	x4		; MEM[(int (*) () *)_1228 + 16B]
LEHE63:
L835:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x20, x0	; raw, raw
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	adrp	x1, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGE	; tmp2419,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp1648
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	adrp	x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGE	; tmp2418,
	add	x1, x1, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy@PAGEOFF;	; tmp1639, tmp2419,
	add	x0, x0, __ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor@PAGEOFF;	; tmp1637, tmp2418,
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x27, x20, 16	; tmp1946, raw,
	strb	wzr, [x20, 16]	;, MEM[(struct PromiseAbortBase *)raw_1232 + 16B].aborted
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	x21, [x20, 168]	; tmp1957, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1232].__closure
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	add	x22, x20, 32	; _1242, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	w4, 65536	; tmp1654,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	stp	x0, x1, [x20]	; tmp1637, tmp1639,* raw
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _1224, raw,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x2, x20, 128	; tmp1953, raw,
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	mov	x0, x20	;, raw
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x28, [x20, 224]	; mr, MEM[(struct memory_resource * *)raw_1232 + 224B]
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x27, 8]	;, MEM[(struct PromiseAbortBase *)raw_1232 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_1232 + 32B].buf_
	stp	xzr, xzr, [x22, 16]	; MEM[(struct SmallAny *)raw_1232 + 32B].buf_
	stp	xzr, xzr, [x22, 32]	; MEM[(struct SmallAny *)raw_1232 + 32B].buf_
	str	q31, [x20, 80]	; tmp1648, MEM <vector(2) long unsigned int> [(void *)raw_1232 + 80B]
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_1232 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x20, 112]	; tmp1648, MEM <vector(2) long unsigned int> [(const void * *)raw_1232 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_1232 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_1232 + 144B]._M_engaged
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	str	w4, [x20, 176]	; tmp1654, MEM <unsigned int> [(void *)raw_1232 + 176B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x27, 120]	; _1224, MEM[(struct promise_type *)raw_1232 + 16B].D.160808.D.154002.result_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	x2, [x29, 288]	; tmp1953, %sfp
; b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	bl	__ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor		;
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	ldr	x2, [x29, 328]	; tmp2011, %sfp
; ../../effects.hpp:752:     saved = detail::stack_top;
	add	x4, x29, 568	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, raw
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	str	x26, [x29, 552]	; tmp1974, MEM[(struct ScopedHandler *)_166].node.handler_obj
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.61_1237, *_656
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	str	x2, [x29, 544]	; tmp2011, MEM[(struct ScopedHandler *)_166].node.effect_tag
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	ldr	x2, [x29, 312]	; tmp1963, %sfp
	str	x2, [x29, 560]	; tmp1963, MEM[(struct ScopedHandler *)_166].node.real_handler_ptr
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	ldr	x2, [x29, 304]	; tmp2008, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_1232], MEM[(void (*<T11f>) (void *) *)raw_1232]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x26, [x19]	; tmp1974, *_656
; ../../effects.hpp:752:     saved = detail::stack_top;
	stp	xzr, x1, [x4, 16]	;, stack_top.61_1237,
	stp	x2, x1, [x4]	; tmp2008, stack_top.61_1237,
LEHB64:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_1232]
	.p2align 5,,15
L559:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_1232], MEM[(void * *)raw_1232]
	cbz	x0, L850	; MEM[(void * *)raw_1232],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_656
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x3, [x27, 96]	; _1254, MEM[(struct promise_type &)raw_1232 + 16].D.160808.D.154002.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L563	; n,
	b	L560		;
	.p2align 2,,3
L561:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_632->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L560	; n,
L563:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_632->effect_tag, n_632->effect_tag
	cmp	x3, x1	; _1254, n_632->effect_tag
	bne	L561		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_632->dispatch, n_632->dispatch
	ldr	x1, [x27, 104]	;, MEM[(struct promise_type &)raw_1232 + 16].D.160808.D.154002.payload_ptr
	blr	x3		; n_632->dispatch
LEHE64:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x27]	; MEM[(struct promise_type &)raw_1232 + 16].D.160808.D.154002.aborted, MEM[(struct promise_type &)raw_1232 + 16].D.160808.D.154002.aborted
	tbz	x0, 0, L559	; MEM[(struct promise_type &)raw_1232 + 16].D.160808.D.154002.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x27, 8]	; MEM[(struct PromiseAbortBase *)raw_1232 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1232 + 16B].abort_owner
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)raw_1232 + 16B].abort_owner, tmp1974
	beq	L620		;,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x1, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	mov	w0, 0	; tmp1709,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x1, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
L570:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1232 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1232 + 8B]
	mov	x0, x20	;, raw
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1232 + 8B]
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x24, x24, #1	; ivtmp_898, ivtmp_898,
	bne	L574		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 216]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 296]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _1158, end, start
; bench.hpp:44: }
	mov	x0, x26	;, tmp1974
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d8, x2	;, _1158
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp1719,
; b6_allocators.cpp:241:     print_result(bench("5s. Free-list slab", SP_REPS, [&] {
	mov	x0, x26	;, tmp1974
; bench.hpp:44: }
	str	d8, [x29, 584]	;, MEM[(struct BenchResult *)_166].total_ns
	movk	x1, 0x7, lsl 16	; tmp1719,,
	str	x1, [x29, 576]	; tmp1719, MEM[(struct BenchResult *)_166].iters
LEHB65:
; b6_allocators.cpp:241:     print_result(bench("5s. Free-list slab", SP_REPS, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE65:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 256]	; tmp1975, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 544]	; _295, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _295, tmp1975
	beq	L575		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L575:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _291, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _291, tmp1971
	beq	L576		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L576:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:644:       if (__out.width() != 0)
	adrp	x0, __ZSt4cout@GOTPAGE	; tmp1730,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	; tmp1730,
	mov	w1, 10	; tmp1729,
	strb	w1, [x29, 544]	; tmp1729, MEM[(char *)_166]
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	ldr	x2, [x29, 240]	; current_mr.73_290, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:644:       if (__out.width() != 0)
	ldr	x1, [x0]	; cout._vptr.basic_ostream, cout._vptr.basic_ostream
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:790:     { return _M_width; }
	ldr	x1, [x1, -24]	; MEM[(long int *)_1269 + -24B], MEM[(long int *)_1269 + -24B]
	add	x1, x1, x0	; tmp1733, MEM[(long int *)_1269 + -24B], tmp1730
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:644:       if (__out.width() != 0)
	ldr	x1, [x1, 16]	; MEM[(const struct ios_base *)_1272]._M_width, MEM[(const struct ios_base *)_1272]._M_width
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x2, [x25]	; current_mr.73_290, *_644
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:644:       if (__out.width() != 0)
	cbnz	x1, L851	; MEM[(const struct ios_base *)_1272]._M_width,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:646:       __out.put(__c);
	mov	w1, 10	;,
LEHB66:
	bl	__ZNSo3putEc		;
LEHE66:
L811:
; b6_allocators.cpp:250: }
	ldp	d8, d9, [sp, 96]	;,,
	mov	w0, 0	;,
	ldp	x29, x30, [sp]	;,,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x27, x28, [sp, 80]	;,,
	ldp	d10, d11, [sp, 112]	;,,
	ldp	d12, d13, [sp, 128]	;,,
	ldp	d14, d15, [sp, 144]	;,,
	add	sp, sp, 624	;,,
LCFI112:
	ret	
L840:
LCFI113:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x20, 128]	; _803, MEM[(const struct exception_ptr *)SR.851_731 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L852	; _803,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x20, 16]	; MEM[(struct PromiseAbortBase *)SR.851_731 + 16B].aborted, MEM[(struct PromiseAbortBase *)SR.851_731 + 16B].aborted
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	add	x23, x20, 16	; tmp1979, SR.851,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	x1, [x20, 144]	; SR.865, MEM[(long long int &)SR.851_731 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L425	; MEM[(struct PromiseAbortBase *)SR.851_731 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x23, 8]	; MEM[(struct PromiseAbortBase *)SR.851_731 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.851_731 + 16B].abort_owner
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)SR.851_731 + 16B].abort_owner, tmp1974
	bne	L425		;,
L428:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x2, [x20, 80]	; _789, MEM[(struct SmallAny *)SR.851_731 + 32B].destroy_
; ../../effects.hpp:121:     return *std::launder(reinterpret_cast<T *>(buf_));
	add	x0, x20, 32	; _786, SR.851,
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x23]	;, MEM[(struct PromiseAbortBase *)SR.851_731 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	x1, [x20, 32]	; SR.865, MEM[(type &)_787]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L425	; _789,
	str	x1, [x29, 200]	; SR.865, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	str	x0, [x29, 232]	; _786, %sfp
	blr	x2		; _789
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	x0, [x29, 232]	; _786, %sfp
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)SR.851_731 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	x1, [x29, 200]	; SR.865, %sfp
	str	xzr, [x0, 64]	;, MEM[(struct SmallAny *)SR.851_731 + 32B].type_tag_
	b	L425		;
L839:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x20, 128]	; _759, MEM[(const struct exception_ptr *)SR.833_1878 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L853	; _759,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x20, 16]	; MEM[(struct PromiseAbortBase *)SR.833_1878 + 16B].aborted, MEM[(struct PromiseAbortBase *)SR.833_1878 + 16B].aborted
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	add	x23, x20, 16	; tmp1950, SR.833,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	x1, [x20, 144]	; SR.847, MEM[(long long int &)SR.833_1878 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L405	; MEM[(struct PromiseAbortBase *)SR.833_1878 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x23, 8]	; MEM[(struct PromiseAbortBase *)SR.833_1878 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.833_1878 + 16B].abort_owner
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)SR.833_1878 + 16B].abort_owner, tmp1974
	bne	L405		;,
L408:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x2, [x20, 80]	; _745, MEM[(struct SmallAny *)SR.833_1878 + 32B].destroy_
; ../../effects.hpp:121:     return *std::launder(reinterpret_cast<T *>(buf_));
	add	x0, x20, 32	; _742, SR.833,
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x23]	;, MEM[(struct PromiseAbortBase *)SR.833_1878 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	x1, [x20, 32]	; SR.847, MEM[(type &)_743]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L405	; _745,
	stp	x1, x0, [x29, 160]	; SR.847, _742,
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _745
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)SR.833_1878 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldp	x1, x0, [x29, 160]	; SR.847, _742,
	str	xzr, [x0, 64]	;, MEM[(struct SmallAny *)SR.833_1878 + 32B].type_tag_
	b	L405		;
L838:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x20, 128]	; _679, MEM[(const struct exception_ptr *)SR.816_967 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x0, L854	; _679,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x20, 16]	; MEM[(struct PromiseAbortBase *)SR.816_967 + 16B].aborted, MEM[(struct PromiseAbortBase *)SR.816_967 + 16B].aborted
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	add	x27, x20, 16	; tmp1932, SR.816,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	x1, [x20, 144]	; SR.829, MEM[(long long int &)SR.816_967 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L374	; MEM[(struct PromiseAbortBase *)SR.816_967 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x27, 8]	; MEM[(struct PromiseAbortBase *)SR.816_967 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)SR.816_967 + 16B].abort_owner
	ldr	x2, [x29, 296]	; tmp1970, %sfp
	cmp	x0, x2	; MEM[(struct PromiseAbortBase *)SR.816_967 + 16B].abort_owner, tmp1970
	bne	L374		;,
L377:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x2, [x20, 80]	; _665, MEM[(struct SmallAny *)SR.816_967 + 32B].destroy_
; ../../effects.hpp:121:     return *std::launder(reinterpret_cast<T *>(buf_));
	add	x0, x20, 32	; _662, SR.816,
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x27]	;, MEM[(struct PromiseAbortBase *)SR.816_967 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	x1, [x20, 32]	; SR.829, MEM[(type &)_663]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L374	; _665,
	stp	x1, x0, [x29, 264]	; SR.829, _662,
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _665
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)SR.816_967 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldp	x1, x0, [x29, 264]	; SR.829, _662,
	str	xzr, [x0, 64]	;, MEM[(struct SmallAny *)SR.816_967 + 32B].type_tag_
	b	L374		;
L844:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x24]	; _951, MEM[(const struct exception_ptr *)raw_924 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L855	; _951,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x27]	; MEM[(struct PromiseAbortBase *)raw_924 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_924 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	w1, [x20, 144]	;, MEM[(int &)raw_924 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L823	; MEM[(struct PromiseAbortBase *)raw_924 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x27, 8]	; MEM[(struct PromiseAbortBase *)raw_924 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_924 + 16B].abort_owner
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)raw_924 + 16B].abort_owner, tmp1974
	beq	L635		;,
L823:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L469		;
L850:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x29, 288]	; tmp1953, %sfp
	ldr	x1, [x0]	; _1259, MEM[(const struct exception_ptr *)raw_1232 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L856	; _1259,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x27]	; MEM[(struct PromiseAbortBase *)raw_1232 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_1232 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	w1, [x20, 144]	;, MEM[(int &)raw_1232 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L813	; MEM[(struct PromiseAbortBase *)raw_1232 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x27, 8]	; MEM[(struct PromiseAbortBase *)raw_1232 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1232 + 16B].abort_owner
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)raw_1232 + 16B].abort_owner, tmp1974
	beq	L620		;,
L813:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L570		;
L849:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x29, 288]	; tmp1952, %sfp
	ldr	x1, [x0]	; _1205, MEM[(const struct exception_ptr *)raw_1178 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L857	; _1205,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x27]	; MEM[(struct PromiseAbortBase *)raw_1178 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_1178 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	w1, [x20, 144]	;, MEM[(int &)raw_1178 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L815	; MEM[(struct PromiseAbortBase *)raw_1178 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x27, 8]	; MEM[(struct PromiseAbortBase *)raw_1178 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1178 + 16B].abort_owner
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)raw_1178 + 16B].abort_owner, tmp1974
	beq	L623		;,
L815:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L551		;
L847:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x24]	; _1141, MEM[(const struct exception_ptr *)raw_1114 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L858	; _1141,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x28]	; MEM[(struct PromiseAbortBase *)raw_1114 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_1114 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	w1, [x20, 144]	;, MEM[(int &)raw_1114 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L816	; MEM[(struct PromiseAbortBase *)raw_1114 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x28, 8]	; MEM[(struct PromiseAbortBase *)raw_1114 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1114 + 16B].abort_owner
	ldr	x2, [x29, 320]	; tmp1968, %sfp
	cmp	x0, x2	; MEM[(struct PromiseAbortBase *)raw_1114 + 16B].abort_owner, tmp1968
	beq	L626		;,
L816:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 464]	; MEM[(struct ScopedHandler *)_927].saved, MEM[(struct ScopedHandler *)_927].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_927].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L527		;
L846:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x24]	; _1087, MEM[(const struct exception_ptr *)raw_1060 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L859	; _1087,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x28]	; MEM[(struct PromiseAbortBase *)raw_1060 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_1060 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	w1, [x20, 144]	;, MEM[(int &)raw_1060 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L819	; MEM[(struct PromiseAbortBase *)raw_1060 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x28, 8]	; MEM[(struct PromiseAbortBase *)raw_1060 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1060 + 16B].abort_owner
	ldr	x2, [x29, 320]	; tmp1968, %sfp
	cmp	x0, x2	; MEM[(struct PromiseAbortBase *)raw_1060 + 16B].abort_owner, tmp1968
	beq	L629		;,
L819:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 464]	; MEM[(struct ScopedHandler *)_927].saved, MEM[(struct ScopedHandler *)_927].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_927].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L508		;
L845:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x24]	; _1005, MEM[(const struct exception_ptr *)raw_978 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L860	; _1005,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x28]	; MEM[(struct PromiseAbortBase *)raw_978 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_978 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	w1, [x20, 144]	;, MEM[(int &)raw_978 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L821	; MEM[(struct PromiseAbortBase *)raw_978 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x28, 8]	; MEM[(struct PromiseAbortBase *)raw_978 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_978 + 16B].abort_owner
	cmp	x0, x26	; MEM[(struct PromiseAbortBase *)raw_978 + 16B].abort_owner, tmp1974
	beq	L632		;,
L821:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L488		;
L848:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x1, [x29, 464]	; MEM[(struct ScopedHandler *)_927].saved, MEM[(struct ScopedHandler *)_927].saved
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	mov	w0, 0	; tmp1473,
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x1, [x19]	; MEM[(struct ScopedHandler *)_927].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L527		;
L538:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 232	;,
LEHB67:
	bl	__Znwm		;
LEHE67:
	b	L834		;
L514:
	mov	x0, 232	;,
LEHB68:
	bl	__Znwm		;
LEHE68:
	b	L831		;
L456:
	mov	x0, 232	;,
LEHB69:
	bl	__Znwm		;
LEHE69:
	b	L828		;
L557:
	mov	x0, 232	;,
LEHB70:
	bl	__Znwm		;
LEHE70:
	b	L835		;
L495:
	mov	x0, 232	;,
LEHB71:
	bl	__Znwm		;
LEHE71:
	b	L830		;
L475:
	mov	x0, 232	;,
LEHB72:
	bl	__Znwm		;
LEHE72:
	b	L829		;
L635:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x22, 48]	; _937, MEM[(struct SmallAny *)raw_924 + 32B].destroy_
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w24, [x22]	;, MEM[(type &)_935]
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x27]	;, MEM[(struct PromiseAbortBase *)raw_924 + 16B].aborted
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L472	; _937,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x22	;, _934
	blr	x1		; _937
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_924 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_924 + 32B].type_tag_
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L469		;
L629:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x22, 48]	; _1073, MEM[(struct SmallAny *)raw_1060 + 32B].destroy_
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w24, [x22]	;, MEM[(type &)_1071]
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x28]	;, MEM[(struct PromiseAbortBase *)raw_1060 + 16B].aborted
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L511	; _1073,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x22	;, _1070
	blr	x1		; _1073
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_1060 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_1060 + 32B].type_tag_
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 464]	; MEM[(struct ScopedHandler *)_927].saved, MEM[(struct ScopedHandler *)_927].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_927].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L508		;
L620:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x22, 48]	; _1245, MEM[(struct SmallAny *)raw_1232 + 32B].destroy_
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x27]	;, MEM[(struct PromiseAbortBase *)raw_1232 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w27, [x22]	;, MEM[(type &)_1243]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L573	; _1245,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x22	;, _1242
	blr	x1		; _1245
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_1232 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_1232 + 32B].type_tag_
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L570		;
L623:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x22, 48]	; _1191, MEM[(struct SmallAny *)raw_1178 + 32B].destroy_
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x27]	;, MEM[(struct PromiseAbortBase *)raw_1178 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w27, [x22]	;, MEM[(type &)_1189]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L554	; _1191,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x22	;, _1188
	blr	x1		; _1191
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_1178 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_1178 + 32B].type_tag_
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L551		;
L632:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x22, 48]	; _991, MEM[(struct SmallAny *)raw_978 + 32B].destroy_
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w24, [x22]	;, MEM[(type &)_989]
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x28]	;, MEM[(struct PromiseAbortBase *)raw_978 + 16B].aborted
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L491	; _991,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x22	;, _988
	blr	x1		; _991
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_978 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_978 + 32B].type_tag_
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L488		;
L851:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:645: 	return __ostream_insert(__out, &__c, 1);
	mov	x1, x26	;, tmp1974
	mov	x2, 1	;,
LEHB73:
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LEHE73:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:645: 	return __ostream_insert(__out, &__c, 1);
	b	L811		;
L439:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:460: 	if (__n == 1)
	cmp	x22, 1	; __sz,
	beq	L861		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	mov	x2, x22	;, __sz
	mov	x1, x21	;, _824
	add	x0, x21, 21	;, _824,
	bl	_memmove		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	b	L440		;
L842:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	add	x0, x21, x22	; _833, _824, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x3, x0	; __x.48_831, _833
	bhi	L437		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:576: 	    _M_replace_cold(__p, __len1, __s, __len2, __how_much);
	ldr	x0, [x29, 320]	;, %sfp
	mov	x5, x22	;, __sz
	mov	x1, x21	;, _824
	mov	x4, 21	;,
	mov	x2, 0	;,
LEHB74:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm		;
LEHE74:
	b	L441		;
L451:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:455: 	this->_M_mutate(this->size(), size_type(0), __s, __n);
	adrp	x3, lC29@PAGE	; tmp1088,
	ldr	x0, [x29, 296]	;, %sfp
	mov	x4, 1	;,
	add	x3, x3, lC29@PAGEOFF;	;, tmp1088,
	mov	x2, 0	;,
LEHB75:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm		;
LEHE75:
	b	L452		;
L535:
; b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	mov	x0, x20	;, tmp1497
	bl	___cxa_guard_acquire		;
; b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	cbz	w0, L833	; _10,
; b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	bl	__ZNSt3pmr20get_default_resourceEv		;
	mov	x3, x0	; _11,
; b6_allocators.cpp:75:       : fallback_(fallback) {
	adrp	x0, __ZTV12FreeListSlabILm520ELm2EE@GOTPAGE	; tmp1505,
	ldr	x0, [x0, __ZTV12FreeListSlabILm520ELm2EE@GOTPAGEOFF]	; tmp1505,
	adrp	x6, __ZZ4mainE9mini_slab@PAGE	; tmp1973,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	adrp	x2, __ZZ4mainE9mini_slab@PAGE+544	; tmp1980,
; b6_allocators.cpp:69:     head_ = &storage_[0];
	adrp	x4, __ZZ4mainE9mini_slab@PAGE+16	; tmp1967,
; b6_allocators.cpp:75:       : fallback_(fallback) {
	add	x1, x6, __ZZ4mainE9mini_slab@PAGEOFF;	; tmp1502, tmp1973,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	add	x5, x2, __ZZ4mainE9mini_slab@PAGEOFF+544;	; tmp1510, tmp1980,
; b6_allocators.cpp:75:       : fallback_(fallback) {
	str	x6, [x29, 264]	; tmp1973, %sfp
; b6_allocators.cpp:69:     head_ = &storage_[0];
	add	x4, x4, __ZZ4mainE9mini_slab@PAGEOFF+16;	; tmp1516, tmp1967,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x2, ___dso_handle@PAGE	; tmp1519,
	add	x2, x2, ___dso_handle@PAGEOFF;	;, tmp1519,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	str	x5, [x1, 16]	; tmp1510, mini_slab.storage_[0].next
; b6_allocators.cpp:75:       : fallback_(fallback) {
	add	x0, x0, 16	; tmp1504, tmp1505,
; b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	str	xzr, [x1, 544]	;, mini_slab.storage_[1].next
; b6_allocators.cpp:69:     head_ = &storage_[0];
	str	x4, [x1, 1072]	; tmp1516, mini_slab.head_
; b6_allocators.cpp:75:       : fallback_(fallback) {
	str	x0, [x6, #__ZZ4mainE9mini_slab@PAGEOFF]	; tmp1504, mini_slab.D.161435._vptr.memory_resource
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x0, __ZN12FreeListSlabILm520ELm2EED1Ev@GOTPAGE	;,
	ldr	x0, [x0, __ZN12FreeListSlabILm520ELm2EED1Ev@GOTPAGEOFF]	;,
; b6_allocators.cpp:75:       : fallback_(fallback) {
	str	x3, [x1, 1080]	; _11, mini_slab.fallback_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	bl	___cxa_atexit		;
; b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	mov	x0, x20	;, tmp1497
	bl	___cxa_guard_release		;
	ldr	x20, [x29, 264]	; tmp1973, %sfp
	b	L536		;
L530:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 464]	; MEM[(struct ScopedHandler *)_927].saved, MEM[(struct ScopedHandler *)_927].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_927].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L527		;
L390:
; b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	mov	x0, x20	;, tmp825
	bl	___cxa_guard_acquire		;
; b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	cbz	w0, L826	; _5,
; b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	bl	__ZNSt3pmr20get_default_resourceEv		;
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	adrp	x2, __ZZ4mainE4slab@PAGE+544	; tmp1947,
; b6_allocators.cpp:75:       : fallback_(fallback) {
	adrp	x3, __ZTV12FreeListSlabILm520ELm4EE@GOTPAGE	; tmp833,
	ldr	x3, [x3, __ZTV12FreeListSlabILm520ELm4EE@GOTPAGEOFF]	; tmp833,
	adrp	x6, __ZZ4mainE4slab@PAGE	; tmp1977,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	add	x4, x2, __ZZ4mainE4slab@PAGEOFF+544;	; tmp838, tmp1947,
	adrp	x2, __ZZ4mainE4slab@PAGE+1072	; tmp1972,
; b6_allocators.cpp:75:       : fallback_(fallback) {
	add	x1, x6, __ZZ4mainE4slab@PAGEOFF;	; tmp830, tmp1977,
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	add	x5, x2, __ZZ4mainE4slab@PAGEOFF+1072;	; tmp842, tmp1972,
; b6_allocators.cpp:75:       : fallback_(fallback) {
	str	x6, [x29, 232]	; tmp1977, %sfp
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	adrp	x2, __ZZ4mainE4slab@PAGE+1600	; tmp1939,
	add	x2, x2, __ZZ4mainE4slab@PAGEOFF+1600;	; tmp846, tmp1939,
	str	x4, [x1, 16]	; tmp838, slab.storage_[0].next
; b6_allocators.cpp:69:     head_ = &storage_[0];
	adrp	x4, __ZZ4mainE4slab@PAGE+16	; tmp1976,
; b6_allocators.cpp:75:       : fallback_(fallback) {
	add	x3, x3, 16	; tmp832, tmp833,
; b6_allocators.cpp:69:     head_ = &storage_[0];
	add	x4, x4, __ZZ4mainE4slab@PAGEOFF+16;	; tmp852, tmp1976,
; b6_allocators.cpp:75:       : fallback_(fallback) {
	str	x0, [x1, 2136]	; _6, slab.fallback_
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	str	x2, [x1, 1072]	; tmp846, slab.storage_[2].next
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x2, ___dso_handle@PAGE	; tmp855,
	add	x2, x2, ___dso_handle@PAGEOFF;	;, tmp855,
	adrp	x0, __ZN12FreeListSlabILm520ELm4EED1Ev@GOTPAGE	;,
	ldr	x0, [x0, __ZN12FreeListSlabILm520ELm4EED1Ev@GOTPAGEOFF]	;,
; b6_allocators.cpp:75:       : fallback_(fallback) {
	str	x3, [x6, #__ZZ4mainE4slab@PAGEOFF]	; tmp832, slab.D.159499._vptr.memory_resource
; b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	str	x5, [x1, 544]	; tmp842, slab.storage_[1].next
; b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	str	xzr, [x1, 1600]	;, slab.storage_[3].next
; b6_allocators.cpp:69:     head_ = &storage_[0];
	str	x4, [x1, 2128]	; tmp852, slab.head_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	bl	___cxa_atexit		;
; b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	mov	x0, x20	;, tmp825
	bl	___cxa_guard_release		;
	ldr	x0, [x29, 232]	; tmp1977, %sfp
	b	L391		;
L491:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L488		;
L554:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L551		;
L573:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L570		;
L511:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 464]	; MEM[(struct ScopedHandler *)_927].saved, MEM[(struct ScopedHandler *)_927].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_927].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L508		;
L472:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
	str	x0, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	b	L469		;
L435:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x20, 29	; _822,
	bls	L862		;,
L639:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x22, 22	; _1197, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x23, x20	; __new_capacity, _822
L444:
LEHB76:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE76:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x1, lC27@PAGE	; tmp1063,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _880, _880
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x1, x1, lC27@PAGEOFF;	; tmp1062, tmp1063,
	ldp	x2, x3, [x1]	; MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "], MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "]
	stp	x2, x3, [x0]	; MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "], MEM <char[1:21]> [(void *)_880]
	ldr	x0, [x1, 13]	; MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "], MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "]
	str	x0, [x24, 13]	; MEM <char[1:21]> [(void *)"Per-perform cost (\xc3\xb7 "], MEM <char[1:21]> [(void *)_880]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:369:       if (__how_much)
	cbz	x22, L827	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x22, 1	; __sz,
	beq	L863		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x22	;, __sz
	mov	x1, x21	;, _824
	add	x0, x24, 21	;, _880,
	bl	_memcpy		;
L827:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 240]	; tmp1969, %sfp
	cmp	x21, x0	; _824, tmp1969
	beq	L448		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 432]	; MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x21	;, _824
	add	x1, x1, 1	;, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L448:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x24, [x29, 416]	; _880, MEM[(struct basic_string *)_927]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x23, [x29, 432]	; __new_capacity, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L441		;
L861:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x21]	;, MEM[(const char_type &)_824]
	strb	w0, [x21, 21]	; MEM[(const char_type &)_824], MEM[(char_type &)_824 + 21]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L440		;
L863:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x21]	; _866, MEM[(const char_type &)_824]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24, 21]	; _866, MEM[(char_type &)_880 + 21]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L827		;
L862:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x23, 30	; __new_capacity,
L638:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x23, 1	; _1197, __new_capacity,
	b	L444		;
L854:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x0, [x29, 384]	; _679, MEM[(struct exception_ptr *)_612]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 384	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	add	x0, x29, 384	;,,
LEHB77:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE77:
L853:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 320]	; tmp1968, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 416]	; _759, MEM[(struct exception_ptr *)_927]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1968
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1968
LEHB78:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE78:
L858:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 288]	; tmp1962, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 376]	; _1141, MEM[(struct exception_ptr *)_613]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1962
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1962
LEHB79:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE79:
L852:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 320]	; tmp1968, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 416]	; _803, MEM[(struct exception_ptr *)_927]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1968
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1968
LEHB80:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE80:
L860:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 320]	; tmp1968, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 416]	; _1005, MEM[(struct exception_ptr *)_927]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1968
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1968
LEHB81:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE81:
L856:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 320]	; tmp1968, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 416]	; _1259, MEM[(struct exception_ptr *)_927]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1968
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1968
LEHB82:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE82:
L436:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x23, x23, 1	; __new_capacity, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x20, x23	; _822, __new_capacity
	bcs	L639		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	mov	x0, 9223372036854775806	; tmp1060,
	cmp	x23, x0	; __new_capacity, tmp1060
	bls	L638		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x23, x0	; __new_capacity, tmp1060
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _1197,
	b	L444		;
L857:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 320]	; tmp1968, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 416]	; _1205, MEM[(struct exception_ptr *)_927]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1968
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1968
LEHB83:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE83:
L855:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 320]	; tmp1968, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 416]	; _951, MEM[(struct exception_ptr *)_927]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1968
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1968
LEHB84:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE84:
L859:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 288]	; tmp1962, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 376]	; _1087, MEM[(struct exception_ptr *)_613]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1962
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1962
LEHB85:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE85:
L648:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 544]	; _299, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 560	; tmp1741,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp2091,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x1	; _299, tmp1741
	beq	L581		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _299
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L581:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _303, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 496	; tmp1749,,
	cmp	x0, x1	; _303, tmp1749
	beq	L606		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L606:
	mov	x0, x19	;, tmp1824
LEHB86:
	bl	__Unwind_Resume		;
L671:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x21, x0	; tmp1621, tmp2115
L555:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _381, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _381, tmp1971
	bne	L864		;,
	mov	x0, x21	; tmp1870, tmp1621
L618:
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	ldr	x1, [x29, 240]	; current_mr.73_290, %sfp
	str	x1, [x25]	; current_mr.73_290, *_644
	bl	__Unwind_Resume		;
LEHE86:
L670:
	b	L618		;
L864:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
	mov	x0, x21	; tmp1870, tmp1621
	b	L618		;
L541:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp1580,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _1214,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp1580,
LEHB87:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE87:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _1214
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB88:
	bl	___cxa_throw		;
LEHE88:
L695:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1583, tmp2082
	b	L546		;
L697:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp2080,
	mov	x0, x22	;, _1214
	bl	___cxa_free_exception		;
L546:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, raw
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1178 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1178 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1178 + 8B]
	b	L555		;
L647:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1744, tmp2092
	b	L581		;
L690:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 376]	; MEM[(struct exception_ptr *)_613]._M_exception_object, MEM[(struct exception_ptr *)_613]._M_exception_object
	mov	x21, x0	; tmp2065,
	cbz	x1, L503	; MEM[(struct exception_ptr *)_613]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 288]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L503:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 464]	; MEM[(struct ScopedHandler *)_927].saved, MEM[(struct ScopedHandler *)_927].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, raw
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1060 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1060 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_927].saved, *_656
	mov	x19, x21	; tmp1395, tmp1357
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1060 + 8B]
L512:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 208]	; tmp1965, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 384]	; _370, MEM[(struct basic_string *)_612]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _370, tmp1965
	beq	L613		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 400]	; MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L613:
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	ldr	x1, [x29, 264]	; current_mr.73_278, %sfp
; b6_allocators.cpp:235:   }
	mov	x0, x26	;, tmp1974
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x1, [x25]	; current_mr.73_278, *_644
; b6_allocators.cpp:235:   }
	bl	__ZNSt3pmr28unsynchronized_pool_resourceD1Ev		;
L614:
	ldr	x0, [x29, 296]	;, %sfp
	bl	__ZNSt3pmr25monotonic_buffer_resourceD1Ev		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	ldr	x0, [x29, 232]	;, %sfp
	mov	x1, 65536	;,
	bl	__ZdlPvm		;
	mov	x0, x19	;, tmp1855
LEHB89:
	bl	__Unwind_Resume		;
LEHE89:
L841:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC26@PAGE	; tmp1043,
	add	x0, x0, lC26@PAGEOFF;	;, tmp1043,
LEHB90:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE90:
L663:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 544]	; _346, MEM[(struct basic_string *)_166]._M_dataplus._M_p
	mov	x19, x0	; tmp2105,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 256]	; tmp1975, %sfp
	cmp	x2, x0	; _346, tmp1975
	beq	L603		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _346
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L603:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _350, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _350, tmp1971
	beq	L605		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L605:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 240]	; tmp1969, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 416]	; _354, MEM[(struct basic_string *)_927]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _354, tmp1969
	beq	L606		;,
L837:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 432]	; MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L606		;
L672:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 544]	; _377, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
	mov	x21, x0	; tmp2114,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 256]	; tmp1975, %sfp
	cmp	x2, x0	; _377, tmp1975
	beq	L555		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _377
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L555		;
L689:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1357, tmp2066
	b	L503		;
L683:
	mov	x21, x0	; tmp1161, tmp2051
L464:
	ldr	x2, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, raw
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_924 + 8B], MEM[(void (*<T11f>) (void *) *)raw_924 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_924 + 8B]
L473:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _362, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _362, tmp1971
	beq	L609		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L609:
	mov	x0, x21	;, tmp1199
LEHB91:
	bl	__Unwind_Resume		;
LEHE91:
L664:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x21, x0	; tmp1199, tmp2109
	b	L473		;
L692:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1441, tmp2073
L522:
	ldr	x2, [x29, 464]	; MEM[(struct ScopedHandler *)_927].saved, MEM[(struct ScopedHandler *)_927].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, raw
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1114 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1114 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_927].saved, *_656
	mov	x19, x21	; tmp1395, tmp1441
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1114 + 8B]
	b	L512		;
L498:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp1354,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _1096,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp1354,
LEHB92:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE92:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _1096
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB93:
	bl	___cxa_throw		;
LEHE93:
L691:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp2064,
	mov	x0, x22	;, _1096
	bl	___cxa_free_exception		;
	b	L503		;
L686:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1245, tmp2058
L483:
	ldr	x2, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, raw
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_978 + 8B], MEM[(void (*<T11f>) (void *) *)raw_978 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_978 + 8B]
	b	L473		;
L459:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp1158,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _960,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp1158,
LEHB94:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE94:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _960
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB95:
	bl	___cxa_throw		;
LEHE95:
L685:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp2049,
	mov	x0, x22	;, _960
	bl	___cxa_free_exception		;
	b	L464		;
L843:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC28@PAGE	; tmp1083,
	add	x0, x0, lC28@PAGEOFF;	;, tmp1083,
LEHB96:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE96:
L665:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 544]	; _358, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
	mov	x21, x0	; tmp2108,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 256]	; tmp1975, %sfp
	cmp	x2, x0	; _358, tmp1975
	beq	L473		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _358
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L473		;
L478:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp1242,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _1014,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp1242,
LEHB97:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE97:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _1014
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB98:
	bl	___cxa_throw		;
LEHE98:
L688:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp2056,
	mov	x0, x22	;, _1014
	bl	___cxa_free_exception		;
	b	L483		;
L669:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 416]	; _366, MEM[(const struct basic_string *)_927]._M_dataplus._M_p
	mov	x19, x0	; tmp2110,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 240]	; tmp1969, %sfp
	cmp	x2, x0	; _366, tmp1969
	beq	L512		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 432]	; MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _366
	add	x1, x1, 1	;, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L512		;
L517:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp1438,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _1150,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp1438,
LEHB99:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE99:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _1150
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB100:
	bl	___cxa_throw		;
LEHE100:
L694:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp2071,
	mov	x0, x22	;, _1150
	bl	___cxa_free_exception		;
	b	L522		;
L667:
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	mov	x19, x0	; tmp1850, tmp2112
	b	L613		;
L666:
; b6_allocators.cpp:235:   }
	mov	x19, x0	; tmp1855, tmp2113
	b	L614		;
L668:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1395, tmp2111
	b	L512		;
L677:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp884, tmp2038
L400:
	ldr	x2, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, SR.833
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)SR.833_1878 + 8B], MEM[(void (*<T11f>) (void *) *)SR.833_1878 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.833_1878 + 8B]
L411:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _342, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _342, tmp1971
	bne	L865		;,
	mov	x0, x21	; tmp1810, tmp926
L600:
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	ldr	x1, [x29, 224]	; current_mr.73_234, %sfp
	str	x1, [x25]	; current_mr.73_234, *_644
LEHB101:
	bl	__Unwind_Resume		;
L659:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x21, x0	; tmp926, tmp2103
	b	L411		;
L657:
	ldr	x2, [x29, 416]	; _327, MEM[(const struct basic_string *)_927]._M_dataplus._M_p
	mov	x19, x0	; tmp2098,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 240]	; tmp1969, %sfp
	cmp	x2, x0	; _327, tmp1969
	beq	L593		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 432]	; MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _327
	add	x1, x1, 1	;, MEM[(struct basic_string *)_927].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L593:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 384]	; _331, MEM[(struct basic_string *)_612]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 400	; tmp1786,,
	cmp	x0, x1	; _331, tmp1786
	beq	L595		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 400]	; MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_612].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L595:
; b6_allocators.cpp:190:   }
	mov	x0, x26	;, tmp1974
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x21, [x25]	; current_mr.73_218, *_644
; b6_allocators.cpp:190:   }
	bl	__ZNSt3pmr28unsynchronized_pool_resourceD1Ev		;
L596:
	ldr	x0, [x29, 296]	;, %sfp
	bl	__ZNSt3pmr25monotonic_buffer_resourceD1Ev		;
L836:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, 520	;,
	mov	x0, x20	;, _698
	movk	x1, 0x1, lsl 16	;,,
	bl	__ZdlPvm		;
	mov	x0, x19	;, tmp1794
	bl	__Unwind_Resume		;
LEHE101:
L656:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1781, tmp2099
	b	L593		;
L865:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
	mov	x0, x21	; tmp1810, tmp926
	b	L600		;
L655:
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	mov	x19, x0	; tmp1789, tmp2100
	b	L595		;
L654:
; b6_allocators.cpp:190:   }
	mov	x19, x0	; tmp1794, tmp2101
	b	L596		;
L653:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 544]	; _319, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
	mov	x19, x0	; tmp2096,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 256]	; tmp1975, %sfp
	cmp	x2, x0	; _319, tmp1975
	beq	L382		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _319
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L382:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 416]	; _323, MEM[(struct basic_string *)_927]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 432	; tmp1774,,
	cmp	x0, x1	; _323, tmp1774
	bne	L837		;,
	b	L606		;
L652:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp774, tmp2097
	b	L382		;
L364:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp723,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x23, x0	; _688,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp723,
LEHB102:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE102:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x23	;, _688
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB103:
	bl	___cxa_throw		;
LEHE103:
L674:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp726, tmp2026
	b	L369		;
L676:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp2024,
	mov	x0, x23	;, _688
	bl	___cxa_free_exception		;
L369:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 528]	; MEM[(struct ScopedHandler *)_121].saved, MEM[(struct ScopedHandler *)_121].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, SR.816
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)SR.816_967 + 8B], MEM[(void (*<T11f>) (void *) *)SR.816_967 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_121].saved, *_656
	mov	x19, x21	; tmp769, tmp726
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.816_967 + 8B]
L381:
; b6_allocators.cpp:175:     }));
	mov	x0, x26	;, tmp1974
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	str	x22, [x25]	; current_mr.73_645, *_644
; b6_allocators.cpp:175:     }));
	bl	__ZNSt3pmr25monotonic_buffer_resourceD1Ev		;
	b	L382		;
L673:
; ../../effects.hpp:785:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	mov	x19, x0	; tmp769, tmp2027
	b	L381		;
L651:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 544]	; _307, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
	mov	x19, x0	; tmp2093,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 256]	; tmp1975, %sfp
	cmp	x2, x0	; _307, tmp1975
	beq	L585		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _307
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L585:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 248]	; tmp1971, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 480]	; _311, MEM[(struct basic_string *)_121]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _311, tmp1971
	beq	L836		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 496]	; MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_121].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L836		;
L650:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1756, tmp2094
	b	L585		;
L660:
	ldr	x2, [x29, 544]	; _338, MEM[(const struct basic_string *)_166]._M_dataplus._M_p
	mov	x21, x0	; tmp2102,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 256]	; tmp1975, %sfp
	cmp	x2, x0	; _338, tmp1975
	beq	L411		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 560]	; MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _338
	add	x1, x1, 1	;, MEM[(struct basic_string *)_166].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L411		;
L415:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp962,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _812,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp962,
LEHB104:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE104:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _812
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB105:
	bl	___cxa_throw		;
LEHE105:
L682:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp2041,
	mov	x0, x22	;, _812
	bl	___cxa_free_exception		;
L420:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, SR.851
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)SR.851_731 + 8B], MEM[(void (*<T11f>) (void *) *)SR.851_731 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)SR.851_731 + 8B]
	b	L411		;
L649:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x19, x0	; tmp1764, tmp2095
	b	L836		;
L680:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp965, tmp2043
	b	L420		;
L395:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp881,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _768,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp881,
LEHB106:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE106:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _768
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB107:
	bl	___cxa_throw		;
LEHE107:
L662:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1816, tmp2106
	b	L603		;
L679:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp2036,
	mov	x0, x22	;, _768
	bl	___cxa_free_exception		;
	b	L400		;
L560:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC1@PAGE	; tmp1674,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _1268,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC1@PAGEOFF;	;, tmp1674,
LEHB108:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE108:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _1268
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB109:
	bl	___cxa_throw		;
LEHE109:
L698:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1677, tmp2089
	b	L565		;
L700:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp2087,
	mov	x0, x22	;, _1268
	bl	___cxa_free_exception		;
L565:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 592]	; MEM[(struct ScopedHandler *)_166].saved, MEM[(struct ScopedHandler *)_166].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, raw
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1232 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1232 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_166].saved, *_656
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1232 + 8B]
	b	L555		;
L675:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 384]	; MEM[(struct exception_ptr *)_612]._M_exception_object, MEM[(struct exception_ptr *)_612]._M_exception_object
	mov	x21, x0	; tmp2025,
	cbz	x1, L369	; MEM[(struct exception_ptr *)_612]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 384	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L369		;
L693:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 376]	; MEM[(struct exception_ptr *)_613]._M_exception_object, MEM[(struct exception_ptr *)_613]._M_exception_object
	mov	x21, x0	; tmp2072,
	cbz	x1, L522	; MEM[(struct exception_ptr *)_613]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 288]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L522		;
L658:
	b	L600		;
L678:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 416]	; MEM[(struct exception_ptr *)_927]._M_exception_object, MEM[(struct exception_ptr *)_927]._M_exception_object
	mov	x21, x0	; tmp2037,
	cbz	x1, L400	; MEM[(struct exception_ptr *)_927]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 320]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L400		;
L687:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 416]	; MEM[(struct exception_ptr *)_927]._M_exception_object, MEM[(struct exception_ptr *)_927]._M_exception_object
	mov	x21, x0	; tmp2057,
	cbz	x1, L483	; MEM[(struct exception_ptr *)_927]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 320]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L483		;
L696:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 416]	; MEM[(struct exception_ptr *)_927]._M_exception_object, MEM[(struct exception_ptr *)_927]._M_exception_object
	mov	x21, x0	; tmp2081,
	cbz	x1, L546	; MEM[(struct exception_ptr *)_927]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 320]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L546		;
L661:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1824, tmp2107
	b	L605		;
L699:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 416]	; MEM[(struct exception_ptr *)_927]._M_exception_object, MEM[(struct exception_ptr *)_927]._M_exception_object
	mov	x21, x0	; tmp2088,
	cbz	x1, L565	; MEM[(struct exception_ptr *)_927]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 320]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L565		;
L681:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 416]	; MEM[(struct exception_ptr *)_927]._M_exception_object, MEM[(struct exception_ptr *)_927]._M_exception_object
	mov	x21, x0	; tmp2042,
	cbz	x1, L420	; MEM[(struct exception_ptr *)_927]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 320]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L420		;
L684:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 416]	; MEM[(struct exception_ptr *)_927]._M_exception_object, MEM[(struct exception_ptr *)_927]._M_exception_object
	mov	x21, x0	; tmp2050,
	cbz	x1, L464	; MEM[(struct exception_ptr *)_927]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 320]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L464		;
LFE6950:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table10:
LLSDA6950:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6950-LLSDACSB6950
LLSDACSB6950:
	.uleb128 LEHB22-LFB6950
	.uleb128 LEHE22-LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB23-LFB6950
	.uleb128 LEHE23-LEHB23
	.uleb128 L647-LFB6950
	.uleb128 0
	.uleb128 LEHB24-LFB6950
	.uleb128 LEHE24-LEHB24
	.uleb128 L648-LFB6950
	.uleb128 0
	.uleb128 LEHB25-LFB6950
	.uleb128 LEHE25-LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB26-LFB6950
	.uleb128 LEHE26-LEHB26
	.uleb128 L649-LFB6950
	.uleb128 0
	.uleb128 LEHB27-LFB6950
	.uleb128 LEHE27-LEHB27
	.uleb128 L650-LFB6950
	.uleb128 0
	.uleb128 LEHB28-LFB6950
	.uleb128 LEHE28-LEHB28
	.uleb128 L651-LFB6950
	.uleb128 0
	.uleb128 LEHB29-LFB6950
	.uleb128 LEHE29-LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB30-LFB6950
	.uleb128 LEHE30-LEHB30
	.uleb128 L673-LFB6950
	.uleb128 0
	.uleb128 LEHB31-LFB6950
	.uleb128 LEHE31-LEHB31
	.uleb128 L674-LFB6950
	.uleb128 0
	.uleb128 LEHB32-LFB6950
	.uleb128 LEHE32-LEHB32
	.uleb128 L652-LFB6950
	.uleb128 0
	.uleb128 LEHB33-LFB6950
	.uleb128 LEHE33-LEHB33
	.uleb128 L653-LFB6950
	.uleb128 0
	.uleb128 LEHB34-LFB6950
	.uleb128 LEHE34-LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB35-LFB6950
	.uleb128 LEHE35-LEHB35
	.uleb128 L654-LFB6950
	.uleb128 0
	.uleb128 LEHB36-LFB6950
	.uleb128 LEHE36-LEHB36
	.uleb128 L655-LFB6950
	.uleb128 0
	.uleb128 LEHB37-LFB6950
	.uleb128 LEHE37-LEHB37
	.uleb128 L656-LFB6950
	.uleb128 0
	.uleb128 LEHB38-LFB6950
	.uleb128 LEHE38-LEHB38
	.uleb128 L657-LFB6950
	.uleb128 0
	.uleb128 LEHB39-LFB6950
	.uleb128 LEHE39-LEHB39
	.uleb128 L658-LFB6950
	.uleb128 0
	.uleb128 LEHB40-LFB6950
	.uleb128 LEHE40-LEHB40
	.uleb128 L659-LFB6950
	.uleb128 0
	.uleb128 LEHB41-LFB6950
	.uleb128 LEHE41-LEHB41
	.uleb128 L677-LFB6950
	.uleb128 0
	.uleb128 LEHB42-LFB6950
	.uleb128 LEHE42-LEHB42
	.uleb128 L659-LFB6950
	.uleb128 0
	.uleb128 LEHB43-LFB6950
	.uleb128 LEHE43-LEHB43
	.uleb128 L680-LFB6950
	.uleb128 0
	.uleb128 LEHB44-LFB6950
	.uleb128 LEHE44-LEHB44
	.uleb128 L660-LFB6950
	.uleb128 0
	.uleb128 LEHB45-LFB6950
	.uleb128 LEHE45-LEHB45
	.uleb128 L663-LFB6950
	.uleb128 0
	.uleb128 LEHB46-LFB6950
	.uleb128 LEHE46-LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB47-LFB6950
	.uleb128 LEHE47-LEHB47
	.uleb128 L664-LFB6950
	.uleb128 0
	.uleb128 LEHB48-LFB6950
	.uleb128 LEHE48-LEHB48
	.uleb128 L683-LFB6950
	.uleb128 0
	.uleb128 LEHB49-LFB6950
	.uleb128 LEHE49-LEHB49
	.uleb128 L664-LFB6950
	.uleb128 0
	.uleb128 LEHB50-LFB6950
	.uleb128 LEHE50-LEHB50
	.uleb128 L686-LFB6950
	.uleb128 0
	.uleb128 LEHB51-LFB6950
	.uleb128 LEHE51-LEHB51
	.uleb128 L665-LFB6950
	.uleb128 0
	.uleb128 LEHB52-LFB6950
	.uleb128 LEHE52-LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB53-LFB6950
	.uleb128 LEHE53-LEHB53
	.uleb128 L666-LFB6950
	.uleb128 0
	.uleb128 LEHB54-LFB6950
	.uleb128 LEHE54-LEHB54
	.uleb128 L667-LFB6950
	.uleb128 0
	.uleb128 LEHB55-LFB6950
	.uleb128 LEHE55-LEHB55
	.uleb128 L668-LFB6950
	.uleb128 0
	.uleb128 LEHB56-LFB6950
	.uleb128 LEHE56-LEHB56
	.uleb128 L689-LFB6950
	.uleb128 0
	.uleb128 LEHB57-LFB6950
	.uleb128 LEHE57-LEHB57
	.uleb128 L668-LFB6950
	.uleb128 0
	.uleb128 LEHB58-LFB6950
	.uleb128 LEHE58-LEHB58
	.uleb128 L692-LFB6950
	.uleb128 0
	.uleb128 LEHB59-LFB6950
	.uleb128 LEHE59-LEHB59
	.uleb128 L669-LFB6950
	.uleb128 0
	.uleb128 LEHB60-LFB6950
	.uleb128 LEHE60-LEHB60
	.uleb128 L670-LFB6950
	.uleb128 0
	.uleb128 LEHB61-LFB6950
	.uleb128 LEHE61-LEHB61
	.uleb128 L671-LFB6950
	.uleb128 0
	.uleb128 LEHB62-LFB6950
	.uleb128 LEHE62-LEHB62
	.uleb128 L695-LFB6950
	.uleb128 0
	.uleb128 LEHB63-LFB6950
	.uleb128 LEHE63-LEHB63
	.uleb128 L671-LFB6950
	.uleb128 0
	.uleb128 LEHB64-LFB6950
	.uleb128 LEHE64-LEHB64
	.uleb128 L698-LFB6950
	.uleb128 0
	.uleb128 LEHB65-LFB6950
	.uleb128 LEHE65-LEHB65
	.uleb128 L672-LFB6950
	.uleb128 0
	.uleb128 LEHB66-LFB6950
	.uleb128 LEHE66-LEHB66
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB67-LFB6950
	.uleb128 LEHE67-LEHB67
	.uleb128 L671-LFB6950
	.uleb128 0
	.uleb128 LEHB68-LFB6950
	.uleb128 LEHE68-LEHB68
	.uleb128 L668-LFB6950
	.uleb128 0
	.uleb128 LEHB69-LFB6950
	.uleb128 LEHE69-LEHB69
	.uleb128 L664-LFB6950
	.uleb128 0
	.uleb128 LEHB70-LFB6950
	.uleb128 LEHE70-LEHB70
	.uleb128 L671-LFB6950
	.uleb128 0
	.uleb128 LEHB71-LFB6950
	.uleb128 LEHE71-LEHB71
	.uleb128 L668-LFB6950
	.uleb128 0
	.uleb128 LEHB72-LFB6950
	.uleb128 LEHE72-LEHB72
	.uleb128 L664-LFB6950
	.uleb128 0
	.uleb128 LEHB73-LFB6950
	.uleb128 LEHE73-LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB74-LFB6950
	.uleb128 LEHE74-LEHB74
	.uleb128 L661-LFB6950
	.uleb128 0
	.uleb128 LEHB75-LFB6950
	.uleb128 LEHE75-LEHB75
	.uleb128 L662-LFB6950
	.uleb128 0
	.uleb128 LEHB76-LFB6950
	.uleb128 LEHE76-LEHB76
	.uleb128 L661-LFB6950
	.uleb128 0
	.uleb128 LEHB77-LFB6950
	.uleb128 LEHE77-LEHB77
	.uleb128 L675-LFB6950
	.uleb128 0
	.uleb128 LEHB78-LFB6950
	.uleb128 LEHE78-LEHB78
	.uleb128 L678-LFB6950
	.uleb128 0
	.uleb128 LEHB79-LFB6950
	.uleb128 LEHE79-LEHB79
	.uleb128 L693-LFB6950
	.uleb128 0
	.uleb128 LEHB80-LFB6950
	.uleb128 LEHE80-LEHB80
	.uleb128 L681-LFB6950
	.uleb128 0
	.uleb128 LEHB81-LFB6950
	.uleb128 LEHE81-LEHB81
	.uleb128 L687-LFB6950
	.uleb128 0
	.uleb128 LEHB82-LFB6950
	.uleb128 LEHE82-LEHB82
	.uleb128 L699-LFB6950
	.uleb128 0
	.uleb128 LEHB83-LFB6950
	.uleb128 LEHE83-LEHB83
	.uleb128 L696-LFB6950
	.uleb128 0
	.uleb128 LEHB84-LFB6950
	.uleb128 LEHE84-LEHB84
	.uleb128 L684-LFB6950
	.uleb128 0
	.uleb128 LEHB85-LFB6950
	.uleb128 LEHE85-LEHB85
	.uleb128 L690-LFB6950
	.uleb128 0
	.uleb128 LEHB86-LFB6950
	.uleb128 LEHE86-LEHB86
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB87-LFB6950
	.uleb128 LEHE87-LEHB87
	.uleb128 L697-LFB6950
	.uleb128 0
	.uleb128 LEHB88-LFB6950
	.uleb128 LEHE88-LEHB88
	.uleb128 L695-LFB6950
	.uleb128 0
	.uleb128 LEHB89-LFB6950
	.uleb128 LEHE89-LEHB89
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB90-LFB6950
	.uleb128 LEHE90-LEHB90
	.uleb128 L661-LFB6950
	.uleb128 0
	.uleb128 LEHB91-LFB6950
	.uleb128 LEHE91-LEHB91
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB92-LFB6950
	.uleb128 LEHE92-LEHB92
	.uleb128 L691-LFB6950
	.uleb128 0
	.uleb128 LEHB93-LFB6950
	.uleb128 LEHE93-LEHB93
	.uleb128 L689-LFB6950
	.uleb128 0
	.uleb128 LEHB94-LFB6950
	.uleb128 LEHE94-LEHB94
	.uleb128 L685-LFB6950
	.uleb128 0
	.uleb128 LEHB95-LFB6950
	.uleb128 LEHE95-LEHB95
	.uleb128 L683-LFB6950
	.uleb128 0
	.uleb128 LEHB96-LFB6950
	.uleb128 LEHE96-LEHB96
	.uleb128 L662-LFB6950
	.uleb128 0
	.uleb128 LEHB97-LFB6950
	.uleb128 LEHE97-LEHB97
	.uleb128 L688-LFB6950
	.uleb128 0
	.uleb128 LEHB98-LFB6950
	.uleb128 LEHE98-LEHB98
	.uleb128 L686-LFB6950
	.uleb128 0
	.uleb128 LEHB99-LFB6950
	.uleb128 LEHE99-LEHB99
	.uleb128 L694-LFB6950
	.uleb128 0
	.uleb128 LEHB100-LFB6950
	.uleb128 LEHE100-LEHB100
	.uleb128 L692-LFB6950
	.uleb128 0
	.uleb128 LEHB101-LFB6950
	.uleb128 LEHE101-LEHB101
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB102-LFB6950
	.uleb128 LEHE102-LEHB102
	.uleb128 L676-LFB6950
	.uleb128 0
	.uleb128 LEHB103-LFB6950
	.uleb128 LEHE103-LEHB103
	.uleb128 L674-LFB6950
	.uleb128 0
	.uleb128 LEHB104-LFB6950
	.uleb128 LEHE104-LEHB104
	.uleb128 L682-LFB6950
	.uleb128 0
	.uleb128 LEHB105-LFB6950
	.uleb128 LEHE105-LEHB105
	.uleb128 L680-LFB6950
	.uleb128 0
	.uleb128 LEHB106-LFB6950
	.uleb128 LEHE106-LEHB106
	.uleb128 L679-LFB6950
	.uleb128 0
	.uleb128 LEHB107-LFB6950
	.uleb128 LEHE107-LEHB107
	.uleb128 L677-LFB6950
	.uleb128 0
	.uleb128 LEHB108-LFB6950
	.uleb128 LEHE108-LEHB108
	.uleb128 L700-LFB6950
	.uleb128 0
	.uleb128 LEHB109-LFB6950
	.uleb128 LEHE109-LEHB109
	.uleb128 L698-LFB6950
	.uleb128 0
LLSDACSE6950:
	.section __TEXT,__text_startup,regular,pure_instructions
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
	.globl __ZTS12FreeListSlabILm520ELm4EE
	.weak_definition __ZTS12FreeListSlabILm520ELm4EE
	.const
	.align	3
__ZTS12FreeListSlabILm520ELm4EE:
	.ascii "12FreeListSlabILm520ELm4EE\0"
	.globl __ZTI12FreeListSlabILm520ELm4EE
	.weak_definition __ZTI12FreeListSlabILm520ELm4EE
	.const_data
	.align	3
__ZTI12FreeListSlabILm520ELm4EE:
; <anonymous>:
; <anonymous>:
	.xword	__ZTVN10__cxxabiv120__si_class_type_infoE+16
; <anonymous>:
	.xword	__ZTS12FreeListSlabILm520ELm4EE
; <anonymous>:
	.xword	__ZTINSt3pmr15memory_resourceE
	.globl __ZTS12FreeListSlabILm520ELm2EE
	.weak_definition __ZTS12FreeListSlabILm520ELm2EE
	.const
	.align	3
__ZTS12FreeListSlabILm520ELm2EE:
	.ascii "12FreeListSlabILm520ELm2EE\0"
	.globl __ZTI12FreeListSlabILm520ELm2EE
	.weak_definition __ZTI12FreeListSlabILm520ELm2EE
	.const_data
	.align	3
__ZTI12FreeListSlabILm520ELm2EE:
; <anonymous>:
; <anonymous>:
	.xword	__ZTVN10__cxxabiv120__si_class_type_infoE+16
; <anonymous>:
	.xword	__ZTS12FreeListSlabILm520ELm2EE
; <anonymous>:
	.xword	__ZTINSt3pmr15memory_resourceE
	.globl __ZTV12FreeListSlabILm520ELm4EE
	.weak_definition __ZTV12FreeListSlabILm520ELm4EE
	.align	3
__ZTV12FreeListSlabILm520ELm4EE:
	.xword	0
	.xword	__ZTI12FreeListSlabILm520ELm4EE
	.xword	__ZN12FreeListSlabILm520ELm4EED1Ev
	.xword	__ZN12FreeListSlabILm520ELm4EED0Ev
	.xword	__ZN12FreeListSlabILm520ELm4EE11do_allocateEmm
	.xword	__ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm
	.xword	__ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE
	.globl __ZTV12FreeListSlabILm520ELm2EE
	.weak_definition __ZTV12FreeListSlabILm520ELm2EE
	.align	3
__ZTV12FreeListSlabILm520ELm2EE:
	.xword	0
	.xword	__ZTI12FreeListSlabILm520ELm2EE
	.xword	__ZN12FreeListSlabILm520ELm2EED1Ev
	.xword	__ZN12FreeListSlabILm520ELm2EED0Ev
	.xword	__ZN12FreeListSlabILm520ELm2EE11do_allocateEmm
	.xword	__ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm
	.xword	__ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE
	.globl __ZN2fx6detail12effect_tag_vI4TickEE
	.weak_definition __ZN2fx6detail12effect_tag_vI4TickEE
	.const
__ZN2fx6detail12effect_tag_vI4TickEE:
	.space 1
	.zerofill __DATA,__bss,__ZGVZ4mainE9mini_slab,8,3
	.zerofill __DATA,__bss,__ZZ4mainE9mini_slab,1088,4
	.zerofill __DATA,__bss,__ZGVZ4mainE4slab,8,3
	.zerofill __DATA,__bss,__ZZ4mainE4slab,2144,4
	.zerofill __DATA,__bss,__ZZ4mainE4sbuf,66056,0
	.zerofill __DATA,__bss,__ZStL8__ioinit,1,0
	.literal16
	.align	4
lC2:
	.xword	66056
	.xword	99084
	.align	4
lC37:
	.xword	65536
	.xword	98304
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
	.quad	LFB8095-.
	.set L$set$2,LFE8095-LFB8095
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
	.quad	LFB8137-.
	.set L$set$4,LFE8137-LFB8137
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
	.quad	LFB9053-.
	.set L$set$6,LFE9053-LFB9053
	.quad L$set$6
	.uleb128 0x8
	.quad	LLSDA9053-.
	.byte	0x4
	.set L$set$7,LCFI0-LFB9053
	.long L$set$7
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
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
	.quad	LFB9054-.
	.set L$set$11,LFE9054-LFB9054
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
	.quad	LFB9056-.
	.set L$set$13,LFE9056-LFB9056
	.quad L$set$13
	.uleb128 0x8
	.quad	LLSDA9056-.
	.byte	0x4
	.set L$set$14,LCFI3-LFB9056
	.long L$set$14
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
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
	.align	3
LEFDE9:
LSFDE11:
	.set L$set$17,LEFDE11-LASFDE11
	.long L$set$17
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB9057-.
	.set L$set$18,LFE9057-LFB9057
	.quad L$set$18
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE11:
LSFDE13:
	.set L$set$19,LEFDE13-LASFDE13
	.long L$set$19
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB7007-.
	.set L$set$20,LFE7007-LFB7007
	.quad L$set$20
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE13:
LSFDE15:
	.set L$set$21,LEFDE15-LASFDE15
	.long L$set$21
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB6978-.
	.set L$set$22,LFE6978-LFB6978
	.quad L$set$22
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE15:
LSFDE17:
	.set L$set$23,LEFDE17-LASFDE17
	.long L$set$23
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB7008-.
	.set L$set$24,LFE7008-LFB7008
	.quad L$set$24
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$25,LCFI6-LFB7008
	.long L$set$25
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$26,LCFI7-LCFI6
	.long L$set$26
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$27,LCFI8-LCFI7
	.long L$set$27
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.set L$set$28,LCFI9-LCFI8
	.long L$set$28
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE17:
LSFDE19:
	.set L$set$29,LEFDE19-LASFDE19
	.long L$set$29
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB6979-.
	.set L$set$30,LFE6979-LFB6979
	.quad L$set$30
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$31,LCFI10-LFB6979
	.long L$set$31
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$32,LCFI11-LCFI10
	.long L$set$32
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$33,LCFI12-LCFI11
	.long L$set$33
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.set L$set$34,LCFI13-LCFI12
	.long L$set$34
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE19:
LSFDE21:
	.set L$set$35,LEFDE21-LASFDE21
	.long L$set$35
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB6948-.
	.set L$set$36,LFE6948-LFB6948
	.quad L$set$36
	.uleb128 0x8
	.quad	LLSDA6948-.
	.byte	0x4
	.set L$set$37,LCFI14-LFB6948
	.long L$set$37
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$38,LCFI15-LCFI14
	.long L$set$38
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$39,LCFI16-LCFI15
	.long L$set$39
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$40,LCFI17-LCFI16
	.long L$set$40
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$41,LCFI18-LCFI17
	.long L$set$41
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$42,LCFI19-LCFI18
	.long L$set$42
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$43,LCFI20-LCFI19
	.long L$set$43
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE21:
LSFDE23:
	.set L$set$44,LEFDE23-LASFDE23
	.long L$set$44
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB9055-.
	.set L$set$45,LFE9055-LFB9055
	.quad L$set$45
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE23:
LSFDE25:
	.set L$set$46,LEFDE25-LASFDE25
	.long L$set$46
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB9052-.
	.set L$set$47,LFE9052-LFB9052
	.quad L$set$47
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE25:
LSFDE27:
	.set L$set$48,LEFDE27-LASFDE27
	.long L$set$48
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB9846-.
	.set L$set$49,LFE9846-LFB9846
	.quad L$set$49
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$50,LCFI21-LFB9846
	.long L$set$50
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$51,LCFI22-LCFI21
	.long L$set$51
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$52,LCFI23-LCFI22
	.long L$set$52
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.set L$set$53,LCFI24-LCFI23
	.long L$set$53
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE27:
LSFDE29:
	.set L$set$54,LEFDE29-LASFDE29
	.long L$set$54
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB9848-.
	.set L$set$55,LFE9848-LFB9848
	.quad L$set$55
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$56,LCFI25-LFB9848
	.long L$set$56
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$57,LCFI26-LCFI25
	.long L$set$57
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$58,LCFI27-LCFI26
	.long L$set$58
	.byte	0x95
	.uleb128 0x4
	.byte	0x4
	.set L$set$59,LCFI28-LCFI27
	.long L$set$59
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$60,LCFI29-LCFI28
	.long L$set$60
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
	.set L$set$61,LCFI30-LCFI29
	.long L$set$61
	.byte	0xb
	.align	3
LEFDE29:
LSFDE31:
	.set L$set$62,LEFDE31-LASFDE31
	.long L$set$62
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB6921-.
	.set L$set$63,LFE6921-LFB6921
	.quad L$set$63
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$64,LCFI31-LFB6921
	.long L$set$64
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$65,LCFI32-LCFI31
	.long L$set$65
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$66,LCFI33-LCFI32
	.long L$set$66
	.byte	0x93
	.uleb128 0x2
	.byte	0x94
	.uleb128 0x1
	.byte	0x4
	.set L$set$67,LCFI34-LCFI33
	.long L$set$67
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$68,LCFI35-LCFI34
	.long L$set$68
	.byte	0xb
	.align	3
LEFDE31:
LSFDE33:
	.set L$set$69,LEFDE33-LASFDE33
	.long L$set$69
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB9853-.
	.set L$set$70,LFE9853-LFB9853
	.quad L$set$70
	.uleb128 0x8
	.quad	LLSDA9853-.
	.byte	0x4
	.set L$set$71,LCFI36-LFB9853
	.long L$set$71
	.byte	0xe
	.uleb128 0xf0
	.byte	0x9d
	.uleb128 0x1e
	.byte	0x9e
	.uleb128 0x1d
	.byte	0x4
	.set L$set$72,LCFI37-LCFI36
	.long L$set$72
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$73,LCFI38-LCFI37
	.long L$set$73
	.byte	0x93
	.uleb128 0x1c
	.byte	0x94
	.uleb128 0x1b
	.byte	0x95
	.uleb128 0x1a
	.byte	0x96
	.uleb128 0x19
	.byte	0x97
	.uleb128 0x18
	.byte	0x98
	.uleb128 0x17
	.byte	0x4
	.set L$set$74,LCFI39-LCFI38
	.long L$set$74
	.byte	0x99
	.uleb128 0x16
	.byte	0x4
	.set L$set$75,LCFI40-LCFI39
	.long L$set$75
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
	.set L$set$76,LCFI41-LCFI40
	.long L$set$76
	.byte	0xb
	.align	3
LEFDE33:
LSFDE35:
	.set L$set$77,LEFDE35-LASFDE35
	.long L$set$77
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB9855-.
	.set L$set$78,LFE9855-LFB9855
	.quad L$set$78
	.uleb128 0x8
	.quad	LLSDA9855-.
	.byte	0x4
	.set L$set$79,LCFI42-LFB9855
	.long L$set$79
	.byte	0xe
	.uleb128 0x90
	.byte	0x9d
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x11
	.byte	0x4
	.set L$set$80,LCFI43-LCFI42
	.long L$set$80
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$81,LCFI44-LCFI43
	.long L$set$81
	.byte	0x93
	.uleb128 0x10
	.byte	0x94
	.uleb128 0xf
	.byte	0x95
	.uleb128 0xe
	.byte	0x96
	.uleb128 0xd
	.byte	0x4
	.set L$set$82,LCFI45-LCFI44
	.long L$set$82
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$83,LCFI46-LCFI45
	.long L$set$83
	.byte	0xb
	.align	3
LEFDE35:
LSFDE37:
	.set L$set$84,LEFDE37-LASFDE37
	.long L$set$84
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB9856-.
	.set L$set$85,LFE9856-LFB9856
	.quad L$set$85
	.uleb128 0x8
	.quad	LLSDA9856-.
	.byte	0x4
	.set L$set$86,LCFI47-LFB9856
	.long L$set$86
	.byte	0xe
	.uleb128 0xf0
	.byte	0x9d
	.uleb128 0x1e
	.byte	0x9e
	.uleb128 0x1d
	.byte	0x4
	.set L$set$87,LCFI48-LCFI47
	.long L$set$87
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$88,LCFI49-LCFI48
	.long L$set$88
	.byte	0x93
	.uleb128 0x1c
	.byte	0x94
	.uleb128 0x1b
	.byte	0x95
	.uleb128 0x1a
	.byte	0x96
	.uleb128 0x19
	.byte	0x97
	.uleb128 0x18
	.byte	0x98
	.uleb128 0x17
	.byte	0x4
	.set L$set$89,LCFI50-LCFI49
	.long L$set$89
	.byte	0x99
	.uleb128 0x16
	.byte	0x4
	.set L$set$90,LCFI51-LCFI50
	.long L$set$90
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
	.set L$set$91,LCFI52-LCFI51
	.long L$set$91
	.byte	0xb
	.align	3
LEFDE37:
LSFDE39:
	.set L$set$92,LEFDE39-LASFDE39
	.long L$set$92
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB6992-.
	.set L$set$93,LFE6992-LFB6992
	.quad L$set$93
	.uleb128 0x8
	.quad	LLSDA6992-.
	.byte	0x4
	.set L$set$94,LCFI53-LFB6992
	.long L$set$94
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$95,LCFI54-LCFI53
	.long L$set$95
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$96,LCFI55-LCFI54
	.long L$set$96
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$97,LCFI56-LCFI55
	.long L$set$97
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$98,LCFI57-LCFI56
	.long L$set$98
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$99,LCFI58-LCFI57
	.long L$set$99
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$100,LCFI59-LCFI58
	.long L$set$100
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE39:
LSFDE41:
	.set L$set$101,LEFDE41-LASFDE41
	.long L$set$101
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB6993-.
	.set L$set$102,LFE6993-LFB6993
	.quad L$set$102
	.uleb128 0x8
	.quad	LLSDA6993-.
	.byte	0x4
	.set L$set$103,LCFI60-LFB6993
	.long L$set$103
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$104,LCFI61-LCFI60
	.long L$set$104
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$105,LCFI62-LCFI61
	.long L$set$105
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$106,LCFI63-LCFI62
	.long L$set$106
	.byte	0xb
	.byte	0x4
	.set L$set$107,LCFI64-LCFI63
	.long L$set$107
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$108,LCFI65-LCFI64
	.long L$set$108
	.byte	0xb
	.byte	0x4
	.set L$set$109,LCFI66-LCFI65
	.long L$set$109
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE41:
LSFDE43:
	.set L$set$110,LEFDE43-LASFDE43
	.long L$set$110
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB6949-.
	.set L$set$111,LFE6949-LFB6949
	.quad L$set$111
	.uleb128 0x8
	.quad	LLSDA6949-.
	.byte	0x4
	.set L$set$112,LCFI67-LFB6949
	.long L$set$112
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$113,LCFI68-LCFI67
	.long L$set$113
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$114,LCFI69-LCFI68
	.long L$set$114
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$115,LCFI70-LCFI69
	.long L$set$115
	.byte	0xb
	.byte	0x4
	.set L$set$116,LCFI71-LCFI70
	.long L$set$116
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$117,LCFI72-LCFI71
	.long L$set$117
	.byte	0xb
	.byte	0x4
	.set L$set$118,LCFI73-LCFI72
	.long L$set$118
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE43:
LSFDE45:
	.set L$set$119,LEFDE45-LASFDE45
	.long L$set$119
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB2842-.
	.set L$set$120,LFE2842-LFB2842
	.quad L$set$120
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$121,LCFI74-LFB2842
	.long L$set$121
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$122,LCFI75-LCFI74
	.long L$set$122
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$123,LCFI76-LCFI75
	.long L$set$123
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE45:
LSFDE47:
	.set L$set$124,LEFDE47-LASFDE47
	.long L$set$124
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB2804-.
	.set L$set$125,LFE2804-LFB2804
	.quad L$set$125
	.uleb128 0x8
	.quad	LLSDA2804-.
	.byte	0x4
	.set L$set$126,LCFI77-LFB2804
	.long L$set$126
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$127,LCFI78-LCFI77
	.long L$set$127
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$128,LCFI79-LCFI78
	.long L$set$128
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$129,LCFI80-LCFI79
	.long L$set$129
	.byte	0xd3
	.byte	0x4
	.set L$set$130,LCFI81-LCFI80
	.long L$set$130
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$131,LCFI82-LCFI81
	.long L$set$131
	.byte	0xb
	.byte	0x4
	.set L$set$132,LCFI83-LCFI82
	.long L$set$132
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$133,LCFI84-LCFI83
	.long L$set$133
	.byte	0xb
	.byte	0x4
	.set L$set$134,LCFI85-LCFI84
	.long L$set$134
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$135,LCFI86-LCFI85
	.long L$set$135
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE47:
LSFDE49:
	.set L$set$136,LEFDE49-LASFDE49
	.long L$set$136
LASFDE49:
	.long	LASFDE49-EH_frame1
	.quad	LFB6909-.
	.set L$set$137,LFE6909-LFB6909
	.quad L$set$137
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$138,LCFI87-LFB6909
	.long L$set$138
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$139,LCFI88-LCFI87
	.long L$set$139
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$140,LCFI89-LCFI88
	.long L$set$140
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$141,LCFI90-LCFI89
	.long L$set$141
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x4
	.set L$set$142,LCFI91-LCFI90
	.long L$set$142
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
LEFDE49:
LSFDE51:
	.set L$set$143,LEFDE51-LASFDE51
	.long L$set$143
LASFDE51:
	.long	LASFDE51-EH_frame1
	.quad	LFB6910-.
	.set L$set$144,LFE6910-LFB6910
	.quad L$set$144
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$145,LCFI92-LFB6910
	.long L$set$145
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$146,LCFI93-LCFI92
	.long L$set$146
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$147,LCFI94-LCFI93
	.long L$set$147
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$148,LCFI95-LCFI94
	.long L$set$148
	.byte	0x95
	.uleb128 0x2
	.byte	0x4
	.set L$set$149,LCFI96-LCFI95
	.long L$set$149
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE51:
LSFDE53:
	.set L$set$150,LEFDE53-LASFDE53
	.long L$set$150
LASFDE53:
	.long	LASFDE53-EH_frame1
	.quad	LFB8607-.
	.set L$set$151,LFE8607-LFB8607
	.quad L$set$151
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$152,LCFI97-LFB8607
	.long L$set$152
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$153,LCFI98-LCFI97
	.long L$set$153
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$154,LCFI99-LCFI98
	.long L$set$154
	.byte	0x99
	.uleb128 0x4
	.byte	0x9a
	.uleb128 0x3
	.byte	0x4
	.set L$set$155,LCFI100-LCFI99
	.long L$set$155
	.byte	0x93
	.uleb128 0xa
	.byte	0x94
	.uleb128 0x9
	.byte	0x4
	.set L$set$156,LCFI101-LCFI100
	.long L$set$156
	.byte	0x95
	.uleb128 0x8
	.byte	0x96
	.uleb128 0x7
	.byte	0x4
	.set L$set$157,LCFI102-LCFI101
	.long L$set$157
	.byte	0x97
	.uleb128 0x6
	.byte	0x98
	.uleb128 0x5
	.byte	0x9b
	.uleb128 0x2
	.byte	0x9c
	.uleb128 0x1
	.byte	0x4
	.set L$set$158,LCFI103-LCFI102
	.long L$set$158
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
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$159,LCFI104-LCFI103
	.long L$set$159
	.byte	0xb
	.align	3
LEFDE53:
LSFDE55:
	.set L$set$160,LEFDE55-LASFDE55
	.long L$set$160
LASFDE55:
	.long	LASFDE55-EH_frame1
	.quad	LFB9838-.
	.set L$set$161,LFE9838-LFB9838
	.quad L$set$161
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$162,LCFI105-LFB9838
	.long L$set$162
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$163,LCFI106-LCFI105
	.long L$set$163
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$164,LCFI107-LCFI106
	.long L$set$164
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE55:
LSFDE57:
	.set L$set$165,LEFDE57-LASFDE57
	.long L$set$165
LASFDE57:
	.long	LASFDE57-EH_frame1
	.quad	LFB6950-.
	.set L$set$166,LFE6950-LFB6950
	.quad L$set$166
	.uleb128 0x8
	.quad	LLSDA6950-.
	.byte	0x4
	.set L$set$167,LCFI108-LFB6950
	.long L$set$167
	.byte	0xe
	.uleb128 0x270
	.byte	0x4
	.set L$set$168,LCFI109-LCFI108
	.long L$set$168
	.byte	0x9d
	.uleb128 0x4e
	.byte	0x9e
	.uleb128 0x4d
	.byte	0x4
	.set L$set$169,LCFI110-LCFI109
	.long L$set$169
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$170,LCFI111-LCFI110
	.long L$set$170
	.byte	0x93
	.uleb128 0x4c
	.byte	0x94
	.uleb128 0x4b
	.byte	0x95
	.uleb128 0x4a
	.byte	0x96
	.uleb128 0x49
	.byte	0x97
	.uleb128 0x48
	.byte	0x98
	.uleb128 0x47
	.byte	0x99
	.uleb128 0x46
	.byte	0x9a
	.uleb128 0x45
	.byte	0x9b
	.uleb128 0x44
	.byte	0x9c
	.uleb128 0x43
	.byte	0x5
	.uleb128 0x48
	.uleb128 0x42
	.byte	0x5
	.uleb128 0x49
	.uleb128 0x41
	.byte	0x5
	.uleb128 0x4a
	.uleb128 0x40
	.byte	0x5
	.uleb128 0x4b
	.uleb128 0x3f
	.byte	0x5
	.uleb128 0x4c
	.uleb128 0x3e
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x3d
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x3c
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x3b
	.byte	0x4
	.set L$set$171,LCFI112-LCFI111
	.long L$set$171
	.byte	0xa
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
	.byte	0xdd
	.byte	0xde
	.byte	0x6
	.uleb128 0x4e
	.byte	0x6
	.uleb128 0x4f
	.byte	0x6
	.uleb128 0x4c
	.byte	0x6
	.uleb128 0x4d
	.byte	0x6
	.uleb128 0x4a
	.byte	0x6
	.uleb128 0x4b
	.byte	0x6
	.uleb128 0x48
	.byte	0x6
	.uleb128 0x49
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$172,LCFI113-LCFI112
	.long L$set$172
	.byte	0xb
	.align	3
LEFDE57:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_b6_allocators.cpp
	.subsections_via_symbols
