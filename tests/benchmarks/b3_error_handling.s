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
__ZL7opt_divii:
LFB6965:
	sub	sp, sp, #16	;,,
LCFI0:
; b3_error_handling.cpp:57:   if (b == 0) return std::nullopt;
	cbnz	w1, L4	; b,
; b3_error_handling.cpp:57:   if (b == 0) return std::nullopt;
	str	xzr, [sp, 8]	;, D.206101
; b3_error_handling.cpp:59: }
	ldr	x0, [sp, 8]	;, D.206101
	add	sp, sp, 16	;,,
LCFI1:
	ret	
	.p2align 2,,3
L4:
LCFI2:
; b3_error_handling.cpp:58:   return a / b;
	sdiv	w0, w0, w1	; _1, a, b
; b3_error_handling.cpp:58:   return a / b;
	mov	w1, 1	; tmp106,
	strb	w1, [sp, 12]	; tmp106, MEM <unsigned char> [(struct optional *)&D.206101 + 4B]
	str	w0, [sp, 8]	; _1, MEM <int> [(struct optional *)&D.206101]
; b3_error_handling.cpp:59: }
	ldr	x0, [sp, 8]	;, D.206101
	add	sp, sp, 16	;,,
LCFI3:
	ret	
LFE6965:
	.cstring
	.align	3
lC0:
	.ascii "div/0\0"
	.text
	.align	2
	.p2align 5,,15
__ZL7exc_divii:
LFB6958:
; b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	cbz	w1, L15	; b,
; b3_error_handling.cpp:42:   return a / b;
	sdiv	w0, w0, w1	; _3, a, b
; b3_error_handling.cpp:43: }
	ret	
L15:
; b3_error_handling.cpp:40: [[gnu::noinline]] static int exc_div(int a, int b) {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI4:
; b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	mov	x0, 16	;,
; b3_error_handling.cpp:40: [[gnu::noinline]] static int exc_div(int a, int b) {
	mov	x29, sp	;,
LCFI5:
	stp	x19, x20, [sp, 16]	;,,
LCFI6:
; b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	bl	___cxa_allocate_exception		;
; b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	adrp	x1, lC0@PAGE	; tmp108,
; b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	mov	x20, x0	; _6,
; b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	add	x1, x1, lC0@PAGEOFF;	;, tmp108,
LEHB0:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE0:
; b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x20	;, _6
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB1:
	bl	___cxa_throw		;
L10:
; b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	mov	x19, x0	; tmp116,
	mov	x0, x20	;, _6
	bl	___cxa_free_exception		;
	mov	x0, x19	;, tmp116
	bl	__Unwind_Resume		;
LEHE1:
LFE6958:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
LLSDA6958:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6958-LLSDACSB6958
LLSDACSB6958:
	.uleb128 LEHB0-LFB6958
	.uleb128 LEHE0-LEHB0
	.uleb128 L10-LFB6958
	.uleb128 0
	.uleb128 LEHB1-LFB6958
	.uleb128 LEHE1-LEHB1
	.uleb128 0
	.uleb128 0
LLSDACSE6958:
	.text
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
	bhi	L19		;,
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
	bhi	L19		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x3, x3, x7	; _6, _22, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x4	; <retval>, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x3, x3, x4	; prephitmp_1, _6, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x4, x3, [x5, 8]	; <retval>, prephitmp_1,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x4, L19	; <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x3, x3, x1	; _10, prephitmp_1, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x4, x1	; _8, <retval>, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x3, [x5, 8]	; _8, _10,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:430:     }
	ret	
	.p2align 2,,3
L19:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:416:     do_allocate(size_t __bytes, size_t __alignment) override
	stp	x29, x30, [sp, -32]!	;,,,
LCFI7:
	mov	x29, sp	;,
LCFI8:
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
LCFI9:
	ret	
LFE4726:
	.align	2
	.p2align 5,,15
	.globl __ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.weak_definition __ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
__ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
LFB8148:
	stp	x29, x30, [sp, -96]!	;,,,
LCFI10:
	mov	x29, sp	;,
LCFI11:
	stp	x21, x22, [sp, 32]	;,,
LCFI12:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x21, x29, 80	; tmp138,,
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x19, x20, [sp, 16]	;,,
LCFI13:
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	mov	x19, x1	; D.175118, D.175118
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x21, [x29, 64]	; tmp138, MEM[(struct _Alloc_hider *)&D.208937]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldp	x1, x20, [x1]	; _6, __sz,* D.175118
; ../../effects.hpp:697:       auto &hh =
	ldr	x22, [x0, 16]	; hh, MEM[(struct HandlerNode *)_2(D)].real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x2, x20, 1	; _37, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:289:       if (__n > size_type(_S_local_capacity))
	cmp	x20, 15	; __sz,
	bhi	L36		;,
	mov	x0, x21	; _34, tmp138
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cbz	x20, L37	; __sz,
L28:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x20, [x29, 64]	; pretmp_22, MEM[(const struct basic_string *)&D.208937]._M_dataplus._M_p
L29:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x0, [x19, 40]	; _9, MEM[(const struct coroutine_handle *)_3(D) + 40B]._M_fr_ptr
; ../common.hpp:66:   void handle(Fail, auto r) { r(fallback); }
	ldr	w1, [x22]	;, hh_5->fallback
; ../../effects.hpp:1229:   pa->result_ = std::move(v);
	str	w1, [x19, 32]	; _8, MEM[(struct PerformAwaitable *)_3(D)].result_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)_9], MEM[(void (*<T11f>) (void *) *)_9]
LEHB2:
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_9]
LEHE2:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x21	; pretmp_22, tmp138
	beq	L26		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 80]	; MEM[(struct basic_string *)&D.208937].D.56371._M_allocated_capacity, MEM[(struct basic_string *)&D.208937].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x20	;, pretmp_22
	add	x1, x1, 1	;, MEM[(struct basic_string *)&D.208937].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L26:
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 96	;,,,
LCFI14:
	ret	
	.p2align 2,,3
L37:
LCFI15:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x1]	;, MEM[(const char_type &)_6]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	mov	x20, x21	; pretmp_22, tmp138
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x29, 80]	; MEM[(const char_type &)_6], MEM[(char_type &)&D.208937 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L29		;
	.p2align 2,,3
L36:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, x2	;, _37
	stp	x1, x2, [x29, 48]	; _6, _37,
LEHB3:
	bl	__Znwm		;
	ldp	x1, x2, [x29, 48]	; _6, _37,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x0, [x29, 64]	; _34, MEM[(struct basic_string *)&D.208937]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x20, [x29, 80]	; __sz, MEM[(struct basic_string *)&D.208937].D.56371._M_allocated_capacity
	b	L28		;
L34:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	mov	x19, x0	; tmp142,
	cmp	x20, x21	; pretmp_22, tmp138
	bne	L38		;,
L32:
	mov	x0, x19	;, tmp142
	bl	__Unwind_Resume		;
LEHE3:
L38:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 80]	; MEM[(struct basic_string *)&D.208937].D.56371._M_allocated_capacity, MEM[(struct basic_string *)&D.208937].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x20	;, pretmp_22
	add	x1, x1, 1	;, MEM[(struct basic_string *)&D.208937].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L32		;
LFE8148:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
LLSDA8148:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE8148-LLSDACSB8148
LLSDACSB8148:
	.uleb128 LEHB2-LFB8148
	.uleb128 LEHE2-LEHB2
	.uleb128 L34-LFB8148
	.uleb128 0
	.uleb128 LEHB3-LFB8148
	.uleb128 LEHE3-LEHB3
	.uleb128 0
	.uleb128 0
LLSDACSE8148:
	.text
	.cstring
	.align	3
lC1:
	.ascii "vector::_M_realloc_append\0"
	.text
	.align	2
	.p2align 5,,15
__ZL10make_pairsii.constprop.0:
LFB9860:
	stp	x29, x30, [sp, -112]!	;,,,
LCFI16:
	mov	x29, sp	;,
LCFI17:
	stp	x19, x20, [sp, 16]	;,,
LCFI18:
	mov	w20, w0	; fail_every, fail_every
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 40000	;,
; b3_error_handling.cpp:28: static std::vector<Pair> make_pairs(int n, int fail_every) {
	stp	x21, x22, [sp, 32]	;,,
LCFI19:
	mov	x21, x8	; <retval>, <retval>
	stp	x23, x24, [sp, 48]	;,,
	stp	x25, x26, [sp, 64]	;,,
	stp	x27, x28, [sp, 80]	;,,
LCFI20:
; b3_error_handling.cpp:29:   std::vector<Pair> v;
	stp	xzr, xzr, [x8]	; *v_1(D)
	str	xzr, [x8, 16]	;, *v_1(D)
LEHB4:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
	mov	x3, x0	; __new_finish, __new_finish
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x0, 40000	;,
	add	x2, x3, x0	; prephitmp_30, __new_finish,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:96: 	  this->_M_impl._M_start = __tmp;
	stp	x3, x3, [x21]	; __new_finish, __new_finish,* <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:98: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	x2, [x21, 16]	; prephitmp_30, v_1(D)->D.156431._M_impl.D.155717._M_end_of_storage
	cbz	w20, L76	; fail_every,
; b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	mov	w19, 0	; i,
; b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	mov	w26, 7	; tmp270,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	mov	x28, 1152921504606846975	; tmp271,
; b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	mov	w25, 5000	; tmp272,
	b	L49		;
	.p2align 2,,3
L42:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	stp	w22, w1, [x3], 8	; _23, denom, __new_finish,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	str	x3, [x21, 8]	; __new_finish, v_1(D)->D.156431._M_impl.D.155717._M_finish
; b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	cmp	w19, w25	; i, tmp272
	beq	L39		;,
L49:
; b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	udiv	w1, w19, w20	; tmp161, i, fail_every
	msub	w1, w1, w20, w19	; denom, tmp161, fail_every, i
; b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	cbz	w1, L41	; denom,
; b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	udiv	w0, w19, w26	; tmp183, i, tmp270
	lsl	w1, w0, 3	; tmp186, tmp183,
	sub	w1, w1, w0	; tmp187, tmp186, tmp183
	sub	w1, w19, w1	; _29, i, tmp187
; b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	add	w1, w1, 1	; denom, _29,
L41:
; b3_error_handling.cpp:33:     v.push_back({i * 2 + 2, denom});
	add	w19, w19, 1	; i, i,
	lsl	w22, w19, 1	; _23, i,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x2, x3	; prephitmp_30, __new_finish
	bne	L42		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	ldr	x27, [x21]	; _22, MEM[(const struct vector *)v_1(D)].D.156431._M_impl.D.155717._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x24, x2, x27	; _46, prephitmp_30, _22
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	asr	x2, x24, 3	; __dif_4, _46,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	cmp	x2, x28	; __dif_4, tmp271
	beq	L43		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:263:       if (__a < __b)
	cmp	x2, 0	; __dif_4,
	csinc	x0, x2, xzr, ne	; _52, __dif_4,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2201: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x0, x0, x2	; __len_98, _52, __dif_4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2202: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x0, x28	; __len_98, tmp271
	csel	x0, x0, x28, ls	; __len_98, __len_98, tmp271,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x23, x0, 3	; _39, __len_98,
	mov	x0, x23	;, _39
	str	w1, [x29, 104]	; denom, %sfp
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	ldr	w1, [x29, 104]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:587: 				 std::__to_address(__new_start + __elems),
	add	x2, x0, x24	; _56, _42, _46
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x4, x0	; _42, _42
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w22, [x0, x24]	; _23, _56->a
	str	w1, [x2, 4]	; denom, _56->b
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	cbnz	x24, L44	; _46,
L48:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:601: 	    ++__new_finish;
	add	x3, x24, 8	; _87, _46,
	add	x3, x4, x3	; __new_finish, _42, _87
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1882: 	  if (_M_storage)
	cbz	x27, L47	; _22,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, x24	;, _46
	mov	x0, x27	;, _22
	stp	x4, x3, [x29, 96]	; _42, __new_finish,
	bl	__ZdlPvm		;
	ldp	x4, x3, [x29, 96]	; _42, __new_finish,
L47:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	x2, x4, x23	; prephitmp_30, _42, _39
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	stp	x4, x3, [x21]	; _42, __new_finish,* <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	str	x2, [x21, 16]	; prephitmp_30, v_1(D)->D.156431._M_impl.D.155717._M_end_of_storage
; b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	cmp	w19, w25	; i, tmp272
	bne	L49		;,
L39:
; b3_error_handling.cpp:36: }
	ldp	x19, x20, [sp, 16]	;,,
	mov	x0, x21	;, <retval>
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x27, x28, [sp, 80]	;,,
	ldp	x29, x30, [sp], 112	;,,,
LCFI21:
	ret	
L44:
LCFI22:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1337: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	x2, x24	;, _46
	mov	x1, x27	;, _22
	str	x0, [x29, 104]	; _42, %sfp
	bl	_memcpy		;
	ldr	x4, [x29, 104]	; _42, %sfp
	b	L48		;
L76:
; b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	mov	w27, 7	; tmp227,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	mov	x24, 1152921504606846975	; tmp273,
; b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	mov	w26, 5000	; tmp274,
	b	L40		;
	.p2align 2,,3
L77:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	stp	w22, w19, [x3], 8	; _9, denom, __new_finish,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	str	x3, [x21, 8]	; __new_finish, v_1(D)->D.156431._M_impl.D.155717._M_finish
L52:
; b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	cmp	w20, w26	; fail_every, tmp274
	beq	L39		;,
L40:
; b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	udiv	w0, w20, w27	; tmp226, fail_every, tmp227
	lsl	w19, w0, 3	; tmp229, tmp226,
	sub	w19, w19, w0	; tmp230, tmp229, tmp226
	sub	w19, w20, w19	; _6, fail_every, tmp230
; b3_error_handling.cpp:33:     v.push_back({i * 2 + 2, denom});
	add	w20, w20, 1	; fail_every, fail_every,
; b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	add	w19, w19, 1	; denom, _6,
; b3_error_handling.cpp:33:     v.push_back({i * 2 + 2, denom});
	lsl	w22, w20, 1	; _9, fail_every,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x2, x3	; prephitmp_30, __new_finish
	bne	L77		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	ldr	x28, [x21]	; _57, MEM[(const struct vector *)v_1(D)].D.156431._M_impl.D.155717._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sub	x25, x2, x28	; _71, prephitmp_30, _57
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	asr	x1, x25, 3	; __dif_59, _71,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2198: 	if (max_size() - size() < __n)
	cmp	x1, x24	; __dif_59, tmp273
	beq	L43		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_algobase.h:263:       if (__a < __b)
	cmp	x1, 0	; __dif_59,
	csinc	x0, x1, xzr, ne	; _61, __dif_59,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2201: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x0, x0, x1	; __len_62, _61, __dif_59
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2202: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	x0, x24	; __len_62, tmp273
	csel	x0, x0, x24, ls	; __len_62, __len_62, tmp273,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x0, x0, 3	; _78, __len_62,
	str	x0, [x29, 104]	; _78, %sfp
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:587: 				 std::__to_address(__new_start + __elems),
	add	x1, x0, x25	; _67, _79, _71
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w22, [x0, x25]	; _9, _67->a
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x23, x0	; _79, _79
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	str	w19, [x1, 4]	; denom, _67->b
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1325:       if (__count > 0)
	cbz	x25, L54	; _71,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_uninitialized.h:1337: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	x2, x25	;, _71
	mov	x1, x28	;, _57
	bl	_memcpy		;
L54:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:601: 	    ++__new_finish;
	add	x3, x25, 8	; _68, _71,
	add	x3, x23, x3	; __new_finish, _79, _68
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:1882: 	  if (_M_storage)
	cbz	x28, L55	; _57,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x1, x25	;, _71
	mov	x0, x28	;, _57
	str	x3, [x29, 96]	; __new_finish, %sfp
	bl	__ZdlPvm		;
	ldr	x3, [x29, 96]	; __new_finish, %sfp
L55:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	ldr	x0, [x29, 104]	; _78, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	stp	x23, x3, [x21]	; _79, __new_finish,* <retval>
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	x2, x23, x0	; prephitmp_30, _79, _78
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	str	x2, [x21, 16]	; prephitmp_30, v_1(D)->D.156431._M_impl.D.155717._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/vector.tcc:647:     }
	b	L52		;
L43:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:2199: 	  __throw_length_error(__N(__s));
	adrp	x0, lC1@PAGE	; tmp249,
	add	x0, x0, lC1@PAGEOFF;	;, tmp249,
	bl	__ZSt20__throw_length_errorPKc		;
LEHE4:
L58:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	ldr	x1, [x21]	; _11, MEM[(struct _Vector_base *)v_1(D)]._M_impl.D.155717._M_start
	mov	x19, x0	; tmp280,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x1, L57	; _11,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x2, [x21, 16]	; MEM[(struct _Vector_base *)v_1(D)]._M_impl.D.155717._M_end_of_storage, MEM[(struct _Vector_base *)v_1(D)]._M_impl.D.155717._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x1	;, _11
	sub	x1, x2, x1	;, MEM[(struct _Vector_base *)v_1(D)]._M_impl.D.155717._M_end_of_storage, _11
	bl	__ZdlPvm		;
L57:
	mov	x0, x19	;, tmp280
LEHB5:
	bl	__Unwind_Resume		;
LEHE5:
LFE9860:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
LLSDA9860:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE9860-LLSDACSB9860
LLSDACSB9860:
	.uleb128 LEHB4-LFB9860
	.uleb128 LEHE4-LEHB4
	.uleb128 L58-LFB9860
	.uleb128 0
	.uleb128 LEHB5-LFB9860
	.uleb128 LEHE5-LEHB5
	.uleb128 0
	.uleb128 0
LLSDACSE9860:
	.text
	.cstring
	.align	3
lC2:
	.ascii "basic_string: construction from null is not valid\0"
	.text
	.align	2
	.p2align 5,,15
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0:
LFB9863:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI23:
	mov	x29, sp	;,
LCFI24:
	str	x21, [sp, 32]	;,
LCFI25:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x21, x0, 16	; _2, this,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:706:       basic_string(const _CharT* __s, const _Alloc& __a = _Alloc())
	stp	x19, x20, [sp, 16]	;,,
LCFI26:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:205: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [x0]	; _2, MEM[(struct _Alloc_hider *)this_1(D)]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:710: 	if (__s == 0)
	cbz	x1, L88	; __s,
	mov	x19, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x0, x1	;, __s
	mov	x20, x1	; __s, __s
	bl	_strlen		;
	mov	x2, x0	; _4, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:233: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	; _4,
	bhi	L89		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x0, 1	; _4,
	beq	L90		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:423: 	if (__n == 0)
	cbnz	x0, L81	; _4,
L83:
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
LCFI27:
	ret	
L90:
LCFI28:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x20]	;, MEM[(const char_type &)__s_3(D)]
	strb	w0, [x19, 16]	; MEM[(const char_type &)__s_3(D)], MEM[(char_type &)this_1(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L83		;
L89:
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
L81:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, __s
	mov	x0, x21	;, _2
	str	x2, [x29, 56]	; _4, %sfp
	bl	_memcpy		;
	ldr	x2, [x29, 56]	; _4, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	L83		;
L88:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:711: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, lC2@PAGE	; tmp110,
	add	x0, x0, lC2@PAGEOFF;	;, tmp110,
	bl	__ZSt19__throw_logic_errorPKc		;
LFE9863:
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
	beq	L98		;,
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
L98:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:742:       basic_string(basic_string&& __str) noexcept
	stp	x29, x30, [sp, -48]!	;,,,
LCFI29:
	mov	x29, sp	;,
LCFI30:
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
LCFI31:
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
	bls	L100		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	mov	x9, 22859	; tmp208,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	w7, 34463	; tmp209,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4534:   {
	stp	x29, x30, [sp, -272]!	;,,,
LCFI32:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x9, 0x3886, lsl 16	; tmp208,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4534:   {
	mov	x29, sp	;,
LCFI33:
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
	b	L106		;
	.p2align 2,,3
L101:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	cmp	w1, 999	; __value,
	bls	L120		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	cmp	w1, w6	; __value, tmp207
	bls	L121		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	uxtw	x3, w1	; _21, __value
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:74: 	  __n += 4;
	add	w5, w2, 4	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	umulh	x3, x3, x9	; tmp144, _21, tmp208
	lsr	x3, x3, 11	; _22, tmp144,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	w1, w7	; __value, tmp209
	bls	L105		;,
	mov	w2, w5	; __pos, __n
	mov	w1, w3	; __value, _22
L106:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	cmp	w1, 99	; __value,
	bhi	L101		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w5, w2, 1	; __n, __pos,
L102:
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
	bls	L108		;,
	str	x19, [x29, 16]	;,
LCFI34:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x6, 29	; _4,
	bls	L113		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x6, 1	; _63, _4,
	mov	x19, x6	; __res, _4
L109:
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
LCFI35:
	str	x0, [x8]	; _11, MEM[(struct basic_string *)__str_12(D)]._M_dataplus._M_p
	ldr	w10, [x29, 52]	;, %sfp
L108:
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
	bls	L110		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:98: 	  auto const __num = (__val % 100) * 2;
	mov	w13, 34079	; tmp175,
	mov	w12, 100	; tmp178,
	movk	w13, 0x51eb, lsl 16	; tmp175,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:96:       while (__val >= 100)
	mov	w11, 9999	; tmp194,
	.p2align 5,,15
L111:
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
	bhi	L111		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:104:       if (__val >= 10)
	cmp	w9, 999	; __val,
	bhi	L110		;,
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
LCFI36:
	ret	
	.p2align 2,,3
L110:
LCFI37:
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
LCFI38:
	ret	
	.p2align 2,,3
L120:
LCFI39:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	add	w5, w2, 2	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w2, w2, 1	; __pos, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	b	L102		;
	.p2align 2,,3
L121:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	add	w5, w2, 3	; __n, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	add	w2, w2, 2	; __pos, __pos,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	b	L102		;
	.p2align 2,,3
L105:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	add	w2, w2, 3	; __pos, __pos,
	b	L102		;
	.p2align 2,,3
L113:
LCFI40:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	mov	x19, 30	; __res,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 31	; _63,
	b	L109		;
L100:
LCFI41:
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
	bls	L123		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	mov	x6, 22859	; tmp190,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	x5, 34463	; tmp191,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4588:   {
	stp	x29, x30, [sp, -272]!	;,,,
LCFI42:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x6, 0x3886, lsl 16	; tmp190,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4588:   {
	mov	x29, sp	;,
LCFI43:
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
	b	L128		;
	.p2align 2,,3
L124:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	cmp	x1, 999	; __value,
	bls	L144		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	cmp	x1, x3	; __value, tmp189
	bls	L145		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	umulh	x0, x1, x6	; tmp133, __value, tmp190
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:74: 	  __n += 4;
	add	w2, w2, 4	; __n, __n,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	x1, x5	; __value, tmp191
	bls	L125		;,
	lsr	x1, x0, 11	; __value, tmp133,
L128:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	cmp	x1, 99	; __value,
	bhi	L124		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w2, w2, 1	; __n, __n,
L125:
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
	bls	L130		;,
L146:
	str	x19, [x29, 16]	;,
LCFI44:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x12, 29	; _1,
	bls	L135		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x12, 1	; _31, _1,
	mov	x19, x12	; __res, _1
L131:
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
LCFI45:
	str	x0, [x8]	; _4, MEM[(struct basic_string *)__str_5(D)]._M_dataplus._M_p
	ldr	w2, [x29, 52]	;, %sfp
L130:
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
	bls	L132		;,
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
L133:
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
	bhi	L133		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:104:       if (__val >= 10)
	cmp	x6, 999	; __val,
	bhi	L132		;,
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
LCFI46:
	ret	
	.p2align 2,,3
L132:
LCFI47:
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
LCFI48:
	ret	
	.p2align 2,,3
L144:
LCFI49:
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
	bhi	L146		;,
	b	L130		;
	.p2align 2,,3
L145:
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
	bhi	L146		;,
	b	L130		;
	.p2align 2,,3
L135:
LCFI50:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	mov	x19, 30	; __res,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 31	; _31,
	b	L131		;
L123:
LCFI51:
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
LCFI52:
	mov	x29, sp	;,
LCFI53:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC4@PAGE	; tmp135,
	mov	x2, 2	;,
	add	x1, x1, lC4@PAGEOFF;	;, tmp135,
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	stp	x19, x20, [sp, 16]	;,,
LCFI54:
	mov	x20, x0	; r, r
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ldr	d31, [x20, 32]	; r_2(D)->iters, r_2(D)->iters
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	str	d15, [sp, 32]	;,
LCFI55:
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
LCFI56:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	b	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LFE6914:
	.align	2
	.p2align 5,,15
	.globl __ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv
	.weak_definition __ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv
__ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv:
LFB7696:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI57:
	mov	x29, sp	;,
LCFI58:
; ../../effects.hpp:546:   void unhandled_exception() { exception = std::current_exception(); }
	add	x8, x29, 32	;,,
; ../../effects.hpp:546:   void unhandled_exception() { exception = std::current_exception(); }
	stp	x19, x20, [sp, 16]	;,,
LCFI59:
; ../../effects.hpp:546:   void unhandled_exception() { exception = std::current_exception(); }
	mov	x19, x0	; this, this
; ../../effects.hpp:546:   void unhandled_exception() { exception = std::current_exception(); }
	bl	__ZSt17current_exceptionv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:124:       : _M_exception_object(__o._M_exception_object)
	ldr	x1, [x29, 32]	; _6, D.169664._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:223:       _M_exception_object = __other._M_exception_object;
	ldr	x0, [x19, 112]	; _7, MEM[(struct exception_ptr &)this_3(D) + 112]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:224:       __other._M_exception_object = __tmp;
	str	x1, [x19, 112]	; _6, MEM[(struct exception_ptr &)this_3(D) + 112]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:223:       _M_exception_object = __other._M_exception_object;
	stp	xzr, x0, [x29, 32]	;, _7,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x0, L149	; _7,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 40	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x0, [x29, 32]	; pretmp_19, D.169664._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x0, L149	; pretmp_19,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 32	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L149:
; ../../effects.hpp:546:   void unhandled_exception() { exception = std::current_exception(); }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI60:
	ret	
LFE7696:
	.align	2
	.p2align 5,,15
__Z7eff_divP19_ZL7eff_divii.Frame.actor:
LFB7023:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI61:
	mov	x29, sp	;,
LCFI62:
	str	x19, [sp, 16]	;,
LCFI63:
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	mov	x19, x0	; frame_ptr, frame_ptr
; b3_error_handling.cpp:73: }
	ldrh	w0, [x0, 176]	; _1, frame_ptr_23(D)->_Coro_resume_index
	tbz	x0, 0, L157	; _1,,
; b3_error_handling.cpp:73: }
	cmp	w0, 5	; _1,
	bne	L199		;,
L158:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x19, 184]	; _72, MEM[(const struct basic_string *)frame_ptr_23(D) + 184B]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x1, x19, 200	; _73, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _72, _73
	beq	L172		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 200]	; MEM[(struct basic_string *)frame_ptr_23(D) + 184B].D.56371._M_allocated_capacity, MEM[(struct basic_string *)frame_ptr_23(D) + 184B].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)frame_ptr_23(D) + 184B].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L172:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x19, 240]	; _67, MEM[(const struct basic_string *)frame_ptr_23(D) + 240B]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x1, x19, 256	; _68, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _67, _68
	beq	L173		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 256]	; MEM[(struct basic_string *)frame_ptr_23(D) + 240B].D.56371._M_allocated_capacity, MEM[(struct basic_string *)frame_ptr_23(D) + 240B].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)frame_ptr_23(D) + 240B].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L173:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x19, 296]	; _62, MEM[(const struct basic_string *)frame_ptr_23(D) + 296B]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x1, x19, 312	; _63, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _62, _63
	beq	L176		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 312]	; MEM[(struct basic_string *)frame_ptr_23(D) + 296B].D.56371._M_allocated_capacity, MEM[(struct basic_string *)frame_ptr_23(D) + 296B].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)frame_ptr_23(D) + 296B].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L160:
L175:
L176:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x19, 128]	; MEM[(struct exception_ptr *)frame_ptr_23(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_23(D) + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x19, 128	; tmp271, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x1, L177	; MEM[(struct exception_ptr *)frame_ptr_23(D) + 128B]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L177:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x19, 80]	; _167, MEM[(struct SmallAny *)frame_ptr_23(D) + 32B].destroy_
	add	x0, x19, 32	; tmp276, frame_ptr,
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L178	; _167,
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x1		; _167
L178:
; b3_error_handling.cpp:73: }
	ldrb	w0, [x19, 178]	; frame_ptr_23(D)->_Coro_frame_needs_free, frame_ptr_23(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L200	; frame_ptr_23(D)->_Coro_frame_needs_free,,
L166:
L156:
; b3_error_handling.cpp:73: }
	ldr	x19, [sp, 16]	;,
	ldp	x29, x30, [sp], 64	;,,,
LCFI64:
	ret	
	.p2align 2,,3
L157:
LCFI65:
; b3_error_handling.cpp:73: }
	cmp	w0, 4	; _1,
	beq	L162		;,
	bhi	L163		;,
	cbz	w0, L164	; _1,
L165:
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	mov	w1, 1	; tmp159,
; b3_error_handling.cpp:71:   if (b == 0) co_return perform(Fail{.reason = "div/0"});
	ldr	w0, [x19, 172]	;, frame_ptr_23(D)->b
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	strb	w1, [x19, 179]	; tmp159, frame_ptr_23(D)->_Coro_initial_await_resume_called
; b3_error_handling.cpp:71:   if (b == 0) co_return perform(Fail{.reason = "div/0"});
	cbz	w0, L201	; _3,
; b3_error_handling.cpp:72:   co_return a / b;
	ldr	w2, [x19, 168]	;, frame_ptr_23(D)->a
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	strb	w1, [x19, 148]	; tmp159, MEM <unsigned char> [(struct promise_type *)frame_ptr_23(D) + 148B]
; b3_error_handling.cpp:72:   co_return a / b;
	sdiv	w0, w2, w0	; _14, frame_ptr_23(D)->a, _3
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	str	w0, [x19, 144]	; _14, MEM <int> [(struct promise_type *)frame_ptr_23(D) + 144B]
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	b	L171		;
	.p2align 2,,3
L199:
; b3_error_handling.cpp:73: }
	bhi	L159		;,
	and	w0, w0, -3	; tmp156, _1,
	cmp	w0, 1	; tmp156,
	beq	L176		;,
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	brk #1000
	.p2align 2,,3
L200:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x19, 336]	; mr, MEM[(struct memory_resource * *)frame_ptr_23(D) + 336B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L179	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x2, [x0]	; mr_171->_vptr.memory_resource, mr_171->_vptr.memory_resource
	adrp	x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp281,
	ldr	x1, [x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp281,
	ldr	x4, [x2, 24]	; _173, MEM[(int (*) () *)_172 + 24B]
	cmp	x4, x1	; _173, tmp281
	beq	L156		;,
	mov	x1, x19	;, frame_ptr
	mov	x3, 16	;,
	mov	x2, 344	;,
	blr	x4		; _173
	b	L156		;
	.p2align 2,,3
L162:
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	ldr	w2, [x19, 216]	;, MEM[(type &)frame_ptr_23(D) + 216]
	mov	w3, 1	; tmp217,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x1, x19, 200	; _57, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x19, 184]	; _56, MEM[(const struct basic_string *)frame_ptr_23(D) + 184B]._M_dataplus._M_p
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	strb	w3, [x19, 148]	; tmp217, MEM <unsigned char> [(struct promise_type *)frame_ptr_23(D) + 148B]
	str	w2, [x19, 144]	; MEM[(type &)frame_ptr_23(D) + 216], MEM <int> [(struct promise_type *)frame_ptr_23(D) + 144B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _56, _57
	beq	L168		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 200]	; MEM[(struct basic_string *)frame_ptr_23(D) + 184B].D.56371._M_allocated_capacity, MEM[(struct basic_string *)frame_ptr_23(D) + 184B].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)frame_ptr_23(D) + 184B].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L168:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x19, 240]	; _43, MEM[(const struct basic_string *)frame_ptr_23(D) + 240B]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x1, x19, 256	; _51, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _43, _51
	beq	L169		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 256]	; MEM[(struct basic_string *)frame_ptr_23(D) + 240B].D.56371._M_allocated_capacity, MEM[(struct basic_string *)frame_ptr_23(D) + 240B].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)frame_ptr_23(D) + 240B].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L169:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x19, 296]	; _35, MEM[(const struct basic_string *)frame_ptr_23(D) + 296B]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	add	x1, x19, 312	; _30, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _35, _30
	beq	L171		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 312]	; MEM[(struct basic_string *)frame_ptr_23(D) + 296B].D.56371._M_allocated_capacity, MEM[(struct basic_string *)frame_ptr_23(D) + 296B].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)frame_ptr_23(D) + 296B].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L171:
; b3_error_handling.cpp:73: }
	mov	w0, 6	; tmp269,
; b3_error_handling.cpp:73: }
	str	xzr, [x19]	;, frame_ptr_23(D)->_Coro_resume_fn
; b3_error_handling.cpp:73: }
	strh	w0, [x19, 176]	; tmp269, frame_ptr_23(D)->_Coro_resume_index
; b3_error_handling.cpp:73: }
	ldr	x19, [sp, 16]	;,
	ldp	x29, x30, [sp], 64	;,,,
LCFI66:
	ret	
	.p2align 2,,3
L164:
LCFI67:
; b3_error_handling.cpp:73: }
	mov	w0, 2	; tmp158,
; b3_error_handling.cpp:73: }
	str	x19, [x19, 160]	; frame_ptr, frame_ptr_23(D)->_Coro_self_handle._M_fr_ptr
; b3_error_handling.cpp:73: }
	strb	wzr, [x19, 179]	;, frame_ptr_23(D)->_Coro_initial_await_resume_called
; b3_error_handling.cpp:73: }
	strh	w0, [x19, 176]	; tmp158, frame_ptr_23(D)->_Coro_resume_index
; b3_error_handling.cpp:73: }
	ldr	x19, [sp, 16]	;,
	ldp	x29, x30, [sp], 64	;,,,
LCFI68:
	ret	
	.p2align 2,,3
L159:
LCFI69:
; b3_error_handling.cpp:73: }
	cmp	w0, 7	; _1,
	beq	L176		;,
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	brk #1000
	.p2align 2,,3
L163:
; b3_error_handling.cpp:73: }
	cmp	w0, 6	; _1,
	beq	L176		;,
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	brk #1000
	.p2align 2,,3
L179:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x19	;, frame_ptr
; b3_error_handling.cpp:73: }
	ldr	x19, [sp, 16]	;,
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 344	;,
; b3_error_handling.cpp:73: }
	ldp	x29, x30, [sp], 64	;,,,
LCFI70:
LEHB6:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE6:
	.p2align 2,,3
L201:
LCFI71:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x1, lC0@PAGE	; tmp162,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x19, 317]	;, MEM[(char_type &)frame_ptr_23(D) + 317]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x4, x19, 312	; _110, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x1, x1, lC0@PAGEOFF;	; tmp161, tmp162,
; ../../effects.hpp:1204:   explicit PerformAwaitable(E e) : effect_(std::move(e)) {}
	add	x10, x19, 512	; tmp186, frame_ptr,
	str	wzr, [x19, 272]	;, MEM[(struct PerformAwaitable *)frame_ptr_23(D) + 240B].result_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldr	w3, [x1]	;, MEM <char[1:5]> [(void *)"div/0"]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x6, x19, 256	; _151, frame_ptr,
	add	x7, x19, 200	; _137, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x4, xzr, [x19, 296]	; _110,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	mov	x9, 5	; tmp197,
; b3_error_handling.cpp:73: }
	mov	w8, 4	; tmp204,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x0, x19, 184	; tmp188, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	ldrb	w1, [x1, 4]	;, MEM <char[1:5]> [(void *)"div/0"]
	str	w3, [x19, 312]	; MEM <char[1:5]> [(void *)"div/0"], MEM <char[1:5]> [(void *)_110]
	str	w3, [x19, 256]	; MEM <char[1:5]> [(void *)"div/0"], MEM <char[1:6]> [(void *)_151]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x19, 312]	;, MEM[(char_type &)frame_ptr_23(D) + 312]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strb	w1, [x19, 316]	; MEM <char[1:5]> [(void *)"div/0"], MEM <char[1:5]> [(void *)_110]
	ldrh	w1, [x19, 316]	;, MEM <char[1:6]> [(void *)_110]
	strh	w1, [x19, 260]	; MEM <char[1:6]> [(void *)_110], MEM <char[1:6]> [(void *)_151]
; ../../effects.hpp:1204:   explicit PerformAwaitable(E e) : effect_(std::move(e)) {}
	stp	xzr, xzr, [x10, -232]	; MEM <vector(2) long unsigned int> [(void *)frame_ptr_23(D) + 280B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	strh	w1, [x19, 204]	; MEM <char[1:6]> [(void *)_110], MEM <char[1:6]> [(void *)_137]
	ldr	x1, [x19, 160]	; caller$_M_fr_ptr, frame_ptr_23(D)->_Coro_self_handle._M_fr_ptr
	str	w3, [x19, 200]	; MEM <char[1:5]> [(void *)"div/0"], MEM <char[1:6]> [(void *)_137]
; b3_error_handling.cpp:73: }
	strh	w8, [x19, 176]	; tmp204, frame_ptr_23(D)->_Coro_resume_index
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	stp	x7, x9, [x19, 184]	; _137, tmp197,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	add	x3, x1, 16	; __t_44, caller$_M_fr_ptr,
; ../../effects.hpp:1202: template <Effectful E> class [[nodiscard]] PerformAwaitable {
	str	wzr, [x19, 216]	;, MEM[(struct PerformAwaitable *)frame_ptr_23(D) + 184B].result_
; ../../effects.hpp:1210:     caller_ = caller;
	stp	x1, x3, [x19, 224]	; caller$_M_fr_ptr, __t_44,
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	adrp	x1, __ZN2fx6detail12effect_tag_vI4FailEE@GOTPAGE	; tmp212,
	ldr	x1, [x1, __ZN2fx6detail12effect_tag_vI4FailEE@GOTPAGEOFF]	; tmp212,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x6, xzr, [x19, 240]	; _151,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x19, 256]	;, MEM[(char_type &)frame_ptr_23(D) + 256]
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	stp	x1, x0, [x3, 96]	; tmp212, tmp188,
	b	L156		;
LFE7023:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
	.align	2
LLSDA7023:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT7023-LLSDATTD7023
LLSDATTD7023:
	.byte	0x1
	.uleb128 LLSDACSE7023-LLSDACSB7023
LLSDACSB7023:
	.uleb128 LEHB6-LFB7023
	.uleb128 LEHE6-LEHB6
	.uleb128 0
	.uleb128 0
LLSDACSE7023:
	.align	2
	.long	0

LLSDATT7023:
	.text
	.align	2
	.p2align 5,,15
__Z7eff_divP19_ZL7eff_divii.Frame.destroy:
LFB7024:
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	ldrh	w2, [x0, 176]	;, frame_ptr_4(D)->_Coro_resume_index
	orr	w2, w2, 1	; tmp105, frame_ptr_4(D)->_Coro_resume_index,
	strh	w2, [x0, 176]	; tmp105, frame_ptr_4(D)->_Coro_resume_index
	b	__Z7eff_divP19_ZL7eff_divii.Frame.actor		;
LFE7024:
	.cstring
	.align	3
lC7:
	.ascii "fx: unhandled effect -- no matching handler installed\0"
	.text
	.align	2
	.p2align 5,,15
__Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor:
LFB7040:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI72:
	mov	x29, sp	;,
LCFI73:
	stp	x19, x20, [sp, 16]	;,,
LCFI74:
	mov	x20, x0	; frame_ptr, frame_ptr
	stp	x21, x22, [sp, 32]	;,,
LCFI75:
; b3_error_handling.cpp:80: }
	ldrh	w0, [x0, 176]	; _1, frame_ptr_23(D)->_Coro_resume_index
	tbz	x0, 0, L204	; _1,,
; b3_error_handling.cpp:80: }
	cmp	w0, 5	; _1,
	bne	L296		;,
L205:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 232]	; _60, MEM[(const struct coroutine_handle *)frame_ptr_23(D) + 232B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L235	; _60,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_60 + 8B], MEM[(void (*<T11f>) (void *) *)_60 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_60 + 8B]
L235:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 240]	; _58, MEM[(const struct coroutine_handle *)frame_ptr_23(D) + 240B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L239	; _58,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_58 + 8B], MEM[(void (*<T11f>) (void *) *)_58 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_58 + 8B]
L207:
L238:
L239:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x20, 128]	; MEM[(struct exception_ptr *)frame_ptr_23(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_23(D) + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x20, 128	; tmp254, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x1, L240	; MEM[(struct exception_ptr *)frame_ptr_23(D) + 128B]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L240:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x20, 80]	; _155, MEM[(struct SmallAny *)frame_ptr_23(D) + 32B].destroy_
	add	x0, x20, 32	; tmp259, frame_ptr,
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L241	; _155,
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x1		; _155
L241:
; b3_error_handling.cpp:80: }
	ldrb	w0, [x20, 178]	; frame_ptr_23(D)->_Coro_frame_needs_free, frame_ptr_23(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L297	; frame_ptr_23(D)->_Coro_frame_needs_free,,
L203:
; b3_error_handling.cpp:80: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI76:
	ret	
	.p2align 2,,3
L204:
LCFI77:
; b3_error_handling.cpp:80: }
	cmp	w0, 4	; _1,
	beq	L209		;,
	bhi	L210		;,
	cbz	w0, L211	; _1,
L212:
; b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	ldr	x1, [x20, 168]	; _3, frame_ptr_23(D)->pairs
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	mov	w0, 1	; tmp179,
	strb	w0, [x20, 179]	; tmp179, frame_ptr_23(D)->_Coro_initial_await_resume_called
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	ldr	x0, [x1]	; prephitmp_7, MEM[(const struct Pair * const &)_3]
; b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	stp	x1, x0, [x20, 200]	; _3, prephitmp_7,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	ldr	x1, [x1, 8]	; prephitmp_8, MEM[(const struct Pair * const &)_3 + 8]
; b3_error_handling.cpp:76:   long long total = 0;
	str	xzr, [x20, 184]	;, frame_ptr_23(D)->total_1_2
; b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	str	x1, [x20, 216]	; prephitmp_8, frame_ptr_23(D)->__for_end_2_3._M_current
L215:
; b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	cmp	x0, x1	; prephitmp_7, prephitmp_8
	beq	L298		;,
; b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	ldr	x21, [x0]	; *prephitmp_7, *prephitmp_7
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	str	x21, [x20, 192]	; *prephitmp_7, frame_ptr_23(D)->_D2_3_0
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x19, [x0]	; mr, *_99
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x19, L216	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x1, [x19]	; mr_100->_vptr.memory_resource, mr_100->_vptr.memory_resource
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp183,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp183,
	ldr	x3, [x1, 16]	; _103, MEM[(int (*) () *)_102 + 16B]
	cmp	x3, x0	; _103, tmp183
	bne	L217		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x19, 16]	; _115, MEM[(size_t &)mr_100 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 343	; _115,
	bls	L220		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x1, [x19, 8]	; __intptr, MEM[(void * &)mr_100 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x3, x0, #344	; _124, _115,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x2, x1, 15	; _120, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x2, x2, -16	; __aligned, _120,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x4, x2, x1	; __diff_123, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x4, x3	; __diff_123, _124
	bhi	L220		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x1, x0, x1	; _68, _115, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x2	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x1, x1, x2	; _126, _68, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x2, x1, [x19, 8]	; __p, _126,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x2, L220	; __p,
L221:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x1, x1, #344	; _135, _126,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x2, x0, 344	; _133, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x2, x1, [x19, 8]	; _133, _135,
L222:
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	adrp	x2, __Z7eff_divP19_ZL7eff_divii.Frame.actor@PAGE	; tmp192,
	adrp	x3, __Z7eff_divP19_ZL7eff_divii.Frame.destroy@PAGE	; tmp194,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp201
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	add	x2, x2, __Z7eff_divP19_ZL7eff_divii.Frame.actor@PAGEOFF;	; tmp191, tmp192,
	add	x3, x3, __Z7eff_divP19_ZL7eff_divii.Frame.destroy@PAGEOFF;	; tmp193, tmp194,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_106 + 16B].aborted
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	stp	x2, x3, [x0]	; tmp191, tmp193,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x2, x0, 144	; _98, __p,
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	mov	w3, 65536	; tmp207,
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x0, 24]	;, MEM[(struct PromiseAbortBase *)raw_106 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x0, 32]	; MEM[(struct SmallAny *)raw_106 + 32B].buf_
	stp	xzr, xzr, [x0, 48]	; MEM[(struct SmallAny *)raw_106 + 32B].buf_
	stp	xzr, xzr, [x0, 64]	; MEM[(struct SmallAny *)raw_106 + 32B].buf_
	str	q31, [x0, 80]	; tmp201, MEM <vector(2) long unsigned int> [(void *)raw_106 + 80B]
	str	xzr, [x0, 96]	;, MEM[(struct SmallAny *)raw_106 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x0, 112]	; tmp201, MEM <vector(2) long unsigned int> [(const void * *)raw_106 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	stp	xzr, x2, [x0, 128]	;, _98,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x0, 148]	;, MEM[(struct _Optional_payload_base *)raw_106 + 144B]._M_engaged
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	str	x21, [x0, 168]	; *prephitmp_7, MEM <unsigned long> [(int *)raw_106 + 168B]
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	str	w3, [x0, 176]	; tmp207, MEM <unsigned int> [(void *)raw_106 + 176B]
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x19, [x0, 336]	; mr, MEM[(struct memory_resource * *)raw_106 + 336B]
; ../../effects.hpp:609:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	str	x0, [x20, 240]	; __p, MEM[(struct OwnedHandle *)frame_ptr_23(D) + 240B]
; b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	bl	__Z7eff_divP19_ZL7eff_divii.Frame.actor		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	ldr	x0, [x20, 240]	; __old_val$_M_fr_ptr, MEM[(struct coroutine_handle &)frame_ptr_23(D) + 240]
; b3_error_handling.cpp:80: }
	mov	w1, 4	; tmp214,
	strh	w1, [x20, 176]	; tmp214, frame_ptr_23(D)->_Coro_resume_index
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	stp	x0, xzr, [x20, 232]	; __old_val$_M_fr_ptr,,
	b	L213		;
	.p2align 2,,3
L296:
; b3_error_handling.cpp:80: }
	bhi	L206		;,
	and	w0, w0, -3	; tmp176, _1,
	cmp	w0, 1	; tmp176,
	beq	L239		;,
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	brk #1000
	.p2align 2,,3
L297:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x20, 256]	; mr, MEM[(struct memory_resource * *)frame_ptr_23(D) + 256B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L242	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x2, [x0]	; mr_159->_vptr.memory_resource, mr_159->_vptr.memory_resource
	adrp	x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp264,
	ldr	x1, [x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp264,
	ldr	x4, [x2, 24]	; _161, MEM[(int (*) () *)_160 + 24B]
	cmp	x4, x1	; _161, tmp264
	beq	L203		;,
	mov	x1, x20	;, frame_ptr
	mov	x3, 16	;,
	mov	x2, 264	;,
	blr	x4		; _161
	b	L203		;
L209:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 232]	; __old_val$_M_fr_ptr, MEM[(const struct coroutine_handle *)frame_ptr_23(D) + 232B]._M_fr_ptr
L213:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)prephitmp_158], MEM[(void (*<T11f>) (void *) *)prephitmp_158]
LEHB7:
	blr	x1		; MEM[(void (*<T11f>) (void *) *)prephitmp_158]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x20, 232]	; _139, MEM[(const struct coroutine_handle *)frame_ptr_23(D) + 232B]._M_fr_ptr
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	adrp	x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	; tmp276,
	ldr	x22, [x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	; tmp276,
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_139], MEM[(void * *)_139]
	cbz	x1, L299	; MEM[(void * *)_139],
	.p2align 5,,15
L229:
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x21, x0, 16	; tmp275, _139,
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	mov	x0, x22	;, tmp276
	bl	___emutls_get_address		;
	ldr	x0, [x0]	; n, *_146
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x19, [x21, 96]	; _140, MEM[(struct promise_type &)_139 + 16].D.158513.D.158503.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L226	; n,
	b	L224		;
	.p2align 2,,3
L225:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_37->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L224	; n,
L226:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_37->effect_tag, n_37->effect_tag
	cmp	x19, x1	; _140, n_37->effect_tag
	bne	L225		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_37->dispatch, n_37->dispatch
	ldr	x1, [x21, 104]	;, MEM[(struct promise_type &)_139 + 16].D.158513.D.158503.payload_ptr
	blr	x2		; n_37->dispatch
LEHE7:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x20, 232]	; _139, MEM[(const struct coroutine_handle *)frame_ptr_23(D) + 232B]._M_fr_ptr
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_139], MEM[(void * *)_139]
	cbnz	x1, L229	; MEM[(void * *)_139],
L299:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x0, 128]	; _143, MEM[(const struct exception_ptr *)_139 + 128B]._M_exception_object
; ../../effects.hpp:985:     if (p.exception)
	cbnz	x1, L300	; _143,
; ../../effects.hpp:987:     return std::move(*p.result);
	ldr	w2, [x0, 144]	;, MEM[(type &)_139 + 144]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x3, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_139 + 8B], MEM[(void (*<T11f>) (void *) *)_139 + 8B]
; b3_error_handling.cpp:78:     total += co_await eff_div(a, b);
	ldr	x1, [x20, 184]	; frame_ptr_23(D)->total_1_2, frame_ptr_23(D)->total_1_2
	add	x1, x1, w2, sxtw	; _56, frame_ptr_23(D)->total_1_2, _166
	str	x1, [x20, 184]	; _56, frame_ptr_23(D)->total_1_2
; b3_error_handling.cpp:80: }
	str	w2, [x20, 224]	; _166, frame_ptr_23(D)->T001_3_4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)_139 + 8B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 240]	; _53, MEM[(const struct coroutine_handle *)frame_ptr_23(D) + 240B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L232	; _53,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_53 + 8B], MEM[(void (*<T11f>) (void *) *)_53 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_53 + 8B]
L232:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_iterator.h:1206:     { return __lhs.base() == __rhs.base(); }
	ldp	x0, x1, [x20, 208]	; MEM[(struct __normal_iterator *)frame_ptr_23(D) + 208B]._M_current, prephitmp_8,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_iterator.h:1103: 	++_M_current;
	add	x0, x0, 8	; prephitmp_7, MEM[(struct __normal_iterator *)frame_ptr_23(D) + 208B]._M_current,
	str	x0, [x20, 208]	; prephitmp_7, MEM[(struct __normal_iterator *)frame_ptr_23(D) + 208B]._M_current
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_iterator.h:1104: 	return *this;
	b	L215		;
L211:
; b3_error_handling.cpp:80: }
	mov	w0, 2	; tmp178,
; b3_error_handling.cpp:80: }
	str	x20, [x20, 160]	; frame_ptr, frame_ptr_23(D)->_Coro_self_handle._M_fr_ptr
; b3_error_handling.cpp:80: }
	strb	wzr, [x20, 179]	;, frame_ptr_23(D)->_Coro_initial_await_resume_called
; b3_error_handling.cpp:80: }
	strh	w0, [x20, 176]	; tmp178, frame_ptr_23(D)->_Coro_resume_index
; b3_error_handling.cpp:80: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI78:
	ret	
L206:
LCFI79:
; b3_error_handling.cpp:80: }
	cmp	w0, 7	; _1,
	beq	L239		;,
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	brk #1000
	.p2align 2,,3
L210:
; b3_error_handling.cpp:80: }
	cmp	w0, 6	; _1,
	beq	L239		;,
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	brk #1000
	.p2align 2,,3
L298:
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	ldr	x0, [x20, 184]	; frame_ptr_23(D)->total_1_2, frame_ptr_23(D)->total_1_2
	mov	w1, 1	; tmp251,
	strb	w1, [x20, 152]	; tmp251, MEM <unsigned char> [(struct promise_type *)frame_ptr_23(D) + 152B]
	str	x0, [x20, 144]	; frame_ptr_23(D)->total_1_2, MEM <long long int> [(struct promise_type *)frame_ptr_23(D) + 144B]
L247:
; b3_error_handling.cpp:80: }
	mov	w0, 6	; tmp252,
; b3_error_handling.cpp:80: }
	str	xzr, [x20]	;, frame_ptr_23(D)->_Coro_resume_fn
; b3_error_handling.cpp:80: }
	strh	w0, [x20, 176]	; tmp252, frame_ptr_23(D)->_Coro_resume_index
	b	L203		;
L242:
; b3_error_handling.cpp:80: }
	ldp	x21, x22, [sp, 32]	;,,
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x20	;, frame_ptr
	mov	x1, 264	;,
; b3_error_handling.cpp:80: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI80:
LEHB8:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE8:
L217:
LCFI81:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 344	;,
	mov	x0, x19	;, mr
LEHB9:
	blr	x3		; _103
	b	L222		;
L220:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 344	;,
	mov	x0, x19	;, mr
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x0, x1, [x19, 8]	; __p, _126,
	b	L221		;
L216:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 344	;,
	bl	__Znwm		;
LEHE9:
	b	L222		;
L300:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 56	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 56]	; _143, MEM[(struct exception_ptr *)&D.209307]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:986:       std::rethrow_exception(p.exception);
	add	x0, x29, 56	;,,
LEHB10:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE10:
L214:
L250:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	mov	x19, x0	; tmp229, tmp285
L228:
	ldr	x0, [x20, 232]	; _63, MEM[(const struct coroutine_handle *)frame_ptr_23(D) + 232B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L243	; _63,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_63 + 8B], MEM[(void (*<T11f>) (void *) *)_63 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_63 + 8B]
L243:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 240]	; _65, MEM[(const struct coroutine_handle *)frame_ptr_23(D) + 240B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L244	; _65,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_65 + 8B], MEM[(void (*<T11f>) (void *) *)_65 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_65 + 8B]
L244:
	mov	x0, x19	; tmp269, tmp229
L245:
	bl	___cxa_begin_catch		;
	ldrb	w0, [x20, 179]	; frame_ptr_23(D)->_Coro_initial_await_resume_called, frame_ptr_23(D)->_Coro_initial_await_resume_called
	tbnz	x0, 0, L246	; frame_ptr_23(D)->_Coro_initial_await_resume_called,,
LEHB11:
	bl	___cxa_rethrow		;
LEHE11:
L224:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC7@PAGE	; tmp226,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; _152,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC7@PAGEOFF;	;, tmp226,
LEHB12:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE12:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x21	;, _152
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB13:
	bl	___cxa_throw		;
LEHE13:
L249:
	b	L245		;
L252:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 56]	; D.209307._M_exception_object, D.209307._M_exception_object
	mov	x19, x0	; tmp284,
	cbz	x1, L228	; D.209307._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 56	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L228		;
L253:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x19, x0	; tmp283,
	mov	x0, x21	;, _152
	bl	___cxa_free_exception		;
	b	L228		;
L246:
	add	x0, x20, 16	;, frame_ptr,
	str	xzr, [x20]	;, frame_ptr_23(D)->_Coro_resume_fn
	strh	wzr, [x20, 176]	;, frame_ptr_23(D)->_Coro_resume_index
	bl	__ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv		;
LEHB14:
	bl	___cxa_end_catch		;
LEHE14:
	b	L247		;
L251:
	mov	x19, x0	; tmp287,
	bl	___cxa_end_catch		;
	mov	x0, x19	;, tmp287
LEHB15:
	bl	__Unwind_Resume		;
LEHE15:
LFE7040:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
	.align	2
LLSDA7040:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT7040-LLSDATTD7040
LLSDATTD7040:
	.byte	0x1
	.uleb128 LLSDACSE7040-LLSDACSB7040
LLSDACSB7040:
	.uleb128 LEHB7-LFB7040
	.uleb128 LEHE7-LEHB7
	.uleb128 L250-LFB7040
	.uleb128 0x3
	.uleb128 LEHB8-LFB7040
	.uleb128 LEHE8-LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB9-LFB7040
	.uleb128 LEHE9-LEHB9
	.uleb128 L249-LFB7040
	.uleb128 0x1
	.uleb128 LEHB10-LFB7040
	.uleb128 LEHE10-LEHB10
	.uleb128 L252-LFB7040
	.uleb128 0x3
	.uleb128 LEHB11-LFB7040
	.uleb128 LEHE11-LEHB11
	.uleb128 L251-LFB7040
	.uleb128 0
	.uleb128 LEHB12-LFB7040
	.uleb128 LEHE12-LEHB12
	.uleb128 L253-LFB7040
	.uleb128 0x3
	.uleb128 LEHB13-LFB7040
	.uleb128 LEHE13-LEHB13
	.uleb128 L250-LFB7040
	.uleb128 0x3
	.uleb128 LEHB14-LFB7040
	.uleb128 LEHE14-LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB15-LFB7040
	.uleb128 LEHE15-LEHB15
	.uleb128 0
	.uleb128 0
LLSDACSE7040:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.long	0

LLSDATT7040:
	.text
	.align	2
	.p2align 5,,15
__ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv:
LFB7048:
	stp	x29, x30, [sp, -160]!	;,,,
LCFI82:
	mov	x29, sp	;,
LCFI83:
	stp	x23, x24, [sp, 48]	;,,
LCFI84:
	mov	x24, x0	; __closure, __closure
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b3_error_handling.cpp:99:   print_result(bench("  Fail effect", reps, [&] {
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
LCFI85:
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x21, [x0]	; mr, *_36
; b3_error_handling.cpp:100:     sink += eff_sum(pairs).run(FallbackFail{.fallback = -1});
	ldr	x22, [x24, 8]	; _1, __closure_6(D)->__pairs
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x21, L302	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x1, [x21]	; mr_37->_vptr.memory_resource, mr_37->_vptr.memory_resource
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp151,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp151,
	ldr	x3, [x1, 16]	; _40, MEM[(int (*) () *)_39 + 16B]
	cmp	x3, x0	; _40, tmp151
	bne	L303		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x21, 16]	; _52, MEM[(size_t &)mr_37 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 263	; _52,
	bls	L306		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x3, [x21, 8]	; __intptr, MEM[(void * &)mr_37 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x2, x0, #264	; _61, _52,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x1, x3, 15	; _57, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x1, x1, -16	; __aligned, _57,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x4, x1, x3	; __diff_60, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x4, x2	; __diff_60, _61
	bhi	L306		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x0, x0, x3	; _230, _52, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x19, x1	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x0, x0, x1	; _63, _230, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x1, x0, [x21, 8]	; __p, _63,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x1, L306	; __p,
L305:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x0, x0, #264	; _72, _63,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x19, 264	; _70, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x0, [x21, 8]	; _70, _72,
L307:
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	adrp	x0, __Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor@PAGE	; tmp160,
	adrp	x1, __Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.destroy@PAGE	; tmp162,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp169
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	add	x0, x0, __Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor@PAGEOFF;	; tmp159, tmp160,
	add	x1, x1, __Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.destroy@PAGEOFF;	; tmp161, tmp162,
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x20, x19, 16	; tmp244, __p,
	strb	wzr, [x19, 16]	;, MEM[(struct PromiseAbortBase *)raw_43 + 16B].aborted
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	mov	w2, 65536	; tmp175,
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	stp	x0, x1, [x19]	; tmp159, tmp161,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x19, 144	; _35, __p,
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	mov	x0, x19	;, __p
; ../../effects.hpp:686:     node.handler_obj = group_id ? group_id : static_cast<void *>(&node);
	add	x23, x29, 96	; tmp246,,
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	str	x22, [x19, 168]	; _1, MEM[(struct _ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame *)raw_43].pairs
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	add	x22, x19, 32	; _80, __p,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x21, [x19, 256]	; mr, MEM[(struct memory_resource * *)raw_43 + 256B]
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
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	str	w2, [x19, 176]	; tmp175, MEM <unsigned int> [(void *)raw_43 + 176B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x20, 120]	; _35, MEM[(struct promise_type *)raw_43 + 16B].D.159996.D.158503.result_ptr
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	bl	__Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor		;
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	adrp	x1, __ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGE	; tmp184,
	ldr	x1, [x1, __ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGEOFF]	; tmp184,
; b3_error_handling.cpp:100:     sink += eff_sum(pairs).run(FallbackFail{.fallback = -1});
	mov	w0, -1	; tmp180,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x2, x29, 80	; tmp182,,
; ../../effects.hpp:247: struct HandlerNode {
	str	xzr, [x29, 136]	;, MEM[(struct HandlerNode *)&guard].on_return_any_fn
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	adrp	x3, __ZN2fx6detail12effect_tag_vI4FailEE@GOTPAGE	; tmp181,
	ldr	x3, [x3, __ZN2fx6detail12effect_tag_vI4FailEE@GOTPAGEOFF]	; tmp181,
; b3_error_handling.cpp:100:     sink += eff_sum(pairs).run(FallbackFail{.fallback = -1});
	str	w0, [x29, 80]	; tmp180, D.160373.fallback
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
	ldr	x1, [x21]	; stack_top.77_75, *_74
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x23, [x21]	; tmp246, *_74
; ../../effects.hpp:753:     node.prev = saved;
	str	x1, [x29, 128]	; stack_top.77_75, guard.node.prev
; ../../effects.hpp:752:     saved = detail::stack_top;
	str	x1, [x29, 144]	; stack_top.77_75, guard.saved
LEHB16:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)raw_43]
	.p2align 5,,15
L308:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x1, [x19]	; MEM[(void * *)raw_43], MEM[(void * *)raw_43]
	cbz	x1, L348	; MEM[(void * *)raw_43],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x21]	; n, *_74
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x2, [x20, 96]	; _92, MEM[(struct promise_type &)raw_43 + 16].D.159996.D.158503.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L312	; n,
	b	L309		;
	.p2align 2,,3
L310:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_29->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L309	; n,
L312:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_29->effect_tag, n_29->effect_tag
	cmp	x2, x1	; _92, n_29->effect_tag
	bne	L310		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_29->dispatch, n_29->dispatch
	ldr	x1, [x20, 104]	;, MEM[(struct promise_type &)raw_43 + 16].D.159996.D.158503.payload_ptr
	blr	x2		; n_29->dispatch
LEHE16:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x20]	; MEM[(struct promise_type &)raw_43 + 16].D.159996.D.158503.aborted, MEM[(struct promise_type &)raw_43 + 16].D.159996.D.158503.aborted
	tbz	x0, 0, L308	; MEM[(struct promise_type &)raw_43 + 16].D.159996.D.158503.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x20, 8]	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner
; ../../effects.hpp:893:       return std::nullopt;
	mov	x5, 0	; SR.715,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	cmp	x0, x23	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner, tmp246
	beq	L322		;,
L319:
; b3_error_handling.cpp:100:     sink += eff_sum(pairs).run(FallbackFail{.fallback = -1});
	ldr	x2, [x24]	; _2, __closure_6(D)->__sink
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x19	;, __p
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x4, [x29, 144]	; guard.saved, guard.saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x3, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)raw_43 + 8B], MEM[(void (*<T11f>) (void *) *)raw_43 + 8B]
; b3_error_handling.cpp:100:     sink += eff_sum(pairs).run(FallbackFail{.fallback = -1});
	ldr	x1, [x2]	; *_2, *_2
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x4, [x21]	; guard.saved, *_74
; b3_error_handling.cpp:100:     sink += eff_sum(pairs).run(FallbackFail{.fallback = -1});
	add	x1, x1, x5	; _4, *_2, SR.715
	str	x1, [x2]	; _4, *_2
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_43 + 8B]
; b3_error_handling.cpp:101:   }));
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 160	;,,,
LCFI86:
	ret	
L306:
LCFI87:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x0, x21	;, mr
	mov	x2, 16	;,
	mov	x1, 264	;,
LEHB17:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x19, x0, [x21, 8]	; __p, _63,
	b	L305		;
L348:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x19, 128]	; _97, MEM[(const struct exception_ptr *)raw_43 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x0, L349	; _97,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x19, 16]	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_43 + 16B].aborted
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:213: 	    : _M_value(std::forward<_Args>(__args)...)
	ldr	x5, [x19, 144]	; SR.715, MEM[(long long int &)raw_43 + 144]
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L319	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x20, 8]	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner
	cmp	x0, x23	; MEM[(struct PromiseAbortBase *)raw_43 + 16B].abort_owner, tmp246
	bne	L319		;,
L322:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x22, 48]	; _83, MEM[(struct SmallAny *)raw_43 + 32B].destroy_
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x19, 16]	;, MEM[(struct PromiseAbortBase *)raw_43 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	x5, [x19, 32]	; SR.715, MEM[(type &)_81]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L319	; _83,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x22	;, _80
	str	x5, [x29, 72]	; SR.715, %sfp
	blr	x1		; _83
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x19, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_43 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	x5, [x29, 72]	; SR.715, %sfp
	str	xzr, [x22, 64]	;, MEM[(struct SmallAny *)raw_43 + 32B].type_tag_
	b	L319		;
L302:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 264	;,
	bl	__Znwm		;
	mov	x19, x0	; __p, __p
	b	L307		;
L303:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 264	;,
	mov	x0, x21	;, mr
	blr	x3		; _40
LEHE17:
	mov	x19, x0	; __p, __p
	b	L307		;
L349:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x0, [x29, 88]	; _97, MEM[(struct exception_ptr *)&D.209425]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 88	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	add	x0, x29, 88	;,,
LEHB18:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE18:
L309:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC7@PAGE	; tmp197,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _106,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC7@PAGEOFF;	;, tmp197,
LEHB19:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE19:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _106
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB20:
	bl	___cxa_throw		;
LEHE20:
L326:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x20, x0	; tmp200, tmp255
	b	L314		;
L327:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 88]	; D.209425._M_exception_object, D.209425._M_exception_object
	mov	x20, x0	; tmp254,
	cbz	x1, L314	; D.209425._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 88	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L314		;
L328:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x20, x0	; tmp253,
	mov	x0, x22	;, _106
	bl	___cxa_free_exception		;
L314:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x0, [x29, 144]	; guard.saved, guard.saved
	str	x0, [x21]	; guard.saved, *_74
; ../../effects.hpp:622:     if (h)
	cbz	x19, L324	; __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x19, 8]	; MEM[(void (*<T11f>) (void *) *)raw_43 + 8B], MEM[(void (*<T11f>) (void *) *)raw_43 + 8B]
	mov	x0, x19	;, __p
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_43 + 8B]
L324:
	mov	x0, x20	;, tmp200
LEHB21:
	bl	__Unwind_Resume		;
LEHE21:
LFE7048:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
LLSDA7048:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7048-LLSDACSB7048
LLSDACSB7048:
	.uleb128 LEHB16-LFB7048
	.uleb128 LEHE16-LEHB16
	.uleb128 L326-LFB7048
	.uleb128 0
	.uleb128 LEHB17-LFB7048
	.uleb128 LEHE17-LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB18-LFB7048
	.uleb128 LEHE18-LEHB18
	.uleb128 L327-LFB7048
	.uleb128 0
	.uleb128 LEHB19-LFB7048
	.uleb128 LEHE19-LEHB19
	.uleb128 L328-LFB7048
	.uleb128 0
	.uleb128 LEHB20-LFB7048
	.uleb128 LEHE20-LEHB20
	.uleb128 L326-LFB7048
	.uleb128 0
	.uleb128 LEHB21-LFB7048
	.uleb128 LEHE21-LEHB21
	.uleb128 0
	.uleb128 0
LLSDACSE7048:
	.text
	.cstring
	.align	3
lC8:
	.ascii "\12\0"
	.align	3
lC9:
	.ascii "  exceptions\0"
	.align	3
lC10:
	.ascii "  std::optional\0"
	.align	3
lC11:
	.ascii "  Fail effect\0"
	.text
	.align	2
	.p2align 5,,15
__ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0:
LFB9873:
	stp	x29, x30, [sp, -224]!	;,,,
LCFI88:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x3, lC4@PAGE	; tmp223,
; b3_error_handling.cpp:84: static void run_trio(const char *label, const std::vector<Pair> &pairs,
	mov	x29, sp	;,
LCFI89:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	x2, 2	;,
; b3_error_handling.cpp:84: static void run_trio(const char *label, const std::vector<Pair> &pairs,
	stp	x19, x20, [sp, 16]	;,,
LCFI90:
	mov	x19, x0	; label, label
	mov	x20, x1	; pairs, pairs
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	add	x1, x3, lC4@PAGEOFF;	;, tmp223,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
; b3_error_handling.cpp:84: static void run_trio(const char *label, const std::vector<Pair> &pairs,
	stp	x21, x22, [sp, 32]	;,,
LCFI91:
; b3_error_handling.cpp:86:   std::cout << "  " << label << "\n";
	adrp	x22, lC8@PAGE	; tmp342,
; b3_error_handling.cpp:84: static void run_trio(const char *label, const std::vector<Pair> &pairs,
	stp	x23, x24, [sp, 48]	;,,
	stp	x25, x26, [sp, 64]	;,,
LCFI92:
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	mov	x25, 0	; i,
; b3_error_handling.cpp:84: static void run_trio(const char *label, const std::vector<Pair> &pairs,
	stp	d13, d14, [sp, 80]	;,,
	str	d15, [sp, 96]	;,
LCFI93:
LEHB22:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b3_error_handling.cpp:86:   std::cout << "  " << label << "\n";
	mov	x1, x19	;, label
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
; b3_error_handling.cpp:86:   std::cout << "  " << label << "\n";
	add	x1, x22, lC8@PAGEOFF;	;, tmp342,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
; b3_error_handling.cpp:89:   print_result(bench("  exceptions", reps, [&] {
	adrp	x1, lC9@PAGE	; tmp229,
	add	x0, x29, 144	;,,
; b3_error_handling.cpp:87:   long long sink = 0;
	str	xzr, [x29, 120]	;, sink
; b3_error_handling.cpp:89:   print_result(bench("  exceptions", reps, [&] {
	add	x1, x1, lC9@PAGEOFF;	;, tmp229,
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE22:
	.p2align 5,,15
L395:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	ldp	x19, x24, [x20]	; _153, _154,* pairs
; b3_error_handling.cpp:47:   for (auto [a, b] : pairs) {
	cmp	x19, x24	; _153, _154
	beq	L394		;,
; b3_error_handling.cpp:46:   long long total = 0;
	mov	x23, 0	; total,
	.p2align 5,,15
L352:
; b3_error_handling.cpp:48:     try { total += exc_div(a, b); }
	ldp	w0, w1, [x19]	;,,* ivtmp.799
LEHB23:
	bl	__ZL7exc_divii		;
LEHE23:
; b3_error_handling.cpp:48:     try { total += exc_div(a, b); }
	add	x23, x23, w0, sxtw	; total, total, _158
L355:
; b3_error_handling.cpp:47:   for (auto [a, b] : pairs) {
	add	x19, x19, 8	; ivtmp.799, ivtmp.799,
	cmp	x24, x19	; _154, ivtmp.799
	bne	L352		;,
; b3_error_handling.cpp:90:     sink += exc_sum(pairs);
	ldr	x0, [x29, 120]	; sink, sink
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	add	x25, x25, 1	; i, i,
; b3_error_handling.cpp:90:     sink += exc_sum(pairs);
	add	x0, x0, x23	; _217, sink, total
	str	x0, [x29, 120]	; _217, sink
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	cmp	x25, 3	; i,
	bne	L395		;,
L394:
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x25, x0	; start,
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	mov	x26, 0	; i,
	.p2align 5,,15
L393:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	ldp	x19, x24, [x20]	; _166, _167,* pairs
; b3_error_handling.cpp:47:   for (auto [a, b] : pairs) {
	cmp	x19, x24	; _166, _167
	beq	L359		;,
; b3_error_handling.cpp:46:   long long total = 0;
	mov	x23, 0	; total,
	.p2align 5,,15
L357:
; b3_error_handling.cpp:48:     try { total += exc_div(a, b); }
	ldp	w0, w1, [x19]	;,,* ivtmp.787
LEHB24:
	bl	__ZL7exc_divii		;
LEHE24:
; b3_error_handling.cpp:48:     try { total += exc_div(a, b); }
	add	x23, x23, w0, sxtw	; total, total, _171
L361:
; b3_error_handling.cpp:47:   for (auto [a, b] : pairs) {
	add	x19, x19, 8	; ivtmp.787, ivtmp.787,
	cmp	x24, x19	; _167, ivtmp.787
	bne	L357		;,
; b3_error_handling.cpp:90:     sink += exc_sum(pairs);
	ldr	x0, [x29, 120]	; sink, sink
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	add	x26, x26, 1	; i, i,
; b3_error_handling.cpp:90:     sink += exc_sum(pairs);
	add	x0, x0, x23	; _236, sink, total
	str	x0, [x29, 120]	; _236, sink
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	cmp	x26, 500	; i,
	bne	L393		;,
L359:
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x25	; _150, end, start
; bench.hpp:44: }
	add	x19, x29, 176	; tmp346,,
	mov	x0, x19	;, tmp346
	add	x1, x29, 144	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d15, x2	;, _150
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 500	; tmp242,
; b3_error_handling.cpp:89:   print_result(bench("  exceptions", reps, [&] {
	mov	x0, x19	;, tmp346
; bench.hpp:44: }
	str	d15, [x29, 216]	;, MEM[(struct BenchResult *)_249].total_ns
	str	x1, [x29, 208]	; tmp242, MEM[(struct BenchResult *)_249].iters
LEHB25:
; b3_error_handling.cpp:89:   print_result(bench("  exceptions", reps, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE25:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 176]	; _4, MEM[(const struct basic_string *)_249]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x24, x29, 192	; tmp347,,
	cmp	x0, x24	; _4, tmp347
	beq	L362		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 192]	; MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L362:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 144]	; _8, MEM[(struct basic_string *)_147]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x23, x29, 160	; tmp345,,
	cmp	x0, x23	; _8, tmp345
	beq	L363		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 160]	; MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L363:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b3_error_handling.cpp:94:   print_result(bench("  std::optional", reps, [&] {
	adrp	x1, lC10@PAGE	; tmp253,
	add	x0, x29, 144	;,,
	add	x1, x1, lC10@PAGEOFF;	;, tmp253,
LEHB26:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE26:
; b3_error_handling.cpp:95:     sink += opt_sum(pairs);
	ldr	x6, [x29, 120]	; prephitmp_75, sink
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	mov	x5, 3	; ivtmp_330,
	ldp	x7, x4, [x20]	; pretmp_248, pretmp_139,* pairs
	.p2align 5,,15
L369:
; b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmp	x4, x7	; pretmp_139, pretmp_248
	beq	L364		;,
; b3_error_handling.cpp:62:   long long total = 0;
	mov	x3, 0	; total,
	mov	x2, x7	; ivtmp.774, pretmp_248
	.p2align 5,,15
L368:
; b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	ldp	w0, w1, [x2]	;,,* ivtmp.774
	bl	__ZL7opt_divii		;
	str	x0, [x29, 176]	; tmp257, MEM[(struct optional *)_249]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:1262: 	  if (this->_M_is_engaged())
	tbz	x0, 32, L365	; tmp257,,
; b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	ldrsw	x0, [x29, 176]	; _201, MEM[(type &)_249]
; b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	add	x2, x2, 8	; ivtmp.774, ivtmp.774,
; b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	add	x3, x3, x0	; total, total, _201
; b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmp	x4, x2	; pretmp_139, ivtmp.774
	bne	L368		;,
L367:
; b3_error_handling.cpp:95:     sink += opt_sum(pairs);
	add	x6, x6, x3	; prephitmp_75, prephitmp_75, total
L364:
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x5, x5, #1	; ivtmp_330, ivtmp_330,
; b3_error_handling.cpp:95:     sink += opt_sum(pairs);
	str	x6, [x29, 120]	; prephitmp_75, sink
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	bne	L369		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; b3_error_handling.cpp:95:     sink += opt_sum(pairs);
	ldr	x6, [x29, 120]	; prephitmp_76, sink
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x25, x0	; start,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	mov	x5, 500	; ivtmp_183,
	ldp	x7, x4, [x20]	; pretmp_232, pretmp_264,* pairs
	.p2align 5,,15
L375:
; b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmp	x7, x4	; pretmp_232, pretmp_264
	beq	L370		;,
; b3_error_handling.cpp:62:   long long total = 0;
	mov	x3, 0	; total,
	mov	x2, x7	; ivtmp.763, pretmp_232
	.p2align 5,,15
L374:
; b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	ldp	w0, w1, [x2]	;,,* ivtmp.763
	bl	__ZL7opt_divii		;
	str	x0, [x29, 176]	; tmp263, MEM[(struct optional *)_249]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:1262: 	  if (this->_M_is_engaged())
	tbz	x0, 32, L371	; tmp263,,
; b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	ldrsw	x0, [x29, 176]	; _317, MEM[(type &)_249]
; b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	add	x2, x2, 8	; ivtmp.763, ivtmp.763,
; b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	add	x3, x3, x0	; total, total, _317
; b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmp	x4, x2	; pretmp_264, ivtmp.763
	bne	L374		;,
L373:
; b3_error_handling.cpp:95:     sink += opt_sum(pairs);
	add	x6, x6, x3	; prephitmp_76, prephitmp_76, total
L370:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x5, x5, #1	; ivtmp_183, ivtmp_183,
; b3_error_handling.cpp:95:     sink += opt_sum(pairs);
	str	x6, [x29, 120]	; prephitmp_76, sink
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	bne	L375		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x25	; _196, end, start
; bench.hpp:44: }
	add	x1, x29, 144	;,,
	mov	x0, x19	;, tmp346
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d14, x2	;, _196
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 500	; tmp270,
; b3_error_handling.cpp:94:   print_result(bench("  std::optional", reps, [&] {
	mov	x0, x19	;, tmp346
; bench.hpp:44: }
	str	d14, [x29, 216]	;, MEM[(struct BenchResult *)_249].total_ns
	str	x1, [x29, 208]	; tmp270, MEM[(struct BenchResult *)_249].iters
LEHB27:
; b3_error_handling.cpp:94:   print_result(bench("  std::optional", reps, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE27:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 176]	; _13, MEM[(const struct basic_string *)_249]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _13, tmp347
	beq	L376		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 192]	; MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L376:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 144]	; _17, MEM[(struct basic_string *)_147]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _17, tmp345
	beq	L377		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 160]	; MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L377:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b3_error_handling.cpp:99:   print_result(bench("  Fail effect", reps, [&] {
	adrp	x1, lC11@PAGE	; tmp281,
	add	x0, x29, 144	;,,
	add	x1, x1, lC11@PAGEOFF;	;, tmp281,
	add	x25, x29, 128	; tmp343,,
LEHB28:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE28:
; b3_error_handling.cpp:99:   print_result(bench("  Fail effect", reps, [&] {
	add	x0, x29, 120	; tmp283,,
	stp	x0, x20, [x29, 128]	; tmp283, pairs,
	mov	x20, 3	; ivtmp_220,
	.p2align 5,,15
L378:
; bench.hpp:35:     fn();
	mov	x0, x25	;, tmp343
LEHB29:
	bl	__ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv		;
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subs	x20, x20, #1	; ivtmp_220, ivtmp_220,
	bne	L378		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x26, x0	; start,
	mov	x20, 500	; ivtmp_180,
	.p2align 5,,15
L379:
; bench.hpp:39:     fn();
	mov	x0, x25	;, tmp343
	bl	__ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv		;
LEHE29:
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subs	x20, x20, #1	; ivtmp_180, ivtmp_180,
	bne	L379		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x26	; _230, end, start
; bench.hpp:44: }
	add	x1, x29, 144	;,,
	mov	x0, x19	;, tmp346
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d13, x2	;, _230
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 500	; tmp289,
; b3_error_handling.cpp:99:   print_result(bench("  Fail effect", reps, [&] {
	mov	x0, x19	;, tmp346
; bench.hpp:44: }
	str	d13, [x29, 216]	;, MEM[(struct BenchResult *)_249].total_ns
	str	x1, [x29, 208]	; tmp289, MEM[(struct BenchResult *)_249].iters
LEHB30:
; b3_error_handling.cpp:99:   print_result(bench("  Fail effect", reps, [&] {
	bl	__Z12print_resultRK11BenchResult		;
LEHE30:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 176]	; _22, MEM[(const struct basic_string *)_249]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _22, tmp347
	beq	L380		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 192]	; MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L380:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 144]	; _26, MEM[(struct basic_string *)_147]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _26, tmp345
	beq	L381		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 160]	; MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L381:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b3_error_handling.cpp:103:   std::cout << "\n";
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x22, lC8@PAGEOFF;	;, tmp342,
LEHB31:
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
LEHE31:
; b3_error_handling.cpp:104: }
	ldr	d15, [sp, 96]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	d13, d14, [sp, 80]	;,,
	ldp	x29, x30, [sp], 224	;,,,
LCFI94:
	ret	
	.p2align 2,,3
L365:
LCFI95:
; b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	add	x2, x2, 8	; ivtmp.774, ivtmp.774,
; b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	sub	x3, x3, #1	; total, total,
; b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmp	x2, x4	; ivtmp.774, pretmp_139
	bne	L368		;,
	b	L367		;
	.p2align 2,,3
L371:
	add	x2, x2, 8	; ivtmp.763, ivtmp.763,
; b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	sub	x3, x3, #1	; total, total,
; b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmp	x4, x2	; pretmp_264, ivtmp.763
	bne	L374		;,
	b	L373		;
L401:
; b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	bl	___cxa_begin_catch		;
; b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	sub	x23, x23, #1	; total, total,
LEHB32:
; b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	bl	___cxa_end_catch		;
LEHE32:
	b	L355		;
L397:
L417:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 176]	; _47, MEM[(const struct basic_string *)_249]._M_dataplus._M_p
	mov	x19, x0	; tmp367,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x24	; _47, tmp347
	beq	L391		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 192]	; MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _47
	add	x1, x1, 1	;, MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L391:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 144]	; _51, MEM[(struct basic_string *)_147]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x23	; _51, tmp345
	beq	L392		;,
L415:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 160]	; MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_147].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L392:
	mov	x0, x19	;, tmp330
LEHB33:
	bl	__Unwind_Resume		;
LEHE33:
L399:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp306, tmp365
L384:
	ldr	x0, [x29, 144]	; _35, MEM[(struct basic_string *)_147]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 160	; tmp311,,
	cmp	x0, x1	; _35, tmp311
	bne	L415		;,
	b	L392		;
L396:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp330, tmp368
	b	L391		;
L398:
	b	L417		;
L400:
	ldr	x2, [x29, 176]	; _31, MEM[(const struct basic_string *)_249]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 192	; tmp303,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp364,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x1	; _31, tmp303
	beq	L384		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 192]	; MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _31
	add	x1, x1, 1	;, MEM[(struct basic_string *)_249].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L384		;
L402:
; b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	bl	___cxa_begin_catch		;
; b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	sub	x23, x23, #1	; total, total,
LEHB34:
; b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	bl	___cxa_end_catch		;
LEHE34:
	b	L361		;
LFE9873:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
	.align	2
LLSDA9873:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT9873-LLSDATTD9873
LLSDATTD9873:
	.byte	0x1
	.uleb128 LLSDACSE9873-LLSDACSB9873
LLSDACSB9873:
	.uleb128 LEHB22-LFB9873
	.uleb128 LEHE22-LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB23-LFB9873
	.uleb128 LEHE23-LEHB23
	.uleb128 L401-LFB9873
	.uleb128 0x1
	.uleb128 LEHB24-LFB9873
	.uleb128 LEHE24-LEHB24
	.uleb128 L402-LFB9873
	.uleb128 0x1
	.uleb128 LEHB25-LFB9873
	.uleb128 LEHE25-LEHB25
	.uleb128 L400-LFB9873
	.uleb128 0
	.uleb128 LEHB26-LFB9873
	.uleb128 LEHE26-LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB27-LFB9873
	.uleb128 LEHE27-LEHB27
	.uleb128 L398-LFB9873
	.uleb128 0
	.uleb128 LEHB28-LFB9873
	.uleb128 LEHE28-LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB29-LFB9873
	.uleb128 LEHE29-LEHB29
	.uleb128 L396-LFB9873
	.uleb128 0
	.uleb128 LEHB30-LFB9873
	.uleb128 LEHE30-LEHB30
	.uleb128 L397-LFB9873
	.uleb128 0
	.uleb128 LEHB31-LFB9873
	.uleb128 LEHE31-LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB32-LFB9873
	.uleb128 LEHE32-LEHB32
	.uleb128 L399-LFB9873
	.uleb128 0
	.uleb128 LEHB33-LFB9873
	.uleb128 LEHE33-LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB34-LFB9873
	.uleb128 LEHE34-LEHB34
	.uleb128 L399-LFB9873
	.uleb128 0
LLSDACSE9873:
	.byte	0x1
	.byte	0
	.align	2
	.long	0

LLSDATT9873:
	.text
	.align	2
	.p2align 5,,15
__Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.destroy:
LFB7041:
; b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	ldrh	w2, [x0, 176]	;, frame_ptr_4(D)->_Coro_resume_index
	orr	w2, w2, 1	; tmp105, frame_ptr_4(D)->_Coro_resume_index,
	strh	w2, [x0, 176]	; tmp105, frame_ptr_4(D)->_Coro_resume_index
	b	__Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor		;
LFE7041:
	.cstring
	.align	3
lC12:
	.ascii "basic_string::append\0"
	.align	3
lC13:
	.ascii "basic_string::_M_create\0"
	.text
	.align	2
	.p2align 5,,15
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc:
LFB8164:
	stp	x29, x30, [sp, -96]!	;,,,
LCFI96:
	mov	x29, sp	;,
LCFI97:
	stp	x19, x20, [sp, 16]	;,,
LCFI98:
	mov	x19, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x0, x1	;, __s
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1580:       append(const _CharT* __s)
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI99:
	mov	x23, x1	; __s, __s
	str	x25, [sp, 64]	;,
LCFI100:
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
	bcc	L462		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x22, x19	; _13, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:447:       const size_type __len = __n + this->size();
	add	x21, x2, x3	; __len, __sz, _8
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x20, [x22], 16	; _12, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	beq	L463		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x0, [x19, 16]	; __sz, MEM[(const struct basic_string *)this_4(D)].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x21, x0	; __len, __sz
	bhi	L426		;,
L422:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:451: 	  if (__n)
	cbz	x3, L427	; _8,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:452: 	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
	add	x0, x20, x2	; _16, _12, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	beq	L464		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x3	;, _8
	mov	x1, x23	;, __s
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x20, [x19]	; _12, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
L427:
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
LCFI101:
	ret	
	.p2align 2,,3
L426:
LCFI102:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmp	x21, x1	; __len, tmp130
	bhi	L423		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x0, x0, 1	; __new_capacity, __sz,
	stp	x3, x2, [x29, 80]	; _8, __sz,
	mov	x25, x0	; __new_capacity, __new_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x21, x0	; __len, __new_capacity
	bcs	L465		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	cmp	x0, x1	; __new_capacity, tmp130
	bls	L466		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 9223372036854775807	;,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	mov	x1, 9223372036854775806	; tmp130,
	cbnz	x2, L453	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	beq	L467		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x25, x1	; __new_capacity, tmp130
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	mov	x0, x24	; _15, _32
	.p2align 5,,15
L436:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x3	;, _8
	mov	x1, x23	;, __s
	bl	_memcpy		;
L445:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	beq	L461		;,
L444:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x19, 16]	; this_4(D)->D.56371._M_allocated_capacity, this_4(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x20	;, _12
	add	x1, x1, 1	;, this_4(D)->D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L461:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	x20, x24	; _12, _32
L439:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x24, [x19]	; _32, this_4(D)->_M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x25, [x19, 16]	; __new_capacity, this_4(D)->D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L427		;
	.p2align 2,,3
L465:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	add	x0, x21, 1	;, __len,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x2, L432	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x25, x21	; __new_capacity, __len
L431:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x2, 1	; __sz,
	beq	L468		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, _12
	mov	x0, x24	;, _32
	stp	x2, x3, [x29, 80]	; __sz, _8,
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	ldr	x3, [x29, 88]	; _8, %sfp
	cbz	x3, L445	; _8,
	ldr	x2, [x29, 80]	; __sz, %sfp
	b	L435		;
	.p2align 2,,3
L463:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x21, 15	; __len,
	bls	L422		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmp	x21, x1	; __len, tmp130
	bhi	L423		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x21, 29	; __len,
	bls	L424		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	add	x0, x21, 1	;, __len,
	stp	x3, x2, [x29, 80]	; _8, __sz,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x2, L432	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x2, 1	; __sz,
	beq	L469		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, _12
	stp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x25, x21	; __new_capacity, __len
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	bl	_memcpy		;
	ldp	x3, x2, [x29, 80]	; _8, __sz,
	.p2align 5,,15
L435:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x0, x24, x2	; _15, _32, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	bne	L436		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
	strb	w0, [x24, x2]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_35]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L445		;
	.p2align 2,,3
L464:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x23]	; _17, MEM[(const char_type &)__s_2(D)]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x20, x2]	; _17, MEM[(char_type &)_16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x20, [x19]	; _12, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L427		;
	.p2align 2,,3
L424:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x0, 31	;,
	stp	x3, x2, [x29, 80]	; _8, __sz,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbnz	x2, L447	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	beq	L470		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x25, 30	; __new_capacity,
	b	L436		;
	.p2align 2,,3
L432:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x3	;, _8
	mov	x1, x23	;, __s
	mov	x0, x24	;, _32
	bl	_memcpy		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	beq	L452		;,
	mov	x25, x21	; __new_capacity, __len
	b	L444		;
	.p2align 2,,3
L466:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	add	x0, x0, 1	;, __new_capacity,
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x2, [x29, 80]	; _8, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _32, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbnz	x2, L431	; __sz,
	b	L435		;
	.p2align 2,,3
L468:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x20]	; _31, MEM[(const char_type &)_12]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; _31, MEM[(char_type &)_42]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	cbz	x3, L445	; _8,
L441:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x0, x24, 1	; _15, _32,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x3, 1	; _8,
	bne	L436		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
	strb	w0, [x24, 1]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_104]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x20, x22	; _12, _13
	bne	L444		;,
	b	L461		;
	.p2align 2,,3
L453:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x25, x1	; __new_capacity, tmp130
	b	L431		;
	.p2align 2,,3
L447:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x25, 30	; __new_capacity,
	b	L431		;
L467:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x25, x1	; __new_capacity, tmp130
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_52]
	b	L444		;
L452:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	mov	x20, x24	; _12, _32
	mov	x25, x21	; __new_capacity, __len
	b	L439		;
L469:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x20]	; _123, MEM[(const char_type &)_12]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x25, x21	; __new_capacity, __len
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; _123, MEM[(char_type &)_23]
	b	L441		;
L470:
	ldrb	w0, [x23]	;, MEM[(const char_type &)__s_2(D)]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x20, x24	; _12, _32
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x25, 30	; __new_capacity,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x24]	; MEM[(const char_type &)__s_2(D)], MEM[(char_type &)_128]
	b	L439		;
L462:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC12@PAGE	; tmp132,
	add	x0, x0, lC12@PAGEOFF;	;, tmp132,
	bl	__ZSt20__throw_length_errorPKc		;
L423:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	adrp	x0, lC13@PAGE	; tmp141,
	add	x0, x0, lC13@PAGEOFF;	;, tmp141,
	bl	__ZSt20__throw_length_errorPKc		;
LFE8164:
	.cstring
	.align	3
lC14:
	.ascii "basic_string::_M_replace\0"
	.align	3
lC15:
	.ascii "b3: error handling strategies  (N=\0"
	.align	3
lC16:
	.ascii " divisions, reps=\0"
	.align	3
lC17:
	.ascii ")\0"
	.align	3
lC18:
	.ascii "\12=== \0"
	.align	3
lC19:
	.ascii " ===\12\0"
	.align	3
lC20:
	.ascii "  Each iteration sums N division results; errors replaced with -1.\12\0"
	.align	3
lC21:
	.ascii "  eff_sum co_awaits N eff_div calls inside a single coroutine.\12\12\0"
	.align	3
lC22:
	.ascii "0% failure rate (happy path only):\0"
	.align	3
lC23:
	.ascii "10% failure rate (mixed):\0"
	.align	3
lC24:
	.ascii "100% failure rate (all errors):\0"
	.align	3
lC25:
	.ascii "Notes:\12\0"
	.align	3
lC26:
	.ascii "  exceptions: fast on happy path; each throw is expensive.\12\0"
	.align	3
lC27:
	.ascii "  std::optional: uniform cost regardless of failure rate.\12\0"
	.align	3
lC28:
	.ascii "  Fail effect: also uniform; overhead is handler stack walk + resume.\12\0"
	.align	3
lC29:
	.ascii "               propagation is automatic \342\200\224 no manual .value_or() needed.\12\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align	2
	.p2align 5,,15
	.globl _main
_main:
LFB7074:
	stp	x29, x30, [sp, -320]!	;,,,
LCFI103:
	mov	x29, sp	;,
LCFI104:
; b3_error_handling.cpp:112:   section("b3: error handling strategies  (N=" + std::to_string(N) +
	mov	w0, 5000	;,
; b3_error_handling.cpp:108: int main() {
	stp	x23, x24, [sp, 48]	;,,
LCFI105:
; b3_error_handling.cpp:112:   section("b3: error handling strategies  (N=" + std::to_string(N) +
	add	x23, x29, 128	; tmp507,,
	mov	x8, x23	;, tmp507
; b3_error_handling.cpp:108: int main() {
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
	stp	x25, x26, [sp, 64]	;,,
	str	x27, [sp, 80]	;,
LCFI106:
; b3_error_handling.cpp:112:   section("b3: error handling strategies  (N=" + std::to_string(N) +
	bl	__ZNSt7__cxx119to_stringEi		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x19, [x29, 136]	; __sz, D.163077._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 35	; tmp240,
	movk	x0, 0x8000, lsl 48	; tmp240,,
	add	x0, x19, x0	; _223, __sz, tmp240
	cmp	x0, 33	; _223,
	bls	L601		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x25, [x29, 128]	; _187, D.163077._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x21, x29, 144	; tmp508,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:549:       const size_type __new_size = __old_size + __len2 - __len1;
	add	x22, x19, 34	; _185, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x25, x21	; _187, tmp508
	beq	L473		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x0, [x29, 144]	; __sz, D.163077.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:551:       if (__new_size <= this->capacity())
	cmp	x22, x0	; _185, __sz
	bhi	L474		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_function.h:454: 	return (__UINTPTR_TYPE__)__x < (__UINTPTR_TYPE__)__y;
	adrp	x20, lC15@PAGE	; tmp509,
	add	x3, x20, lC15@PAGEOFF;	; __x.23_194, tmp509,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x25, x3	; _187, __x.23_194
	bls	L602		;,
L475:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	cbnz	x19, L477	; __sz,
L478:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x0, x20, lC15@PAGEOFF;	; tmp253, tmp509,
	ldrh	w2, [x0, 32]	;, MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="]
	ldp	q31, q30, [x0]	; MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="], MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="],
	strh	w2, [x25, 32]	; MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="], MEM <char[1:34]> [(void *)_187]
	stp	q31, q30, [x25]	; MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="], MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="],* _187
L479:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x2, [x29, 128]	; D.163077._M_dataplus._M_p, D.163077._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	mov	x1, x23	;, tmp507
	add	x0, x29, 160	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x22, [x29, 136]	; _185, D.163077._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x2, x22]	;, MEM[(char_type &)_206]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	adrp	x1, lC16@PAGE	; tmp283,
	add	x0, x29, 160	;,,
	add	x1, x1, lC16@PAGEOFF;	;, tmp283,
LEHB35:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc		;
LEHE35:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	mov	x1, x0	;, _34
	add	x0, x29, 192	;,,
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; b3_error_handling.cpp:113:           " divisions, reps=" + std::to_string(REPS) + ")");
	add	x23, x29, 224	; tmp511,,
	mov	x0, 500	;,
	mov	x8, x23	;, tmp511
LEHB36:
	bl	__ZNSt7__cxx119to_stringEm		;
LEHE36:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x5, [x29, 232]	; __sz, MEM[(struct basic_string *)_79]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x20, x29, 208	; tmp510,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldp	x3, x22, [x29, 192]	; D.163085._M_dataplus._M_p, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3951: 	  const auto __size = __lhs.size() + __rhs.size();
	add	x19, x22, x5	; __size, __sz, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x3, x20	; D.163085._M_dataplus._M_p, tmp510
	beq	L603		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x0, [x29, 208]	; __sz, D.163085.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3952: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	cmp	x19, x0	; __size, __sz
	bls	L604		;,
L488:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x6, [x29, 224]	; MEM[(struct basic_string *)_79]._M_dataplus._M_p, MEM[(struct basic_string *)_79]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x24, x29, 240	; tmp513,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x26, x6	; _252, MEM[(struct basic_string *)_79]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x6, x24	; MEM[(struct basic_string *)_79]._M_dataplus._M_p, tmp513
	beq	L491		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3952: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_79].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_79].D.56371._M_allocated_capacity
	cmp	x19, x1	; __size, MEM[(struct basic_string *)_79].D.56371._M_allocated_capacity
	bls	L492		;,
L491:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x1, 9223372036854775806	; tmp293,
	sub	x1, x1, x22	; _260, tmp293, __sz
	cmp	x5, x1	; __sz, _260
	bhi	L549		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x3, x20	; D.163085._M_dataplus._M_p, tmp510
	beq	L494		;,
L550:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x0, x19	; __sz, __size
	bcc	L495		;,
L489:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:451: 	  if (__n)
	cbz	x5, L496	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:452: 	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
	add	x0, x3, x22	; _268, D.163085._M_dataplus._M_p, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x5, 1	; __sz,
	beq	L605		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x5	;, __sz
	mov	x1, x26	;, _252
	bl	_memcpy		;
	ldr	x3, [x29, 192]	; D.163085._M_dataplus._M_p, D.163085._M_dataplus._M_p
L496:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x19, [x29, 200]	; __size, D.163085._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x25, x29, 272	; tmp516,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x3, x19]	;, MEM[(char_type &)_271]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:282: 	    if (_M_string_length > _S_local_capacity)
	ldp	x0, x19, [x29, 192]	; _310, pretmp_563,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x25, [x29, 256]	; tmp516, MEM[(struct _Alloc_hider *)_75]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x20	; _310, tmp510
	beq	L606		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x29, 208]	; D.163085.D.56371._M_allocated_capacity, D.163085.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x0, [x29, 256]	; _310, MEM[(struct basic_string *)_75]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x1, [x29, 272]	; D.163085.D.56371._M_allocated_capacity, MEM[(struct basic_string *)_75].D.56371._M_allocated_capacity
L508:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x20, xzr, [x29, 192]	; tmp510,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x29, 208]	;, MEM[(char_type &)&D.163085 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x19, [x29, 264]	; pretmp_563,
L509:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	adrp	x1, lC17@PAGE	; tmp377,
	add	x0, x29, 256	;,,
	add	x1, x1, lC17@PAGEOFF;	;, tmp377,
LEHB37:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc		;
LEHE37:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	mov	x1, x0	;, _35
	add	x0, x29, 288	;,,
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC18@PAGE	; tmp381,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 5	;,
	add	x1, x1, lC18@PAGEOFF;	;, tmp381,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldp	x26, x27, [x29, 288]	; _36, __sz,
LEHB38:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/string_view:769:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, x27	;, __sz
	mov	x1, x26	;, _36
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC19@PAGE	; tmp385,
	mov	x2, 5	;,
	add	x1, x1, lC19@PAGEOFF;	;, tmp385,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LEHE38:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _58, MEM[(struct basic_string *)_59]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 304	; tmp387,,
	cmp	x0, x1	; _58, tmp387
	beq	L522		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_59].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_59].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_59].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L522:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 256]	; _54, MEM[(struct basic_string *)_75]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	; _54, tmp516
	beq	L523		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string *)_75].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_75].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_75].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L523:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _50, MEM[(struct basic_string *)_79]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _50, tmp513
	beq	L524		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_79].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_79].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_79].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L524:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _46, D.163085._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x20	; _46, tmp510
	beq	L525		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; D.163085.D.56371._M_allocated_capacity, D.163085.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.163085.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L525:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 160]	; _42, D.163078._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 176	; tmp403,,
	cmp	x0, x1	; _42, tmp403
	beq	L526		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 176]	; D.163078.D.56371._M_allocated_capacity, D.163078.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.163078.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L526:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 128]	; _38, D.163077._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x21	; _38, tmp508
	beq	L527		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 144]	; D.163077.D.56371._M_allocated_capacity, D.163077.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.163077.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L527:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC20@PAGE	; tmp411,
	mov	x2, 67	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC20@PAGEOFF;	;, tmp411,
LEHB39:
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b3_error_handling.cpp:116:       << "  eff_sum co_awaits N eff_div calls inside a single coroutine.\n\n";
	adrp	x1, lC21@PAGE	; tmp414,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC21@PAGEOFF;	;, tmp414,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
; b3_error_handling.cpp:118:   auto p0   = make_pairs(N, 0);   // 0% failure  — denom always non-zero
	mov	x8, x23	;, tmp511
	mov	w0, 0	;,
	bl	__ZL10make_pairsii.constprop.0		;
LEHE39:
; b3_error_handling.cpp:119:   auto p10  = make_pairs(N, 10);  // 10% failure — every 10th is zero
	add	x8, x29, 256	;,,
	mov	w0, 10	;,
LEHB40:
	bl	__ZL10make_pairsii.constprop.0		;
LEHE40:
; b3_error_handling.cpp:120:   auto p100 = make_pairs(N, 1);   // 100% failure — all denominators zero
	add	x8, x29, 288	;,,
	mov	w0, 1	;,
LEHB41:
	bl	__ZL10make_pairsii.constprop.0		;
LEHE41:
; b3_error_handling.cpp:122:   run_trio("0% failure rate (happy path only):", p0,   REPS);
	adrp	x0, lC22@PAGE	; tmp421,
	mov	x1, x23	;, tmp511
	add	x0, x0, lC22@PAGEOFF;	;, tmp421,
LEHB42:
	bl	__ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0		;
; b3_error_handling.cpp:123:   run_trio("10% failure rate (mixed):",          p10,  REPS);
	adrp	x0, lC23@PAGE	; tmp424,
	add	x1, x29, 256	;,,
	add	x0, x0, lC23@PAGEOFF;	;, tmp424,
	bl	__ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0		;
; b3_error_handling.cpp:124:   run_trio("100% failure rate (all errors):",    p100, REPS);
	adrp	x0, lC24@PAGE	; tmp427,
	add	x1, x29, 288	;,,
	add	x0, x0, lC24@PAGEOFF;	;, tmp427,
	bl	__ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC25@PAGE	; tmp429,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 7	;,
	add	x1, x1, lC25@PAGEOFF;	;, tmp429,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC26@PAGE	; tmp432,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 59	;,
	add	x1, x1, lC26@PAGEOFF;	;, tmp432,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC27@PAGE	; tmp435,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 58	;,
	add	x1, x1, lC27@PAGEOFF;	;, tmp435,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC28@PAGE	; tmp438,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 70	;,
	add	x1, x1, lC28@PAGEOFF;	;, tmp438,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b3_error_handling.cpp:131:       << "               propagation is automatic — no manual .value_or() needed.\n";
	adrp	x1, lC29@PAGE	; tmp441,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC29@PAGEOFF;	;, tmp441,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc		;
LEHE42:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	ldr	x0, [x29, 288]	; _70, MEM[(struct _Vector_base *)_59]._M_impl.D.155717._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x0, L528	; _70,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x29, 304]	; MEM[(struct _Vector_base *)_59]._M_impl.D.155717._M_end_of_storage, MEM[(struct _Vector_base *)_59]._M_impl.D.155717._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	;, MEM[(struct _Vector_base *)_59]._M_impl.D.155717._M_end_of_storage, _70
	bl	__ZdlPvm		;
L528:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	ldr	x0, [x29, 256]	; _66, MEM[(struct _Vector_base *)_75]._M_impl.D.155717._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x0, L529	; _66,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x29, 272]	; MEM[(struct _Vector_base *)_75]._M_impl.D.155717._M_end_of_storage, MEM[(struct _Vector_base *)_75]._M_impl.D.155717._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	;, MEM[(struct _Vector_base *)_75]._M_impl.D.155717._M_end_of_storage, _66
	bl	__ZdlPvm		;
L529:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	ldr	x0, [x29, 224]	; _62, MEM[(struct _Vector_base *)_79]._M_impl.D.155717._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x0, L575	; _62,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x29, 240]	; MEM[(struct _Vector_base *)_79]._M_impl.D.155717._M_end_of_storage, MEM[(struct _Vector_base *)_79]._M_impl.D.155717._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	;, MEM[(struct _Vector_base *)_79]._M_impl.D.155717._M_end_of_storage, _62
	bl	__ZdlPvm		;
L575:
; b3_error_handling.cpp:133: }
	ldr	x27, [sp, 80]	;,
	mov	w0, 0	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 320	;,,,
LCFI107:
	ret	
L477:
LCFI108:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:460: 	if (__n == 1)
	cmp	x19, 1	; __sz,
	beq	L607		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	mov	x2, x19	;, __sz
	mov	x1, x25	;, _187
	add	x0, x25, 34	;, _187,
	bl	_memmove		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	b	L478		;
L602:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	add	x0, x25, x19	; _196, _187, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x3, x0	; __x.23_194, _196
	bhi	L475		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:576: 	    _M_replace_cold(__p, __len1, __s, __len2, __how_much);
	mov	x5, x19	;, __sz
	mov	x1, x25	;, _187
	mov	x4, 34	;,
	mov	x2, 0	;,
	mov	x0, x23	;, tmp507
LEHB43:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm		;
LEHE43:
	b	L479		;
L492:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 9223372036854775806	; tmp344,
	sub	x0, x0, x5	; _430, tmp344, __sz
	cmp	x22, x0	; __sz, _430
	bhi	L608		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x6, x3	; MEM[(struct basic_string *)_79]._M_dataplus._M_p, D.163085._M_dataplus._M_p
	bls	L609		;,
L511:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	cmp	x5, 0	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	ccmp	x22, 0, 4, ne	; __sz,,,
	beq	L610		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:571: 		this->_S_move(__p + __len2, __p + __len1, __how_much);
	add	x0, x6, x22	; _339, MEM[(struct basic_string *)_79]._M_dataplus._M_p, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:460: 	if (__n == 1)
	cmp	x5, 1	; __sz,
	beq	L611		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	mov	x1, x6	;, MEM[(struct basic_string *)_79]._M_dataplus._M_p
	mov	x2, x5	;, __sz
	stp	x3, x6, [x29, 112]	; D.163085._M_dataplus._M_p, MEM[(struct basic_string *)_79]._M_dataplus._M_p,
	bl	_memmove		;
	ldp	x3, x6, [x29, 112]	; D.163085._M_dataplus._M_p, MEM[(struct basic_string *)_79]._M_dataplus._M_p,
L517:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x22, 1	; __sz,
	beq	L612		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x0, x6	;, MEM[(struct basic_string *)_79]._M_dataplus._M_p
	mov	x2, x22	;, __sz
	mov	x1, x3	;, D.163085._M_dataplus._M_p
	bl	_memcpy		;
	ldr	x6, [x29, 224]	; MEM[(struct basic_string *)_79]._M_dataplus._M_p, MEM[(struct basic_string *)_79]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	L515		;
L494:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x19, x0	; __size, __sz
	bls	L489		;,
L495:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:148:       if (__capacity > max_size())
	mov	x1, 9223372036854775806	; tmp303,
	cmp	x19, x1	; __size, tmp303
	bhi	L613		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x25, x0, 1	; __new_capacity, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x19, x25	; __size, __new_capacity
	bcc	L499		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x19, 1	; _294, __size,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x25, x19	; __new_capacity, __size
L500:
	stp	x3, x5, [x29, 112]	; D.163085._M_dataplus._M_p, __sz,
LEHB44:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	ldp	x3, x5, [x29, 112]	; D.163085._M_dataplus._M_p, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x4, x0	; _308, _308
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:365:       if (__pos)
	cbz	x22, L501	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x22, 1	; __sz,
	beq	L614		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x3	;, D.163085._M_dataplus._M_p
	mov	x2, x22	;, __sz
	stp	x0, x5, [x29, 104]	; _308, __sz,
	str	x3, [x29, 120]	; D.163085._M_dataplus._M_p, %sfp
	bl	_memcpy		;
	ldr	x3, [x29, 120]	; D.163085._M_dataplus._M_p, %sfp
	ldp	x4, x5, [x29, 104]	; _308, __sz,
L503:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	cmp	x26, 0	; _252,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	ccmp	x5, 0, 4, ne	; __sz,,,
	beq	L504		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x0, x4, x22	; _287, _308, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x5, 1	; __sz,
	bne	L505		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x26]	; _288, MEM[(const char_type &)_374]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x4, x22]	; _288, MEM[(char_type &)_287]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L504		;
L604:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x1, 9223372036854775806	; tmp499,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x26, [x29, 224]	; _252, MEM[(struct basic_string *)_79]._M_dataplus._M_p
	add	x24, x29, 240	; tmp513,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	sub	x1, x1, x22	; _414, tmp499, __sz
	cmp	x5, x1	; __sz, _414
	bls	L550		;,
L549:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC12@PAGE	; tmp295,
	add	x0, x0, lC12@PAGEOFF;	;, tmp295,
	bl	__ZSt20__throw_length_errorPKc		;
L609:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	add	x0, x6, x5	; _334, MEM[(struct basic_string *)_79]._M_dataplus._M_p, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x3, x0	; D.163085._M_dataplus._M_p, _334
	bhi	L511		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:576: 	    _M_replace_cold(__p, __len1, __s, __len2, __how_much);
	mov	x4, x22	;, __sz
	mov	x1, x6	;, MEM[(struct basic_string *)_79]._M_dataplus._M_p
	mov	x2, 0	;,
	mov	x0, x23	;, tmp511
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm		;
LEHE44:
	ldr	x6, [x29, 224]	; MEM[(struct basic_string *)_79]._M_dataplus._M_p, MEM[(struct basic_string *)_79]._M_dataplus._M_p
	b	L515		;
L605:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x26]	; _269, MEM[(const char_type &)_376]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x3, x22]	; _269, MEM[(char_type &)_268]
	ldr	x3, [x29, 192]	; D.163085._M_dataplus._M_p, D.163085._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L496		;
L499:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	cmp	x25, x1	; __new_capacity, tmp303
	bls	L615		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x25, x1	; __new_capacity, tmp303
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _294,
	b	L500		;
L501:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	cmp	x5, 0	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:367:       if (__s && __len2)
	ccmp	x26, 0, 4, ne	; _252,,,
	beq	L504		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	mov	x0, x4	; _287, _308
L505:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x5	;, __sz
	mov	x1, x26	;, _252
	stp	x3, x4, [x29, 112]	; D.163085._M_dataplus._M_p, _308,
	bl	_memcpy		;
	ldp	x3, x4, [x29, 112]	; D.163085._M_dataplus._M_p, _308,
L504:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x3, x20	; D.163085._M_dataplus._M_p, tmp510
	beq	L506		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x3	;, D.163085._M_dataplus._M_p
	str	x4, [x29, 120]	; _308, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; D.163085.D.56371._M_allocated_capacity, D.163085.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.163085.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
	ldr	x4, [x29, 120]	; _308, %sfp
L506:
	mov	x3, x4	; D.163085._M_dataplus._M_p, _308
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x4, [x29, 192]	; _308, D.163085._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x25, [x29, 208]	; __new_capacity, D.163085.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L496		;
L603:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3952: 	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
	cmp	x19, 15	; __size,
	bls	L616		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	mov	x0, 15	; __sz,
	b	L488		;
L606:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x19, 1	;, pretmp_563,
	mov	x1, x20	;, tmp510
	mov	x0, x25	;, tmp516
	bl	_memcpy		;
	b	L508		;
L607:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x25]	;, MEM[(const char_type &)_187]
	strb	w0, [x25, 34]	; MEM[(const char_type &)_187], MEM[(char_type &)_187 + 34]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L478		;
L473:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x19, 35	; _352, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x24, x22	; __new_capacity, _185
L482:
LEHB45:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE45:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x2, lC15@PAGE	; tmp263,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x20, x0	; _243, _243
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x2, lC15@PAGEOFF;	; tmp262, tmp263,
	ldrh	w0, [x2, 32]	;, MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="]
	ldp	q31, q30, [x2]	; MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="], MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="],
	strh	w0, [x20, 32]	; MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="], MEM <char[1:34]> [(void *)_243]
	stp	q31, q30, [x20]	; MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="], MEM <char[1:34]> [(void *)"b3: error handling strategies  (N="],* _243
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:369:       if (__how_much)
	cbz	x19, L599	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x19, 1	; __sz,
	beq	L617		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x19	;, __sz
	mov	x1, x25	;, _187
	add	x0, x20, 34	;, _243,
	bl	_memcpy		;
L599:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x25, x21	; _187, tmp508
	beq	L486		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 144]	; D.163077.D.56371._M_allocated_capacity, D.163077.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x25	;, _187
	add	x1, x1, 1	;, D.163077.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L486:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x20, [x29, 128]	; _243, D.163077._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x24, [x29, 144]	; __new_capacity, D.163077.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L479		;
L610:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:572: 	      if (__len2)
	cbnz	x22, L517	; __sz,
L515:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x19, [x29, 232]	; __size, MEM[(struct basic_string *)_79]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	add	x25, x29, 272	; tmp516,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x6, x19]	;, MEM[(char_type &)_344]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:282: 	    if (_M_string_length > _S_local_capacity)
	ldp	x0, x19, [x29, 224]	; _383, pretmp_564,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	str	x25, [x29, 256]	; tmp516, MEM[(struct _Alloc_hider *)_75]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _383, tmp513
	beq	L618		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string &)_79].D.56371._M_allocated_capacity, MEM[(struct basic_string &)_79].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x0, [x29, 256]	; _383, MEM[(struct basic_string *)_75]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x1, [x29, 272]	; MEM[(struct basic_string &)_79].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_75].D.56371._M_allocated_capacity
L521:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	stp	x24, xzr, [x29, 224]	; tmp513,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x29, 240]	;, MEM[(char_type &)_79 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x19, [x29, 264]	; pretmp_564,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:763:       }
	b	L509		;
L616:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x26, [x29, 224]	; _252, MEM[(struct basic_string *)_79]._M_dataplus._M_p
	add	x24, x29, 240	; tmp513,,
	b	L489		;
L617:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x25]	; _229, MEM[(const char_type &)_187]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x20, 34]	; _229, MEM[(char_type &)_243 + 34]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L599		;
L615:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x25, 1	; _294, __new_capacity,
	b	L500		;
L612:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x3]	; _342, MEM[(const char_type &)_248]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x6]	; _342, MEM[(char_type &)_252]
	ldr	x6, [x29, 224]	; MEM[(struct basic_string *)_79]._M_dataplus._M_p, MEM[(struct basic_string *)_79]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L515		;
L611:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x6]	; _341, MEM[(const char_type &)_252]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x6, x22]	; _341, MEM[(char_type &)_339]
	b	L517		;
L614:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x3]	; _283, MEM[(const char_type &)_248]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x4]	; _283, MEM[(char_type &)_308]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L503		;
L618:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x2, x19, 1	;, pretmp_564,
	mov	x1, x24	;, tmp513
	mov	x0, x25	;, tmp516
	bl	_memcpy		;
	b	L521		;
L474:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x24, x0, 1	; __new_capacity, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x22, x24	; _185, __new_capacity
	bcs	L473		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	mov	x0, 9223372036854775806	; tmp260,
	cmp	x24, x0	; __new_capacity, tmp260
	bhi	L552		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x24, 1	; _352, __new_capacity,
	b	L482		;
L552:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x24, x0	; __new_capacity, tmp260
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _352,
	b	L482		;
L613:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	adrp	x0, lC13@PAGE	; tmp305,
	add	x0, x0, lC13@PAGEOFF;	;, tmp305,
LEHB46:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE46:
L560:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp454, tmp522
L533:
	ldr	x0, [x29, 256]	; _78, MEM[(struct basic_string *)_75]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x25	; _78, tmp516
	beq	L535		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string *)_75].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_75].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_75].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L535:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 224]	; _82, MEM[(struct basic_string *)_79]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x24	; _82, tmp513
	beq	L537		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 240]	; MEM[(struct basic_string *)_79].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_79].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_79].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L537:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 192]	; _86, D.163085._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x20	; _86, tmp510
	bne	L619		;,
L539:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 160]	; _90, D.163078._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 176	; tmp477,,
	cmp	x0, x1	; _90, tmp477
	beq	L541		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 176]	; D.163078.D.56371._M_allocated_capacity, D.163078.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.163078.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L541:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 128]	; _94, D.163077._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x21	; _94, tmp508
	beq	L548		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 144]	; D.163077.D.56371._M_allocated_capacity, D.163077.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.163077.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L548:
	mov	x0, x19	;, tmp494
LEHB47:
	bl	__Unwind_Resume		;
LEHE47:
L557:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp474, tmp525
	b	L539		;
L601:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC14@PAGE	; tmp242,
	add	x21, x29, 144	; tmp508,,
	add	x0, x0, lC14@PAGEOFF;	;, tmp242,
LEHB48:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE48:
L608:
	adrp	x0, lC14@PAGE	; tmp346,
	add	x0, x0, lC14@PAGEOFF;	;, tmp346,
LEHB49:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE49:
L619:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 208]	; D.163085.D.56371._M_allocated_capacity, D.163085.D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, D.163085.D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L539		;
L559:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp462, tmp523
	b	L535		;
L561:
	ldr	x2, [x29, 288]	; _74, MEM[(struct basic_string *)_59]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 304	; tmp451,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp521,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x1	; _74, tmp451
	beq	L533		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_59].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_59].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _74
	add	x1, x1, 1	;, MEM[(struct basic_string *)_59].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L533		;
L556:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp480, tmp526
	b	L541		;
L562:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	mov	x19, x0	; tmp494, tmp529
L547:
	ldr	x0, [x29, 224]	; _106, MEM[(struct _Vector_base *)_79]._M_impl.D.155717._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x0, L548	; _106,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x29, 240]	; MEM[(struct _Vector_base *)_79]._M_impl.D.155717._M_end_of_storage, MEM[(struct _Vector_base *)_79]._M_impl.D.155717._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	;, MEM[(struct _Vector_base *)_79]._M_impl.D.155717._M_end_of_storage, _106
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	b	L548		;
L563:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	mov	x19, x0	; tmp488, tmp528
L545:
	ldr	x0, [x29, 256]	; _102, MEM[(struct _Vector_base *)_75]._M_impl.D.155717._M_start
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x0, L547	; _102,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x1, [x29, 272]	; MEM[(struct _Vector_base *)_75]._M_impl.D.155717._M_end_of_storage, MEM[(struct _Vector_base *)_75]._M_impl.D.155717._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sub	x1, x1, x0	;, MEM[(struct _Vector_base *)_75]._M_impl.D.155717._M_end_of_storage, _102
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	b	L547		;
L564:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	ldr	x1, [x29, 288]	; _98, MEM[(struct _Vector_base *)_59]._M_impl.D.155717._M_start
	mov	x19, x0	; tmp527,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:395: 	if (__p)
	cbz	x1, L545	; _98,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x2, [x29, 304]	; MEM[(struct _Vector_base *)_59]._M_impl.D.155717._M_end_of_storage, MEM[(struct _Vector_base *)_59]._M_impl.D.155717._M_end_of_storage
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x1	;, _98
	sub	x1, x2, x1	;, MEM[(struct _Vector_base *)_59]._M_impl.D.155717._M_end_of_storage, _98
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	b	L545		;
L558:
	add	x20, x29, 208	; tmp510,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp468, tmp524
	b	L537		;
LFE7074:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
LLSDA7074:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7074-LLSDACSB7074
LLSDACSB7074:
	.uleb128 LEHB35-LFB7074
	.uleb128 LEHE35-LEHB35
	.uleb128 L557-LFB7074
	.uleb128 0
	.uleb128 LEHB36-LFB7074
	.uleb128 LEHE36-LEHB36
	.uleb128 L558-LFB7074
	.uleb128 0
	.uleb128 LEHB37-LFB7074
	.uleb128 LEHE37-LEHB37
	.uleb128 L560-LFB7074
	.uleb128 0
	.uleb128 LEHB38-LFB7074
	.uleb128 LEHE38-LEHB38
	.uleb128 L561-LFB7074
	.uleb128 0
	.uleb128 LEHB39-LFB7074
	.uleb128 LEHE39-LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB40-LFB7074
	.uleb128 LEHE40-LEHB40
	.uleb128 L562-LFB7074
	.uleb128 0
	.uleb128 LEHB41-LFB7074
	.uleb128 LEHE41-LEHB41
	.uleb128 L563-LFB7074
	.uleb128 0
	.uleb128 LEHB42-LFB7074
	.uleb128 LEHE42-LEHB42
	.uleb128 L564-LFB7074
	.uleb128 0
	.uleb128 LEHB43-LFB7074
	.uleb128 LEHE43-LEHB43
	.uleb128 L556-LFB7074
	.uleb128 0
	.uleb128 LEHB44-LFB7074
	.uleb128 LEHE44-LEHB44
	.uleb128 L559-LFB7074
	.uleb128 0
	.uleb128 LEHB45-LFB7074
	.uleb128 LEHE45-LEHB45
	.uleb128 L556-LFB7074
	.uleb128 0
	.uleb128 LEHB46-LFB7074
	.uleb128 LEHE46-LEHB46
	.uleb128 L559-LFB7074
	.uleb128 0
	.uleb128 LEHB47-LFB7074
	.uleb128 LEHE47-LEHB47
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB48-LFB7074
	.uleb128 LEHE48-LEHB48
	.uleb128 L556-LFB7074
	.uleb128 0
	.uleb128 LEHB49-LFB7074
	.uleb128 LEHE49-LEHB49
	.uleb128 L559-LFB7074
	.uleb128 0
LLSDACSE7074:
	.section __TEXT,__text_startup,regular,pure_instructions
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
	.p2align 5,,15
__GLOBAL__sub_I_b3_error_handling.cpp:
LFB9854:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x1, __ZStL8__ioinit@PAGE	; tmp102,
; b3_error_handling.cpp:133: }
	stp	x29, x30, [sp, -32]!	;,,,
LCFI109:
	mov	x29, sp	;,
LCFI110:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	add	x1, x1, __ZStL8__ioinit@PAGEOFF;	; tmp101, tmp102,
; b3_error_handling.cpp:133: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	mov	x0, x1	;, tmp101
	str	x1, [x29, 24]	; tmp101, %sfp
	bl	__ZNSt8ios_base4InitC1Ev		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x2, ___dso_handle@PAGE	; tmp104,
	ldr	x1, [x29, 24]	; tmp101, %sfp
; b3_error_handling.cpp:133: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	add	x2, x2, ___dso_handle@PAGEOFF;	;, tmp104,
; b3_error_handling.cpp:133: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI111:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE	;,
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]	;,
	b	___cxa_atexit		;
LFE9854:
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
	.globl __ZN2fx6detail12effect_tag_vI4FailEE
	.weak_definition __ZN2fx6detail12effect_tag_vI4FailEE
	.const
__ZN2fx6detail12effect_tag_vI4FailEE:
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
	.quad	LFB6965-.
	.set L$set$4,LFE6965-LFB6965
	.quad L$set$4
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$5,LCFI0-LFB6965
	.long L$set$5
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$6,LCFI1-LCFI0
	.long L$set$6
	.byte	0xa
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.set L$set$7,LCFI2-LCFI1
	.long L$set$7
	.byte	0xb
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE3:
LSFDE5:
	.set L$set$9,LEFDE5-LASFDE5
	.long L$set$9
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB6958-.
	.set L$set$10,LFE6958-LFB6958
	.quad L$set$10
	.uleb128 0x8
	.quad	LLSDA6958-.
	.byte	0x4
	.set L$set$11,LCFI4-LFB6958
	.long L$set$11
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$13,LCFI6-LCFI5
	.long L$set$13
	.byte	0x93
	.uleb128 0x2
	.byte	0x94
	.uleb128 0x1
	.align	3
LEFDE5:
LSFDE7:
	.set L$set$14,LEFDE7-LASFDE7
	.long L$set$14
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB4726-.
	.set L$set$15,LFE4726-LFB4726
	.quad L$set$15
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$16,LCFI7-LFB4726
	.long L$set$16
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$17,LCFI8-LCFI7
	.long L$set$17
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$18,LCFI9-LCFI8
	.long L$set$18
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE7:
LSFDE9:
	.set L$set$19,LEFDE9-LASFDE9
	.long L$set$19
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB8148-.
	.set L$set$20,LFE8148-LFB8148
	.quad L$set$20
	.uleb128 0x8
	.quad	LLSDA8148-.
	.byte	0x4
	.set L$set$21,LCFI10-LFB8148
	.long L$set$21
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$22,LCFI11-LCFI10
	.long L$set$22
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$23,LCFI12-LCFI11
	.long L$set$23
	.byte	0x95
	.uleb128 0x8
	.byte	0x96
	.uleb128 0x7
	.byte	0x4
	.set L$set$24,LCFI13-LCFI12
	.long L$set$24
	.byte	0x93
	.uleb128 0xa
	.byte	0x94
	.uleb128 0x9
	.byte	0x4
	.set L$set$25,LCFI14-LCFI13
	.long L$set$25
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
	.set L$set$26,LCFI15-LCFI14
	.long L$set$26
	.byte	0xb
	.align	3
LEFDE9:
LSFDE11:
	.set L$set$27,LEFDE11-LASFDE11
	.long L$set$27
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB9860-.
	.set L$set$28,LFE9860-LFB9860
	.quad L$set$28
	.uleb128 0x8
	.quad	LLSDA9860-.
	.byte	0x4
	.set L$set$29,LCFI16-LFB9860
	.long L$set$29
	.byte	0xe
	.uleb128 0x70
	.byte	0x9d
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xd
	.byte	0x4
	.set L$set$30,LCFI17-LCFI16
	.long L$set$30
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$31,LCFI18-LCFI17
	.long L$set$31
	.byte	0x93
	.uleb128 0xc
	.byte	0x94
	.uleb128 0xb
	.byte	0x4
	.set L$set$32,LCFI19-LCFI18
	.long L$set$32
	.byte	0x95
	.uleb128 0xa
	.byte	0x96
	.uleb128 0x9
	.byte	0x4
	.set L$set$33,LCFI20-LCFI19
	.long L$set$33
	.byte	0x97
	.uleb128 0x8
	.byte	0x98
	.uleb128 0x7
	.byte	0x99
	.uleb128 0x6
	.byte	0x9a
	.uleb128 0x5
	.byte	0x9b
	.uleb128 0x4
	.byte	0x9c
	.uleb128 0x3
	.byte	0x4
	.set L$set$34,LCFI21-LCFI20
	.long L$set$34
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
	.set L$set$35,LCFI22-LCFI21
	.long L$set$35
	.byte	0xb
	.align	3
LEFDE11:
LSFDE13:
	.set L$set$36,LEFDE13-LASFDE13
	.long L$set$36
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB9863-.
	.set L$set$37,LFE9863-LFB9863
	.quad L$set$37
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$38,LCFI23-LFB9863
	.long L$set$38
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$39,LCFI24-LCFI23
	.long L$set$39
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$40,LCFI25-LCFI24
	.long L$set$40
	.byte	0x95
	.uleb128 0x4
	.byte	0x4
	.set L$set$41,LCFI26-LCFI25
	.long L$set$41
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$42,LCFI27-LCFI26
	.long L$set$42
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
	.set L$set$43,LCFI28-LCFI27
	.long L$set$43
	.byte	0xb
	.align	3
LEFDE13:
LSFDE15:
	.set L$set$44,LEFDE15-LASFDE15
	.long L$set$44
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB2842-.
	.set L$set$45,LFE2842-LFB2842
	.quad L$set$45
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$46,LCFI29-LFB2842
	.long L$set$46
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$47,LCFI30-LCFI29
	.long L$set$47
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$48,LCFI31-LCFI30
	.long L$set$48
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE15:
LSFDE17:
	.set L$set$49,LEFDE17-LASFDE17
	.long L$set$49
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB2804-.
	.set L$set$50,LFE2804-LFB2804
	.quad L$set$50
	.uleb128 0x8
	.quad	LLSDA2804-.
	.byte	0x4
	.set L$set$51,LCFI32-LFB2804
	.long L$set$51
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$52,LCFI33-LCFI32
	.long L$set$52
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$53,LCFI34-LCFI33
	.long L$set$53
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$54,LCFI35-LCFI34
	.long L$set$54
	.byte	0xd3
	.byte	0x4
	.set L$set$55,LCFI36-LCFI35
	.long L$set$55
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$56,LCFI37-LCFI36
	.long L$set$56
	.byte	0xb
	.byte	0x4
	.set L$set$57,LCFI38-LCFI37
	.long L$set$57
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$58,LCFI39-LCFI38
	.long L$set$58
	.byte	0xb
	.byte	0x4
	.set L$set$59,LCFI40-LCFI39
	.long L$set$59
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$60,LCFI41-LCFI40
	.long L$set$60
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE17:
LSFDE19:
	.set L$set$61,LEFDE19-LASFDE19
	.long L$set$61
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB2850-.
	.set L$set$62,LFE2850-LFB2850
	.quad L$set$62
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$63,LCFI42-LFB2850
	.long L$set$63
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$64,LCFI43-LCFI42
	.long L$set$64
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$65,LCFI44-LCFI43
	.long L$set$65
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$66,LCFI45-LCFI44
	.long L$set$66
	.byte	0xd3
	.byte	0x4
	.set L$set$67,LCFI46-LCFI45
	.long L$set$67
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$68,LCFI47-LCFI46
	.long L$set$68
	.byte	0xb
	.byte	0x4
	.set L$set$69,LCFI48-LCFI47
	.long L$set$69
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$70,LCFI49-LCFI48
	.long L$set$70
	.byte	0xb
	.byte	0x4
	.set L$set$71,LCFI50-LCFI49
	.long L$set$71
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$72,LCFI51-LCFI50
	.long L$set$72
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE19:
LSFDE21:
	.set L$set$73,LEFDE21-LASFDE21
	.long L$set$73
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB6914-.
	.set L$set$74,LFE6914-LFB6914
	.quad L$set$74
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$75,LCFI52-LFB6914
	.long L$set$75
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$76,LCFI53-LCFI52
	.long L$set$76
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$77,LCFI54-LCFI53
	.long L$set$77
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$78,LCFI55-LCFI54
	.long L$set$78
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x4
	.set L$set$79,LCFI56-LCFI55
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
LEFDE21:
LSFDE23:
	.set L$set$80,LEFDE23-LASFDE23
	.long L$set$80
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB7696-.
	.set L$set$81,LFE7696-LFB7696
	.quad L$set$81
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$82,LCFI57-LFB7696
	.long L$set$82
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$83,LCFI58-LCFI57
	.long L$set$83
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$84,LCFI59-LCFI58
	.long L$set$84
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$85,LCFI60-LCFI59
	.long L$set$85
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE23:
LSFDE25:
	.set L$set$86,LEFDE25-LASFDE25
	.long L$set$86
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB7023-.
	.set L$set$87,LFE7023-LFB7023
	.quad L$set$87
	.uleb128 0x8
	.quad	LLSDA7023-.
	.byte	0x4
	.set L$set$88,LCFI61-LFB7023
	.long L$set$88
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$89,LCFI62-LCFI61
	.long L$set$89
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$90,LCFI63-LCFI62
	.long L$set$90
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$91,LCFI64-LCFI63
	.long L$set$91
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$92,LCFI65-LCFI64
	.long L$set$92
	.byte	0xb
	.byte	0x4
	.set L$set$93,LCFI66-LCFI65
	.long L$set$93
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$94,LCFI67-LCFI66
	.long L$set$94
	.byte	0xb
	.byte	0x4
	.set L$set$95,LCFI68-LCFI67
	.long L$set$95
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$96,LCFI69-LCFI68
	.long L$set$96
	.byte	0xb
	.byte	0x4
	.set L$set$97,LCFI70-LCFI69
	.long L$set$97
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$98,LCFI71-LCFI70
	.long L$set$98
	.byte	0xb
	.align	3
LEFDE25:
LSFDE27:
	.set L$set$99,LEFDE27-LASFDE27
	.long L$set$99
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB7024-.
	.set L$set$100,LFE7024-LFB7024
	.quad L$set$100
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE27:
LSFDE29:
	.set L$set$101,LEFDE29-LASFDE29
	.long L$set$101
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB7040-.
	.set L$set$102,LFE7040-LFB7040
	.quad L$set$102
	.uleb128 0x8
	.quad	LLSDA7040-.
	.byte	0x4
	.set L$set$103,LCFI72-LFB7040
	.long L$set$103
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$104,LCFI73-LCFI72
	.long L$set$104
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$105,LCFI74-LCFI73
	.long L$set$105
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$106,LCFI75-LCFI74
	.long L$set$106
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x4
	.set L$set$107,LCFI76-LCFI75
	.long L$set$107
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
	.set L$set$108,LCFI77-LCFI76
	.long L$set$108
	.byte	0xb
	.byte	0x4
	.set L$set$109,LCFI78-LCFI77
	.long L$set$109
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
	.set L$set$110,LCFI79-LCFI78
	.long L$set$110
	.byte	0xb
	.byte	0x4
	.set L$set$111,LCFI80-LCFI79
	.long L$set$111
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
	.set L$set$112,LCFI81-LCFI80
	.long L$set$112
	.byte	0xb
	.align	3
LEFDE29:
LSFDE31:
	.set L$set$113,LEFDE31-LASFDE31
	.long L$set$113
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB7048-.
	.set L$set$114,LFE7048-LFB7048
	.quad L$set$114
	.uleb128 0x8
	.quad	LLSDA7048-.
	.byte	0x4
	.set L$set$115,LCFI82-LFB7048
	.long L$set$115
	.byte	0xe
	.uleb128 0xa0
	.byte	0x9d
	.uleb128 0x14
	.byte	0x9e
	.uleb128 0x13
	.byte	0x4
	.set L$set$116,LCFI83-LCFI82
	.long L$set$116
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$117,LCFI84-LCFI83
	.long L$set$117
	.byte	0x97
	.uleb128 0xe
	.byte	0x98
	.uleb128 0xd
	.byte	0x4
	.set L$set$118,LCFI85-LCFI84
	.long L$set$118
	.byte	0x93
	.uleb128 0x12
	.byte	0x94
	.uleb128 0x11
	.byte	0x95
	.uleb128 0x10
	.byte	0x96
	.uleb128 0xf
	.byte	0x4
	.set L$set$119,LCFI86-LCFI85
	.long L$set$119
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
	.set L$set$120,LCFI87-LCFI86
	.long L$set$120
	.byte	0xb
	.align	3
LEFDE31:
LSFDE33:
	.set L$set$121,LEFDE33-LASFDE33
	.long L$set$121
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB9873-.
	.set L$set$122,LFE9873-LFB9873
	.quad L$set$122
	.uleb128 0x8
	.quad	LLSDA9873-.
	.byte	0x4
	.set L$set$123,LCFI88-LFB9873
	.long L$set$123
	.byte	0xe
	.uleb128 0xe0
	.byte	0x9d
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1b
	.byte	0x4
	.set L$set$124,LCFI89-LCFI88
	.long L$set$124
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$125,LCFI90-LCFI89
	.long L$set$125
	.byte	0x93
	.uleb128 0x1a
	.byte	0x94
	.uleb128 0x19
	.byte	0x4
	.set L$set$126,LCFI91-LCFI90
	.long L$set$126
	.byte	0x95
	.uleb128 0x18
	.byte	0x96
	.uleb128 0x17
	.byte	0x4
	.set L$set$127,LCFI92-LCFI91
	.long L$set$127
	.byte	0x97
	.uleb128 0x16
	.byte	0x98
	.uleb128 0x15
	.byte	0x99
	.uleb128 0x14
	.byte	0x9a
	.uleb128 0x13
	.byte	0x4
	.set L$set$128,LCFI93-LCFI92
	.long L$set$128
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x10
	.byte	0x4
	.set L$set$129,LCFI94-LCFI93
	.long L$set$129
	.byte	0xa
	.byte	0xde
	.byte	0xdd
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
	.set L$set$130,LCFI95-LCFI94
	.long L$set$130
	.byte	0xb
	.align	3
LEFDE33:
LSFDE35:
	.set L$set$131,LEFDE35-LASFDE35
	.long L$set$131
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB7041-.
	.set L$set$132,LFE7041-LFB7041
	.quad L$set$132
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE35:
LSFDE37:
	.set L$set$133,LEFDE37-LASFDE37
	.long L$set$133
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB8164-.
	.set L$set$134,LFE8164-LFB8164
	.quad L$set$134
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$135,LCFI96-LFB8164
	.long L$set$135
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$136,LCFI97-LCFI96
	.long L$set$136
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$137,LCFI98-LCFI97
	.long L$set$137
	.byte	0x93
	.uleb128 0xa
	.byte	0x94
	.uleb128 0x9
	.byte	0x4
	.set L$set$138,LCFI99-LCFI98
	.long L$set$138
	.byte	0x95
	.uleb128 0x8
	.byte	0x96
	.uleb128 0x7
	.byte	0x97
	.uleb128 0x6
	.byte	0x98
	.uleb128 0x5
	.byte	0x4
	.set L$set$139,LCFI100-LCFI99
	.long L$set$139
	.byte	0x99
	.uleb128 0x4
	.byte	0x4
	.set L$set$140,LCFI101-LCFI100
	.long L$set$140
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
	.set L$set$141,LCFI102-LCFI101
	.long L$set$141
	.byte	0xb
	.align	3
LEFDE37:
LSFDE39:
	.set L$set$142,LEFDE39-LASFDE39
	.long L$set$142
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB7074-.
	.set L$set$143,LFE7074-LFB7074
	.quad L$set$143
	.uleb128 0x8
	.quad	LLSDA7074-.
	.byte	0x4
	.set L$set$144,LCFI103-LFB7074
	.long L$set$144
	.byte	0xe
	.uleb128 0x140
	.byte	0x9d
	.uleb128 0x28
	.byte	0x9e
	.uleb128 0x27
	.byte	0x4
	.set L$set$145,LCFI104-LCFI103
	.long L$set$145
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$146,LCFI105-LCFI104
	.long L$set$146
	.byte	0x97
	.uleb128 0x22
	.byte	0x98
	.uleb128 0x21
	.byte	0x4
	.set L$set$147,LCFI106-LCFI105
	.long L$set$147
	.byte	0x93
	.uleb128 0x26
	.byte	0x94
	.uleb128 0x25
	.byte	0x95
	.uleb128 0x24
	.byte	0x96
	.uleb128 0x23
	.byte	0x99
	.uleb128 0x20
	.byte	0x9a
	.uleb128 0x1f
	.byte	0x9b
	.uleb128 0x1e
	.byte	0x4
	.set L$set$148,LCFI107-LCFI106
	.long L$set$148
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
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
	.set L$set$149,LCFI108-LCFI107
	.long L$set$149
	.byte	0xb
	.align	3
LEFDE39:
LSFDE41:
	.set L$set$150,LEFDE41-LASFDE41
	.long L$set$150
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB9854-.
	.set L$set$151,LFE9854-LFB9854
	.quad L$set$151
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$152,LCFI109-LFB9854
	.long L$set$152
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$153,LCFI110-LCFI109
	.long L$set$153
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$154,LCFI111-LCFI110
	.long L$set$154
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE41:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_b3_error_handling.cpp
	.subsections_via_symbols
