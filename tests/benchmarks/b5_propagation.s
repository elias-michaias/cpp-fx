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
	.globl __ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.weak_definition __ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
__ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
LFB8016:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x0, [x1, 8]	; _4, MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr
; ../../effects.hpp:1229:   pa->result_ = std::move(v);
	mov	w2, 1	; tmp105,
	str	w2, [x1, 4]	; tmp105, MEM[(struct PerformAwaitable *)_3(D)].result_
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)_4], MEM[(void (*<T11f>) (void *) *)_4]
	mov	x16, x1	; MEM[(void (*<T11f>) (void *) *)_4], MEM[(void (*<T11f>) (void *) *)_4]
	br	x16		; MEM[(void (*<T11f>) (void *) *)_4]
LFE8016:
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
	bhi	L7		;,
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
	bhi	L7		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x3, x3, x7	; _6, _22, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x4	; <retval>, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x3, x3, x4	; prephitmp_1, _6, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x4, x3, [x5, 8]	; <retval>, prephitmp_1,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x4, L7	; <retval>,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x3, x3, x1	; _10, prephitmp_1, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x4, x1	; _8, <retval>, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x3, [x5, 8]	; _8, _10,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:430:     }
	ret	
	.p2align 2,,3
L7:
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
__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
LFB9660:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:736:       if (!__s)
	cbz	x1, L18	; __s,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:734:     operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
	stp	x29, x30, [sp, -48]!	;,,,
LCFI3:
	mov	x29, sp	;,
LCFI4:
	str	x19, [sp, 16]	;,
LCFI5:
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
LCFI6:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	b	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	.p2align 2,,3
L18:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:737: 	__out.setstate(ios_base::badbit);
	ldr	x1, [x0]	; __out_2(D)->_vptr.basic_ostream, __out_2(D)->_vptr.basic_ostream
	ldr	x1, [x1, -24]	; MEM[(long int *)_9 + -24B], MEM[(long int *)_9 + -24B]
	add	x0, x0, x1	; _12, __out, MEM[(long int *)_9 + -24B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ios_base.h:198:   { return _Ios_Iostate(static_cast<int>(__a) | static_cast<int>(__b)); }
	ldr	w1, [x0, 32]	;, MEM[(const struct basic_ios *)_12].D.74430._M_streambuf_state
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_ios.h:167:       { this->clear(this->rdstate() | __state); }
	orr	w1, w1, 1	;, MEM[(const struct basic_ios *)_12].D.74430._M_streambuf_state,
	b	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate		;
LFE9660:
	.cstring
	.align	3
lC0:
	.ascii "basic_string: construction from null is not valid\0"
	.text
	.align	2
	.p2align 5,,15
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0:
LFB9662:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI7:
	mov	x29, sp	;,
LCFI8:
	str	x21, [sp, 32]	;,
LCFI9:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	add	x21, x0, 16	; _2, this,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:706:       basic_string(const _CharT* __s, const _Alloc& __a = _Alloc())
	stp	x19, x20, [sp, 16]	;,,
LCFI10:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:205: 	: allocator_type(__a), _M_p(__dat) { }
	str	x21, [x0]	; _2, MEM[(struct _Alloc_hider *)this_1(D)]._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:710: 	if (__s == 0)
	cbz	x1, L29	; __s,
	mov	x19, x0	; this, this
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	mov	x0, x1	;, __s
	mov	x20, x1	; __s, __s
	bl	_strlen		;
	mov	x2, x0	; _4, _4
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:233: 	if (__dnew > size_type(_S_local_capacity))
	cmp	x0, 15	; _4,
	bhi	L30		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x0, 1	; _4,
	beq	L31		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:423: 	if (__n == 0)
	cbnz	x0, L22	; _4,
L24:
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
LCFI11:
	ret	
L31:
LCFI12:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x20]	;, MEM[(const char_type &)__s_3(D)]
	strb	w0, [x19, 16]	; MEM[(const char_type &)__s_3(D)], MEM[(char_type &)this_1(D) + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L24		;
L30:
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
L22:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x20	;, __s
	mov	x0, x21	;, _2
	str	x2, [x29, 56]	; _4, %sfp
	bl	_memcpy		;
	ldr	x2, [x29, 56]	; _4, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	b	L24		;
L29:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:711: 	  std::__throw_logic_error(__N("basic_string: "
	adrp	x0, lC0@PAGE	; tmp110,
	add	x0, x0, lC0@PAGEOFF;	;, tmp110,
	bl	__ZSt19__throw_logic_errorPKc		;
LFE9662:
	.align	2
	.p2align 5,,15
__Z7ping_d1P18_ZL7ping_d1v.Frame.actor:
LFB6943:
	mov	x1, x0	; frame_ptr, frame_ptr
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	ldrh	w0, [x0, 168]	; _1, frame_ptr_7(D)->_Coro_resume_index
	tbz	x0, 0, L33	; _1,,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	cmp	w0, 7	; _1,
	bhi	L34		;,
L35:
L41:
L42:
L43:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	stp	x29, x30, [sp, -32]!	;,,,
LCFI13:
	mov	x29, sp	;,
LCFI14:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp139, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_7(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_7(D) + 128B]._M_exception_object
	cbz	x2, L44	; MEM[(struct exception_ptr *)frame_ptr_7(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L44:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp144, frame_ptr,
	ldr	x2, [x0, 48]	; _33, MEM[(struct SmallAny *)frame_ptr_7(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L45	; _33,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _33
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L45:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	ldrb	w0, [x1, 170]	; frame_ptr_7(D)->_Coro_frame_needs_free, frame_ptr_7(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L62	; frame_ptr_7(D)->_Coro_frame_needs_free,,
L40:
L32:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	ldp	x29, x30, [sp], 32	;,,,
LCFI15:
	ret	
	.p2align 2,,3
L33:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	cmp	w0, 4	; _1,
	beq	L36		;,
	bhi	L37		;,
	cbz	w0, L38	; _1,
L39:
	ldr	x3, [x1, 160]	; caller$_M_fr_ptr, frame_ptr_7(D)->_Coro_self_handle._M_fr_ptr
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	mov	w4, 1	; tmp122,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	mov	w5, 4	; tmp123,
; ../../effects.hpp:1210:     caller_ = caller;
	add	x2, x1, 176	; tmp125, frame_ptr,
; ../../effects.hpp:579:     return a;
	str	wzr, [x1, 180]	;, MEM <result_type> [(struct _ZL7ping_d1v.Frame *)frame_ptr_7(D) + 180B]
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	adrp	x0, __ZN2fx6detail12effect_tag_vI4PingEE@GOTPAGE	; tmp131,
	ldr	x0, [x0, __ZN2fx6detail12effect_tag_vI4PingEE@GOTPAGEOFF]	; tmp131,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	strh	w5, [x1, 168]	; tmp123, frame_ptr_7(D)->_Coro_resume_index
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	strb	w4, [x1, 171]	; tmp122, frame_ptr_7(D)->_Coro_initial_await_resume_called
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	add	x1, x3, 16	; __t_19, caller$_M_fr_ptr,
; ../../effects.hpp:1210:     caller_ = caller;
	stp	x3, x1, [x2, 8]	; caller$_M_fr_ptr, __t_19,
; ../../effects.hpp:1212:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	stp	x0, x2, [x3, 112]	; tmp131, tmp125,
	ret	
	.p2align 2,,3
L62:
LCFI16:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 208]	; mr, MEM[(struct memory_resource * *)frame_ptr_7(D) + 208B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L46	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x3, [x0]	; mr_37->_vptr.memory_resource, mr_37->_vptr.memory_resource
	adrp	x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp149,
	ldr	x2, [x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp149,
	ldr	x4, [x3, 24]	; _39, MEM[(int (*) () *)_38 + 24B]
	cmp	x4, x2	; _39, tmp149
	beq	L32		;,
	mov	x3, 16	;,
	mov	x2, 216	;,
	blr	x4		; _39
	b	L32		;
	.p2align 2,,3
L38:
LCFI17:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	mov	w0, 2	; tmp121,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	str	x1, [x1, 160]	; frame_ptr, frame_ptr_7(D)->_Coro_self_handle._M_fr_ptr
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	strb	wzr, [x1, 171]	;, frame_ptr_7(D)->_Coro_initial_await_resume_called
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	strh	w0, [x1, 168]	; tmp121, frame_ptr_7(D)->_Coro_resume_index
	ret	
	.p2align 2,,3
L36:
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	ldr	w0, [x1, 180]	;, MEM[(type &)frame_ptr_7(D) + 180]
	mov	w3, 1	; tmp136,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	mov	w2, 6	; tmp137,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	str	xzr, [x1]	;, frame_ptr_7(D)->_Coro_resume_fn
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	strb	w3, [x1, 148]	; tmp136, MEM <unsigned char> [(struct promise_type *)frame_ptr_7(D) + 148B]
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	strh	w2, [x1, 168]	; tmp137, frame_ptr_7(D)->_Coro_resume_index
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	str	w0, [x1, 144]	; MEM[(type &)frame_ptr_7(D) + 180], MEM <int> [(struct promise_type *)frame_ptr_7(D) + 144B]
	ret	
	.p2align 2,,3
L37:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	cmp	w0, 6	; _1,
	beq	L43		;,
L34:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	brk #1000
	.p2align 2,,3
L46:
LCFI18:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 216	;,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	ldp	x29, x30, [sp], 32	;,,,
LCFI19:
LEHB0:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE0:
LFE6943:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
LLSDA6943:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6943-LLSDACSB6943
LLSDACSB6943:
	.uleb128 LEHB0-LFB6943
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
LLSDACSE6943:
	.text
	.align	2
	.p2align 5,,15
__Z7ping_d1P18_ZL7ping_d1v.Frame.destroy:
LFB6944:
	mov	x1, x0	; frame_ptr, frame_ptr
	ldrh	w0, [x0, 168]	; tmp114, frame_ptr_4(D)->_Coro_resume_index
	orr	w0, w0, 1	; _2, tmp114,
	strh	w0, [x1, 168]	; _2, frame_ptr_4(D)->_Coro_resume_index
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	cmp	w0, 7	; _2,
	bhi	L71		;,
L65:
L66:
L67:
L68:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	stp	x29, x30, [sp, -32]!	;,,,
LCFI20:
	mov	x29, sp	;,
LCFI21:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x1, 128	; tmp117, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x2, [x1, 128]	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object
	cbz	x2, L70	; MEM[(struct exception_ptr *)frame_ptr_4(D) + 128B]._M_exception_object,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L70:
; ../../effects.hpp:132:     if (destroy_) {
	add	x0, x1, 32	; tmp122, frame_ptr,
	ldr	x2, [x0, 48]	; _17, MEM[(struct SmallAny *)frame_ptr_4(D) + 32B].destroy_
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x2, L72	; _17,
	str	x1, [x29, 24]	; frame_ptr, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x2		; _17
	ldr	x1, [x29, 24]	; frame_ptr, %sfp
L72:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	ldrb	w0, [x1, 170]	; frame_ptr_4(D)->_Coro_frame_needs_free, frame_ptr_4(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L83	; frame_ptr_4(D)->_Coro_frame_needs_free,,
L73:
L63:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	ldp	x29, x30, [sp], 32	;,,,
LCFI22:
	ret	
	.p2align 2,,3
L83:
LCFI23:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x1, 208]	; mr, MEM[(struct memory_resource * *)frame_ptr_4(D) + 208B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L74	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x3, [x0]	; mr_21->_vptr.memory_resource, mr_21->_vptr.memory_resource
	adrp	x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp127,
	ldr	x2, [x2, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp127,
	ldr	x4, [x3, 24]	; _23, MEM[(int (*) () *)_22 + 24B]
	cmp	x4, x2	; _23, tmp127
	beq	L63		;,
	mov	x3, 16	;,
	mov	x2, 216	;,
	blr	x4		; _23
	b	L63		;
	.p2align 2,,3
L74:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x1	;, frame_ptr
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x1, 216	;,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	ldp	x29, x30, [sp], 32	;,,,
LCFI24:
LEHB1:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE1:
L64:
L71:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	brk #1000
LFE6944:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
LLSDA6944:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6944-LLSDACSB6944
LLSDACSB6944:
	.uleb128 LEHB1-LFB6944
	.uleb128 LEHE1-LEHB1
	.uleb128 0
	.uleb128 0
LLSDACSE6944:
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
	beq	L91		;,
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
L91:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:742:       basic_string(basic_string&& __str) noexcept
	stp	x29, x30, [sp, -48]!	;,,,
LCFI25:
	mov	x29, sp	;,
LCFI26:
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
LCFI27:
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
	bls	L93		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	mov	x6, 22859	; tmp190,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	mov	x5, 34463	; tmp191,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4588:   {
	stp	x29, x30, [sp, -272]!	;,,,
LCFI28:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	movk	x6, 0x3886, lsl 16	; tmp190,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:4588:   {
	mov	x29, sp	;,
LCFI29:
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
	b	L98		;
	.p2align 2,,3
L94:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:71: 	  if (__value < __b3) return __n + 2;
	cmp	x1, 999	; __value,
	bls	L114		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:72: 	  if (__value < __b4) return __n + 3;
	cmp	x1, x3	; __value, tmp189
	bls	L115		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:73: 	  __value /= __b4;
	umulh	x0, x1, x6	; tmp133, __value, tmp190
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:74: 	  __n += 4;
	add	w2, w2, 4	; __n, __n,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:69: 	  if (__value < (unsigned)__base) return __n;
	cmp	x1, x5	; __value, tmp191
	bls	L95		;,
	lsr	x1, x0, 11	; __value, tmp133,
L98:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	cmp	x1, 99	; __value,
	bhi	L94		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:70: 	  if (__value < __b2) return __n + 1;
	add	w2, w2, 1	; __n, __n,
L95:
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
	bls	L100		;,
L116:
	str	x19, [x29, 16]	;,
LCFI30:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x12, 29	; _1,
	bls	L105		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x12, 1	; _31, _1,
	mov	x19, x12	; __res, _1
L101:
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
LCFI31:
	str	x0, [x8]	; _4, MEM[(struct basic_string *)__str_5(D)]._M_dataplus._M_p
	ldr	w2, [x29, 52]	;, %sfp
L100:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:89:       constexpr char __digits[201] =
	adrp	x1, lC1@PAGE	; tmp138,
	add	x7, x29, 64	; tmp187,,
	add	x1, x1, lC1@PAGEOFF;	; tmp137, tmp138,
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
	bls	L102		;,
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
L103:
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
	bhi	L103		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/charconv.h:104:       if (__val >= 10)
	cmp	x6, 999	; __val,
	bhi	L102		;,
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
LCFI32:
	ret	
	.p2align 2,,3
L102:
LCFI33:
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
LCFI34:
	ret	
	.p2align 2,,3
L114:
LCFI35:
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
	bhi	L116		;,
	b	L100		;
	.p2align 2,,3
L115:
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
	bhi	L116		;,
	b	L100		;
	.p2align 2,,3
L105:
LCFI36:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	mov	x19, 30	; __res,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 31	; _31,
	b	L101		;
L93:
LCFI37:
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
lC1:
	.ascii "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\0"
	.text
	.cstring
	.align	3
lC2:
	.ascii "  \0"
	.align	3
lC3:
	.ascii " \0"
	.align	3
lC4:
	.ascii " ns/iter\12\0"
	.text
	.align	2
	.p2align 5,,15
	.globl __Z12print_resultRK11BenchResult
	.weak_definition __Z12print_resultRK11BenchResult
__Z12print_resultRK11BenchResult:
LFB6914:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI38:
	mov	x29, sp	;,
LCFI39:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC2@PAGE	; tmp135,
	mov	x2, 2	;,
	add	x1, x1, lC2@PAGEOFF;	;, tmp135,
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	stp	x19, x20, [sp, 16]	;,,
LCFI40:
	mov	x20, x0	; r, r
; bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	ldr	d31, [x20, 32]	; r_2(D)->iters, r_2(D)->iters
; bench.hpp:47: inline void print_result(const BenchResult &r) {
	str	d15, [sp, 32]	;,
LCFI41:
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
	adrp	x1, lC3@PAGE	; tmp152,
	mov	x2, 1	;,
	add	x1, x1, lC3@PAGEOFF;	;, tmp152,
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
	adrp	x1, lC4@PAGE	; tmp164,
; bench.hpp:52: }
	ldr	d15, [sp, 32]	;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	x2, 9	;,
; bench.hpp:52: }
	ldp	x19, x20, [sp, 16]	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	add	x1, x1, lC4@PAGEOFF;	;, tmp164,
; bench.hpp:52: }
	ldp	x29, x30, [sp], 48	;,,,
LCFI42:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	b	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LFE6914:
	.align	2
	.p2align 5,,15
	.globl __ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv
	.weak_definition __ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv
__ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv:
LFB7613:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI43:
	mov	x29, sp	;,
LCFI44:
; ../../effects.hpp:546:   void unhandled_exception() { exception = std::current_exception(); }
	add	x8, x29, 32	;,,
; ../../effects.hpp:546:   void unhandled_exception() { exception = std::current_exception(); }
	stp	x19, x20, [sp, 16]	;,,
LCFI45:
; ../../effects.hpp:546:   void unhandled_exception() { exception = std::current_exception(); }
	mov	x19, x0	; this, this
; ../../effects.hpp:546:   void unhandled_exception() { exception = std::current_exception(); }
	bl	__ZSt17current_exceptionv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:124:       : _M_exception_object(__o._M_exception_object)
	ldr	x1, [x29, 32]	; _6, D.167040._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:223:       _M_exception_object = __other._M_exception_object;
	ldr	x0, [x19, 112]	; _7, MEM[(struct exception_ptr &)this_3(D) + 112]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:224:       __other._M_exception_object = __tmp;
	str	x1, [x19, 112]	; _6, MEM[(struct exception_ptr &)this_3(D) + 112]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:223:       _M_exception_object = __other._M_exception_object;
	stp	xzr, x0, [x29, 32]	;, _7,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x0, L119	; _7,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 40	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x0, [x29, 32]	; pretmp_19, D.167040._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x0, L119	; pretmp_19,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 32	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L119:
; ../../effects.hpp:546:   void unhandled_exception() { exception = std::current_exception(); }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI46:
	ret	
LFE7613:
	.cstring
	.align	3
lC5:
	.ascii "fx: unhandled effect -- no matching handler installed\0"
	.text
	.align	2
	.p2align 5,,15
__Z7ping_d2P18_ZL7ping_d2v.Frame.actor:
LFB6950:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI47:
	mov	x29, sp	;,
LCFI48:
	stp	x21, x22, [sp, 32]	;,,
LCFI49:
	mov	x21, x0	; frame_ptr, frame_ptr
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	ldrh	w0, [x0, 168]	; _1, frame_ptr_15(D)->_Coro_resume_index
	tbz	x0, 0, L127	; _1,,
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmp	w0, 5	; _1,
	bne	L218		;,
L128:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; _40, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L158	; _40,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_40 + 8B], MEM[(void (*<T11f>) (void *) *)_40 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_40 + 8B]
L158:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _17, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L161	; _17,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_17 + 8B], MEM[(void (*<T11f>) (void *) *)_17 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_17 + 8B]
L130:
L160:
L161:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x21, 128]	; MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x21, 128	; tmp239, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x1, L162	; MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L162:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x21, 80]	; _133, MEM[(struct SmallAny *)frame_ptr_15(D) + 32B].destroy_
	add	x0, x21, 32	; tmp244, frame_ptr,
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L163	; _133,
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x1		; _133
L163:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	ldrb	w0, [x21, 170]	; frame_ptr_15(D)->_Coro_frame_needs_free, frame_ptr_15(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L219	; frame_ptr_15(D)->_Coro_frame_needs_free,,
L126:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI50:
	ret	
	.p2align 2,,3
L127:
LCFI51:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmp	w0, 4	; _1,
	beq	L132		;,
	bhi	L133		;,
	cbz	w0, L134	; _1,
L135:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	mov	w1, 1	; tmp170,
	stp	x19, x20, [x29, 16]	;,,
LCFI52:
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	strb	w1, [x21, 171]	; tmp170, frame_ptr_15(D)->_Coro_initial_await_resume_called
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x19, [x0]	; mr, *_77
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x19, L138	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x1, [x19]	; mr_78->_vptr.memory_resource, mr_78->_vptr.memory_resource
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp173,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp173,
	ldr	x3, [x1, 16]	; _81, MEM[(int (*) () *)_80 + 16B]
	cmp	x3, x0	; _81, tmp173
	bne	L139		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x19, 16]	; _93, MEM[(size_t &)mr_78 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 215	; _93,
	bls	L142		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x1, [x19, 8]	; __intptr, MEM[(void * &)mr_78 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x3, x0, #216	; _102, _93,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x2, x1, 15	; _98, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x2, x2, -16	; __aligned, _98,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x4, x2, x1	; __diff_101, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x4, x3	; __diff_101, _102
	bhi	L142		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x1, x0, x1	; _62, _93, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x2	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x1, x1, x2	; _104, _62, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x2, x1, [x19, 8]	; __p, _104,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x2, L142	; __p,
L143:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x1, x1, #216	; _113, _104,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x2, x0, 216	; _111, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x2, x1, [x19, 8]	; _111, _113,
L144:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	adrp	x2, __Z7ping_d1P18_ZL7ping_d1v.Frame.actor@PAGE	; tmp182,
	adrp	x3, __Z7ping_d1P18_ZL7ping_d1v.Frame.destroy@PAGE	; tmp184,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp191
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	add	x2, x2, __Z7ping_d1P18_ZL7ping_d1v.Frame.actor@PAGEOFF;	; tmp181, tmp182,
	add	x3, x3, __Z7ping_d1P18_ZL7ping_d1v.Frame.destroy@PAGEOFF;	; tmp183, tmp184,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_84 + 16B].aborted
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	stp	x2, x3, [x0]	; tmp181, tmp183,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x2, x0, 144	; _76, __p,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	mov	w3, 65536	; tmp197,
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x0, 24]	;, MEM[(struct PromiseAbortBase *)raw_84 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x0, 32]	; MEM[(struct SmallAny *)raw_84 + 32B].buf_
	stp	xzr, xzr, [x0, 48]	; MEM[(struct SmallAny *)raw_84 + 32B].buf_
	stp	xzr, xzr, [x0, 64]	; MEM[(struct SmallAny *)raw_84 + 32B].buf_
	str	q31, [x0, 80]	; tmp191, MEM <vector(2) long unsigned int> [(void *)raw_84 + 80B]
	str	xzr, [x0, 96]	;, MEM[(struct SmallAny *)raw_84 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x0, 112]	; tmp191, MEM <vector(2) long unsigned int> [(const void * *)raw_84 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	stp	xzr, x2, [x0, 128]	;, _76,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x0, 148]	;, MEM[(struct _Optional_payload_base *)raw_84 + 144B]._M_engaged
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	str	w3, [x0, 168]	; tmp197, MEM <unsigned int> [(void *)raw_84 + 168B]
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x19, [x0, 208]	; mr, MEM[(struct memory_resource * *)raw_84 + 208B]
; ../../effects.hpp:609:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	str	x0, [x21, 184]	; __p, MEM[(struct OwnedHandle *)frame_ptr_15(D) + 184B]
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	bl	__Z7ping_d1P18_ZL7ping_d1v.Frame.actor		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	ldr	x0, [x21, 184]	; __old_val$_M_fr_ptr, MEM[(struct coroutine_handle &)frame_ptr_15(D) + 184]
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	mov	w1, 4	; tmp204,
	strh	w1, [x21, 168]	; tmp204, frame_ptr_15(D)->_Coro_resume_index
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	stp	x0, xzr, [x21, 176]	; __old_val$_M_fr_ptr,,
L136:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)prephitmp_20], MEM[(void (*<T11f>) (void *) *)prephitmp_20]
LEHB2:
	blr	x1		; MEM[(void (*<T11f>) (void *) *)prephitmp_20]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x21, 176]	; _117, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	adrp	x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	; tmp261,
	ldr	x22, [x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	; tmp261,
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_117], MEM[(void * *)_117]
	cbz	x1, L220	; MEM[(void * *)_117],
	.p2align 5,,15
L151:
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x20, x0, 16	; tmp260, _117,
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	mov	x0, x22	;, tmp261
	bl	___emutls_get_address		;
	ldr	x0, [x0]	; n, *_124
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x19, [x20, 96]	; _118, MEM[(struct promise_type &)_117 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L148	; n,
	b	L146		;
	.p2align 2,,3
L147:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_49->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L146	; n,
L148:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_49->effect_tag, n_49->effect_tag
	cmp	x19, x1	; _118, n_49->effect_tag
	bne	L147		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_49->dispatch, n_49->dispatch
	ldr	x1, [x20, 104]	;, MEM[(struct promise_type &)_117 + 16].D.156829.D.155796.payload_ptr
	blr	x2		; n_49->dispatch
LEHE2:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x21, 176]	; _117, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_117], MEM[(void * *)_117]
	cbnz	x1, L151	; MEM[(void * *)_117],
L220:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x0, 128]	; _121, MEM[(const struct exception_ptr *)_117 + 128B]._M_exception_object
; ../../effects.hpp:985:     if (p.exception)
	cbnz	x1, L221	; _121,
; ../../effects.hpp:987:     return std::move(*p.result);
	ldr	w1, [x0, 144]	;, MEM[(type &)_117 + 144]
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	mov	w2, 1	; tmp228,
	strb	w2, [x21, 148]	; tmp228, MEM <unsigned char> [(struct promise_type *)frame_ptr_15(D) + 148B]
	str	w1, [x21, 144]	; _144, MEM <int> [(struct promise_type *)frame_ptr_15(D) + 144B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_117 + 8B], MEM[(void (*<T11f>) (void *) *)_117 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_117 + 8B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _25, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L157	; _25,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_25 + 8B], MEM[(void (*<T11f>) (void *) *)_25 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_25 + 8B]
L157:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	mov	w0, 6	; tmp237,
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	str	xzr, [x21]	;, frame_ptr_15(D)->_Coro_resume_fn
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	strh	w0, [x21, 168]	; tmp237, frame_ptr_15(D)->_Coro_resume_index
	ldp	x19, x20, [x29, 16]	;,,
LCFI53:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI54:
	ret	
	.p2align 2,,3
L218:
LCFI55:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	bhi	L129		;,
	and	w0, w0, -3	; tmp167, _1,
	cmp	w0, 1	; tmp167,
	beq	L161		;,
L131:
	stp	x19, x20, [x29, 16]	;,,
LCFI56:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	brk #1000
	.p2align 2,,3
L219:
LCFI57:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x21, 208]	; mr, MEM[(struct memory_resource * *)frame_ptr_15(D) + 208B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L164	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x2, [x0]	; mr_137->_vptr.memory_resource, mr_137->_vptr.memory_resource
	adrp	x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp249,
	ldr	x1, [x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp249,
	ldr	x4, [x2, 24]	; _139, MEM[(int (*) () *)_138 + 24B]
	cmp	x4, x1	; _139, tmp249
	beq	L126		;,
	mov	x1, x21	;, frame_ptr
	mov	x3, 16	;,
	mov	x2, 216	;,
	blr	x4		; _139
	b	L126		;
L132:
	stp	x19, x20, [x29, 16]	;,,
LCFI58:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; __old_val$_M_fr_ptr, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
	b	L136		;
L134:
LCFI59:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	mov	w0, 2	; tmp169,
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	str	x21, [x21, 160]	; frame_ptr, frame_ptr_15(D)->_Coro_self_handle._M_fr_ptr
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	strb	wzr, [x21, 171]	;, frame_ptr_15(D)->_Coro_initial_await_resume_called
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	strh	w0, [x21, 168]	; tmp169, frame_ptr_15(D)->_Coro_resume_index
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI60:
	ret	
L129:
LCFI61:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmp	w0, 7	; _1,
	beq	L161		;,
	b	L131		;
	.p2align 2,,3
L133:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmp	w0, 6	; _1,
	beq	L161		;,
	b	L131		;
	.p2align 2,,3
L164:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x21	;, frame_ptr
	mov	x1, 216	;,
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI62:
LEHB3:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE3:
L142:
LCFI63:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x19	;, mr
LEHB4:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x0, x1, [x19, 8]	; __p, _104,
	b	L143		;
L138:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 216	;,
	bl	__Znwm		;
	b	L144		;
L139:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x19	;, mr
	blr	x3		; _81
LEHE4:
	b	L144		;
L221:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 56	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 56]	; _121, MEM[(struct exception_ptr *)&D.205178]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:986:       std::rethrow_exception(p.exception);
	add	x0, x29, 56	;,,
LEHB5:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE5:
L146:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp216,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x20, x0	; _130,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp216,
LEHB6:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE6:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x20	;, _130
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB7:
	bl	___cxa_throw		;
LEHE7:
L173:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 56]	; D.205178._M_exception_object, D.205178._M_exception_object
	mov	x19, x0	; tmp269,
	cbz	x1, L150	; D.205178._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 56	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L150		;
L174:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x19, x0	; tmp268,
	mov	x0, x20	;, _130
	bl	___cxa_free_exception		;
L150:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; _44, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L165	; _44,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_44 + 8B], MEM[(void (*<T11f>) (void *) *)_44 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_44 + 8B]
L165:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _46, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L166	; _46,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_46 + 8B], MEM[(void (*<T11f>) (void *) *)_46 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_46 + 8B]
L166:
	mov	x0, x19	; tmp254, tmp219
L167:
	bl	___cxa_begin_catch		;
	ldrb	w0, [x21, 171]	; frame_ptr_15(D)->_Coro_initial_await_resume_called, frame_ptr_15(D)->_Coro_initial_await_resume_called
	tbnz	x0, 0, L168	; frame_ptr_15(D)->_Coro_initial_await_resume_called,,
LEHB8:
	bl	___cxa_rethrow		;
LEHE8:
L137:
L171:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	mov	x19, x0	; tmp219, tmp270
	b	L150		;
L170:
	b	L167		;
L168:
	add	x0, x21, 16	;, frame_ptr,
	str	xzr, [x21]	;, frame_ptr_15(D)->_Coro_resume_fn
	strh	wzr, [x21, 168]	;, frame_ptr_15(D)->_Coro_resume_index
	bl	__ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv		;
LEHB9:
	bl	___cxa_end_catch		;
LEHE9:
	b	L157		;
L172:
	mov	x19, x0	; tmp272,
	bl	___cxa_end_catch		;
	mov	x0, x19	;, tmp272
LEHB10:
	bl	__Unwind_Resume		;
LEHE10:
LFE6950:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
	.align	2
LLSDA6950:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT6950-LLSDATTD6950
LLSDATTD6950:
	.byte	0x1
	.uleb128 LLSDACSE6950-LLSDACSB6950
LLSDACSB6950:
	.uleb128 LEHB2-LFB6950
	.uleb128 LEHE2-LEHB2
	.uleb128 L171-LFB6950
	.uleb128 0x3
	.uleb128 LEHB3-LFB6950
	.uleb128 LEHE3-LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB4-LFB6950
	.uleb128 LEHE4-LEHB4
	.uleb128 L170-LFB6950
	.uleb128 0x1
	.uleb128 LEHB5-LFB6950
	.uleb128 LEHE5-LEHB5
	.uleb128 L173-LFB6950
	.uleb128 0x3
	.uleb128 LEHB6-LFB6950
	.uleb128 LEHE6-LEHB6
	.uleb128 L174-LFB6950
	.uleb128 0x3
	.uleb128 LEHB7-LFB6950
	.uleb128 LEHE7-LEHB7
	.uleb128 L171-LFB6950
	.uleb128 0x3
	.uleb128 LEHB8-LFB6950
	.uleb128 LEHE8-LEHB8
	.uleb128 L172-LFB6950
	.uleb128 0
	.uleb128 LEHB9-LFB6950
	.uleb128 LEHE9-LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB10-LFB6950
	.uleb128 LEHE10-LEHB10
	.uleb128 0
	.uleb128 0
LLSDACSE6950:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.long	0

LLSDATT6950:
	.text
	.align	2
	.p2align 5,,15
__Z7ping_d2P18_ZL7ping_d2v.Frame.destroy:
LFB6951:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	ldrh	w2, [x0, 168]	;, frame_ptr_4(D)->_Coro_resume_index
	orr	w2, w2, 1	; tmp105, frame_ptr_4(D)->_Coro_resume_index,
	strh	w2, [x0, 168]	; tmp105, frame_ptr_4(D)->_Coro_resume_index
	b	__Z7ping_d2P18_ZL7ping_d2v.Frame.actor		;
LFE6951:
	.align	2
	.p2align 5,,15
__Z7ping_d3P18_ZL7ping_d3v.Frame.actor:
LFB6953:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI64:
	mov	x29, sp	;,
LCFI65:
	stp	x21, x22, [sp, 32]	;,,
LCFI66:
	mov	x21, x0	; frame_ptr, frame_ptr
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	ldrh	w0, [x0, 168]	; _1, frame_ptr_15(D)->_Coro_resume_index
	tbz	x0, 0, L224	; _1,,
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmp	w0, 5	; _1,
	bne	L315		;,
L225:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; _40, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L255	; _40,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_40 + 8B], MEM[(void (*<T11f>) (void *) *)_40 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_40 + 8B]
L255:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _17, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L258	; _17,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_17 + 8B], MEM[(void (*<T11f>) (void *) *)_17 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_17 + 8B]
L227:
L257:
L258:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x21, 128]	; MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x21, 128	; tmp239, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x1, L259	; MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L259:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x21, 80]	; _133, MEM[(struct SmallAny *)frame_ptr_15(D) + 32B].destroy_
	add	x0, x21, 32	; tmp244, frame_ptr,
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L260	; _133,
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x1		; _133
L260:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	ldrb	w0, [x21, 170]	; frame_ptr_15(D)->_Coro_frame_needs_free, frame_ptr_15(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L316	; frame_ptr_15(D)->_Coro_frame_needs_free,,
L223:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI67:
	ret	
	.p2align 2,,3
L224:
LCFI68:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmp	w0, 4	; _1,
	beq	L229		;,
	bhi	L230		;,
	cbz	w0, L231	; _1,
L232:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	mov	w1, 1	; tmp170,
	stp	x19, x20, [x29, 16]	;,,
LCFI69:
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	strb	w1, [x21, 171]	; tmp170, frame_ptr_15(D)->_Coro_initial_await_resume_called
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x19, [x0]	; mr, *_77
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x19, L235	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x1, [x19]	; mr_78->_vptr.memory_resource, mr_78->_vptr.memory_resource
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp173,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp173,
	ldr	x3, [x1, 16]	; _81, MEM[(int (*) () *)_80 + 16B]
	cmp	x3, x0	; _81, tmp173
	bne	L236		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x19, 16]	; _93, MEM[(size_t &)mr_78 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 215	; _93,
	bls	L239		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x1, [x19, 8]	; __intptr, MEM[(void * &)mr_78 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x3, x0, #216	; _102, _93,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x2, x1, 15	; _98, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x2, x2, -16	; __aligned, _98,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x4, x2, x1	; __diff_101, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x4, x3	; __diff_101, _102
	bhi	L239		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x1, x0, x1	; _62, _93, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x2	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x1, x1, x2	; _104, _62, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x2, x1, [x19, 8]	; __p, _104,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x2, L239	; __p,
L240:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x1, x1, #216	; _113, _104,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x2, x0, 216	; _111, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x2, x1, [x19, 8]	; _111, _113,
L241:
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	adrp	x2, __Z7ping_d2P18_ZL7ping_d2v.Frame.actor@PAGE	; tmp182,
	adrp	x3, __Z7ping_d2P18_ZL7ping_d2v.Frame.destroy@PAGE	; tmp184,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp191
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	add	x2, x2, __Z7ping_d2P18_ZL7ping_d2v.Frame.actor@PAGEOFF;	; tmp181, tmp182,
	add	x3, x3, __Z7ping_d2P18_ZL7ping_d2v.Frame.destroy@PAGEOFF;	; tmp183, tmp184,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_84 + 16B].aborted
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	stp	x2, x3, [x0]	; tmp181, tmp183,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x2, x0, 144	; _76, __p,
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	mov	w3, 65536	; tmp197,
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x0, 24]	;, MEM[(struct PromiseAbortBase *)raw_84 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x0, 32]	; MEM[(struct SmallAny *)raw_84 + 32B].buf_
	stp	xzr, xzr, [x0, 48]	; MEM[(struct SmallAny *)raw_84 + 32B].buf_
	stp	xzr, xzr, [x0, 64]	; MEM[(struct SmallAny *)raw_84 + 32B].buf_
	str	q31, [x0, 80]	; tmp191, MEM <vector(2) long unsigned int> [(void *)raw_84 + 80B]
	str	xzr, [x0, 96]	;, MEM[(struct SmallAny *)raw_84 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x0, 112]	; tmp191, MEM <vector(2) long unsigned int> [(const void * *)raw_84 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	stp	xzr, x2, [x0, 128]	;, _76,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x0, 148]	;, MEM[(struct _Optional_payload_base *)raw_84 + 144B]._M_engaged
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	str	w3, [x0, 168]	; tmp197, MEM <unsigned int> [(void *)raw_84 + 168B]
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x19, [x0, 208]	; mr, MEM[(struct memory_resource * *)raw_84 + 208B]
; ../../effects.hpp:609:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	str	x0, [x21, 184]	; __p, MEM[(struct OwnedHandle *)frame_ptr_15(D) + 184B]
; b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	bl	__Z7ping_d2P18_ZL7ping_d2v.Frame.actor		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	ldr	x0, [x21, 184]	; __old_val$_M_fr_ptr, MEM[(struct coroutine_handle &)frame_ptr_15(D) + 184]
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	mov	w1, 4	; tmp204,
	strh	w1, [x21, 168]	; tmp204, frame_ptr_15(D)->_Coro_resume_index
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	stp	x0, xzr, [x21, 176]	; __old_val$_M_fr_ptr,,
L233:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)prephitmp_20], MEM[(void (*<T11f>) (void *) *)prephitmp_20]
LEHB11:
	blr	x1		; MEM[(void (*<T11f>) (void *) *)prephitmp_20]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x21, 176]	; _117, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	adrp	x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	; tmp261,
	ldr	x22, [x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	; tmp261,
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_117], MEM[(void * *)_117]
	cbz	x1, L317	; MEM[(void * *)_117],
	.p2align 5,,15
L248:
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x20, x0, 16	; tmp260, _117,
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	mov	x0, x22	;, tmp261
	bl	___emutls_get_address		;
	ldr	x0, [x0]	; n, *_124
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x19, [x20, 96]	; _118, MEM[(struct promise_type &)_117 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L245	; n,
	b	L243		;
	.p2align 2,,3
L244:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_49->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L243	; n,
L245:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_49->effect_tag, n_49->effect_tag
	cmp	x19, x1	; _118, n_49->effect_tag
	bne	L244		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_49->dispatch, n_49->dispatch
	ldr	x1, [x20, 104]	;, MEM[(struct promise_type &)_117 + 16].D.156829.D.155796.payload_ptr
	blr	x2		; n_49->dispatch
LEHE11:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x21, 176]	; _117, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_117], MEM[(void * *)_117]
	cbnz	x1, L248	; MEM[(void * *)_117],
L317:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x0, 128]	; _121, MEM[(const struct exception_ptr *)_117 + 128B]._M_exception_object
; ../../effects.hpp:985:     if (p.exception)
	cbnz	x1, L318	; _121,
; ../../effects.hpp:987:     return std::move(*p.result);
	ldr	w1, [x0, 144]	;, MEM[(type &)_117 + 144]
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	mov	w2, 1	; tmp228,
	strb	w2, [x21, 148]	; tmp228, MEM <unsigned char> [(struct promise_type *)frame_ptr_15(D) + 148B]
	str	w1, [x21, 144]	; _144, MEM <int> [(struct promise_type *)frame_ptr_15(D) + 144B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_117 + 8B], MEM[(void (*<T11f>) (void *) *)_117 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_117 + 8B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _25, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L254	; _25,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_25 + 8B], MEM[(void (*<T11f>) (void *) *)_25 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_25 + 8B]
L254:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	mov	w0, 6	; tmp237,
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	str	xzr, [x21]	;, frame_ptr_15(D)->_Coro_resume_fn
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	strh	w0, [x21, 168]	; tmp237, frame_ptr_15(D)->_Coro_resume_index
	ldp	x19, x20, [x29, 16]	;,,
LCFI70:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI71:
	ret	
	.p2align 2,,3
L315:
LCFI72:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	bhi	L226		;,
	and	w0, w0, -3	; tmp167, _1,
	cmp	w0, 1	; tmp167,
	beq	L258		;,
L228:
	stp	x19, x20, [x29, 16]	;,,
LCFI73:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	brk #1000
	.p2align 2,,3
L316:
LCFI74:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x21, 208]	; mr, MEM[(struct memory_resource * *)frame_ptr_15(D) + 208B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L261	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x2, [x0]	; mr_137->_vptr.memory_resource, mr_137->_vptr.memory_resource
	adrp	x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp249,
	ldr	x1, [x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp249,
	ldr	x4, [x2, 24]	; _139, MEM[(int (*) () *)_138 + 24B]
	cmp	x4, x1	; _139, tmp249
	beq	L223		;,
	mov	x1, x21	;, frame_ptr
	mov	x3, 16	;,
	mov	x2, 216	;,
	blr	x4		; _139
	b	L223		;
L229:
	stp	x19, x20, [x29, 16]	;,,
LCFI75:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; __old_val$_M_fr_ptr, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
	b	L233		;
L231:
LCFI76:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	mov	w0, 2	; tmp169,
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	str	x21, [x21, 160]	; frame_ptr, frame_ptr_15(D)->_Coro_self_handle._M_fr_ptr
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	strb	wzr, [x21, 171]	;, frame_ptr_15(D)->_Coro_initial_await_resume_called
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	strh	w0, [x21, 168]	; tmp169, frame_ptr_15(D)->_Coro_resume_index
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI77:
	ret	
L226:
LCFI78:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmp	w0, 7	; _1,
	beq	L258		;,
	b	L228		;
	.p2align 2,,3
L230:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmp	w0, 6	; _1,
	beq	L258		;,
	b	L228		;
	.p2align 2,,3
L261:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x21	;, frame_ptr
	mov	x1, 216	;,
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI79:
LEHB12:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE12:
L239:
LCFI80:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x19	;, mr
LEHB13:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x0, x1, [x19, 8]	; __p, _104,
	b	L240		;
L235:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 216	;,
	bl	__Znwm		;
	b	L241		;
L236:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x19	;, mr
	blr	x3		; _81
LEHE13:
	b	L241		;
L318:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 56	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 56]	; _121, MEM[(struct exception_ptr *)&D.205260]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:986:       std::rethrow_exception(p.exception);
	add	x0, x29, 56	;,,
LEHB14:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE14:
L243:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp216,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x20, x0	; _130,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp216,
LEHB15:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE15:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x20	;, _130
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB16:
	bl	___cxa_throw		;
LEHE16:
L270:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 56]	; D.205260._M_exception_object, D.205260._M_exception_object
	mov	x19, x0	; tmp269,
	cbz	x1, L247	; D.205260._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 56	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L247		;
L271:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x19, x0	; tmp268,
	mov	x0, x20	;, _130
	bl	___cxa_free_exception		;
L247:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; _44, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L262	; _44,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_44 + 8B], MEM[(void (*<T11f>) (void *) *)_44 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_44 + 8B]
L262:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _46, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L263	; _46,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_46 + 8B], MEM[(void (*<T11f>) (void *) *)_46 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_46 + 8B]
L263:
	mov	x0, x19	; tmp254, tmp219
L264:
	bl	___cxa_begin_catch		;
	ldrb	w0, [x21, 171]	; frame_ptr_15(D)->_Coro_initial_await_resume_called, frame_ptr_15(D)->_Coro_initial_await_resume_called
	tbnz	x0, 0, L265	; frame_ptr_15(D)->_Coro_initial_await_resume_called,,
LEHB17:
	bl	___cxa_rethrow		;
LEHE17:
L234:
L268:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	mov	x19, x0	; tmp219, tmp270
	b	L247		;
L267:
	b	L264		;
L265:
	add	x0, x21, 16	;, frame_ptr,
	str	xzr, [x21]	;, frame_ptr_15(D)->_Coro_resume_fn
	strh	wzr, [x21, 168]	;, frame_ptr_15(D)->_Coro_resume_index
	bl	__ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv		;
LEHB18:
	bl	___cxa_end_catch		;
LEHE18:
	b	L254		;
L269:
	mov	x19, x0	; tmp272,
	bl	___cxa_end_catch		;
	mov	x0, x19	;, tmp272
LEHB19:
	bl	__Unwind_Resume		;
LEHE19:
LFE6953:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
	.align	2
LLSDA6953:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT6953-LLSDATTD6953
LLSDATTD6953:
	.byte	0x1
	.uleb128 LLSDACSE6953-LLSDACSB6953
LLSDACSB6953:
	.uleb128 LEHB11-LFB6953
	.uleb128 LEHE11-LEHB11
	.uleb128 L268-LFB6953
	.uleb128 0x3
	.uleb128 LEHB12-LFB6953
	.uleb128 LEHE12-LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB13-LFB6953
	.uleb128 LEHE13-LEHB13
	.uleb128 L267-LFB6953
	.uleb128 0x1
	.uleb128 LEHB14-LFB6953
	.uleb128 LEHE14-LEHB14
	.uleb128 L270-LFB6953
	.uleb128 0x3
	.uleb128 LEHB15-LFB6953
	.uleb128 LEHE15-LEHB15
	.uleb128 L271-LFB6953
	.uleb128 0x3
	.uleb128 LEHB16-LFB6953
	.uleb128 LEHE16-LEHB16
	.uleb128 L268-LFB6953
	.uleb128 0x3
	.uleb128 LEHB17-LFB6953
	.uleb128 LEHE17-LEHB17
	.uleb128 L269-LFB6953
	.uleb128 0
	.uleb128 LEHB18-LFB6953
	.uleb128 LEHE18-LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB19-LFB6953
	.uleb128 LEHE19-LEHB19
	.uleb128 0
	.uleb128 0
LLSDACSE6953:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.long	0

LLSDATT6953:
	.text
	.align	2
	.p2align 5,,15
__ZL7ping_d3v:
LFB6952:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI81:
	mov	x29, sp	;,
LCFI82:
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	str	x19, [sp, 16]	;,
LCFI83:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	mov	x19, x8	; <retval>, <retval>
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x3, [x0]	; mr, *_32
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x3, L320	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x1, [x3]	; mr_33->_vptr.memory_resource, mr_33->_vptr.memory_resource
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp127,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp127,
	ldr	x4, [x1, 16]	; _36, MEM[(int (*) () *)_35 + 16B]
	cmp	x4, x0	; _36, tmp127
	bne	L321		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x1, [x3, 16]	; _48, MEM[(size_t &)mr_33 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x1, 215	; _48,
	bls	L324		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x4, [x3, 8]	; __intptr, MEM[(void * &)mr_33 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x0, x1, #216	; _57, _48,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x2, x4, 15	; _53, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x2, x2, -16	; __aligned, _53,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x5, x2, x4	; __diff_56, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x5, x0	; __diff_56, _57
	bhi	L324		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x1, x1, x4	; _37, _48, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x2	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x1, x1, x2	; _59, _37, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x2, x1, [x3, 8]	; __p, _59,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x2, L324	; __p,
L323:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x1, x1, #216	; _68, _59,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x2, x0, 216	; _66, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x2, x1, [x3, 8]	; _66, _68,
L325:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	adrp	x2, __Z7ping_d3P18_ZL7ping_d3v.Frame.actor@PAGE	; tmp136,
	adrp	x4, __Z7ping_d3P18_ZL7ping_d3v.Frame.destroy@PAGE	; tmp138,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp145
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	add	x4, x4, __Z7ping_d3P18_ZL7ping_d3v.Frame.destroy@PAGEOFF;	; tmp137, tmp138,
	add	x2, x2, __Z7ping_d3P18_ZL7ping_d3v.Frame.actor@PAGEOFF;	; tmp135, tmp136,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x3, [x0, 208]	; mr, MEM[(struct memory_resource * *)raw_39 + 208B]
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	mov	w3, 65536	; tmp151,
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	stp	x2, x4, [x0]	; tmp135, tmp137,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x2, x0, 144	; _16, __p,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_39 + 16B].aborted
	str	xzr, [x0, 24]	;, MEM[(struct PromiseAbortBase *)raw_39 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x0, 32]	; MEM[(struct SmallAny *)raw_39 + 32B].buf_
	stp	xzr, xzr, [x0, 48]	; MEM[(struct SmallAny *)raw_39 + 32B].buf_
	stp	xzr, xzr, [x0, 64]	; MEM[(struct SmallAny *)raw_39 + 32B].buf_
	str	q31, [x0, 80]	; tmp145, MEM <vector(2) long unsigned int> [(void *)raw_39 + 80B]
	str	xzr, [x0, 96]	;, MEM[(struct SmallAny *)raw_39 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x0, 112]	; tmp145, MEM <vector(2) long unsigned int> [(const void * *)raw_39 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	stp	xzr, x2, [x0, 128]	;, _16,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x0, 148]	;, MEM[(struct _Optional_payload_base *)raw_39 + 144B]._M_engaged
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	str	w3, [x0, 168]	; tmp151, MEM <unsigned int> [(void *)raw_39 + 168B]
; ../../effects.hpp:609:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	str	x0, [x19]	; __p, MEM[(struct OwnedHandle *)_14(D)]
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	bl	__Z7ping_d3P18_ZL7ping_d3v.Frame.actor		;
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	mov	x0, x19	;, <retval>
	ldr	x19, [sp, 16]	;,
	ldp	x29, x30, [sp], 48	;,,,
LCFI84:
	ret	
	.p2align 2,,3
L324:
LCFI85:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x0, x3	;, mr
	mov	x1, 216	;,
	str	x3, [x29, 40]	; mr, %sfp
	mov	x2, 16	;,
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldr	x3, [x29, 40]	; mr, %sfp
	ldp	x0, x1, [x3, 8]	; __p, _59,
	b	L323		;
	.p2align 2,,3
L320:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 216	;,
	str	x3, [x29, 40]	; mr, %sfp
	bl	__Znwm		;
	ldr	x3, [x29, 40]	; mr, %sfp
	b	L325		;
	.p2align 2,,3
L321:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x0, x3	;, mr
	mov	x2, 16	;,
	str	x3, [x29, 40]	; mr, %sfp
	mov	x1, 216	;,
	blr	x4		; _36
	ldr	x3, [x29, 40]	; mr, %sfp
	b	L325		;
LFE6952:
	.align	2
	.p2align 5,,15
__Z7ping_d3P18_ZL7ping_d3v.Frame.destroy:
LFB6954:
; b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	ldrh	w2, [x0, 168]	;, frame_ptr_4(D)->_Coro_resume_index
	orr	w2, w2, 1	; tmp105, frame_ptr_4(D)->_Coro_resume_index,
	strh	w2, [x0, 168]	; tmp105, frame_ptr_4(D)->_Coro_resume_index
	b	__Z7ping_d3P18_ZL7ping_d3v.Frame.actor		;
LFE6954:
	.align	2
	.p2align 5,,15
__Z7ping_d4P18_ZL7ping_d4v.Frame.actor:
LFB6956:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI86:
	mov	x29, sp	;,
LCFI87:
	stp	x21, x22, [sp, 32]	;,,
LCFI88:
	mov	x21, x0	; frame_ptr, frame_ptr
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	ldrh	w0, [x0, 168]	; _1, frame_ptr_15(D)->_Coro_resume_index
	tbz	x0, 0, L332	; _1,,
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmp	w0, 5	; _1,
	bne	L412		;,
L333:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; _40, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L356	; _40,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_40 + 8B], MEM[(void (*<T11f>) (void *) *)_40 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_40 + 8B]
L356:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _17, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L359	; _17,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_17 + 8B], MEM[(void (*<T11f>) (void *) *)_17 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_17 + 8B]
L335:
L358:
L359:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x21, 128]	; MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x21, 128	; tmp192, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x1, L360	; MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L360:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x21, 80]	; _92, MEM[(struct SmallAny *)frame_ptr_15(D) + 32B].destroy_
	add	x0, x21, 32	; tmp197, frame_ptr,
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L361	; _92,
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x1		; _92
L361:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	ldrb	w0, [x21, 170]	; frame_ptr_15(D)->_Coro_frame_needs_free, frame_ptr_15(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L413	; frame_ptr_15(D)->_Coro_frame_needs_free,,
L331:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI89:
	ret	
	.p2align 2,,3
L332:
LCFI90:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmp	w0, 4	; _1,
	beq	L337		;,
	bhi	L338		;,
	cbz	w0, L339	; _1,
L340:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	mov	w0, 1	; tmp152,
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	add	x8, x21, 184	;, frame_ptr,
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	strb	w0, [x21, 171]	; tmp152, frame_ptr_15(D)->_Coro_initial_await_resume_called
LEHB20:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	bl	__ZL7ping_d3v		;
LEHE20:
	stp	x19, x20, [x29, 16]	;,,
LCFI91:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	mov	w1, 4	; tmp157,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	ldr	x0, [x21, 184]	; __old_val$_M_fr_ptr, MEM[(struct coroutine_handle &)frame_ptr_15(D) + 184]
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	strh	w1, [x21, 168]	; tmp157, frame_ptr_15(D)->_Coro_resume_index
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	stp	x0, xzr, [x21, 176]	; __old_val$_M_fr_ptr,,
L341:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)prephitmp_81], MEM[(void (*<T11f>) (void *) *)prephitmp_81]
LEHB21:
	blr	x1		; MEM[(void (*<T11f>) (void *) *)prephitmp_81]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x21, 176]	; _76, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	adrp	x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	; tmp214,
	ldr	x22, [x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	; tmp214,
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_76], MEM[(void * *)_76]
	cbz	x1, L414	; MEM[(void * *)_76],
	.p2align 5,,15
L349:
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x20, x0, 16	; tmp213, _76,
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	mov	x0, x22	;, tmp214
	bl	___emutls_get_address		;
	ldr	x0, [x0]	; n, *_83
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x19, [x20, 96]	; _77, MEM[(struct promise_type &)_76 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L346	; n,
	b	L344		;
	.p2align 2,,3
L345:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_49->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L344	; n,
L346:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_49->effect_tag, n_49->effect_tag
	cmp	x19, x1	; _77, n_49->effect_tag
	bne	L345		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_49->dispatch, n_49->dispatch
	ldr	x1, [x20, 104]	;, MEM[(struct promise_type &)_76 + 16].D.156829.D.155796.payload_ptr
	blr	x2		; n_49->dispatch
LEHE21:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x21, 176]	; _76, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_76], MEM[(void * *)_76]
	cbnz	x1, L349	; MEM[(void * *)_76],
L414:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x0, 128]	; _80, MEM[(const struct exception_ptr *)_76 + 128B]._M_exception_object
; ../../effects.hpp:985:     if (p.exception)
	cbnz	x1, L415	; _80,
; ../../effects.hpp:987:     return std::move(*p.result);
	ldr	w1, [x0, 144]	;, MEM[(type &)_76 + 144]
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	mov	w2, 1	; tmp181,
	strb	w2, [x21, 148]	; tmp181, MEM <unsigned char> [(struct promise_type *)frame_ptr_15(D) + 148B]
	str	w1, [x21, 144]	; _107, MEM <int> [(struct promise_type *)frame_ptr_15(D) + 144B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_76 + 8B], MEM[(void (*<T11f>) (void *) *)_76 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_76 + 8B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _25, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L411	; _25,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_25 + 8B], MEM[(void (*<T11f>) (void *) *)_25 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_25 + 8B]
L411:
; ../../effects.hpp:808: template <typename T, Effectful... Es> class Fx {
	ldp	x19, x20, [x29, 16]	;,,
LCFI92:
L355:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	mov	w0, 6	; tmp190,
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	str	xzr, [x21]	;, frame_ptr_15(D)->_Coro_resume_fn
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	strh	w0, [x21, 168]	; tmp190, frame_ptr_15(D)->_Coro_resume_index
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI93:
	ret	
	.p2align 2,,3
L412:
LCFI94:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	bhi	L334		;,
	and	w0, w0, -3	; tmp149, _1,
	cmp	w0, 1	; tmp149,
	beq	L359		;,
L336:
	stp	x19, x20, [x29, 16]	;,,
LCFI95:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	brk #1000
	.p2align 2,,3
L413:
LCFI96:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x21, 208]	; mr, MEM[(struct memory_resource * *)frame_ptr_15(D) + 208B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L362	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x2, [x0]	; mr_96->_vptr.memory_resource, mr_96->_vptr.memory_resource
	adrp	x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp202,
	ldr	x1, [x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp202,
	ldr	x4, [x2, 24]	; _98, MEM[(int (*) () *)_97 + 24B]
	cmp	x4, x1	; _98, tmp202
	beq	L331		;,
	mov	x1, x21	;, frame_ptr
	mov	x3, 16	;,
	mov	x2, 216	;,
	blr	x4		; _98
	b	L331		;
L337:
	stp	x19, x20, [x29, 16]	;,,
LCFI97:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; __old_val$_M_fr_ptr, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
	b	L341		;
L339:
LCFI98:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	mov	w0, 2	; tmp151,
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	str	x21, [x21, 160]	; frame_ptr, frame_ptr_15(D)->_Coro_self_handle._M_fr_ptr
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	strb	wzr, [x21, 171]	;, frame_ptr_15(D)->_Coro_initial_await_resume_called
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	strh	w0, [x21, 168]	; tmp151, frame_ptr_15(D)->_Coro_resume_index
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI99:
	ret	
L334:
LCFI100:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmp	w0, 7	; _1,
	beq	L359		;,
	b	L336		;
	.p2align 2,,3
L338:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmp	w0, 6	; _1,
	beq	L359		;,
	b	L336		;
	.p2align 2,,3
L362:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x21	;, frame_ptr
	mov	x1, 216	;,
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI101:
LEHB22:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE22:
L415:
LCFI102:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 56	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 56]	; _80, MEM[(struct exception_ptr *)&D.205343]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:986:       std::rethrow_exception(p.exception);
	add	x0, x29, 56	;,,
LEHB23:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE23:
L344:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp169,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x20, x0	; _89,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp169,
LEHB24:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE24:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x20	;, _89
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB25:
	bl	___cxa_throw		;
LEHE25:
L371:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 56]	; D.205343._M_exception_object, D.205343._M_exception_object
	mov	x19, x0	; tmp219,
	cbz	x1, L348	; D.205343._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 56	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L348		;
L372:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x19, x0	; tmp218,
	mov	x0, x20	;, _89
	bl	___cxa_free_exception		;
L348:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; _44, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L363	; _44,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_44 + 8B], MEM[(void (*<T11f>) (void *) *)_44 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_44 + 8B]
L363:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _46, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L364	; _46,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_46 + 8B], MEM[(void (*<T11f>) (void *) *)_46 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_46 + 8B]
L364:
	mov	x0, x19	; tmp207, tmp172
	ldp	x19, x20, [x29, 16]	;,,
LCFI103:
L365:
	bl	___cxa_begin_catch		;
	ldrb	w0, [x21, 171]	; frame_ptr_15(D)->_Coro_initial_await_resume_called, frame_ptr_15(D)->_Coro_initial_await_resume_called
	tbnz	x0, 0, L366	; frame_ptr_15(D)->_Coro_initial_await_resume_called,,
	stp	x19, x20, [x29, 16]	;,,
LCFI104:
LEHB26:
	bl	___cxa_rethrow		;
LEHE26:
L342:
L369:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	mov	x19, x0	; tmp172, tmp220
	b	L348		;
L368:
LCFI105:
	b	L365		;
L366:
	add	x0, x21, 16	;, frame_ptr,
	str	xzr, [x21]	;, frame_ptr_15(D)->_Coro_resume_fn
	strh	wzr, [x21, 168]	;, frame_ptr_15(D)->_Coro_resume_index
	bl	__ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv		;
LEHB27:
	bl	___cxa_end_catch		;
LEHE27:
	b	L355		;
L370:
LCFI106:
	mov	x19, x0	; tmp222,
	bl	___cxa_end_catch		;
	mov	x0, x19	;, tmp222
LEHB28:
	bl	__Unwind_Resume		;
LEHE28:
LFE6956:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
	.align	2
LLSDA6956:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT6956-LLSDATTD6956
LLSDATTD6956:
	.byte	0x1
	.uleb128 LLSDACSE6956-LLSDACSB6956
LLSDACSB6956:
	.uleb128 LEHB20-LFB6956
	.uleb128 LEHE20-LEHB20
	.uleb128 L368-LFB6956
	.uleb128 0x1
	.uleb128 LEHB21-LFB6956
	.uleb128 LEHE21-LEHB21
	.uleb128 L369-LFB6956
	.uleb128 0x3
	.uleb128 LEHB22-LFB6956
	.uleb128 LEHE22-LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB23-LFB6956
	.uleb128 LEHE23-LEHB23
	.uleb128 L371-LFB6956
	.uleb128 0x3
	.uleb128 LEHB24-LFB6956
	.uleb128 LEHE24-LEHB24
	.uleb128 L372-LFB6956
	.uleb128 0x3
	.uleb128 LEHB25-LFB6956
	.uleb128 LEHE25-LEHB25
	.uleb128 L369-LFB6956
	.uleb128 0x3
	.uleb128 LEHB26-LFB6956
	.uleb128 LEHE26-LEHB26
	.uleb128 L370-LFB6956
	.uleb128 0
	.uleb128 LEHB27-LFB6956
	.uleb128 LEHE27-LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB28-LFB6956
	.uleb128 LEHE28-LEHB28
	.uleb128 0
	.uleb128 0
LLSDACSE6956:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.long	0

LLSDATT6956:
	.text
	.align	2
	.p2align 5,,15
__Z7ping_d4P18_ZL7ping_d4v.Frame.destroy:
LFB6957:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	ldrh	w2, [x0, 168]	;, frame_ptr_4(D)->_Coro_resume_index
	orr	w2, w2, 1	; tmp105, frame_ptr_4(D)->_Coro_resume_index,
	strh	w2, [x0, 168]	; tmp105, frame_ptr_4(D)->_Coro_resume_index
	b	__Z7ping_d4P18_ZL7ping_d4v.Frame.actor		;
LFE6957:
	.align	2
	.p2align 5,,15
__Z7ping_d5P18_ZL7ping_d5v.Frame.actor:
LFB6959:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI107:
	mov	x29, sp	;,
LCFI108:
	stp	x21, x22, [sp, 32]	;,,
LCFI109:
	mov	x21, x0	; frame_ptr, frame_ptr
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	ldrh	w0, [x0, 168]	; _1, frame_ptr_15(D)->_Coro_resume_index
	tbz	x0, 0, L418	; _1,,
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmp	w0, 5	; _1,
	bne	L509		;,
L419:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; _40, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L449	; _40,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_40 + 8B], MEM[(void (*<T11f>) (void *) *)_40 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_40 + 8B]
L449:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _17, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L452	; _17,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_17 + 8B], MEM[(void (*<T11f>) (void *) *)_17 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_17 + 8B]
L421:
L451:
L452:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x21, 128]	; MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x21, 128	; tmp239, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x1, L453	; MEM[(struct exception_ptr *)frame_ptr_15(D) + 128B]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L453:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x21, 80]	; _133, MEM[(struct SmallAny *)frame_ptr_15(D) + 32B].destroy_
	add	x0, x21, 32	; tmp244, frame_ptr,
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L454	; _133,
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x1		; _133
L454:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	ldrb	w0, [x21, 170]	; frame_ptr_15(D)->_Coro_frame_needs_free, frame_ptr_15(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L510	; frame_ptr_15(D)->_Coro_frame_needs_free,,
L417:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI110:
	ret	
	.p2align 2,,3
L418:
LCFI111:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmp	w0, 4	; _1,
	beq	L423		;,
	bhi	L424		;,
	cbz	w0, L425	; _1,
L426:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	mov	w1, 1	; tmp170,
	stp	x19, x20, [x29, 16]	;,,
LCFI112:
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	strb	w1, [x21, 171]	; tmp170, frame_ptr_15(D)->_Coro_initial_await_resume_called
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x19, [x0]	; mr, *_77
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x19, L429	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x1, [x19]	; mr_78->_vptr.memory_resource, mr_78->_vptr.memory_resource
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp173,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp173,
	ldr	x3, [x1, 16]	; _81, MEM[(int (*) () *)_80 + 16B]
	cmp	x3, x0	; _81, tmp173
	bne	L430		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x19, 16]	; _93, MEM[(size_t &)mr_78 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 215	; _93,
	bls	L433		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x1, [x19, 8]	; __intptr, MEM[(void * &)mr_78 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x3, x0, #216	; _102, _93,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x2, x1, 15	; _98, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x2, x2, -16	; __aligned, _98,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x4, x2, x1	; __diff_101, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x4, x3	; __diff_101, _102
	bhi	L433		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x1, x0, x1	; _62, _93, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x2	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x1, x1, x2	; _104, _62, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x2, x1, [x19, 8]	; __p, _104,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x2, L433	; __p,
L434:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x1, x1, #216	; _113, _104,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x2, x0, 216	; _111, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x2, x1, [x19, 8]	; _111, _113,
L435:
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	adrp	x2, __Z7ping_d4P18_ZL7ping_d4v.Frame.actor@PAGE	; tmp182,
	adrp	x3, __Z7ping_d4P18_ZL7ping_d4v.Frame.destroy@PAGE	; tmp184,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp191
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	add	x2, x2, __Z7ping_d4P18_ZL7ping_d4v.Frame.actor@PAGEOFF;	; tmp181, tmp182,
	add	x3, x3, __Z7ping_d4P18_ZL7ping_d4v.Frame.destroy@PAGEOFF;	; tmp183, tmp184,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_84 + 16B].aborted
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	stp	x2, x3, [x0]	; tmp181, tmp183,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x2, x0, 144	; _76, __p,
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	mov	w3, 65536	; tmp197,
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x0, 24]	;, MEM[(struct PromiseAbortBase *)raw_84 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x0, 32]	; MEM[(struct SmallAny *)raw_84 + 32B].buf_
	stp	xzr, xzr, [x0, 48]	; MEM[(struct SmallAny *)raw_84 + 32B].buf_
	stp	xzr, xzr, [x0, 64]	; MEM[(struct SmallAny *)raw_84 + 32B].buf_
	str	q31, [x0, 80]	; tmp191, MEM <vector(2) long unsigned int> [(void *)raw_84 + 80B]
	str	xzr, [x0, 96]	;, MEM[(struct SmallAny *)raw_84 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x0, 112]	; tmp191, MEM <vector(2) long unsigned int> [(const void * *)raw_84 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	stp	xzr, x2, [x0, 128]	;, _76,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x0, 148]	;, MEM[(struct _Optional_payload_base *)raw_84 + 144B]._M_engaged
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	str	w3, [x0, 168]	; tmp197, MEM <unsigned int> [(void *)raw_84 + 168B]
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x19, [x0, 208]	; mr, MEM[(struct memory_resource * *)raw_84 + 208B]
; ../../effects.hpp:609:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	str	x0, [x21, 184]	; __p, MEM[(struct OwnedHandle *)frame_ptr_15(D) + 184B]
; b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	bl	__Z7ping_d4P18_ZL7ping_d4v.Frame.actor		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	ldr	x0, [x21, 184]	; __old_val$_M_fr_ptr, MEM[(struct coroutine_handle &)frame_ptr_15(D) + 184]
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	mov	w1, 4	; tmp204,
	strh	w1, [x21, 168]	; tmp204, frame_ptr_15(D)->_Coro_resume_index
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	stp	x0, xzr, [x21, 176]	; __old_val$_M_fr_ptr,,
L427:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)prephitmp_20], MEM[(void (*<T11f>) (void *) *)prephitmp_20]
LEHB29:
	blr	x1		; MEM[(void (*<T11f>) (void *) *)prephitmp_20]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x21, 176]	; _117, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	adrp	x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	; tmp261,
	ldr	x22, [x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	; tmp261,
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_117], MEM[(void * *)_117]
	cbz	x1, L511	; MEM[(void * *)_117],
	.p2align 5,,15
L442:
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x20, x0, 16	; tmp260, _117,
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	mov	x0, x22	;, tmp261
	bl	___emutls_get_address		;
	ldr	x0, [x0]	; n, *_124
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x19, [x20, 96]	; _118, MEM[(struct promise_type &)_117 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L439	; n,
	b	L437		;
	.p2align 2,,3
L438:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_49->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L437	; n,
L439:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_49->effect_tag, n_49->effect_tag
	cmp	x19, x1	; _118, n_49->effect_tag
	bne	L438		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_49->dispatch, n_49->dispatch
	ldr	x1, [x20, 104]	;, MEM[(struct promise_type &)_117 + 16].D.156829.D.155796.payload_ptr
	blr	x2		; n_49->dispatch
LEHE29:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x21, 176]	; _117, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_117], MEM[(void * *)_117]
	cbnz	x1, L442	; MEM[(void * *)_117],
L511:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x0, 128]	; _121, MEM[(const struct exception_ptr *)_117 + 128B]._M_exception_object
; ../../effects.hpp:985:     if (p.exception)
	cbnz	x1, L512	; _121,
; ../../effects.hpp:987:     return std::move(*p.result);
	ldr	w1, [x0, 144]	;, MEM[(type &)_117 + 144]
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	mov	w2, 1	; tmp228,
	strb	w2, [x21, 148]	; tmp228, MEM <unsigned char> [(struct promise_type *)frame_ptr_15(D) + 148B]
	str	w1, [x21, 144]	; _144, MEM <int> [(struct promise_type *)frame_ptr_15(D) + 144B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_117 + 8B], MEM[(void (*<T11f>) (void *) *)_117 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_117 + 8B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _25, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L448	; _25,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_25 + 8B], MEM[(void (*<T11f>) (void *) *)_25 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_25 + 8B]
L448:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	mov	w0, 6	; tmp237,
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	str	xzr, [x21]	;, frame_ptr_15(D)->_Coro_resume_fn
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	strh	w0, [x21, 168]	; tmp237, frame_ptr_15(D)->_Coro_resume_index
	ldp	x19, x20, [x29, 16]	;,,
LCFI113:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI114:
	ret	
	.p2align 2,,3
L509:
LCFI115:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	bhi	L420		;,
	and	w0, w0, -3	; tmp167, _1,
	cmp	w0, 1	; tmp167,
	beq	L452		;,
L422:
	stp	x19, x20, [x29, 16]	;,,
LCFI116:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	brk #1000
	.p2align 2,,3
L510:
LCFI117:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x21, 208]	; mr, MEM[(struct memory_resource * *)frame_ptr_15(D) + 208B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L455	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x2, [x0]	; mr_137->_vptr.memory_resource, mr_137->_vptr.memory_resource
	adrp	x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp249,
	ldr	x1, [x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp249,
	ldr	x4, [x2, 24]	; _139, MEM[(int (*) () *)_138 + 24B]
	cmp	x4, x1	; _139, tmp249
	beq	L417		;,
	mov	x1, x21	;, frame_ptr
	mov	x3, 16	;,
	mov	x2, 216	;,
	blr	x4		; _139
	b	L417		;
L423:
	stp	x19, x20, [x29, 16]	;,,
LCFI118:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; __old_val$_M_fr_ptr, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
	b	L427		;
L425:
LCFI119:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	mov	w0, 2	; tmp169,
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	str	x21, [x21, 160]	; frame_ptr, frame_ptr_15(D)->_Coro_self_handle._M_fr_ptr
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	strb	wzr, [x21, 171]	;, frame_ptr_15(D)->_Coro_initial_await_resume_called
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	strh	w0, [x21, 168]	; tmp169, frame_ptr_15(D)->_Coro_resume_index
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI120:
	ret	
L420:
LCFI121:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmp	w0, 7	; _1,
	beq	L452		;,
	b	L422		;
	.p2align 2,,3
L424:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmp	w0, 6	; _1,
	beq	L452		;,
	b	L422		;
	.p2align 2,,3
L455:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x21	;, frame_ptr
	mov	x1, 216	;,
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI122:
LEHB30:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE30:
L433:
LCFI123:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x19	;, mr
LEHB31:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x0, x1, [x19, 8]	; __p, _104,
	b	L434		;
L429:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 216	;,
	bl	__Znwm		;
	b	L435		;
L430:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x19	;, mr
	blr	x3		; _81
LEHE31:
	b	L435		;
L512:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 56	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 56]	; _121, MEM[(struct exception_ptr *)&D.205414]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:986:       std::rethrow_exception(p.exception);
	add	x0, x29, 56	;,,
LEHB32:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE32:
L437:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp216,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x20, x0	; _130,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp216,
LEHB33:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE33:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x20	;, _130
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB34:
	bl	___cxa_throw		;
LEHE34:
L464:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 56]	; D.205414._M_exception_object, D.205414._M_exception_object
	mov	x19, x0	; tmp269,
	cbz	x1, L441	; D.205414._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 56	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L441		;
L465:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x19, x0	; tmp268,
	mov	x0, x20	;, _130
	bl	___cxa_free_exception		;
L441:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 176]	; _44, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 176B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L456	; _44,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_44 + 8B], MEM[(void (*<T11f>) (void *) *)_44 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_44 + 8B]
L456:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x21, 184]	; _46, MEM[(const struct coroutine_handle *)frame_ptr_15(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L457	; _46,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_46 + 8B], MEM[(void (*<T11f>) (void *) *)_46 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_46 + 8B]
L457:
	mov	x0, x19	; tmp254, tmp219
L458:
	bl	___cxa_begin_catch		;
	ldrb	w0, [x21, 171]	; frame_ptr_15(D)->_Coro_initial_await_resume_called, frame_ptr_15(D)->_Coro_initial_await_resume_called
	tbnz	x0, 0, L459	; frame_ptr_15(D)->_Coro_initial_await_resume_called,,
LEHB35:
	bl	___cxa_rethrow		;
LEHE35:
L428:
L462:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	mov	x19, x0	; tmp219, tmp270
	b	L441		;
L461:
	b	L458		;
L459:
	add	x0, x21, 16	;, frame_ptr,
	str	xzr, [x21]	;, frame_ptr_15(D)->_Coro_resume_fn
	strh	wzr, [x21, 168]	;, frame_ptr_15(D)->_Coro_resume_index
	bl	__ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv		;
LEHB36:
	bl	___cxa_end_catch		;
LEHE36:
	b	L448		;
L463:
	mov	x19, x0	; tmp272,
	bl	___cxa_end_catch		;
	mov	x0, x19	;, tmp272
LEHB37:
	bl	__Unwind_Resume		;
LEHE37:
LFE6959:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
	.align	2
LLSDA6959:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT6959-LLSDATTD6959
LLSDATTD6959:
	.byte	0x1
	.uleb128 LLSDACSE6959-LLSDACSB6959
LLSDACSB6959:
	.uleb128 LEHB29-LFB6959
	.uleb128 LEHE29-LEHB29
	.uleb128 L462-LFB6959
	.uleb128 0x3
	.uleb128 LEHB30-LFB6959
	.uleb128 LEHE30-LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB31-LFB6959
	.uleb128 LEHE31-LEHB31
	.uleb128 L461-LFB6959
	.uleb128 0x1
	.uleb128 LEHB32-LFB6959
	.uleb128 LEHE32-LEHB32
	.uleb128 L464-LFB6959
	.uleb128 0x3
	.uleb128 LEHB33-LFB6959
	.uleb128 LEHE33-LEHB33
	.uleb128 L465-LFB6959
	.uleb128 0x3
	.uleb128 LEHB34-LFB6959
	.uleb128 LEHE34-LEHB34
	.uleb128 L462-LFB6959
	.uleb128 0x3
	.uleb128 LEHB35-LFB6959
	.uleb128 LEHE35-LEHB35
	.uleb128 L463-LFB6959
	.uleb128 0
	.uleb128 LEHB36-LFB6959
	.uleb128 LEHE36-LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB37-LFB6959
	.uleb128 LEHE37-LEHB37
	.uleb128 0
	.uleb128 0
LLSDACSE6959:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.long	0

LLSDATT6959:
	.text
	.align	2
	.p2align 5,,15
__Z7ping_d5P18_ZL7ping_d5v.Frame.destroy:
LFB6960:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	ldrh	w2, [x0, 168]	;, frame_ptr_4(D)->_Coro_resume_index
	orr	w2, w2, 1	; tmp105, frame_ptr_4(D)->_Coro_resume_index,
	strh	w2, [x0, 168]	; tmp105, frame_ptr_4(D)->_Coro_resume_index
	b	__Z7ping_d5P18_ZL7ping_d5v.Frame.actor		;
LFE6960:
	.align	2
	.p2align 5,,15
__Z7ping_d8P18_ZL7ping_d8v.Frame.actor:
LFB6962:
	stp	x29, x30, [sp, -80]!	;,,,
LCFI124:
	mov	x29, sp	;,
LCFI125:
	stp	x19, x20, [sp, 16]	;,,
LCFI126:
	mov	x20, x0	; frame_ptr, frame_ptr
	stp	x21, x22, [sp, 32]	;,,
; b5_propagation.cpp:33: }
	ldrh	w0, [x0, 168]	; _1, frame_ptr_21(D)->_Coro_resume_index
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	str	x23, [sp, 48]	;,
LCFI127:
; b5_propagation.cpp:33: }
	tbz	x0, 0, L515	; _1,,
; b5_propagation.cpp:33: }
	cmp	w0, 9	; _1,
	bhi	L516		;,
	mov	x1, 1	; tmp201,
	mov	x2, 522	; tmp203,
	lsl	x0, x1, x0	; _185, tmp201, _1
	tst	x0, x2	; _185, tmp203
	bne	L562		;,
	mov	x1, 160	; tmp205,
	tst	x0, x1	; _185, tmp205
	beq	L516		;,
L518:
L556:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 176]	; _59, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 176B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L557	; _59,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_59 + 8B], MEM[(void (*<T11f>) (void *) *)_59 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_59 + 8B]
L557:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 184]	; _57, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L558	; _57,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_57 + 8B], MEM[(void (*<T11f>) (void *) *)_57 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_57 + 8B]
L558:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 192]	; _55, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 192B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L559	; _55,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_55 + 8B], MEM[(void (*<T11f>) (void *) *)_55 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_55 + 8B]
L559:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 200]	; _53, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 200B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L562	; _53,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_53 + 8B], MEM[(void (*<T11f>) (void *) *)_53 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_53 + 8B]
L517:
L561:
L562:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x20, 128]	; MEM[(struct exception_ptr *)frame_ptr_21(D) + 128B]._M_exception_object, MEM[(struct exception_ptr *)frame_ptr_21(D) + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	add	x0, x20, 128	; tmp311, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	cbz	x1, L563	; MEM[(struct exception_ptr *)frame_ptr_21(D) + 128B]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L563:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x20, 80]	; _192, MEM[(struct SmallAny *)frame_ptr_21(D) + 32B].destroy_
	add	x0, x20, 32	; tmp316, frame_ptr,
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L564	; _192,
; ../../effects.hpp:133:       destroy_(buf_);
	blr	x1		; _192
L564:
; b5_propagation.cpp:33: }
	ldrb	w0, [x20, 170]	; frame_ptr_21(D)->_Coro_frame_needs_free, frame_ptr_21(D)->_Coro_frame_needs_free
	tbnz	x0, 0, L653	; frame_ptr_21(D)->_Coro_frame_needs_free,,
L514:
; b5_propagation.cpp:33: }
	ldr	x23, [sp, 48]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI128:
	ret	
	.p2align 2,,3
L515:
LCFI129:
; b5_propagation.cpp:33: }
	cmp	w0, 4	; _1,
	beq	L519		;,
	bls	L654		;,
	cmp	w0, 6	; _1,
	bne	L655		;,
L523:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x0, [x20, 192]	; _158, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 192B]._M_fr_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)_158], MEM[(void (*<T11f>) (void *) *)_158]
LEHB38:
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_158]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x1, [x20, 192]	; _160, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 192B]._M_fr_ptr
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	adrp	x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	; tmp341,
	ldr	x22, [x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	; tmp341,
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x0, [x1]	; MEM[(void * *)_160], MEM[(void * *)_160]
	cbz	x0, L656	; MEM[(void * *)_160],
	.p2align 5,,15
L538:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	mov	x0, x22	;, tmp341
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x21, x1, 16	; tmp338, _160,
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	bl	___emutls_get_address		;
	ldr	x0, [x0]	; n, *_167
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x19, [x21, 96]	; _161, MEM[(struct promise_type &)_160 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L535	; n,
	b	L533		;
	.p2align 2,,3
L534:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_73->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L533	; n,
L535:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_73->effect_tag, n_73->effect_tag
	cmp	x19, x1	; _161, n_73->effect_tag
	bne	L534		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_73->dispatch, n_73->dispatch
	ldr	x1, [x21, 104]	;, MEM[(struct promise_type &)_160 + 16].D.156829.D.155796.payload_ptr
	blr	x2		; n_73->dispatch
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x1, [x20, 192]	; _160, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 192B]._M_fr_ptr
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x0, [x1]	; MEM[(void * *)_160], MEM[(void * *)_160]
	cbnz	x0, L538	; MEM[(void * *)_160],
L656:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x1, 128]	; _164, MEM[(const struct exception_ptr *)_160 + 128B]._M_exception_object
; ../../effects.hpp:985:     if (p.exception)
	cbnz	x0, L657	; _164,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x0, [x20, 176]	; _174, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 176B]._M_fr_ptr
; ../../effects.hpp:987:     return std::move(*p.result);
	ldr	w1, [x1, 144]	;, MEM[(type &)_160 + 144]
	mov	w23, w1	; _165, _165
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x1, [x0]	; MEM[(void (*<T11f>) (void *) *)_174], MEM[(void (*<T11f>) (void *) *)_174]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_174]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x20, 176]	; _176, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 176B]._M_fr_ptr
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	adrp	x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	; tmp340,
	ldr	x22, [x22, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	; tmp340,
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_176], MEM[(void * *)_176]
	cbz	x1, L658	; MEM[(void * *)_176],
	.p2align 5,,15
L547:
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x21, x0, 16	; tmp339, _176,
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	mov	x0, x22	;, tmp340
	bl	___emutls_get_address		;
	ldr	x0, [x0]	; n, *_183
; ../../effects.hpp:982:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x19, [x21, 96]	; _177, MEM[(struct promise_type &)_176 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L545	; n,
	b	L543		;
	.p2align 2,,3
L544:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_3->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L543	; n,
L545:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_3->effect_tag, n_3->effect_tag
	cmp	x19, x1	; _177, n_3->effect_tag
	bne	L544		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x2, [x0, 24]	; n_3->dispatch, n_3->dispatch
	ldr	x1, [x21, 104]	;, MEM[(struct promise_type &)_176 + 16].D.156829.D.155796.payload_ptr
	blr	x2		; n_3->dispatch
LEHE38:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	ldr	x0, [x20, 176]	; _176, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 176B]._M_fr_ptr
; ../../effects.hpp:980:     while (!h.done()) {
	ldr	x1, [x0]	; MEM[(void * *)_176], MEM[(void * *)_176]
	cbnz	x1, L547	; MEM[(void * *)_176],
L658:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x0, 128]	; _180, MEM[(const struct exception_ptr *)_176 + 128B]._M_exception_object
; ../../effects.hpp:985:     if (p.exception)
	cbnz	x1, L659	; _180,
; b5_propagation.cpp:32:   co_return co_await ping_d5() + co_await ping_d3();
	ldr	w1, [x0, 144]	;, MEM[(type &)_176 + 144]
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	mov	w2, 1	; tmp296,
	strb	w2, [x20, 148]	; tmp296, MEM <unsigned char> [(struct promise_type *)frame_ptr_21(D) + 148B]
; b5_propagation.cpp:32:   co_return co_await ping_d5() + co_await ping_d3();
	add	w1, w1, w23	; _125, MEM[(type &)_176 + 144], _165
; ../../effects.hpp:813:     void return_value(T v) { result = std::move(v); }
	str	w1, [x20, 144]	; _125, MEM <int> [(struct promise_type *)frame_ptr_21(D) + 144B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_176 + 8B], MEM[(void (*<T11f>) (void *) *)_176 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_176 + 8B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 184]	; _48, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L550	; _48,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_48 + 8B], MEM[(void (*<T11f>) (void *) *)_48 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_48 + 8B]
L550:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 192]	; _23, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 192B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L553	; _23,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_23 + 8B], MEM[(void (*<T11f>) (void *) *)_23 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_23 + 8B]
L553:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 200]	; _26, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 200B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L555	; _26,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_26 + 8B], MEM[(void (*<T11f>) (void *) *)_26 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_26 + 8B]
L555:
; b5_propagation.cpp:33: }
	mov	w0, 8	; tmp309,
; b5_propagation.cpp:33: }
	str	xzr, [x20]	;, frame_ptr_21(D)->_Coro_resume_fn
	ldr	x23, [sp, 48]	;,
; b5_propagation.cpp:33: }
	strh	w0, [x20, 168]	; tmp309, frame_ptr_21(D)->_Coro_resume_index
; b5_propagation.cpp:33: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI130:
	ret	
L654:
LCFI131:
; b5_propagation.cpp:33: }
	cbz	w0, L521	; _1,
L522:
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	mov	w1, 1	; tmp207,
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	strb	w1, [x20, 171]	; tmp207, frame_ptr_21(D)->_Coro_initial_await_resume_called
; ../../effects.hpp:554:     auto *mr = current_mr;
	bl	___emutls_get_address		;
	ldr	x19, [x0]	; mr, *_120
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x19, L525	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x1, [x19]	; mr_121->_vptr.memory_resource, mr_121->_vptr.memory_resource
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp210,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp210,
	ldr	x3, [x1, 16]	; _124, MEM[(int (*) () *)_123 + 16B]
	cmp	x3, x0	; _124, tmp210
	bne	L526		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x19, 16]	; _136, MEM[(size_t &)mr_121 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 215	; _136,
	bls	L529		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x1, [x19, 8]	; __intptr, MEM[(void * &)mr_121 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x3, x0, #216	; _145, _136,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x2, x1, 15	; _141, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x2, x2, -16	; __aligned, _141,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x4, x2, x1	; __diff_144, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x4, x3	; __diff_144, _145
	bhi	L529		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x1, x0, x1	; _169, _136, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x0, x2	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x1, x1, x2	; _147, _169, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x2, x1, [x19, 8]	; __p, _147,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x2, L529	; __p,
L530:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x1, x1, #216	; _156, _147,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x2, x0, 216	; _154, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x2, x1, [x19, 8]	; _154, _156,
L531:
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	adrp	x2, __Z7ping_d5P18_ZL7ping_d5v.Frame.actor@PAGE	; tmp219,
	adrp	x3, __Z7ping_d5P18_ZL7ping_d5v.Frame.destroy@PAGE	; tmp221,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp228
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	add	x2, x2, __Z7ping_d5P18_ZL7ping_d5v.Frame.actor@PAGEOFF;	; tmp218, tmp219,
	add	x3, x3, __Z7ping_d5P18_ZL7ping_d5v.Frame.destroy@PAGEOFF;	; tmp220, tmp221,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x0, 16]	;, MEM[(struct PromiseAbortBase *)raw_127 + 16B].aborted
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	stp	x2, x3, [x0]	; tmp218, tmp220,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x2, x0, 144	; _119, __p,
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	mov	w3, 65536	; tmp234,
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x0, 24]	;, MEM[(struct PromiseAbortBase *)raw_127 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x0, 32]	; MEM[(struct SmallAny *)raw_127 + 32B].buf_
	stp	xzr, xzr, [x0, 48]	; MEM[(struct SmallAny *)raw_127 + 32B].buf_
	stp	xzr, xzr, [x0, 64]	; MEM[(struct SmallAny *)raw_127 + 32B].buf_
	str	q31, [x0, 80]	; tmp228, MEM <vector(2) long unsigned int> [(void *)raw_127 + 80B]
	str	xzr, [x0, 96]	;, MEM[(struct SmallAny *)raw_127 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x0, 112]	; tmp228, MEM <vector(2) long unsigned int> [(const void * *)raw_127 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	stp	xzr, x2, [x0, 128]	;, _119,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x0, 148]	;, MEM[(struct _Optional_payload_base *)raw_127 + 144B]._M_engaged
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	str	w3, [x0, 168]	; tmp234, MEM <unsigned int> [(void *)raw_127 + 168B]
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x19, [x0, 208]	; mr, MEM[(struct memory_resource * *)raw_127 + 208B]
; ../../effects.hpp:609:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	str	x0, [x20, 200]	; __p, MEM[(struct OwnedHandle *)frame_ptr_21(D) + 200B]
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	bl	__Z7ping_d5P18_ZL7ping_d5v.Frame.actor		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	ldr	x0, [x20, 200]	; __old_val$_M_fr_ptr, MEM[(struct coroutine_handle &)frame_ptr_21(D) + 200]
; b5_propagation.cpp:33: }
	add	x8, x20, 184	;, frame_ptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	stp	x0, xzr, [x20, 192]	; __old_val$_M_fr_ptr,,
LEHB39:
; b5_propagation.cpp:33: }
	bl	__ZL7ping_d3v		;
LEHE39:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	ldr	x0, [x20, 184]	; __old_val$_M_fr_ptr, MEM[(struct coroutine_handle &)frame_ptr_21(D) + 184]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	stp	x0, xzr, [x20, 176]	; __old_val$_M_fr_ptr,,
L519:
; b5_propagation.cpp:33: }
	mov	w0, 6	; tmp245,
	strh	w0, [x20, 168]	; tmp245, frame_ptr_21(D)->_Coro_resume_index
	b	L523		;
L655:
; b5_propagation.cpp:33: }
	cmp	w0, 8	; _1,
	beq	L562		;,
L516:
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	brk #1000
	.p2align 2,,3
L653:
; ../../effects.hpp:567:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	ldr	x0, [x20, 224]	; mr, MEM[(struct memory_resource * *)frame_ptr_21(D) + 224B]
; ../../effects.hpp:569:     if (mr)
	cbz	x0, L565	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	ldr	x2, [x0]	; mr_196->_vptr.memory_resource, mr_196->_vptr.memory_resource
	adrp	x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGE	; tmp321,
	ldr	x1, [x1, __ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm@GOTPAGEOFF]	; tmp321,
	ldr	x4, [x2, 24]	; _198, MEM[(int (*) () *)_197 + 24B]
	cmp	x4, x1	; _198, tmp321
	beq	L514		;,
	mov	x1, x20	;, frame_ptr
	mov	x3, 16	;,
	mov	x2, 232	;,
	blr	x4		; _198
	b	L514		;
L521:
; b5_propagation.cpp:33: }
	mov	w0, 2	; tmp206,
; b5_propagation.cpp:33: }
	str	x20, [x20, 160]	; frame_ptr, frame_ptr_21(D)->_Coro_self_handle._M_fr_ptr
; b5_propagation.cpp:33: }
	strb	wzr, [x20, 171]	;, frame_ptr_21(D)->_Coro_initial_await_resume_called
; b5_propagation.cpp:33: }
	strh	w0, [x20, 168]	; tmp206, frame_ptr_21(D)->_Coro_resume_index
; b5_propagation.cpp:33: }
	ldr	x23, [sp, 48]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI132:
	ret	
L529:
LCFI133:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x19	;, mr
LEHB40:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
LEHE40:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x0, x1, [x19, 8]	; __p, _147,
	b	L530		;
L565:
; b5_propagation.cpp:33: }
	ldr	x23, [sp, 48]	;,
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	mov	x0, x20	;, frame_ptr
	mov	x1, 232	;,
; b5_propagation.cpp:33: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI134:
LEHB41:
; ../../effects.hpp:572:       ::operator delete(ptr, total);
	b	__ZdlPvm		;
LEHE41:
L525:
LCFI135:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 216	;,
LEHB42:
	bl	__Znwm		;
	b	L531		;
L526:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x19	;, mr
	blr	x3		; _124
LEHE42:
	b	L531		;
L659:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 72	;,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 72]	; _180, MEM[(struct exception_ptr *)_98]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:986:       std::rethrow_exception(p.exception);
	add	x0, x29, 72	;,,
LEHB43:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE43:
L657:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x0, [x29, 72]	; _164, MEM[(struct exception_ptr *)_98]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	add	x0, x29, 72	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:986:       std::rethrow_exception(p.exception);
	add	x0, x29, 72	;,,
LEHB44:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE44:
L580:
L652:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 72]	; MEM[(struct exception_ptr *)_98]._M_exception_object, MEM[(struct exception_ptr *)_98]._M_exception_object
	mov	x19, x0	; tmp353,
	cbz	x1, L537	; MEM[(struct exception_ptr *)_98]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	add	x0, x29, 72	;,,
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L537		;
L578:
	b	L652		;
L575:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	mov	x19, x0	; tmp326, tmp355
L568:
	ldr	x0, [x20, 192]	; _66, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 192B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L569	; _66,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_66 + 8B], MEM[(void (*<T11f>) (void *) *)_66 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_66 + 8B]
L569:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 200]	; _68, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 200B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L570	; _68,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_68 + 8B], MEM[(void (*<T11f>) (void *) *)_68 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_68 + 8B]
L570:
	mov	x0, x19	; tmp332, tmp326
L571:
	bl	___cxa_begin_catch		;
	ldrb	w0, [x20, 171]	; frame_ptr_21(D)->_Coro_initial_await_resume_called, frame_ptr_21(D)->_Coro_initial_await_resume_called
	tbnz	x0, 0, L572	; frame_ptr_21(D)->_Coro_initial_await_resume_called,,
LEHB45:
	bl	___cxa_rethrow		;
LEHE45:
L574:
	b	L571		;
L524:
L576:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	mov	x19, x0	; tmp260, tmp354
	b	L537		;
L533:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp257,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; _173,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp257,
LEHB46:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE46:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x21	;, _173
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB47:
	bl	___cxa_throw		;
LEHE47:
L543:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp284,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; _189,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp284,
LEHB48:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE48:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x21	;, _189
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB49:
	bl	___cxa_throw		;
LEHE49:
L579:
L650:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x19, x0	; tmp352,
	mov	x0, x21	;, _189
	bl	___cxa_free_exception		;
L537:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 176]	; _62, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 176B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L566	; _62,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_62 + 8B], MEM[(void (*<T11f>) (void *) *)_62 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_62 + 8B]
L566:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:239: 	return bool(_M_fr_ptr);
	ldr	x0, [x20, 184]	; _64, MEM[(const struct coroutine_handle *)frame_ptr_21(D) + 184B]._M_fr_ptr
; ../../effects.hpp:622:     if (h)
	cbz	x0, L568	; _64,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	ldr	x1, [x0, 8]	; MEM[(void (*<T11f>) (void *) *)_64 + 8B], MEM[(void (*<T11f>) (void *) *)_64 + 8B]
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_64 + 8B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	b	L568		;
L581:
	b	L650		;
L572:
	add	x0, x20, 16	;, frame_ptr,
	str	xzr, [x20]	;, frame_ptr_21(D)->_Coro_resume_fn
	strh	wzr, [x20, 168]	;, frame_ptr_21(D)->_Coro_resume_index
	bl	__ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv		;
LEHB50:
	bl	___cxa_end_catch		;
LEHE50:
	b	L555		;
L577:
	mov	x19, x0	; tmp357,
	bl	___cxa_end_catch		;
	mov	x0, x19	;, tmp357
LEHB51:
	bl	__Unwind_Resume		;
LEHE51:
LFE6962:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
	.align	2
LLSDA6962:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT6962-LLSDATTD6962
LLSDATTD6962:
	.byte	0x1
	.uleb128 LLSDACSE6962-LLSDACSB6962
LLSDACSB6962:
	.uleb128 LEHB38-LFB6962
	.uleb128 LEHE38-LEHB38
	.uleb128 L576-LFB6962
	.uleb128 0x3
	.uleb128 LEHB39-LFB6962
	.uleb128 LEHE39-LEHB39
	.uleb128 L575-LFB6962
	.uleb128 0x3
	.uleb128 LEHB40-LFB6962
	.uleb128 LEHE40-LEHB40
	.uleb128 L574-LFB6962
	.uleb128 0x1
	.uleb128 LEHB41-LFB6962
	.uleb128 LEHE41-LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB42-LFB6962
	.uleb128 LEHE42-LEHB42
	.uleb128 L574-LFB6962
	.uleb128 0x1
	.uleb128 LEHB43-LFB6962
	.uleb128 LEHE43-LEHB43
	.uleb128 L580-LFB6962
	.uleb128 0x3
	.uleb128 LEHB44-LFB6962
	.uleb128 LEHE44-LEHB44
	.uleb128 L578-LFB6962
	.uleb128 0x3
	.uleb128 LEHB45-LFB6962
	.uleb128 LEHE45-LEHB45
	.uleb128 L577-LFB6962
	.uleb128 0
	.uleb128 LEHB46-LFB6962
	.uleb128 LEHE46-LEHB46
	.uleb128 L579-LFB6962
	.uleb128 0x3
	.uleb128 LEHB47-LFB6962
	.uleb128 LEHE47-LEHB47
	.uleb128 L576-LFB6962
	.uleb128 0x3
	.uleb128 LEHB48-LFB6962
	.uleb128 LEHE48-LEHB48
	.uleb128 L581-LFB6962
	.uleb128 0x3
	.uleb128 LEHB49-LFB6962
	.uleb128 LEHE49-LEHB49
	.uleb128 L576-LFB6962
	.uleb128 0x3
	.uleb128 LEHB50-LFB6962
	.uleb128 LEHE50-LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB51-LFB6962
	.uleb128 LEHE51-LEHB51
	.uleb128 0
	.uleb128 0
LLSDACSE6962:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.long	0

LLSDATT6962:
	.text
	.align	2
	.p2align 5,,15
__Z7ping_d8P18_ZL7ping_d8v.Frame.destroy:
LFB6963:
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	ldrh	w2, [x0, 168]	;, frame_ptr_4(D)->_Coro_resume_index
	orr	w2, w2, 1	; tmp105, frame_ptr_4(D)->_Coro_resume_index,
	strh	w2, [x0, 168]	; tmp105, frame_ptr_4(D)->_Coro_resume_index
	b	__Z7ping_d8P18_ZL7ping_d8v.Frame.actor		;
LFE6963:
	.cstring
	.align	3
lC6:
	.ascii "basic_string::_M_replace\0"
	.align	3
lC7:
	.ascii "b5: propagation chain depth scaling  (N=\0"
	.align	3
lC8:
	.ascii "basic_string::append\0"
	.align	3
lC9:
	.ascii " per cell)\0"
	.align	3
lC10:
	.ascii "\12=== \0"
	.align	3
lC11:
	.ascii " ===\12\0"
	.align	3
lC12:
	.ascii "  Each iteration traverses the full chain once.\12\0"
	.align	3
lC13:
	.ascii "  Direct: plain non-inlined function calls at equivalent depth.\12\0"
	.align	3
lC14:
	.ascii "  Fx:     co_await chain \342\200\224 each level allocates one coroutine frame.\12\12\0"
	.align	3
lC15:
	.ascii "  depth 1:\12\0"
	.align	3
lC16:
	.ascii "    direct\0"
	.align	3
lC17:
	.ascii "    fx\0"
	.align	3
lC18:
	.ascii "  depth 3:\12\0"
	.align	3
lC19:
	.ascii "  depth 5:\12\0"
	.align	3
lC20:
	.ascii "  depth 8 (two branches):\12\0"
	.align	3
lC21:
	.ascii "\12Note: the Fx/direct ratio stays roughly constant across depths\12\0"
	.align	3
lC22:
	.ascii "      because each extra level adds the same fixed per-frame cost.\12\0"
	.align	3
lC23:
	.ascii "      A pool allocator for coroutine frames would flatten the curve.\12\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align	2
	.p2align 5,,15
	.globl _main
_main:
LFB6971:
	stp	x29, x30, [sp, -384]!	;,,,
LCFI136:
	mov	x29, sp	;,
LCFI137:
; b5_propagation.cpp:56:   section("b5: propagation chain depth scaling  (N=" + std::to_string(N) +
	mov	x0, 41248	;,
	add	x8, x29, 256	; tmp1733,,
; b5_propagation.cpp:53: int main() {
; b5_propagation.cpp:56:   section("b5: propagation chain depth scaling  (N=" + std::to_string(N) +
	movk	x0, 0x7, lsl 16	;,,
; b5_propagation.cpp:53: int main() {
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
	stp	x25, x26, [sp, 64]	;,,
	stp	x27, x28, [sp, 80]	;,,
	stp	d8, d9, [sp, 96]	;,,
	stp	d10, d11, [sp, 112]	;,,
	stp	d12, d13, [sp, 128]	;,,
	stp	d14, d15, [sp, 144]	;,,
LCFI138:
; b5_propagation.cpp:56:   section("b5: propagation chain depth scaling  (N=" + std::to_string(N) +
	str	x8, [x29, 216]	; tmp1733, %sfp
LEHB52:
	bl	__ZNSt7__cxx119to_stringEm		;
LEHE52:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x21, [x29, 264]	; __sz, MEM[(struct basic_string *)_392]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 41	; tmp641,
	movk	x0, 0x8000, lsl 48	; tmp641,,
	add	x0, x21, x0	; _1231, __sz, tmp641
	cmp	x0, 39	; _1231,
	bls	L1130		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x19, [x29, 256]	; _398, MEM[(struct basic_string *)_392]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x20, x29, 272	; tmp1734,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:549:       const size_type __new_size = __old_size + __len2 - __len1;
	add	x24, x21, 40	; _396, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x19, x20	; _398, tmp1734
	beq	L663		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x22, [x29, 272]	; __sz, MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:551:       if (__new_size <= this->capacity())
	cmp	x24, x22	; _396, __sz
	bhi	L664		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/stl_function.h:454: 	return (__UINTPTR_TYPE__)__x < (__UINTPTR_TYPE__)__y;
	adrp	x22, lC7@PAGE	; tmp1701,
	add	x3, x22, lC7@PAGEOFF;	; __x.23_405, tmp1701,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x19, x3	; _398, __x.23_405
	bls	L1131		;,
L665:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:570: 	      if (__how_much && __len1 != __len2)
	cbnz	x21, L667	; __sz,
L668:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x0, x22, lC7@PAGEOFF;	; tmp654, tmp1701,
	ldr	x1, [x0, 32]	; MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="], MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="]
	ldp	q31, q30, [x0]	; MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="], MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="],
	str	x1, [x19, 32]	; MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="], MEM <char[1:40]> [(void *)_398]
	stp	q31, q30, [x19]	; MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="], MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="],* _398
L669:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x2, [x29, 256]	; MEM[(struct basic_string *)_392]._M_dataplus._M_p, MEM[(struct basic_string *)_392]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	add	x0, x29, 288	; tmp1735,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x24, [x29, 264]	; _396, MEM[(struct basic_string *)_392]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	ldr	x1, [x29, 216]	;, %sfp
	str	x0, [x29, 192]	; tmp1735, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x2, x24]	;, MEM[(char_type &)_417]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3963:     { return std::move(__rhs.insert(0, __lhs)); }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldr	x21, [x29, 296]	; __sz, MEM[(struct basic_string *)_1369]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:422: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	x0, 11	; tmp684,
	movk	x0, 0x8000, lsl 48	; tmp684,,
	add	x0, x21, x0	; _92, __sz, tmp684
	cmp	x0, 9	; _92,
	bls	L1132		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x22, [x29, 288]	; _461, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x27, x29, 304	; tmp1697,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:447:       const size_type __len = __n + this->size();
	add	x24, x21, 10	; __len, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x22, x27	; _461, tmp1697
	beq	L1133		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	ldr	x19, [x29, 304]	; __sz, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x24, x19	; __len, __sz
	bhi	L681		;,
L679:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x0, lC9@PAGE	; tmp691,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:452: 	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
	add	x1, x22, x21	; _465, _461, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x0, x0, lC9@PAGEOFF;	; tmp690, tmp691,
	ldr	x2, [x0]	; MEM <char[1:10]> [(void *)" per cell)"], MEM <char[1:10]> [(void *)" per cell)"]
	ldrh	w0, [x0, 8]	;, MEM <char[1:10]> [(void *)" per cell)"]
	str	x2, [x22, x21]	; MEM <char[1:10]> [(void *)" per cell)"], MEM <char[1:10]> [(void *)_465]
	strh	w0, [x1, 8]	; MEM <char[1:10]> [(void *)" per cell)"], MEM <char[1:10]> [(void *)_465]
L682:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldr	x2, [x29, 288]	; MEM[(struct basic_string *)_1369]._M_dataplus._M_p, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	add	x21, x29, 320	; tmp1698,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:234:       { _M_string_length = __length; }
	str	x24, [x29, 296]	; __len, MEM[(struct basic_string *)_1369]._M_string_length
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	mov	x0, x21	;, tmp1698
	ldr	x1, [x29, 192]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	wzr, [x2, x24]	;, MEM[(char_type &)_468]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:3977:     { return std::move(__lhs.append(__rhs)); }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC10@PAGE	; tmp725,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, 5	;,
	add	x1, x1, lC10@PAGEOFF;	;, tmp725,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	ldp	x19, x22, [x29, 320]	; _104, __sz,
LEHB53:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/string_view:769:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	mov	x2, x22	;, __sz
	mov	x1, x19	;, _104
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC11@PAGE	; tmp729,
	mov	x2, 5	;,
	add	x1, x1, lC11@PAGEOFF;	;, tmp729,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LEHE53:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 320]	; _112, MEM[(struct basic_string *)_1368]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 336	; tmp1699,,
	str	x1, [x29, 200]	; tmp1699, %sfp
	cmp	x0, x1	; _112, tmp1699
	beq	L689		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L689:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _22, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _22, tmp1697
	beq	L690		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L690:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 256]	; _72, MEM[(struct basic_string *)_392]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x20	; _72, tmp1734
	beq	L691		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L691:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC12@PAGE	; tmp743,
	mov	x2, 48	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC12@PAGEOFF;	;, tmp743,
LEHB54:
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC13@PAGE	; tmp746,
	mov	x2, 64	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC13@PAGEOFF;	;, tmp746,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b5_propagation.cpp:61:       << "  Fx:     co_await chain — each level allocates one coroutine frame.\n\n";
	adrp	x1, lC14@PAGE	; tmp749,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC14@PAGEOFF;	;, tmp749,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; b5_propagation.cpp:63:   std::cout << "  depth 1:\n";
	adrp	x1, lC15@PAGE	; tmp752,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC15@PAGEOFF;	;, tmp752,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; b5_propagation.cpp:66:     print_result(bench("    direct", N, [&] { sink += direct_d1(); }));
	ldr	x20, [x29, 192]	; tmp1735, %sfp
	adrp	x1, lC16@PAGE	; tmp1864,
	add	x1, x1, lC16@PAGEOFF;	;, tmp1864,
	mov	x0, x20	;, tmp1735
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE54:
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x19, x0	; start,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x19	; _531, end, start
; bench.hpp:44: }
	mov	x1, x20	;, tmp1735
	mov	x0, x21	;, tmp1698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d15, x2	;, _531
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp760,
; b5_propagation.cpp:66:     print_result(bench("    direct", N, [&] { sink += direct_d1(); }));
	mov	x0, x21	;, tmp1698
; bench.hpp:44: }
	str	d15, [x29, 360]	;, MEM[(struct BenchResult *)_1368].total_ns
	movk	x1, 0x7, lsl 16	; tmp760,,
	str	x1, [x29, 352]	; tmp760, MEM[(struct BenchResult *)_1368].iters
LEHB55:
; b5_propagation.cpp:66:     print_result(bench("    direct", N, [&] { sink += direct_d1(); }));
	bl	__Z12print_resultRK11BenchResult		;
LEHE55:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 200]	; tmp1699, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 320]	; _120, MEM[(const struct basic_string *)_1368]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _120, tmp1699
	beq	L692		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L692:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _116, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _116, tmp1697
	beq	L693		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L693:
; b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	adrp	x1, lC17@PAGE	; tmp1866,
	ldr	x0, [x29, 192]	;, %sfp
	add	x1, x1, lC17@PAGEOFF;	;, tmp1866,
LEHB56:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE56:
; ../../effects.hpp:554:     auto *mr = current_mr;
	adrp	x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGE	;,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail10current_mrE@GOTPAGEOFF]	;,
	bl	___emutls_get_address		;
	mov	x25, x0	; _557,
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp1763,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp1763,
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	adrp	x23, __ZN2fx6detail12effect_tag_vI4PingEE@GOTPAGE	; tmp1764,
	ldr	x23, [x23, __ZN2fx6detail12effect_tag_vI4PingEE@GOTPAGEOFF]	; tmp1764,
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	adrp	x24, __ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGE	; tmp1765,
	ldr	x24, [x24, __ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_@GOTPAGEOFF]	; tmp1765,
	str	x0, [x29, 176]	; tmp1763, %sfp
; ../../effects.hpp:554:     auto *mr = current_mr;
	mov	x0, 3	; ivtmp_695,
	str	x0, [x29, 224]	; ivtmp_695, %sfp
; b5_propagation.cpp:66:     print_result(bench("    direct", N, [&] { sink += direct_d1(); }));
	mov	x0, 41251	; sink,
	movk	x0, 0x7, lsl 16	; sink,,
	str	x0, [x29, 232]	; sink, %sfp
; ../../effects.hpp:752:     saved = detail::stack_top;
	adrp	x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGE	; tmp1766,
	ldr	x0, [x0, ___emutls_v._ZN2fx6detail9stack_topE@GOTPAGEOFF]	; tmp1766,
	str	x0, [x29, 184]	; tmp1766, %sfp
	.p2align 5,,15
L718:
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x19, [x25]	; mr, *_557
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x19, L694	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x0, [x19]	; mr_558->_vptr.memory_resource, mr_558->_vptr.memory_resource
	ldr	x3, [x0, 16]	; _561, MEM[(int (*) () *)_560 + 16B]
	ldr	x0, [x29, 176]	; tmp1763, %sfp
	cmp	x3, x0	; _561, tmp1763
	bne	L695		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x19, 16]	; _573, MEM[(size_t &)mr_558 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 215	; _573,
	bls	L698		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x3, [x19, 8]	; __intptr, MEM[(void * &)mr_558 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x2, x0, #216	; _582, _573,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x1, x3, 15	; _578, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x1, x1, -16	; __aligned, _578,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x4, x1, x3	; __diff_581, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x4, x2	; __diff_581, _582
	bhi	L698		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x0, x0, x3	; _2341, _573, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x20, x1	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x0, x0, x1	; _584, _2341, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x1, x0, [x19, 8]	; __p, _584,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x1, L698	; __p,
L699:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x0, x0, #216	; _593, _584,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x20, 216	; _591, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x0, [x19, 8]	; _591, _593,
L700:
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	adrp	x0, __Z7ping_d1P18_ZL7ping_d1v.Frame.actor@PAGE	; tmp1872,
	adrp	x1, __Z7ping_d1P18_ZL7ping_d1v.Frame.destroy@PAGE	; tmp1873,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp793
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	add	x0, x0, __Z7ping_d1P18_ZL7ping_d1v.Frame.actor@PAGEOFF;	; tmp783, tmp1872,
	add	x1, x1, __Z7ping_d1P18_ZL7ping_d1v.Frame.destroy@PAGEOFF;	; tmp785, tmp1873,
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x26, x20, 16	; tmp1702, __p,
	strb	wzr, [x20, 16]	;, MEM[(struct PromiseAbortBase *)raw_564 + 16B].aborted
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	add	x28, x20, 32	; _603, __p,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	stp	x0, x1, [x20]	; tmp783, tmp785,* __p
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	mov	w3, 65536	; tmp799,
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _556, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x2, x20, 128	; tmp1712, __p,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	mov	x0, x20	;, __p
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x22, x29, 248	; tmp1732,,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x19, [x20, 208]	; mr, MEM[(struct memory_resource * *)raw_564 + 208B]
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x26, 8]	;, MEM[(struct PromiseAbortBase *)raw_564 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_564 + 32B].buf_
	stp	xzr, xzr, [x28, 16]	; MEM[(struct SmallAny *)raw_564 + 32B].buf_
	stp	xzr, xzr, [x28, 32]	; MEM[(struct SmallAny *)raw_564 + 32B].buf_
	str	q31, [x20, 80]	; tmp793, MEM <vector(2) long unsigned int> [(void *)raw_564 + 80B]
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_564 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x20, 112]	; tmp793, MEM <vector(2) long unsigned int> [(const void * *)raw_564 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_564 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_564 + 144B]._M_engaged
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	str	w3, [x20, 168]	; tmp799, MEM <unsigned int> [(void *)raw_564 + 168B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x26, 120]	; _556, MEM[(struct promise_type *)raw_564 + 16B].D.156829.D.155796.result_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	x2, [x29, 208]	; tmp1712, %sfp
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	bl	__Z7ping_d1P18_ZL7ping_d1v.Frame.actor		;
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x0, [x29, 184]	;, %sfp
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x23, x21, [x29, 320]	; tmp1764, tmp1698,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	stp	x22, x24, [x29, 336]	; tmp1732, tmp1765,
; ../../effects.hpp:247: struct HandlerNode {
	str	xzr, [x29, 360]	;, MEM[(struct HandlerNode *)_1368].on_return_any_fn
; ../../effects.hpp:752:     saved = detail::stack_top;
	bl	___emutls_get_address		;
	mov	x19, x0	; _597,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_564], MEM[(void (*<T11f>) (void *) *)raw_564]
	mov	x0, x20	;, __p
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.38_598, *_597
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x21, [x19]	; tmp1698, *_597
; ../../effects.hpp:753:     node.prev = saved;
	str	x1, [x29, 352]	; stack_top.38_598, MEM[(struct ScopedHandler *)_1368].node.prev
; ../../effects.hpp:752:     saved = detail::stack_top;
	str	x1, [x29, 368]	; stack_top.38_598, MEM[(struct ScopedHandler *)_1368].saved
LEHB57:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_564]
	.p2align 5,,15
L701:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_564], MEM[(void * *)raw_564]
	cbz	x0, L1134	; MEM[(void * *)raw_564],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_597
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x3, [x26, 96]	; _615, MEM[(struct promise_type &)raw_564 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L705	; n,
	b	L702		;
	.p2align 2,,3
L703:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_709->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L702	; n,
L705:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_709->effect_tag, n_709->effect_tag
	cmp	x3, x1	; _615, n_709->effect_tag
	bne	L703		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_709->dispatch, n_709->dispatch
	ldr	x1, [x26, 104]	;, MEM[(struct promise_type &)raw_564 + 16].D.156829.D.155796.payload_ptr
	blr	x3		; n_709->dispatch
LEHE57:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x26]	; MEM[(struct promise_type &)raw_564 + 16].D.156829.D.155796.aborted, MEM[(struct promise_type &)raw_564 + 16].D.156829.D.155796.aborted
	tbz	x0, 0, L701	; MEM[(struct promise_type &)raw_564 + 16].D.156829.D.155796.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_564 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_564 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_564 + 16B].abort_owner, tmp1698
	beq	L715		;,
L716:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_564 + 8B], MEM[(void (*<T11f>) (void *) *)raw_564 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_564 + 8B]
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	ldr	x0, [x29, 224]	; ivtmp_695, %sfp
	subs	x0, x0, #1	; ivtmp_695, ivtmp_695,
	str	x0, [x29, 224]	; ivtmp_695, %sfp
	bne	L718		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 160]	;, %sfp
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp1758,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp1758,
	str	x0, [x29, 168]	; tmp1758, %sfp
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	adrp	x0, __Z7ping_d1P18_ZL7ping_d1v.Frame.actor@PAGE	; tmp1884,
	add	x0, x0, __Z7ping_d1P18_ZL7ping_d1v.Frame.actor@PAGEOFF;	; tmp1760, tmp1884,
	str	x0, [x29, 184]	; tmp1760, %sfp
	adrp	x0, __Z7ping_d1P18_ZL7ping_d1v.Frame.destroy@PAGE	; tmp1886,
	add	x0, x0, __Z7ping_d1P18_ZL7ping_d1v.Frame.destroy@PAGEOFF;	; tmp1761, tmp1886,
	str	x0, [x29, 176]	; tmp1761, %sfp
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x0, 41248	; ivtmp_721,
	movk	x0, 0x7, lsl 16	; ivtmp_721,,
	str	x0, [x29, 224]	; ivtmp_721, %sfp
	.p2align 5,,15
L745:
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x3, [x25]	; mr, *_557
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x3, L721	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x0, [x3]	; mr_644->_vptr.memory_resource, mr_644->_vptr.memory_resource
	ldr	x4, [x0, 16]	; _647, MEM[(int (*) () *)_646 + 16B]
	ldr	x0, [x29, 168]	; tmp1758, %sfp
	cmp	x4, x0	; _647, tmp1758
	bne	L722		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x3, 16]	; _659, MEM[(size_t &)mr_644 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 215	; _659,
	bls	L725		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x4, [x3, 8]	; __intptr, MEM[(void * &)mr_644 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x2, x0, #216	; _668, _659,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x1, x4, 15	; _664, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x1, x1, -16	; __aligned, _664,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x5, x1, x4	; __diff_667, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x5, x2	; __diff_667, _668
	bhi	L725		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x0, x0, x4	; _2340, _659, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x20, x1	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x0, x0, x1	; _670, _2340, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x1, x0, [x3, 8]	; __p, _670,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x1, L725	; __p,
L726:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x0, x0, #216	; _679, _670,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x20, 216	; _677, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x0, [x3, 8]	; _677, _679,
L727:
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x26, x20, 16	; tmp1704, __p,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp888
	add	x28, x20, 32	; _689, __p,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	mov	w4, 65536	; tmp894,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x2, x20, 128	; tmp1714, __p,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x20, 16]	;, MEM[(struct PromiseAbortBase *)raw_650 + 16B].aborted
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	ldp	x1, x0, [x29, 176]	; tmp1761, tmp1760,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x3, [x20, 208]	; mr, MEM[(struct memory_resource * *)raw_650 + 208B]
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	stp	x0, x1, [x20]	; tmp1760, tmp1761,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _642, __p,
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	mov	x0, x20	;, __p
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x26, 8]	;, MEM[(struct PromiseAbortBase *)raw_650 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_650 + 32B].buf_
	stp	xzr, xzr, [x28, 16]	; MEM[(struct SmallAny *)raw_650 + 32B].buf_
	stp	xzr, xzr, [x28, 32]	; MEM[(struct SmallAny *)raw_650 + 32B].buf_
	str	q31, [x20, 80]	; tmp888, MEM <vector(2) long unsigned int> [(void *)raw_650 + 80B]
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_650 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x20, 112]	; tmp888, MEM <vector(2) long unsigned int> [(const void * *)raw_650 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_650 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_650 + 144B]._M_engaged
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	str	w4, [x20, 168]	; tmp894, MEM <unsigned int> [(void *)raw_650 + 168B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x26, 120]	; _642, MEM[(struct promise_type *)raw_650 + 16B].D.156829.D.155796.result_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	x2, [x29, 208]	; tmp1714, %sfp
; b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	bl	__Z7ping_d1P18_ZL7ping_d1v.Frame.actor		;
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.38_684, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, __p
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x23, x21, [x29, 320]	; tmp1764, tmp1698,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	str	x22, [x29, 336]	; tmp1732, MEM[(struct ScopedHandler *)_1368].node.real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_650], MEM[(void (*<T11f>) (void *) *)raw_650]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x21, [x19]	; tmp1698, *_597
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x24, x1, [x29, 344]	; tmp1765, stack_top.38_684,
; ../../effects.hpp:247: struct HandlerNode {
	stp	xzr, x1, [x29, 360]	;, stack_top.38_684,
LEHB58:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_650]
	.p2align 5,,15
L728:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_650], MEM[(void * *)raw_650]
	cbz	x0, L1135	; MEM[(void * *)raw_650],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_597
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x3, [x26, 96]	; _701, MEM[(struct promise_type &)raw_650 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L732	; n,
	b	L729		;
	.p2align 2,,3
L730:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_700->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L729	; n,
L732:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_700->effect_tag, n_700->effect_tag
	cmp	x3, x1	; _701, n_700->effect_tag
	bne	L730		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_700->dispatch, n_700->dispatch
	ldr	x1, [x26, 104]	;, MEM[(struct promise_type &)raw_650 + 16].D.156829.D.155796.payload_ptr
	blr	x3		; n_700->dispatch
LEHE58:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x26]	; MEM[(struct promise_type &)raw_650 + 16].D.156829.D.155796.aborted, MEM[(struct promise_type &)raw_650 + 16].D.156829.D.155796.aborted
	tbz	x0, 0, L728	; MEM[(struct promise_type &)raw_650 + 16].D.156829.D.155796.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_650 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_650 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_650 + 16B].abort_owner, tmp1698
	beq	L742		;,
L743:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_650 + 8B], MEM[(void (*<T11f>) (void *) *)raw_650 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_650 + 8B]
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	ldr	x0, [x29, 224]	; ivtmp_721, %sfp
	subs	x0, x0, #1	; ivtmp_721, ivtmp_721,
	str	x0, [x29, 224]	; ivtmp_721, %sfp
	bne	L745		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 160]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 192]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _541, end, start
; bench.hpp:44: }
	mov	x0, x21	;, tmp1698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d14, x2	;, _541
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp964,
; b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	mov	x0, x21	;, tmp1698
; bench.hpp:44: }
	str	d14, [x29, 360]	;, MEM[(struct BenchResult *)_1368].total_ns
	movk	x1, 0x7, lsl 16	; tmp964,,
	str	x1, [x29, 352]	; tmp964, MEM[(struct BenchResult *)_1368].iters
LEHB59:
; b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	bl	__Z12print_resultRK11BenchResult		;
LEHE59:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 200]	; tmp1699, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 320]	; _128, MEM[(const struct basic_string *)_1368]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _128, tmp1699
	beq	L747		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L747:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _124, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _124, tmp1697
	beq	L748		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L748:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b5_propagation.cpp:71:   std::cout << "  depth 3:\n";
	adrp	x1, lC18@PAGE	; tmp975,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC18@PAGEOFF;	;, tmp975,
LEHB60:
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; b5_propagation.cpp:74:     print_result(bench("    direct", N, [&] { sink += direct_d3(); }));
	ldr	x26, [x29, 192]	; tmp1735, %sfp
	adrp	x0, lC16@PAGE	; tmp1901,
	add	x1, x0, lC16@PAGEOFF;	;, tmp1901,
	mov	x0, x26	;, tmp1735
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE60:
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x20, x0	; start,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x20	; _729, end, start
; bench.hpp:44: }
	mov	x1, x26	;, tmp1735
	mov	x0, x21	;, tmp1698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d13, x2	;, _729
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp983,
; b5_propagation.cpp:74:     print_result(bench("    direct", N, [&] { sink += direct_d3(); }));
	mov	x0, x21	;, tmp1698
; bench.hpp:44: }
	str	d13, [x29, 360]	;, MEM[(struct BenchResult *)_1368].total_ns
	movk	x1, 0x7, lsl 16	; tmp983,,
	str	x1, [x29, 352]	; tmp983, MEM[(struct BenchResult *)_1368].iters
LEHB61:
; b5_propagation.cpp:74:     print_result(bench("    direct", N, [&] { sink += direct_d3(); }));
	bl	__Z12print_resultRK11BenchResult		;
LEHE61:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 200]	; tmp1699, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 320]	; _137, MEM[(const struct basic_string *)_1368]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _137, tmp1699
	beq	L749		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L749:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _133, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _133, tmp1697
	beq	L750		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L750:
; b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	adrp	x0, lC17@PAGE	; tmp1903,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	add	x28, x29, 240	; tmp1756,,
; b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	add	x1, x0, lC17@PAGEOFF;	;, tmp1903,
	ldr	x0, [x29, 192]	;, %sfp
LEHB62:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE62:
	mov	x0, 3	; ivtmp_703,
	str	x0, [x29, 224]	; ivtmp_703, %sfp
; b5_propagation.cpp:74:     print_result(bench("    direct", N, [&] { sink += direct_d3(); }));
	mov	x0, 41251	; sink,
	movk	x0, 0x7, lsl 16	; sink,,
	str	x0, [x29, 232]	; sink, %sfp
	.p2align 5,,15
L768:
; b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	mov	x8, x22	;, tmp1732
LEHB63:
	bl	__ZL7ping_d3v		;
LEHE63:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x20, [x29, 248]	; _769, MEM[(const struct coroutine_handle *)_1515]._M_fr_ptr
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	str	x28, [x29, 336]	; tmp1756, MEM[(struct ScopedHandler *)_1368].node.real_handler_ptr
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.38_755, *_597
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x23, x21, [x29, 320]	; tmp1764, tmp1698,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, _769
	ldr	x2, [x20]	; MEM[(void (*<T11f>) (void *) *)_769], MEM[(void (*<T11f>) (void *) *)_769]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x21, [x19]	; tmp1698, *_597
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x24, x1, [x29, 344]	; tmp1765, stack_top.38_755,
; ../../effects.hpp:247: struct HandlerNode {
	stp	xzr, x1, [x29, 360]	;, stack_top.38_755,
LEHB64:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)_769]
	.p2align 5,,15
L751:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)_769], MEM[(void * *)_769]
	cbz	x0, L1136	; MEM[(void * *)_769],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_597
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x26, x20, 16	; tmp1708, _769,
	ldr	x3, [x26, 96]	; _772, MEM[(struct promise_type &)_769 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L755	; n,
	b	L752		;
	.p2align 2,,3
L753:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_639->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L752	; n,
L755:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_639->effect_tag, n_639->effect_tag
	cmp	x3, x1	; _772, n_639->effect_tag
	bne	L753		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_639->dispatch, n_639->dispatch
	ldr	x1, [x26, 104]	;, MEM[(struct promise_type &)_769 + 16].D.156829.D.155796.payload_ptr
	blr	x3		; n_639->dispatch
LEHE64:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x20, 16]	; MEM[(struct promise_type &)_769 + 16].D.156829.D.155796.aborted, MEM[(struct promise_type &)_769 + 16].D.156829.D.155796.aborted
	tbz	x0, 0, L751	; MEM[(struct promise_type &)_769 + 16].D.156829.D.155796.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)_769 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)_769 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)_769 + 16B].abort_owner, tmp1698
	beq	L765		;,
L766:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, _769
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)_769 + 8B], MEM[(void (*<T11f>) (void *) *)_769 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_769 + 8B]
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	ldr	x0, [x29, 224]	; ivtmp_703, %sfp
	subs	x0, x0, #1	; ivtmp_703, ivtmp_703,
	str	x0, [x29, 224]	; ivtmp_703, %sfp
	bne	L768		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 208]	;, %sfp
	mov	x0, 41248	; ivtmp_528,
	movk	x0, 0x7, lsl 16	; ivtmp_528,,
	str	x0, [x29, 224]	; ivtmp_528, %sfp
	.p2align 5,,15
L788:
; b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	mov	x8, x22	;, tmp1732
LEHB65:
	bl	__ZL7ping_d3v		;
LEHE65:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x20, [x29, 248]	; _814, MEM[(const struct coroutine_handle *)_1515]._M_fr_ptr
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	str	x28, [x29, 336]	; tmp1756, MEM[(struct ScopedHandler *)_1368].node.real_handler_ptr
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.38_800, *_597
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x23, x21, [x29, 320]	; tmp1764, tmp1698,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, _814
	ldr	x2, [x20]	; MEM[(void (*<T11f>) (void *) *)_814], MEM[(void (*<T11f>) (void *) *)_814]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x21, [x19]	; tmp1698, *_597
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x24, x1, [x29, 344]	; tmp1765, stack_top.38_800,
; ../../effects.hpp:247: struct HandlerNode {
	stp	xzr, x1, [x29, 360]	;, stack_top.38_800,
LEHB66:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x2		; MEM[(void (*<T11f>) (void *) *)_814]
	.p2align 5,,15
L771:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)_814], MEM[(void * *)_814]
	cbz	x0, L1137	; MEM[(void * *)_814],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_597
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	add	x26, x20, 16	; tmp1711, _814,
	ldr	x3, [x26, 96]	; _817, MEM[(struct promise_type &)_814 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L775	; n,
	b	L772		;
	.p2align 2,,3
L773:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_635->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L772	; n,
L775:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_635->effect_tag, n_635->effect_tag
	cmp	x3, x1	; _817, n_635->effect_tag
	bne	L773		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_635->dispatch, n_635->dispatch
	ldr	x1, [x26, 104]	;, MEM[(struct promise_type &)_814 + 16].D.156829.D.155796.payload_ptr
	blr	x3		; n_635->dispatch
LEHE66:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x20, 16]	; MEM[(struct promise_type &)_814 + 16].D.156829.D.155796.aborted, MEM[(struct promise_type &)_814 + 16].D.156829.D.155796.aborted
	tbz	x0, 0, L771	; MEM[(struct promise_type &)_814 + 16].D.156829.D.155796.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)_814 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)_814 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)_814 + 16B].abort_owner, tmp1698
	beq	L785		;,
L786:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, _814
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)_814 + 8B], MEM[(void (*<T11f>) (void *) *)_814 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_814 + 8B]
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	ldr	x0, [x29, 224]	; ivtmp_528, %sfp
	subs	x0, x0, #1	; ivtmp_528, ivtmp_528,
	str	x0, [x29, 224]	; ivtmp_528, %sfp
	bne	L788		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 208]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 192]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _739, end, start
; bench.hpp:44: }
	mov	x0, x21	;, tmp1698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d12, x2	;, _739
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp1127,
; b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	mov	x0, x21	;, tmp1698
; bench.hpp:44: }
	str	d12, [x29, 360]	;, MEM[(struct BenchResult *)_1368].total_ns
	movk	x1, 0x7, lsl 16	; tmp1127,,
	str	x1, [x29, 352]	; tmp1127, MEM[(struct BenchResult *)_1368].iters
LEHB67:
; b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	bl	__Z12print_resultRK11BenchResult		;
LEHE67:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 200]	; tmp1699, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 320]	; _145, MEM[(const struct basic_string *)_1368]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _145, tmp1699
	beq	L790		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L790:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _141, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _141, tmp1697
	beq	L791		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L791:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b5_propagation.cpp:79:   std::cout << "  depth 5:\n";
	adrp	x1, lC19@PAGE	; tmp1138,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC19@PAGEOFF;	;, tmp1138,
LEHB68:
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; b5_propagation.cpp:82:     print_result(bench("    direct", N, [&] { sink += direct_d5(); }));
	ldr	x26, [x29, 192]	; tmp1735, %sfp
	adrp	x0, lC16@PAGE	; tmp1921,
	add	x1, x0, lC16@PAGEOFF;	;, tmp1921,
	mov	x0, x26	;, tmp1735
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE68:
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x20, x0	; start,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x20	; _845, end, start
; bench.hpp:44: }
	mov	x1, x26	;, tmp1735
	mov	x0, x21	;, tmp1698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d11, x2	;, _845
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp1146,
; b5_propagation.cpp:82:     print_result(bench("    direct", N, [&] { sink += direct_d5(); }));
	mov	x0, x21	;, tmp1698
; bench.hpp:44: }
	str	d11, [x29, 360]	;, MEM[(struct BenchResult *)_1368].total_ns
	movk	x1, 0x7, lsl 16	; tmp1146,,
	str	x1, [x29, 352]	; tmp1146, MEM[(struct BenchResult *)_1368].iters
LEHB69:
; b5_propagation.cpp:82:     print_result(bench("    direct", N, [&] { sink += direct_d5(); }));
	bl	__Z12print_resultRK11BenchResult		;
LEHE69:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 200]	; tmp1699, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 320]	; _154, MEM[(const struct basic_string *)_1368]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _154, tmp1699
	beq	L792		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L792:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _150, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _150, tmp1697
	beq	L793		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L793:
; b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	adrp	x0, lC17@PAGE	; tmp1923,
	add	x1, x0, lC17@PAGEOFF;	;, tmp1923,
	ldr	x0, [x29, 192]	;, %sfp
LEHB70:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE70:
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp1751,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp1751,
	str	x0, [x29, 168]	; tmp1751, %sfp
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	adrp	x0, __Z7ping_d5P18_ZL7ping_d5v.Frame.actor@PAGE	; tmp1926,
	add	x0, x0, __Z7ping_d5P18_ZL7ping_d5v.Frame.actor@PAGEOFF;	; tmp1753, tmp1926,
	str	x0, [x29, 184]	; tmp1753, %sfp
	adrp	x0, __Z7ping_d5P18_ZL7ping_d5v.Frame.destroy@PAGE	; tmp1928,
	add	x0, x0, __Z7ping_d5P18_ZL7ping_d5v.Frame.destroy@PAGEOFF;	; tmp1755, tmp1928,
	str	x0, [x29, 176]	; tmp1755, %sfp
; b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	mov	x0, 3	; ivtmp_526,
	str	x0, [x29, 224]	; ivtmp_526, %sfp
; b5_propagation.cpp:82:     print_result(bench("    direct", N, [&] { sink += direct_d5(); }));
	mov	x0, 41251	; sink,
	movk	x0, 0x7, lsl 16	; sink,,
	str	x0, [x29, 232]	; sink, %sfp
	.p2align 5,,15
L818:
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x3, [x25]	; mr, *_557
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x3, L794	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x0, [x3]	; mr_872->_vptr.memory_resource, mr_872->_vptr.memory_resource
	ldr	x4, [x0, 16]	; _875, MEM[(int (*) () *)_874 + 16B]
	ldr	x0, [x29, 168]	; tmp1751, %sfp
	cmp	x4, x0	; _875, tmp1751
	bne	L795		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x3, 16]	; _887, MEM[(size_t &)mr_872 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 215	; _887,
	bls	L798		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x4, [x3, 8]	; __intptr, MEM[(void * &)mr_872 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x2, x0, #216	; _896, _887,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x1, x4, 15	; _892, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x1, x1, -16	; __aligned, _892,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x5, x1, x4	; __diff_895, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x5, x2	; __diff_895, _896
	bhi	L798		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x0, x0, x4	; _2339, _887, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x20, x1	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x0, x0, x1	; prephitmp_579, _2339, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x1, x0, [x3, 8]	; __p, prephitmp_579,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x1, L798	; __p,
L799:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x0, x0, #216	; _907, prephitmp_579,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x20, 216	; _905, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x0, [x3, 8]	; _905, _907,
L800:
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x26, x20, 16	; tmp1713, __p,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp1178
	add	x28, x20, 32	; _917, __p,
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	mov	w4, 65536	; tmp1184,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x2, x20, 128	; tmp1720, __p,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x20, 16]	;, MEM[(struct PromiseAbortBase *)raw_878 + 16B].aborted
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	ldp	x1, x0, [x29, 176]	; tmp1755, tmp1753,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x3, [x20, 208]	; mr, MEM[(struct memory_resource * *)raw_878 + 208B]
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	stp	x0, x1, [x20]	; tmp1753, tmp1755,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _870, __p,
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	mov	x0, x20	;, __p
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x26, 8]	;, MEM[(struct PromiseAbortBase *)raw_878 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_878 + 32B].buf_
	stp	xzr, xzr, [x28, 16]	; MEM[(struct SmallAny *)raw_878 + 32B].buf_
	stp	xzr, xzr, [x28, 32]	; MEM[(struct SmallAny *)raw_878 + 32B].buf_
	str	q31, [x20, 80]	; tmp1178, MEM <vector(2) long unsigned int> [(void *)raw_878 + 80B]
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_878 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x20, 112]	; tmp1178, MEM <vector(2) long unsigned int> [(const void * *)raw_878 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_878 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_878 + 144B]._M_engaged
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	str	w4, [x20, 168]	; tmp1184, MEM <unsigned int> [(void *)raw_878 + 168B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x26, 120]	; _870, MEM[(struct promise_type *)raw_878 + 16B].D.156829.D.155796.result_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	x2, [x29, 208]	; tmp1720, %sfp
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	bl	__Z7ping_d5P18_ZL7ping_d5v.Frame.actor		;
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.38_912, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, __p
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x23, x21, [x29, 320]	; tmp1764, tmp1698,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	str	x22, [x29, 336]	; tmp1732, MEM[(struct ScopedHandler *)_1368].node.real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_878], MEM[(void (*<T11f>) (void *) *)raw_878]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x21, [x19]	; tmp1698, *_597
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x24, x1, [x29, 344]	; tmp1765, stack_top.38_912,
; ../../effects.hpp:247: struct HandlerNode {
	stp	xzr, x1, [x29, 360]	;, stack_top.38_912,
LEHB71:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_878]
	.p2align 5,,15
L801:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_878], MEM[(void * *)raw_878]
	cbz	x0, L1138	; MEM[(void * *)raw_878],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_597
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x3, [x26, 96]	; _929, MEM[(struct promise_type &)raw_878 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L805	; n,
	b	L802		;
	.p2align 2,,3
L803:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_500->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L802	; n,
L805:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_500->effect_tag, n_500->effect_tag
	cmp	x3, x1	; _929, n_500->effect_tag
	bne	L803		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_500->dispatch, n_500->dispatch
	ldr	x1, [x26, 104]	;, MEM[(struct promise_type &)raw_878 + 16].D.156829.D.155796.payload_ptr
	blr	x3		; n_500->dispatch
LEHE71:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x26]	; MEM[(struct promise_type &)raw_878 + 16].D.156829.D.155796.aborted, MEM[(struct promise_type &)raw_878 + 16].D.156829.D.155796.aborted
	tbz	x0, 0, L801	; MEM[(struct promise_type &)raw_878 + 16].D.156829.D.155796.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_878 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_878 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_878 + 16B].abort_owner, tmp1698
	beq	L815		;,
L816:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_878 + 8B], MEM[(void (*<T11f>) (void *) *)raw_878 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_878 + 8B]
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	ldr	x0, [x29, 224]	; ivtmp_526, %sfp
	subs	x0, x0, #1	; ivtmp_526, ivtmp_526,
	str	x0, [x29, 224]	; ivtmp_526, %sfp
	bne	L818		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 160]	;, %sfp
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp1747,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp1747,
	str	x0, [x29, 168]	; tmp1747, %sfp
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	adrp	x0, __Z7ping_d5P18_ZL7ping_d5v.Frame.actor@PAGE	; tmp1944,
	add	x0, x0, __Z7ping_d5P18_ZL7ping_d5v.Frame.actor@PAGEOFF;	; tmp1749, tmp1944,
	str	x0, [x29, 184]	; tmp1749, %sfp
	adrp	x0, __Z7ping_d5P18_ZL7ping_d5v.Frame.destroy@PAGE	; tmp1946,
	add	x0, x0, __Z7ping_d5P18_ZL7ping_d5v.Frame.destroy@PAGEOFF;	; tmp1750, tmp1946,
	str	x0, [x29, 176]	; tmp1750, %sfp
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x0, 41248	; ivtmp_1049,
	movk	x0, 0x7, lsl 16	; ivtmp_1049,,
	str	x0, [x29, 224]	; ivtmp_1049, %sfp
	.p2align 5,,15
L845:
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x3, [x25]	; mr, *_557
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x3, L821	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x0, [x3]	; mr_958->_vptr.memory_resource, mr_958->_vptr.memory_resource
	ldr	x4, [x0, 16]	; _961, MEM[(int (*) () *)_960 + 16B]
	ldr	x0, [x29, 168]	; tmp1747, %sfp
	cmp	x4, x0	; _961, tmp1747
	bne	L822		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x3, 16]	; _973, MEM[(size_t &)mr_958 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 215	; _973,
	bls	L825		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x4, [x3, 8]	; __intptr, MEM[(void * &)mr_958 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x2, x0, #216	; _982, _973,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x1, x4, 15	; _978, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x1, x1, -16	; __aligned, _978,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x5, x1, x4	; __diff_981, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x5, x2	; __diff_981, _982
	bhi	L825		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x0, x0, x4	; _2332, _973, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x20, x1	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x0, x0, x1	; prephitmp_89, _2332, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x1, x0, [x3, 8]	; __p, prephitmp_89,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x1, L825	; __p,
L826:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x0, x0, #216	; _993, prephitmp_89,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x20, 216	; _991, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x0, [x3, 8]	; _991, _993,
L827:
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x26, x20, 16	; tmp1716, __p,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp1272
	add	x28, x20, 32	; _1003, __p,
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	mov	w4, 65536	; tmp1278,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x2, x20, 128	; tmp1723, __p,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x20, 16]	;, MEM[(struct PromiseAbortBase *)raw_964 + 16B].aborted
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	ldp	x1, x0, [x29, 176]	; tmp1750, tmp1749,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x3, [x20, 208]	; mr, MEM[(struct memory_resource * *)raw_964 + 208B]
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	stp	x0, x1, [x20]	; tmp1749, tmp1750,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _956, __p,
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	mov	x0, x20	;, __p
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x26, 8]	;, MEM[(struct PromiseAbortBase *)raw_964 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_964 + 32B].buf_
	stp	xzr, xzr, [x28, 16]	; MEM[(struct SmallAny *)raw_964 + 32B].buf_
	stp	xzr, xzr, [x28, 32]	; MEM[(struct SmallAny *)raw_964 + 32B].buf_
	str	q31, [x20, 80]	; tmp1272, MEM <vector(2) long unsigned int> [(void *)raw_964 + 80B]
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_964 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x20, 112]	; tmp1272, MEM <vector(2) long unsigned int> [(const void * *)raw_964 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_964 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_964 + 144B]._M_engaged
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	str	w4, [x20, 168]	; tmp1278, MEM <unsigned int> [(void *)raw_964 + 168B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x26, 120]	; _956, MEM[(struct promise_type *)raw_964 + 16B].D.156829.D.155796.result_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	x2, [x29, 208]	; tmp1723, %sfp
; b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	bl	__Z7ping_d5P18_ZL7ping_d5v.Frame.actor		;
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.38_998, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, __p
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x23, x21, [x29, 320]	; tmp1764, tmp1698,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	str	x22, [x29, 336]	; tmp1732, MEM[(struct ScopedHandler *)_1368].node.real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_964], MEM[(void (*<T11f>) (void *) *)raw_964]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x21, [x19]	; tmp1698, *_597
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x24, x1, [x29, 344]	; tmp1765, stack_top.38_998,
; ../../effects.hpp:247: struct HandlerNode {
	stp	xzr, x1, [x29, 360]	;, stack_top.38_998,
LEHB72:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_964]
	.p2align 5,,15
L828:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_964], MEM[(void * *)raw_964]
	cbz	x0, L1139	; MEM[(void * *)raw_964],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_597
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x3, [x26, 96]	; _1015, MEM[(struct promise_type &)raw_964 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L832	; n,
	b	L829		;
	.p2align 2,,3
L830:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_493->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L829	; n,
L832:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_493->effect_tag, n_493->effect_tag
	cmp	x3, x1	; _1015, n_493->effect_tag
	bne	L830		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_493->dispatch, n_493->dispatch
	ldr	x1, [x26, 104]	;, MEM[(struct promise_type &)raw_964 + 16].D.156829.D.155796.payload_ptr
	blr	x3		; n_493->dispatch
LEHE72:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x26]	; MEM[(struct promise_type &)raw_964 + 16].D.156829.D.155796.aborted, MEM[(struct promise_type &)raw_964 + 16].D.156829.D.155796.aborted
	tbz	x0, 0, L828	; MEM[(struct promise_type &)raw_964 + 16].D.156829.D.155796.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_964 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_964 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_964 + 16B].abort_owner, tmp1698
	beq	L842		;,
L843:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_964 + 8B], MEM[(void (*<T11f>) (void *) *)raw_964 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_964 + 8B]
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	ldr	x0, [x29, 224]	; ivtmp_1049, %sfp
	subs	x0, x0, #1	; ivtmp_1049, ivtmp_1049,
	str	x0, [x29, 224]	; ivtmp_1049, %sfp
	bne	L845		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 160]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 192]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _855, end, start
; bench.hpp:44: }
	mov	x0, x21	;, tmp1698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d10, x2	;, _855
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp1348,
; b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	mov	x0, x21	;, tmp1698
; bench.hpp:44: }
	str	d10, [x29, 360]	;, MEM[(struct BenchResult *)_1368].total_ns
	movk	x1, 0x7, lsl 16	; tmp1348,,
	str	x1, [x29, 352]	; tmp1348, MEM[(struct BenchResult *)_1368].iters
LEHB73:
; b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	bl	__Z12print_resultRK11BenchResult		;
LEHE73:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 200]	; tmp1699, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 320]	; _162, MEM[(const struct basic_string *)_1368]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _162, tmp1699
	beq	L847		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L847:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _158, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _158, tmp1697
	beq	L848		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L848:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; b5_propagation.cpp:87:   std::cout << "  depth 8 (two branches):\n";
	adrp	x1, lC20@PAGE	; tmp1359,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC20@PAGEOFF;	;, tmp1359,
LEHB74:
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
; b5_propagation.cpp:90:     print_result(bench("    direct", N, [&] { sink += direct_d8(); }));
	ldr	x26, [x29, 192]	; tmp1735, %sfp
	adrp	x0, lC16@PAGE	; tmp1961,
	add	x1, x0, lC16@PAGEOFF;	;, tmp1961,
	mov	x0, x26	;, tmp1735
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE74:
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	mov	x20, x0	; start,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x20	; _1043, end, start
; bench.hpp:44: }
	mov	x1, x26	;, tmp1735
	mov	x0, x21	;, tmp1698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d9, x2	;, _1043
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp1367,
; b5_propagation.cpp:90:     print_result(bench("    direct", N, [&] { sink += direct_d8(); }));
	mov	x0, x21	;, tmp1698
; bench.hpp:44: }
	str	d9, [x29, 360]	;, MEM[(struct BenchResult *)_1368].total_ns
	movk	x1, 0x7, lsl 16	; tmp1367,,
	str	x1, [x29, 352]	; tmp1367, MEM[(struct BenchResult *)_1368].iters
LEHB75:
; b5_propagation.cpp:90:     print_result(bench("    direct", N, [&] { sink += direct_d8(); }));
	bl	__Z12print_resultRK11BenchResult		;
LEHE75:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 200]	; tmp1699, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 320]	; _171, MEM[(const struct basic_string *)_1368]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _171, tmp1699
	beq	L849		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L849:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _167, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _167, tmp1697
	beq	L850		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L850:
; b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	adrp	x0, lC17@PAGE	; tmp1963,
	add	x1, x0, lC17@PAGEOFF;	;, tmp1963,
	ldr	x0, [x29, 192]	;, %sfp
LEHB76:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0		;
LEHE76:
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp1741,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp1741,
	str	x0, [x29, 168]	; tmp1741, %sfp
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	adrp	x0, __Z7ping_d8P18_ZL7ping_d8v.Frame.actor@PAGE	; tmp1966,
	add	x0, x0, __Z7ping_d8P18_ZL7ping_d8v.Frame.actor@PAGEOFF;	; tmp1743, tmp1966,
	str	x0, [x29, 184]	; tmp1743, %sfp
	adrp	x0, __Z7ping_d8P18_ZL7ping_d8v.Frame.destroy@PAGE	; tmp1968,
	add	x0, x0, __Z7ping_d8P18_ZL7ping_d8v.Frame.destroy@PAGEOFF;	; tmp1745, tmp1968,
	str	x0, [x29, 176]	; tmp1745, %sfp
; b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	mov	x0, 3	; ivtmp_521,
	str	x0, [x29, 224]	; ivtmp_521, %sfp
; b5_propagation.cpp:90:     print_result(bench("    direct", N, [&] { sink += direct_d8(); }));
	mov	x0, 16966	; sink,
	movk	x0, 0xf, lsl 16	; sink,,
	str	x0, [x29, 232]	; sink, %sfp
	.p2align 5,,15
L875:
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x3, [x25]	; mr, *_557
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x3, L851	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x0, [x3]	; mr_1070->_vptr.memory_resource, mr_1070->_vptr.memory_resource
	ldr	x4, [x0, 16]	; _1073, MEM[(int (*) () *)_1072 + 16B]
	ldr	x0, [x29, 168]	; tmp1741, %sfp
	cmp	x4, x0	; _1073, tmp1741
	bne	L852		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x3, 16]	; _1085, MEM[(size_t &)mr_1070 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 231	; _1085,
	bls	L855		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x4, [x3, 8]	; __intptr, MEM[(void * &)mr_1070 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x2, x0, #232	; _1094, _1085,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x1, x4, 15	; _1090, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x1, x1, -16	; __aligned, _1090,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x5, x1, x4	; __diff_1093, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x5, x2	; __diff_1093, _1094
	bhi	L855		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x0, x0, x4	; _2330, _1085, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x20, x1	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x0, x0, x1	; _1096, _2330, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x1, x0, [x3, 8]	; __p, _1096,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x1, L855	; __p,
L856:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x0, x0, #232	; _1105, _1096,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x20, 232	; _1103, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x0, [x3, 8]	; _1103, _1105,
L857:
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x26, x20, 16	; tmp1718, __p,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp1399
	add	x28, x20, 32	; _1115, __p,
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	mov	w4, 65536	; tmp1405,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x2, x20, 128	; tmp1725, __p,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x20, 16]	;, MEM[(struct PromiseAbortBase *)raw_1076 + 16B].aborted
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	ldp	x1, x0, [x29, 176]	; tmp1745, tmp1743,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x3, [x20, 224]	; mr, MEM[(struct memory_resource * *)raw_1076 + 224B]
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	stp	x0, x1, [x20]	; tmp1743, tmp1745,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _1068, __p,
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	mov	x0, x20	;, __p
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x26, 8]	;, MEM[(struct PromiseAbortBase *)raw_1076 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_1076 + 32B].buf_
	stp	xzr, xzr, [x28, 16]	; MEM[(struct SmallAny *)raw_1076 + 32B].buf_
	stp	xzr, xzr, [x28, 32]	; MEM[(struct SmallAny *)raw_1076 + 32B].buf_
	str	q31, [x20, 80]	; tmp1399, MEM <vector(2) long unsigned int> [(void *)raw_1076 + 80B]
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_1076 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x20, 112]	; tmp1399, MEM <vector(2) long unsigned int> [(const void * *)raw_1076 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_1076 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_1076 + 144B]._M_engaged
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	str	w4, [x20, 168]	; tmp1405, MEM <unsigned int> [(void *)raw_1076 + 168B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x26, 120]	; _1068, MEM[(struct promise_type *)raw_1076 + 16B].D.156829.D.155796.result_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	x2, [x29, 208]	; tmp1725, %sfp
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	bl	__Z7ping_d8P18_ZL7ping_d8v.Frame.actor		;
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.38_1110, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, __p
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x23, x21, [x29, 320]	; tmp1764, tmp1698,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	str	x22, [x29, 336]	; tmp1732, MEM[(struct ScopedHandler *)_1368].node.real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_1076], MEM[(void (*<T11f>) (void *) *)raw_1076]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x21, [x19]	; tmp1698, *_597
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x24, x1, [x29, 344]	; tmp1765, stack_top.38_1110,
; ../../effects.hpp:247: struct HandlerNode {
	stp	xzr, x1, [x29, 360]	;, stack_top.38_1110,
LEHB77:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_1076]
	.p2align 5,,15
L858:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_1076], MEM[(void * *)raw_1076]
	cbz	x0, L1140	; MEM[(void * *)raw_1076],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_597
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x3, [x26, 96]	; _1127, MEM[(struct promise_type &)raw_1076 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L862	; n,
	b	L859		;
	.p2align 2,,3
L860:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_401->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L859	; n,
L862:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_401->effect_tag, n_401->effect_tag
	cmp	x3, x1	; _1127, n_401->effect_tag
	bne	L860		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_401->dispatch, n_401->dispatch
	ldr	x1, [x26, 104]	;, MEM[(struct promise_type &)raw_1076 + 16].D.156829.D.155796.payload_ptr
	blr	x3		; n_401->dispatch
LEHE77:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x26]	; MEM[(struct promise_type &)raw_1076 + 16].D.156829.D.155796.aborted, MEM[(struct promise_type &)raw_1076 + 16].D.156829.D.155796.aborted
	tbz	x0, 0, L858	; MEM[(struct promise_type &)raw_1076 + 16].D.156829.D.155796.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_1076 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1076 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_1076 + 16B].abort_owner, tmp1698
	beq	L872		;,
L873:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1076 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1076 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1076 + 8B]
; bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	ldr	x0, [x29, 224]	; ivtmp_521, %sfp
	subs	x0, x0, #1	; ivtmp_521, ivtmp_521,
	str	x0, [x29, 224]	; ivtmp_521, %sfp
	bne	L875		;,
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	str	x0, [x29, 160]	;, %sfp
	adrp	x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGE	; tmp1737,
	ldr	x0, [x0, __ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm@GOTPAGEOFF]	; tmp1737,
	str	x0, [x29, 168]	; tmp1737, %sfp
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	adrp	x0, __Z7ping_d8P18_ZL7ping_d8v.Frame.actor@PAGE	; tmp1984,
	add	x0, x0, __Z7ping_d8P18_ZL7ping_d8v.Frame.actor@PAGEOFF;	; tmp1739, tmp1984,
	str	x0, [x29, 184]	; tmp1739, %sfp
	adrp	x0, __Z7ping_d8P18_ZL7ping_d8v.Frame.destroy@PAGE	; tmp1986,
	add	x0, x0, __Z7ping_d8P18_ZL7ping_d8v.Frame.destroy@PAGEOFF;	; tmp1740, tmp1986,
	str	x0, [x29, 176]	; tmp1740, %sfp
; bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	mov	x0, 41248	; ivtmp_747,
	movk	x0, 0x7, lsl 16	; ivtmp_747,,
	str	x0, [x29, 224]	; ivtmp_747, %sfp
	.p2align 5,,15
L902:
; ../../effects.hpp:554:     auto *mr = current_mr;
	ldr	x3, [x25]	; mr, *_557
; ../../effects.hpp:556:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	cbz	x3, L878	; mr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	ldr	x0, [x3]	; mr_1156->_vptr.memory_resource, mr_1156->_vptr.memory_resource
	ldr	x4, [x0, 16]	; _1159, MEM[(int (*) () *)_1158 + 16B]
	ldr	x0, [x29, 168]	; tmp1737, %sfp
	cmp	x4, x0	; _1159, tmp1737
	bne	L879		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	ldr	x0, [x3, 16]	; _1171, MEM[(size_t &)mr_1156 + 16]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:62:   if (__space < __size)
	cmp	x0, 231	; _1171,
	bls	L882		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	ldr	x4, [x3, 8]	; __intptr, MEM[(void * &)mr_1156 + 8]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	sub	x2, x0, #232	; _1180, _1171,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	add	x1, x4, 15	; _1176, __intptr,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	and	x1, x1, -16	; __aligned, _1176,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	sub	x5, x1, x4	; __diff_1179, __aligned, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:67:   if (__diff > (__space - __size))
	cmp	x5, x2	; __diff_1179, _1180
	bhi	L882		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	add	x0, x0, x4	; _2329, _1171, __intptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	mov	x20, x1	; __p, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:71:       __space -= __diff;
	sub	x0, x0, x1	; _1182, _2329, __aligned
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	stp	x1, x0, [x3, 8]	; __p, _1182,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	cbz	x1, L882	; __p,
L883:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	sub	x0, x0, #232	; _1191, _1182,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	add	x1, x20, 232	; _1189, __p,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	stp	x1, x0, [x3, 8]	; _1189, _1191,
L884:
; ../../effects.hpp:232: struct PromiseAbortBase {
	add	x26, x20, 16	; tmp1721, __p,
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	movi	v31.4s, 0	; tmp1493
	add	x28, x20, 32	; _1201, __p,
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	mov	w4, 65536	; tmp1499,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	add	x2, x20, 128	; tmp1726, __p,
; ../../effects.hpp:232: struct PromiseAbortBase {
	strb	wzr, [x20, 16]	;, MEM[(struct PromiseAbortBase *)raw_1162 + 16B].aborted
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	ldp	x1, x0, [x29, 176]	; tmp1740, tmp1739,
; ../../effects.hpp:560:         static_cast<std::byte *>(raw) + n) = mr;
	str	x3, [x20, 224]	; mr, MEM[(struct memory_resource * *)raw_1162 + 224B]
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	stp	x0, x1, [x20]	; tmp1739, tmp1740,* __p
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	add	x1, x20, 144	; _1154, __p,
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	mov	x0, x20	;, __p
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	xzr, [x26, 8]	;, MEM[(struct PromiseAbortBase *)raw_1162 + 16B].abort_owner
; ../../effects.hpp:86:   SmallAny() noexcept = default;
	stp	xzr, xzr, [x20, 32]	; MEM[(struct SmallAny *)raw_1162 + 32B].buf_
	stp	xzr, xzr, [x28, 16]	; MEM[(struct SmallAny *)raw_1162 + 32B].buf_
	stp	xzr, xzr, [x28, 32]	; MEM[(struct SmallAny *)raw_1162 + 32B].buf_
	str	q31, [x20, 80]	; tmp1493, MEM <vector(2) long unsigned int> [(void *)raw_1162 + 80B]
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_1162 + 32B].type_tag_
; ../../effects.hpp:232: struct PromiseAbortBase {
	str	q31, [x20, 112]	; tmp1493, MEM <vector(2) long unsigned int> [(const void * *)raw_1162 + 112B]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	xzr, [x20, 128]	;, MEM[(struct exception_ptr *)raw_1162 + 128B]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/optional:119:       _Optional_payload_base() = default;
	strb	wzr, [x20, 148]	;, MEM[(struct _Optional_payload_base *)raw_1162 + 144B]._M_engaged
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	str	w4, [x20, 168]	; tmp1499, MEM <unsigned int> [(void *)raw_1162 + 168B]
; ../../effects.hpp:993:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	str	x1, [x26, 120]	; _1154, MEM[(struct promise_type *)raw_1162 + 16B].D.156829.D.155796.result_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:189:     : _M_exception_object(0)
	str	x2, [x29, 208]	; tmp1726, %sfp
; b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	bl	__Z7ping_d8P18_ZL7ping_d8v.Frame.actor		;
; ../../effects.hpp:752:     saved = detail::stack_top;
	ldr	x1, [x19]	; stack_top.38_1196, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	mov	x0, x20	;, __p
; ../../effects.hpp:680:     node.effect_tag = &detail::effect_tag_v<E>;
	stp	x23, x21, [x29, 320]	; tmp1764, tmp1698,
; ../../effects.hpp:681:     node.real_handler_ptr = static_cast<void *>(&h);
	str	x22, [x29, 336]	; tmp1732, MEM[(struct ScopedHandler *)_1368].node.real_handler_ptr
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	ldr	x3, [x20]	; MEM[(void (*<T11f>) (void *) *)raw_1162], MEM[(void (*<T11f>) (void *) *)raw_1162]
; ../../effects.hpp:754:     detail::stack_top = &node;
	str	x21, [x19]	; tmp1698, *_597
; ../../effects.hpp:695:     node.dispatch = [](void *node_self, void *raw) {
	stp	x24, x1, [x29, 344]	; tmp1765, stack_top.38_1196,
; ../../effects.hpp:247: struct HandlerNode {
	stp	xzr, x1, [x29, 360]	;, stack_top.38_1196,
LEHB78:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	blr	x3		; MEM[(void (*<T11f>) (void *) *)raw_1162]
	.p2align 5,,15
L885:
; ../../effects.hpp:833:     while (!h.done()) {
	ldr	x0, [x20]	; MEM[(void * *)raw_1162], MEM[(void * *)raw_1162]
	cbz	x0, L1141	; MEM[(void * *)raw_1162],
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x19]	; n, *_597
; ../../effects.hpp:835:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	ldr	x3, [x26, 96]	; _1213, MEM[(struct promise_type &)raw_1162 + 16].D.156829.D.155796.effect_tag
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbnz	x0, L889	; n,
	b	L886		;
	.p2align 2,,3
L887:
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	ldr	x0, [x0, 32]	; n, n_97->prev
; ../../effects.hpp:274:   for (auto *n = stack_top; n; n = n->prev) {
	cbz	x0, L886	; n,
L889:
; ../../effects.hpp:275:     if (n->effect_tag == tag) {
	ldr	x1, [x0]	; n_97->effect_tag, n_97->effect_tag
	cmp	x3, x1	; _1213, n_97->effect_tag
	bne	L887		;,
; ../../effects.hpp:276:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	ldr	x3, [x0, 24]	; n_97->dispatch, n_97->dispatch
	ldr	x1, [x26, 104]	;, MEM[(struct promise_type &)raw_1162 + 16].D.156829.D.155796.payload_ptr
	blr	x3		; n_97->dispatch
LEHE78:
; ../../effects.hpp:836:       if (h.promise().aborted)
	ldrb	w0, [x26]	; MEM[(struct promise_type &)raw_1162 + 16].D.156829.D.155796.aborted, MEM[(struct promise_type &)raw_1162 + 16].D.156829.D.155796.aborted
	tbz	x0, 0, L885	; MEM[(struct promise_type &)raw_1162 + 16].D.156829.D.155796.aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_1162 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1162 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_1162 + 16B].abort_owner, tmp1698
	beq	L899		;,
L900:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1162 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1162 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1162 + 8B]
; bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	ldr	x0, [x29, 224]	; ivtmp_747, %sfp
	subs	x0, x0, #1	; ivtmp_747, ivtmp_747,
	str	x0, [x29, 224]	; ivtmp_747, %sfp
	bne	L902		;,
; bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	ldr	x2, [x29, 160]	; start, %sfp
; bench.hpp:44: }
	ldr	x1, [x29, 192]	;, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	x2, x0, x2	; _1053, end, start
; bench.hpp:44: }
	mov	x0, x21	;, tmp1698
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	scvtf	d8, x2	;, _1053
; bench.hpp:44: }
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		;
; bench.hpp:44: }
	mov	x1, 41248	; tmp1569,
; b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	mov	x0, x21	;, tmp1698
; bench.hpp:44: }
	str	d8, [x29, 360]	;, MEM[(struct BenchResult *)_1368].total_ns
	movk	x1, 0x7, lsl 16	; tmp1569,,
	str	x1, [x29, 352]	; tmp1569, MEM[(struct BenchResult *)_1368].iters
LEHB79:
; b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	bl	__Z12print_resultRK11BenchResult		;
LEHE79:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x1, [x29, 200]	; tmp1699, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 320]	; _179, MEM[(const struct basic_string *)_1368]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x1	; _179, tmp1699
	beq	L904		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L904:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _175, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _175, tmp1697
	beq	L905		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L905:
; bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC21@PAGE	; tmp1580,
	mov	x2, 64	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC21@PAGEOFF;	;, tmp1580,
LEHB80:
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
	adrp	x1, lC22@PAGE	; tmp1583,
	mov	x2, 67	;,
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	add	x1, x1, lC22@PAGEOFF;	;, tmp1583,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; b5_propagation.cpp:98:       << "      A pool allocator for coroutine frames would flatten the curve.\n";
	adrp	x0, __ZSt4cout@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]	;,
	adrp	x1, lC23@PAGE	; tmp1586,
	add	x1, x1, lC23@PAGEOFF;	;, tmp1586,
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0		;
LEHE80:
; b5_propagation.cpp:100: }
	ldp	d8, d9, [sp, 96]	;,,
	mov	w0, 0	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x27, x28, [sp, 80]	;,,
	ldp	d10, d11, [sp, 112]	;,,
	ldp	d12, d13, [sp, 128]	;,,
	ldp	d14, d15, [sp, 144]	;,,
	ldp	x29, x30, [sp], 384	;,,,
LCFI139:
	ret	
L1138:
LCFI140:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x29, 208]	; tmp1720, %sfp
	ldr	x1, [x0]	; _934, MEM[(const struct exception_ptr *)raw_878 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L1142	; _934,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x26]	; MEM[(struct PromiseAbortBase *)raw_878 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_878 + 16B].aborted
	tbz	x0, 0, L812	; MEM[(struct PromiseAbortBase *)raw_878 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_878 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_878 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_878 + 16B].abort_owner, tmp1698
	beq	L815		;,
L812:
; b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	ldr	x1, [x29, 232]	; sink, %sfp
	ldrsw	x0, [x20, 144]	; _2046, MEM[(int &)raw_878 + 144]
	add	x0, x1, x0	; sink, sink, _2046
	str	x0, [x29, 232]	; sink, %sfp
; ../../effects.hpp:903:       return inner; // R == InnerR, move the optional as-is
	b	L816		;
L1137:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x20, 128]	; _822, MEM[(const struct exception_ptr *)_814 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L1143	; _822,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x20, 16]	; MEM[(struct PromiseAbortBase *)_814 + 16B].aborted, MEM[(struct PromiseAbortBase *)_814 + 16B].aborted
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	add	x26, x20, 16	; tmp1711, _814,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L782	; MEM[(struct PromiseAbortBase *)_814 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)_814 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)_814 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)_814 + 16B].abort_owner, tmp1698
	beq	L785		;,
L782:
; b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	ldr	x1, [x29, 232]	; sink, %sfp
	ldrsw	x0, [x20, 144]	; _2361, MEM[(int &)_814 + 144]
	add	x0, x1, x0	; sink, sink, _2361
	str	x0, [x29, 232]	; sink, %sfp
; ../../effects.hpp:903:       return inner; // R == InnerR, move the optional as-is
	b	L786		;
L1136:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x1, [x20, 128]	; _777, MEM[(const struct exception_ptr *)_769 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L1144	; _777,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x20, 16]	; MEM[(struct PromiseAbortBase *)_769 + 16B].aborted, MEM[(struct PromiseAbortBase *)_769 + 16B].aborted
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	add	x26, x20, 16	; tmp1708, _769,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	tbz	x0, 0, L762	; MEM[(struct PromiseAbortBase *)_769 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)_769 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)_769 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)_769 + 16B].abort_owner, tmp1698
	beq	L765		;,
L762:
; b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	ldr	x1, [x29, 232]	; sink, %sfp
	ldrsw	x0, [x20, 144]	; _996, MEM[(int &)_769 + 144]
	add	x0, x1, x0	; sink, sink, _996
	str	x0, [x29, 232]	; sink, %sfp
; ../../effects.hpp:903:       return inner; // R == InnerR, move the optional as-is
	b	L766		;
L1135:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x29, 208]	; tmp1714, %sfp
	ldr	x1, [x0]	; _706, MEM[(const struct exception_ptr *)raw_650 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L1145	; _706,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x26]	; MEM[(struct PromiseAbortBase *)raw_650 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_650 + 16B].aborted
	tbz	x0, 0, L739	; MEM[(struct PromiseAbortBase *)raw_650 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_650 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_650 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_650 + 16B].abort_owner, tmp1698
	beq	L742		;,
L739:
; b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	ldr	x1, [x29, 232]	; sink, %sfp
	ldrsw	x0, [x20, 144]	; _1071, MEM[(int &)raw_650 + 144]
	add	x0, x1, x0	; sink, sink, _1071
	str	x0, [x29, 232]	; sink, %sfp
; ../../effects.hpp:903:       return inner; // R == InnerR, move the optional as-is
	b	L743		;
L1134:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x29, 208]	; tmp1712, %sfp
	ldr	x1, [x0]	; _620, MEM[(const struct exception_ptr *)raw_564 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L1146	; _620,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x26]	; MEM[(struct PromiseAbortBase *)raw_564 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_564 + 16B].aborted
	tbz	x0, 0, L712	; MEM[(struct PromiseAbortBase *)raw_564 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_564 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_564 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_564 + 16B].abort_owner, tmp1698
	beq	L715		;,
L712:
; b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	ldr	x1, [x29, 232]	; sink, %sfp
	ldrsw	x0, [x20, 144]	; _2223, MEM[(int &)raw_564 + 144]
	add	x0, x1, x0	; sink, sink, _2223
	str	x0, [x29, 232]	; sink, %sfp
; ../../effects.hpp:903:       return inner; // R == InnerR, move the optional as-is
	b	L716		;
L1141:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x29, 208]	; tmp1726, %sfp
	ldr	x1, [x0]	; _1218, MEM[(const struct exception_ptr *)raw_1162 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L1147	; _1218,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x26]	; MEM[(struct PromiseAbortBase *)raw_1162 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_1162 + 16B].aborted
	tbz	x0, 0, L896	; MEM[(struct PromiseAbortBase *)raw_1162 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_1162 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1162 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_1162 + 16B].abort_owner, tmp1698
	beq	L899		;,
L896:
; b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	ldr	x1, [x29, 232]	; sink, %sfp
	ldrsw	x0, [x20, 144]	; _2310, MEM[(int &)raw_1162 + 144]
	add	x0, x1, x0	; sink, sink, _2310
	str	x0, [x29, 232]	; sink, %sfp
; ../../effects.hpp:903:       return inner; // R == InnerR, move the optional as-is
	b	L900		;
L1139:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x29, 208]	; tmp1723, %sfp
	ldr	x1, [x0]	; _1020, MEM[(const struct exception_ptr *)raw_964 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L1148	; _1020,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x26]	; MEM[(struct PromiseAbortBase *)raw_964 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_964 + 16B].aborted
	tbz	x0, 0, L839	; MEM[(struct PromiseAbortBase *)raw_964 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_964 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_964 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_964 + 16B].abort_owner, tmp1698
	beq	L842		;,
L839:
; b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	ldr	x1, [x29, 232]	; sink, %sfp
	ldrsw	x0, [x20, 144]	; _1473, MEM[(int &)raw_964 + 144]
	add	x0, x1, x0	; sink, sink, _1473
	str	x0, [x29, 232]	; sink, %sfp
; ../../effects.hpp:903:       return inner; // R == InnerR, move the optional as-is
	b	L843		;
L1140:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:162:       { return _M_exception_object; }
	ldr	x0, [x29, 208]	; tmp1725, %sfp
	ldr	x1, [x0]	; _1132, MEM[(const struct exception_ptr *)raw_1076 + 128B]._M_exception_object
; ../../effects.hpp:840:     if (p.exception)
	cbnz	x1, L1149	; _1132,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldrb	w0, [x26]	; MEM[(struct PromiseAbortBase *)raw_1076 + 16B].aborted, MEM[(struct PromiseAbortBase *)raw_1076 + 16B].aborted
	tbz	x0, 0, L869	; MEM[(struct PromiseAbortBase *)raw_1076 + 16B].aborted,,
; ../../effects.hpp:861:     if (ab && ab->aborted &&
	ldr	x0, [x26, 8]	; MEM[(struct PromiseAbortBase *)raw_1076 + 16B].abort_owner, MEM[(struct PromiseAbortBase *)raw_1076 + 16B].abort_owner
	cmp	x0, x21	; MEM[(struct PromiseAbortBase *)raw_1076 + 16B].abort_owner, tmp1698
	beq	L872		;,
L869:
; b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	ldr	x1, [x29, 232]	; sink, %sfp
	ldrsw	x0, [x20, 144]	; _410, MEM[(int &)raw_1076 + 144]
	add	x0, x1, x0	; sink, sink, _410
	str	x0, [x29, 232]	; sink, %sfp
; ../../effects.hpp:903:       return inner; // R == InnerR, move the optional as-is
	b	L873		;
L725:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 216	;,
	str	x3, [x29, 208]	; mr, %sfp
	mov	x0, x3	;, mr
LEHB81:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
LEHE81:
	ldr	x3, [x29, 208]	; mr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x20, x0, [x3, 8]	; __p, _670,
	b	L726		;
L798:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 216	;,
	str	x3, [x29, 208]	; mr, %sfp
	mov	x0, x3	;, mr
LEHB82:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
LEHE82:
	ldr	x3, [x29, 208]	; mr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x20, x0, [x3, 8]	; __p, prephitmp_579,
	b	L799		;
L698:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x19	;, mr
LEHB83:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
LEHE83:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x20, x0, [x19, 8]	; __p, _584,
	b	L699		;
L825:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 216	;,
	str	x3, [x29, 208]	; mr, %sfp
	mov	x0, x3	;, mr
LEHB84:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
LEHE84:
	ldr	x3, [x29, 208]	; mr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x20, x0, [x3, 8]	; __p, prephitmp_89,
	b	L826		;
L855:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 232	;,
	str	x3, [x29, 208]	; mr, %sfp
	mov	x0, x3	;, mr
LEHB85:
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
	ldr	x3, [x29, 208]	; mr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x20, x0, [x3, 8]	; __p, _1096,
	b	L856		;
L882:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	mov	x2, 16	;,
	mov	x1, 232	;,
	str	x3, [x29, 208]	; mr, %sfp
	mov	x0, x3	;, mr
	bl	__ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm		;
LEHE85:
	ldr	x3, [x29, 208]	; mr, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/memory_resource:428:       _M_avail -= __bytes;
	ldp	x20, x0, [x3, 8]	; __p, _1182,
	b	L883		;
L794:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 216	;,
	str	x3, [x29, 208]	; mr, %sfp
LEHB86:
	bl	__Znwm		;
L1119:
	ldr	x3, [x29, 208]	; mr, %sfp
	mov	x20, x0	; __p, __p
	b	L800		;
L821:
	mov	x0, 216	;,
	str	x3, [x29, 208]	; mr, %sfp
	bl	__Znwm		;
LEHE86:
L1120:
	ldr	x3, [x29, 208]	; mr, %sfp
	mov	x20, x0	; __p, __p
	b	L827		;
L721:
	mov	x0, 216	;,
	str	x3, [x29, 208]	; mr, %sfp
LEHB87:
	bl	__Znwm		;
L1118:
	ldr	x3, [x29, 208]	; mr, %sfp
	mov	x20, x0	; __p, __p
	b	L727		;
L694:
	mov	x0, 216	;,
	bl	__Znwm		;
	mov	x20, x0	; __p, __p
	b	L700		;
L695:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 216	;,
	mov	x0, x19	;, mr
	blr	x3		; _561
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x20, x0	; __p, __p
	b	L700		;
L722:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 216	;,
	str	x3, [x29, 208]	; mr, %sfp
	mov	x0, x3	;, mr
	blr	x4		; _647
LEHE87:
	b	L1118		;
L851:
; ../../effects.hpp:557:                    : ::operator new(total);
	mov	x0, 232	;,
	str	x3, [x29, 208]	; mr, %sfp
LEHB88:
	bl	__Znwm		;
L1121:
	ldr	x3, [x29, 208]	; mr, %sfp
	mov	x20, x0	; __p, __p
	b	L857		;
L878:
	mov	x0, 232	;,
	str	x3, [x29, 208]	; mr, %sfp
	bl	__Znwm		;
LEHE88:
L1122:
	ldr	x3, [x29, 208]	; mr, %sfp
	mov	x20, x0	; __p, __p
	b	L884		;
L822:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	mov	x2, 16	;,
	mov	x1, 216	;,
	str	x3, [x29, 208]	; mr, %sfp
	mov	x0, x3	;, mr
LEHB89:
	blr	x4		; _961
LEHE89:
	b	L1120		;
L852:
	mov	x2, 16	;,
	mov	x1, 232	;,
	str	x3, [x29, 208]	; mr, %sfp
	mov	x0, x3	;, mr
LEHB90:
	blr	x4		; _1073
	b	L1121		;
L879:
	mov	x2, 16	;,
	mov	x1, 232	;,
	str	x3, [x29, 208]	; mr, %sfp
	mov	x0, x3	;, mr
	blr	x4		; _1159
LEHE90:
	b	L1122		;
L795:
	mov	x2, 16	;,
	mov	x1, 216	;,
	str	x3, [x29, 208]	; mr, %sfp
	mov	x0, x3	;, mr
LEHB91:
	blr	x4		; _875
LEHE91:
	b	L1119		;
L842:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x28, 48]	; _1006, MEM[(struct SmallAny *)raw_964 + 32B].destroy_
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w2, [x28]	;, MEM[(type &)_1004]
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x26]	;, MEM[(struct PromiseAbortBase *)raw_964 + 16B].aborted
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L844	; _1006,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x28	;, _1003
	str	w2, [x29, 208]	; val, %sfp
	blr	x1		; _1006
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	w2, [x29, 208]	;, %sfp
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_964 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_964 + 32B].type_tag_
L844:
; b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	ldr	x0, [x29, 232]	; sink, %sfp
	add	x0, x0, w2, sxtw	; sink, sink, val
	str	x0, [x29, 232]	; sink, %sfp
	b	L843		;
L815:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x28, 48]	; _920, MEM[(struct SmallAny *)raw_878 + 32B].destroy_
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w2, [x28]	;, MEM[(type &)_918]
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x26]	;, MEM[(struct PromiseAbortBase *)raw_878 + 16B].aborted
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L817	; _920,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x28	;, _917
	str	w2, [x29, 208]	; val, %sfp
	blr	x1		; _920
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	w2, [x29, 208]	;, %sfp
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_878 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_878 + 32B].type_tag_
L817:
; b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	ldr	x0, [x29, 232]	; sink, %sfp
	add	x0, x0, w2, sxtw	; sink, sink, val
	str	x0, [x29, 232]	; sink, %sfp
	b	L816		;
L765:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x20, 80]	; _763, MEM[(struct SmallAny *)_769 + 32B].destroy_
; ../../effects.hpp:121:     return *std::launder(reinterpret_cast<T *>(buf_));
	add	x0, x20, 32	; _760, _769,
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x26]	;, MEM[(struct PromiseAbortBase *)_769 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w2, [x20, 32]	;, MEM[(type &)_761]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L767	; _763,
	str	w2, [x29, 184]	; val, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	str	x0, [x29, 208]	; _760, %sfp
	blr	x1		; _763
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	x0, [x29, 208]	; _760, %sfp
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)_769 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	w2, [x29, 184]	;, %sfp
	str	xzr, [x0, 64]	;, MEM[(struct SmallAny *)_769 + 32B].type_tag_
L767:
; b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	ldr	x0, [x29, 232]	; sink, %sfp
	add	x0, x0, w2, sxtw	; sink, sink, val
	str	x0, [x29, 232]	; sink, %sfp
	b	L766		;
L742:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x28, 48]	; _692, MEM[(struct SmallAny *)raw_650 + 32B].destroy_
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w2, [x28]	;, MEM[(type &)_690]
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x26]	;, MEM[(struct PromiseAbortBase *)raw_650 + 16B].aborted
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L744	; _692,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x28	;, _689
	str	w2, [x29, 208]	; val, %sfp
	blr	x1		; _692
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	w2, [x29, 208]	;, %sfp
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_650 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_650 + 32B].type_tag_
L744:
; b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	ldr	x0, [x29, 232]	; sink, %sfp
	add	x0, x0, w2, sxtw	; sink, sink, val
	str	x0, [x29, 232]	; sink, %sfp
	b	L743		;
L715:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x28, 48]	; _606, MEM[(struct SmallAny *)raw_564 + 32B].destroy_
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w2, [x28]	;, MEM[(type &)_604]
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x26]	;, MEM[(struct PromiseAbortBase *)raw_564 + 16B].aborted
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L717	; _606,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x28	;, _603
	str	w2, [x29, 208]	; val, %sfp
	blr	x1		; _606
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	w2, [x29, 208]	;, %sfp
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_564 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_564 + 32B].type_tag_
L717:
; b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	ldr	x0, [x29, 232]	; sink, %sfp
	add	x0, x0, w2, sxtw	; sink, sink, val
	str	x0, [x29, 232]	; sink, %sfp
	b	L716		;
L785:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x20, 80]	; _808, MEM[(struct SmallAny *)_814 + 32B].destroy_
; ../../effects.hpp:121:     return *std::launder(reinterpret_cast<T *>(buf_));
	add	x0, x20, 32	; _805, _814,
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x26]	;, MEM[(struct PromiseAbortBase *)_814 + 16B].aborted
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w2, [x20, 32]	;, MEM[(type &)_806]
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L787	; _808,
	str	w2, [x29, 176]	; val, %sfp
; ../../effects.hpp:133:       destroy_(buf_);
	str	x0, [x29, 184]	; _805, %sfp
	blr	x1		; _808
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	x0, [x29, 184]	; _805, %sfp
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)_814 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	w2, [x29, 176]	;, %sfp
	str	xzr, [x0, 64]	;, MEM[(struct SmallAny *)_814 + 32B].type_tag_
L787:
; b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	ldr	x0, [x29, 232]	; sink, %sfp
	add	x0, x0, w2, sxtw	; sink, sink, val
	str	x0, [x29, 232]	; sink, %sfp
	b	L786		;
L899:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x28, 48]	; _1204, MEM[(struct SmallAny *)raw_1162 + 32B].destroy_
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w2, [x28]	;, MEM[(type &)_1202]
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x26]	;, MEM[(struct PromiseAbortBase *)raw_1162 + 16B].aborted
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L901	; _1204,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x28	;, _1201
	str	w2, [x29, 208]	; val, %sfp
	blr	x1		; _1204
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	w2, [x29, 208]	;, %sfp
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_1162 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_1162 + 32B].type_tag_
L901:
; b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	ldr	x0, [x29, 232]	; sink, %sfp
	add	x0, x0, w2, sxtw	; sink, sink, val
	str	x0, [x29, 232]	; sink, %sfp
	b	L900		;
L872:
; ../../effects.hpp:132:     if (destroy_) {
	ldr	x1, [x28, 48]	; _1118, MEM[(struct SmallAny *)raw_1076 + 32B].destroy_
; ../../effects.hpp:126:     T val = std::move(as<T>());
	ldr	w2, [x28]	;, MEM[(type &)_1116]
; ../../effects.hpp:863:       ab->aborted = false;
	strb	wzr, [x26]	;, MEM[(struct PromiseAbortBase *)raw_1076 + 16B].aborted
; ../../effects.hpp:132:     if (destroy_) {
	cbz	x1, L874	; _1118,
; ../../effects.hpp:133:       destroy_(buf_);
	mov	x0, x28	;, _1115
	str	w2, [x29, 208]	; val, %sfp
	blr	x1		; _1118
; ../../effects.hpp:136:       type_tag_ = nullptr;
	ldr	w2, [x29, 208]	;, %sfp
; ../../effects.hpp:134:       destroy_ = nullptr;
	stp	xzr, xzr, [x20, 80]	; MEM <vector(2) long unsigned int> [(void *)raw_1076 + 80B]
; ../../effects.hpp:136:       type_tag_ = nullptr;
	str	xzr, [x28, 64]	;, MEM[(struct SmallAny *)raw_1076 + 32B].type_tag_
L874:
; b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	ldr	x0, [x29, 232]	; sink, %sfp
	add	x0, x0, w2, sxtw	; sink, sink, val
	str	x0, [x29, 232]	; sink, %sfp
	b	L873		;
L667:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:460: 	if (__n == 1)
	cmp	x21, 1	; __sz,
	beq	L1150		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	mov	x2, x21	;, __sz
	mov	x1, x19	;, _398
	add	x0, x19, 40	;, _398,
	bl	_memmove		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:417: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	b	L668		;
L1131:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	add	x0, x19, x21	; _407, _398, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:441: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmp	x3, x0	; __x.23_405, _407
	bhi	L665		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:576: 	    _M_replace_cold(__p, __len1, __s, __len2, __how_much);
	ldr	x0, [x29, 216]	;, %sfp
	mov	x5, x21	;, __sz
	mov	x1, x19	;, _398
	mov	x4, 40	;,
	mov	x2, 0	;,
LEHB92:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm		;
LEHE92:
	b	L669		;
L1133:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:449:       if (__len <= this->capacity())
	cmp	x24, 15	; __len,
	bls	L679		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	x19, 30	; __new_capacity,
L680:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x19, 1	; _472, __new_capacity,
L684:
LEHB93:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE93:
	mov	x23, x0	; _505, _505
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:368: 	this->_S_copy(__r + __pos, __s, __len2);
	add	x25, x0, x21	; _2297, _505, __sz
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x21, 1	; __sz,
	beq	L1151		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x1, x22	;, _461
	mov	x2, x21	;, __sz
	bl	_memcpy		;
	adrp	x0, lC9@PAGE	; tmp712,
	add	x0, x0, lC9@PAGEOFF;	; tmp711, tmp712,
	ldr	x1, [x0]	; MEM <char[1:10]> [(void *)" per cell)"], MEM <char[1:10]> [(void *)" per cell)"]
	ldrh	w0, [x0, 8]	;, MEM <char[1:10]> [(void *)" per cell)"]
	str	x1, [x23, x21]	; MEM <char[1:10]> [(void *)" per cell)"], MEM <char[1:10]> [(void *)_2297]
	strh	w0, [x25, 8]	; MEM <char[1:10]> [(void *)" per cell)"], MEM <char[1:10]> [(void *)_2297]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x22, x27	; _461, tmp1697
	beq	L687		;,
L686:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x22	;, _461
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L687:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x23, [x29, 288]	; _505, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x19, [x29, 304]	; __new_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L682		;
L1150:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrb	w0, [x19]	;, MEM[(const char_type &)_398]
	strb	w0, [x19, 40]	; MEM[(const char_type &)_398], MEM[(char_type &)_398 + 40]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L668		;
L681:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x19, x19, 1	; __new_capacity, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x24, x19	; __len, __new_capacity
	bcc	L683		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x21, 11	; _472, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x19, x24	; __new_capacity, __len
	b	L684		;
L663:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x21, 41	; _442, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:362:       size_type __new_capacity = length() + __len2 - __len1;
	mov	x22, x24	; __new_capacity, _396
L672:
LEHB94:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	bl	__Znwm		;
LEHE94:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x1, lC7@PAGE	; tmp664,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x23, x0	; _454, _454
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x1, x1, lC7@PAGEOFF;	; tmp663, tmp664,
	ldp	q31, q30, [x1]	; MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="], MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="],
	stp	q31, q30, [x0]	; MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="], MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="],* _454
	ldr	x0, [x1, 32]	; MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="], MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="]
	str	x0, [x23, 32]	; MEM <char[1:40]> [(void *)"b5: propagation chain depth scaling  (N="], MEM <char[1:40]> [(void *)_454]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:369:       if (__how_much)
	cbz	x21, L1116	; __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:450: 	if (__n == 1)
	cmp	x21, 1	; __sz,
	beq	L1152		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	x2, x21	;, __sz
	mov	x1, x19	;, _398
	add	x0, x23, 40	;, _454,
	bl	_memcpy		;
L1116:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x19, x20	; _398, tmp1734
	beq	L676		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x19	;, _398
	add	x1, x1, 1	;, MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L676:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	str	x23, [x29, 256]	; _454, MEM[(struct basic_string *)_392]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	str	x22, [x29, 272]	; __new_capacity, MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:376:     }
	b	L669		;
L1152:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w0, [x19]	; _440, MEM[(const char_type &)_398]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w0, [x23, 40]	; _440, MEM[(char_type &)_454 + 40]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:353:       }
	b	L1116		;
L1151:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	adrp	x0, lC9@PAGE	; tmp700,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	ldrsb	w2, [x22]	; _480, MEM[(const char_type &)_461]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	add	x0, x0, lC9@PAGEOFF;	; tmp699, tmp700,
	ldr	x1, [x0]	; MEM <char[1:10]> [(void *)" per cell)"], MEM <char[1:10]> [(void *)" per cell)"]
	ldrh	w0, [x0, 8]	;, MEM <char[1:10]> [(void *)" per cell)"]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:352: 	__c1 = __c2;
	strb	w2, [x23]	; _480, MEM[(char_type &)_505]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	str	x1, [x23, 1]	; MEM <char[1:10]> [(void *)" per cell)"], MEM <char[1:10]> [(void *)_2297]
	strh	w0, [x25, 8]	; MEM <char[1:10]> [(void *)" per cell)"], MEM <char[1:10]> [(void *)_2297]
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x22, x27	; _461, tmp1697
	bne	L686		;,
	b	L687		;
L683:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	mov	x0, 9223372036854775806	; tmp696,
	cmp	x19, x0	; __new_capacity, tmp696
	bls	L680		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x19, x0	; __new_capacity, tmp696
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _472,
	b	L684		;
L1145:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 216]	; tmp1733, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 256]	; _706, MEM[(struct exception_ptr *)_392]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1733
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1733
LEHB95:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE95:
L664:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lsl	x22, x22, 1	; __new_capacity, __sz,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	x24, x22	; _396, __new_capacity
	bcs	L663		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	mov	x0, 9223372036854775806	; tmp661,
	cmp	x22, x0	; __new_capacity, tmp661
	bhi	L937		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	add	x0, x22, 1	; _442, __new_capacity,
	b	L672		;
L937:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:159: 	    __capacity = max_size();
	mov	x22, x0	; __new_capacity, tmp661
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	x0, 9223372036854775807	; _442,
	b	L672		;
L1144:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 216]	; tmp1733, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 256]	; _777, MEM[(struct exception_ptr *)_392]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1733
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1733
LEHB96:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE96:
L1143:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 216]	; tmp1733, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 256]	; _822, MEM[(struct exception_ptr *)_392]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1733
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1733
LEHB97:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE97:
L1149:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 216]	; tmp1733, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 256]	; _1132, MEM[(struct exception_ptr *)_392]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1733
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1733
LEHB98:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE98:
L1147:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 216]	; tmp1733, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 256]	; _1218, MEM[(struct exception_ptr *)_392]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1733
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1733
LEHB99:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE99:
L1148:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 216]	; tmp1733, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 256]	; _1020, MEM[(struct exception_ptr *)_392]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1733
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1733
LEHB100:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE100:
L1142:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 216]	; tmp1733, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 256]	; _934, MEM[(struct exception_ptr *)_392]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1733
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1733
LEHB101:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE101:
L1146:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	ldr	x21, [x29, 216]	; tmp1733, %sfp
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:196:     : _M_exception_object(__other._M_exception_object)
	str	x1, [x29, 256]	; _620, MEM[(struct exception_ptr *)_392]._M_exception_object
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:199: 	_M_addref();
	mov	x0, x21	;, tmp1733
	bl	__ZNSt15__exception_ptr13exception_ptr9_M_addrefEv		;
; ../../effects.hpp:841:       std::rethrow_exception(p.exception);
	mov	x0, x21	;, tmp1733
LEHB102:
	bl	__ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE		;
LEHE102:
L729:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp914,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _715,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp914,
LEHB103:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE103:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _715
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB104:
	bl	___cxa_throw		;
LEHE104:
L955:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 256]	; MEM[(struct exception_ptr *)_392]._M_exception_object, MEM[(struct exception_ptr *)_392]._M_exception_object
	mov	x21, x0	; tmp1777,
	cbz	x1, L707	; MEM[(struct exception_ptr *)_392]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 216]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
L707:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_564 + 8B], MEM[(void (*<T11f>) (void *) *)raw_564 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_564 + 8B]
	b	L877		;
L959:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp1783,
	mov	x0, x22	;, _715
	bl	___cxa_free_exception		;
L734:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_650 + 8B], MEM[(void (*<T11f>) (void *) *)raw_650 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_650 + 8B]
L877:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _256, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _256, tmp1697
	beq	L935		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L935:
	mov	x0, x21	;, tmp1472
LEHB105:
	bl	__Unwind_Resume		;
LEHE105:
L969:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1301, tmp1813
L834:
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_964 + 8B], MEM[(void (*<T11f>) (void *) *)raw_964 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_964 + 8B]
	b	L877		;
L802:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp1204,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _943,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp1204,
LEHB106:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE106:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _943
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB107:
	bl	___cxa_throw		;
LEHE107:
L968:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp1804,
	mov	x0, x22	;, _943
	bl	___cxa_free_exception		;
L807:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_878 + 8B], MEM[(void (*<T11f>) (void *) *)raw_878 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_878 + 8B]
	b	L877		;
L966:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1207, tmp1806
	b	L807		;
L948:
L1126:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 320]	; _244, MEM[(const struct basic_string *)_1368]._M_dataplus._M_p
	mov	x19, x0	; tmp1843,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 200]	; tmp1699, %sfp
	cmp	x2, x0	; _244, tmp1699
	beq	L931		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _244
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L931:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _248, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _248, tmp1697
	beq	L932		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L932:
	mov	x0, x19	;, tmp1843
LEHB108:
	bl	__Unwind_Resume		;
LEHE108:
L947:
L1129:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x2, [x29, 320]	; _252, MEM[(const struct basic_string *)_1368]._M_dataplus._M_p
	mov	x21, x0	; tmp1844,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	ldr	x0, [x29, 200]	; tmp1699, %sfp
	cmp	x2, x0	; _252, tmp1699
	beq	L877		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _252
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L877		;
L1132:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC8@PAGE	; tmp686,
	add	x27, x29, 304	; tmp1697,,
	add	x0, x0, lC8@PAGEOFF;	;, tmp686,
LEHB109:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE109:
L943:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x21, x0	; tmp1472, tmp1845
	b	L877		;
L941:
	ldr	x2, [x29, 320]	; _184, MEM[(struct basic_string *)_1368]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	add	x1, x29, 336	; tmp1590,,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1831,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x2, x1	; _184, tmp1590
	beq	L908		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 336]	; MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x0, x2	;, _184
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1368].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L908:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 288]	; _188, MEM[(struct basic_string *)_1369]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x27	; _188, tmp1697
	beq	L910		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 304]	; MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_1369].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
L910:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	ldr	x0, [x29, 256]	; _192, MEM[(struct basic_string *)_392]._M_dataplus._M_p
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmp	x0, x20	; _192, tmp1734
	beq	L932		;,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	ldr	x1, [x29, 272]	; MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity, MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	add	x1, x1, 1	;, MEM[(struct basic_string *)_392].D.56371._M_allocated_capacity,
	bl	__ZdlPvm		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	b	L932		;
L1130:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:423: 	  __throw_length_error(__N(__s));
	adrp	x0, lC6@PAGE	; tmp643,
	add	x20, x29, 272	; tmp1734,,
	add	x0, x0, lC6@PAGEOFF;	;, tmp643,
LEHB110:
	bl	__ZSt20__throw_length_errorPKc		;
LEHE110:
L957:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp917, tmp1785
	b	L734		;
L702:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp820,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _629,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp820,
LEHB111:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE111:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _629
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB112:
	bl	___cxa_throw		;
LEHE112:
L954:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp823, tmp1778
	b	L707		;
L956:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp1776,
	mov	x0, x22	;, _629
	bl	___cxa_free_exception		;
	b	L707		;
L942:
	b	L1126		;
L772:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp1077,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _831,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp1077,
LEHB113:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE113:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _831
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB114:
	bl	___cxa_throw		;
LEHE114:
L963:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1080, tmp1797
	b	L777		;
L752:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp1012,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _786,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp1012,
LEHB115:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE115:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _786
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB116:
	bl	___cxa_throw		;
LEHE116:
L965:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp1795,
	mov	x0, x22	;, _831
	bl	___cxa_free_exception		;
L777:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, _814
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)_814 + 8B], MEM[(void (*<T11f>) (void *) *)_814 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_814 + 8B]
	b	L877		;
L962:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp1790,
	mov	x0, x22	;, _786
	bl	___cxa_free_exception		;
L757:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, _769
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)_769 + 8B], MEM[(void (*<T11f>) (void *) *)_769 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)_769 + 8B]
	b	L877		;
L960:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1015, tmp1792
	b	L757		;
L946:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x21, x0	; tmp1472, tmp1845
	b	L877		;
L945:
	b	L1126		;
L952:
	mov	x21, x0	; tmp1472, tmp1845
	b	L877		;
L949:
	mov	x21, x0	; tmp1472, tmp1845
	b	L877		;
L886:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp1519,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _1227,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp1519,
LEHB117:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE117:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _1227
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB118:
	bl	___cxa_throw		;
LEHE118:
L975:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1522, tmp1829
	b	L891		;
L953:
	b	L1129		;
L977:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp1827,
	mov	x0, x22	;, _1227
	bl	___cxa_free_exception		;
L891:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1162 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1162 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1162 + 8B]
	b	L877		;
L972:
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	mov	x21, x0	; tmp1428, tmp1822
L864:
	ldr	x2, [x29, 368]	; MEM[(struct ScopedHandler *)_1368].saved, MEM[(struct ScopedHandler *)_1368].saved
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	mov	x0, x20	;, __p
	ldr	x1, [x20, 8]	; MEM[(void (*<T11f>) (void *) *)raw_1076 + 8B], MEM[(void (*<T11f>) (void *) *)raw_1076 + 8B]
; ../../effects.hpp:756:   ~ScopedHandler() { detail::stack_top = saved; }
	str	x2, [x19]	; MEM[(struct ScopedHandler *)_1368].saved, *_597
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	blr	x1		; MEM[(void (*<T11f>) (void *) *)raw_1076 + 8B]
	b	L877		;
L951:
	b	L1126		;
L950:
	b	L1129		;
L829:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp1298,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _1029,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp1298,
LEHB119:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE119:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _1029
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB120:
	bl	___cxa_throw		;
LEHE120:
L940:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1593, tmp1832
	b	L908		;
L964:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 256]	; MEM[(struct exception_ptr *)_392]._M_exception_object, MEM[(struct exception_ptr *)_392]._M_exception_object
	mov	x21, x0	; tmp1796,
	cbz	x1, L777	; MEM[(struct exception_ptr *)_392]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 216]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L777		;
L976:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 256]	; MEM[(struct exception_ptr *)_392]._M_exception_object, MEM[(struct exception_ptr *)_392]._M_exception_object
	mov	x21, x0	; tmp1828,
	cbz	x1, L891	; MEM[(struct exception_ptr *)_392]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 216]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L891		;
L958:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 256]	; MEM[(struct exception_ptr *)_392]._M_exception_object, MEM[(struct exception_ptr *)_392]._M_exception_object
	mov	x21, x0	; tmp1784,
	cbz	x1, L734	; MEM[(struct exception_ptr *)_392]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 216]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L734		;
L971:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp1811,
	mov	x0, x22	;, _1029
	bl	___cxa_free_exception		;
	b	L834		;
L859:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x0, 16	;,
	bl	___cxa_allocate_exception		;
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x1, lC5@PAGE	; tmp1425,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x22, x0	; _1141,
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	add	x1, x1, lC5@PAGEOFF;	;, tmp1425,
LEHB121:
	bl	__ZNSt13runtime_errorC1EPKc		;
LEHE121:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE	;,
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]	;,
	mov	x0, x22	;, _1141
	adrp	x1, __ZTISt13runtime_error@GOTPAGE	;,
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]	;,
LEHB122:
	bl	___cxa_throw		;
LEHE122:
L939:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	mov	x19, x0	; tmp1601, tmp1833
	b	L910		;
L974:
; ../../effects.hpp:281:       "fx: unhandled effect -- no matching handler installed");
	mov	x21, x0	; tmp1820,
	mov	x0, x22	;, _1141
	bl	___cxa_free_exception		;
	b	L864		;
L944:
	b	L1129		;
L961:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 256]	; MEM[(struct exception_ptr *)_392]._M_exception_object, MEM[(struct exception_ptr *)_392]._M_exception_object
	mov	x21, x0	; tmp1791,
	cbz	x1, L757	; MEM[(struct exception_ptr *)_392]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 216]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L757		;
L970:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 256]	; MEM[(struct exception_ptr *)_392]._M_exception_object, MEM[(struct exception_ptr *)_392]._M_exception_object
	mov	x21, x0	; tmp1812,
	cbz	x1, L834	; MEM[(struct exception_ptr *)_392]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 216]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L834		;
L973:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 256]	; MEM[(struct exception_ptr *)_392]._M_exception_object, MEM[(struct exception_ptr *)_392]._M_exception_object
	mov	x21, x0	; tmp1821,
	cbz	x1, L864	; MEM[(struct exception_ptr *)_392]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 216]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L864		;
L967:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:206:       if (_M_exception_object)
	ldr	x1, [x29, 256]	; MEM[(struct exception_ptr *)_392]._M_exception_object, MEM[(struct exception_ptr *)_392]._M_exception_object
	mov	x21, x0	; tmp1805,
	cbz	x1, L807	; MEM[(struct exception_ptr *)_392]._M_exception_object,
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/exception_ptr.h:207: 	_M_release();
	ldr	x0, [x29, 216]	;, %sfp
	bl	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv		;
	b	L807		;
LFE6971:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
LLSDA6971:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6971-LLSDACSB6971
LLSDACSB6971:
	.uleb128 LEHB52-LFB6971
	.uleb128 LEHE52-LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB53-LFB6971
	.uleb128 LEHE53-LEHB53
	.uleb128 L941-LFB6971
	.uleb128 0
	.uleb128 LEHB54-LFB6971
	.uleb128 LEHE54-LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB55-LFB6971
	.uleb128 LEHE55-LEHB55
	.uleb128 L942-LFB6971
	.uleb128 0
	.uleb128 LEHB56-LFB6971
	.uleb128 LEHE56-LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB57-LFB6971
	.uleb128 LEHE57-LEHB57
	.uleb128 L954-LFB6971
	.uleb128 0
	.uleb128 LEHB58-LFB6971
	.uleb128 LEHE58-LEHB58
	.uleb128 L957-LFB6971
	.uleb128 0
	.uleb128 LEHB59-LFB6971
	.uleb128 LEHE59-LEHB59
	.uleb128 L944-LFB6971
	.uleb128 0
	.uleb128 LEHB60-LFB6971
	.uleb128 LEHE60-LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB61-LFB6971
	.uleb128 LEHE61-LEHB61
	.uleb128 L945-LFB6971
	.uleb128 0
	.uleb128 LEHB62-LFB6971
	.uleb128 LEHE62-LEHB62
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB63-LFB6971
	.uleb128 LEHE63-LEHB63
	.uleb128 L946-LFB6971
	.uleb128 0
	.uleb128 LEHB64-LFB6971
	.uleb128 LEHE64-LEHB64
	.uleb128 L960-LFB6971
	.uleb128 0
	.uleb128 LEHB65-LFB6971
	.uleb128 LEHE65-LEHB65
	.uleb128 L946-LFB6971
	.uleb128 0
	.uleb128 LEHB66-LFB6971
	.uleb128 LEHE66-LEHB66
	.uleb128 L963-LFB6971
	.uleb128 0
	.uleb128 LEHB67-LFB6971
	.uleb128 LEHE67-LEHB67
	.uleb128 L947-LFB6971
	.uleb128 0
	.uleb128 LEHB68-LFB6971
	.uleb128 LEHE68-LEHB68
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB69-LFB6971
	.uleb128 LEHE69-LEHB69
	.uleb128 L948-LFB6971
	.uleb128 0
	.uleb128 LEHB70-LFB6971
	.uleb128 LEHE70-LEHB70
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB71-LFB6971
	.uleb128 LEHE71-LEHB71
	.uleb128 L966-LFB6971
	.uleb128 0
	.uleb128 LEHB72-LFB6971
	.uleb128 LEHE72-LEHB72
	.uleb128 L969-LFB6971
	.uleb128 0
	.uleb128 LEHB73-LFB6971
	.uleb128 LEHE73-LEHB73
	.uleb128 L950-LFB6971
	.uleb128 0
	.uleb128 LEHB74-LFB6971
	.uleb128 LEHE74-LEHB74
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB75-LFB6971
	.uleb128 LEHE75-LEHB75
	.uleb128 L951-LFB6971
	.uleb128 0
	.uleb128 LEHB76-LFB6971
	.uleb128 LEHE76-LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB77-LFB6971
	.uleb128 LEHE77-LEHB77
	.uleb128 L972-LFB6971
	.uleb128 0
	.uleb128 LEHB78-LFB6971
	.uleb128 LEHE78-LEHB78
	.uleb128 L975-LFB6971
	.uleb128 0
	.uleb128 LEHB79-LFB6971
	.uleb128 LEHE79-LEHB79
	.uleb128 L953-LFB6971
	.uleb128 0
	.uleb128 LEHB80-LFB6971
	.uleb128 LEHE80-LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB81-LFB6971
	.uleb128 LEHE81-LEHB81
	.uleb128 L943-LFB6971
	.uleb128 0
	.uleb128 LEHB82-LFB6971
	.uleb128 LEHE82-LEHB82
	.uleb128 L949-LFB6971
	.uleb128 0
	.uleb128 LEHB83-LFB6971
	.uleb128 LEHE83-LEHB83
	.uleb128 L943-LFB6971
	.uleb128 0
	.uleb128 LEHB84-LFB6971
	.uleb128 LEHE84-LEHB84
	.uleb128 L949-LFB6971
	.uleb128 0
	.uleb128 LEHB85-LFB6971
	.uleb128 LEHE85-LEHB85
	.uleb128 L952-LFB6971
	.uleb128 0
	.uleb128 LEHB86-LFB6971
	.uleb128 LEHE86-LEHB86
	.uleb128 L949-LFB6971
	.uleb128 0
	.uleb128 LEHB87-LFB6971
	.uleb128 LEHE87-LEHB87
	.uleb128 L943-LFB6971
	.uleb128 0
	.uleb128 LEHB88-LFB6971
	.uleb128 LEHE88-LEHB88
	.uleb128 L952-LFB6971
	.uleb128 0
	.uleb128 LEHB89-LFB6971
	.uleb128 LEHE89-LEHB89
	.uleb128 L949-LFB6971
	.uleb128 0
	.uleb128 LEHB90-LFB6971
	.uleb128 LEHE90-LEHB90
	.uleb128 L952-LFB6971
	.uleb128 0
	.uleb128 LEHB91-LFB6971
	.uleb128 LEHE91-LEHB91
	.uleb128 L949-LFB6971
	.uleb128 0
	.uleb128 LEHB92-LFB6971
	.uleb128 LEHE92-LEHB92
	.uleb128 L939-LFB6971
	.uleb128 0
	.uleb128 LEHB93-LFB6971
	.uleb128 LEHE93-LEHB93
	.uleb128 L940-LFB6971
	.uleb128 0
	.uleb128 LEHB94-LFB6971
	.uleb128 LEHE94-LEHB94
	.uleb128 L939-LFB6971
	.uleb128 0
	.uleb128 LEHB95-LFB6971
	.uleb128 LEHE95-LEHB95
	.uleb128 L958-LFB6971
	.uleb128 0
	.uleb128 LEHB96-LFB6971
	.uleb128 LEHE96-LEHB96
	.uleb128 L961-LFB6971
	.uleb128 0
	.uleb128 LEHB97-LFB6971
	.uleb128 LEHE97-LEHB97
	.uleb128 L964-LFB6971
	.uleb128 0
	.uleb128 LEHB98-LFB6971
	.uleb128 LEHE98-LEHB98
	.uleb128 L973-LFB6971
	.uleb128 0
	.uleb128 LEHB99-LFB6971
	.uleb128 LEHE99-LEHB99
	.uleb128 L976-LFB6971
	.uleb128 0
	.uleb128 LEHB100-LFB6971
	.uleb128 LEHE100-LEHB100
	.uleb128 L970-LFB6971
	.uleb128 0
	.uleb128 LEHB101-LFB6971
	.uleb128 LEHE101-LEHB101
	.uleb128 L967-LFB6971
	.uleb128 0
	.uleb128 LEHB102-LFB6971
	.uleb128 LEHE102-LEHB102
	.uleb128 L955-LFB6971
	.uleb128 0
	.uleb128 LEHB103-LFB6971
	.uleb128 LEHE103-LEHB103
	.uleb128 L959-LFB6971
	.uleb128 0
	.uleb128 LEHB104-LFB6971
	.uleb128 LEHE104-LEHB104
	.uleb128 L957-LFB6971
	.uleb128 0
	.uleb128 LEHB105-LFB6971
	.uleb128 LEHE105-LEHB105
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB106-LFB6971
	.uleb128 LEHE106-LEHB106
	.uleb128 L968-LFB6971
	.uleb128 0
	.uleb128 LEHB107-LFB6971
	.uleb128 LEHE107-LEHB107
	.uleb128 L966-LFB6971
	.uleb128 0
	.uleb128 LEHB108-LFB6971
	.uleb128 LEHE108-LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB109-LFB6971
	.uleb128 LEHE109-LEHB109
	.uleb128 L940-LFB6971
	.uleb128 0
	.uleb128 LEHB110-LFB6971
	.uleb128 LEHE110-LEHB110
	.uleb128 L939-LFB6971
	.uleb128 0
	.uleb128 LEHB111-LFB6971
	.uleb128 LEHE111-LEHB111
	.uleb128 L956-LFB6971
	.uleb128 0
	.uleb128 LEHB112-LFB6971
	.uleb128 LEHE112-LEHB112
	.uleb128 L954-LFB6971
	.uleb128 0
	.uleb128 LEHB113-LFB6971
	.uleb128 LEHE113-LEHB113
	.uleb128 L965-LFB6971
	.uleb128 0
	.uleb128 LEHB114-LFB6971
	.uleb128 LEHE114-LEHB114
	.uleb128 L963-LFB6971
	.uleb128 0
	.uleb128 LEHB115-LFB6971
	.uleb128 LEHE115-LEHB115
	.uleb128 L962-LFB6971
	.uleb128 0
	.uleb128 LEHB116-LFB6971
	.uleb128 LEHE116-LEHB116
	.uleb128 L960-LFB6971
	.uleb128 0
	.uleb128 LEHB117-LFB6971
	.uleb128 LEHE117-LEHB117
	.uleb128 L977-LFB6971
	.uleb128 0
	.uleb128 LEHB118-LFB6971
	.uleb128 LEHE118-LEHB118
	.uleb128 L975-LFB6971
	.uleb128 0
	.uleb128 LEHB119-LFB6971
	.uleb128 LEHE119-LEHB119
	.uleb128 L971-LFB6971
	.uleb128 0
	.uleb128 LEHB120-LFB6971
	.uleb128 LEHE120-LEHB120
	.uleb128 L969-LFB6971
	.uleb128 0
	.uleb128 LEHB121-LFB6971
	.uleb128 LEHE121-LEHB121
	.uleb128 L974-LFB6971
	.uleb128 0
	.uleb128 LEHB122-LFB6971
	.uleb128 LEHE122-LEHB122
	.uleb128 L972-LFB6971
	.uleb128 0
LLSDACSE6971:
	.section __TEXT,__text_startup,regular,pure_instructions
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
	.p2align 5,,15
__GLOBAL__sub_I_b5_propagation.cpp:
LFB9656:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x1, __ZStL8__ioinit@PAGE	; tmp102,
; b5_propagation.cpp:100: }
	stp	x29, x30, [sp, -32]!	;,,,
LCFI141:
	mov	x29, sp	;,
LCFI142:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	add	x1, x1, __ZStL8__ioinit@PAGEOFF;	; tmp101, tmp102,
; b5_propagation.cpp:100: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	mov	x0, x1	;, tmp101
	str	x1, [x29, 24]	; tmp101, %sfp
	bl	__ZNSt8ios_base4InitC1Ev		;
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x2, ___dso_handle@PAGE	; tmp104,
	ldr	x1, [x29, 24]	; tmp101, %sfp
; b5_propagation.cpp:100: }
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	add	x2, x2, ___dso_handle@PAGEOFF;	;, tmp104,
; b5_propagation.cpp:100: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI143:
; /opt/homebrew/Cellar/gcc/15.1.0/include/c++/15/bits/atomic_wait.h:256: 	static __waiter_pool_base __w[__ct];
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE	;,
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]	;,
	b	___cxa_atexit		;
LFE9656:
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
	.globl __ZN2fx6detail12effect_tag_vI4PingEE
	.weak_definition __ZN2fx6detail12effect_tag_vI4PingEE
	.const
__ZN2fx6detail12effect_tag_vI4PingEE:
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
	.quad	LFB8016-.
	.set L$set$4,LFE8016-LFB8016
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
	.quad	LFB9660-.
	.set L$set$11,LFE9660-LFB9660
	.quad L$set$11
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$12,LCFI3-LFB9660
	.long L$set$12
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$13,LCFI4-LCFI3
	.long L$set$13
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$14,LCFI5-LCFI4
	.long L$set$14
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.set L$set$15,LCFI6-LCFI5
	.long L$set$15
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE7:
LSFDE9:
	.set L$set$16,LEFDE9-LASFDE9
	.long L$set$16
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB9662-.
	.set L$set$17,LFE9662-LFB9662
	.quad L$set$17
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$18,LCFI7-LFB9662
	.long L$set$18
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$19,LCFI8-LCFI7
	.long L$set$19
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$20,LCFI9-LCFI8
	.long L$set$20
	.byte	0x95
	.uleb128 0x4
	.byte	0x4
	.set L$set$21,LCFI10-LCFI9
	.long L$set$21
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$22,LCFI11-LCFI10
	.long L$set$22
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
	.set L$set$23,LCFI12-LCFI11
	.long L$set$23
	.byte	0xb
	.align	3
LEFDE9:
LSFDE11:
	.set L$set$24,LEFDE11-LASFDE11
	.long L$set$24
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB6943-.
	.set L$set$25,LFE6943-LFB6943
	.quad L$set$25
	.uleb128 0x8
	.quad	LLSDA6943-.
	.byte	0x4
	.set L$set$26,LCFI13-LFB6943
	.long L$set$26
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$27,LCFI14-LCFI13
	.long L$set$27
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$28,LCFI15-LCFI14
	.long L$set$28
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$29,LCFI16-LCFI15
	.long L$set$29
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$30,LCFI17-LCFI16
	.long L$set$30
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xdd
	.byte	0xde
	.byte	0x4
	.set L$set$31,LCFI18-LCFI17
	.long L$set$31
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$32,LCFI19-LCFI18
	.long L$set$32
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE11:
LSFDE13:
	.set L$set$33,LEFDE13-LASFDE13
	.long L$set$33
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB6944-.
	.set L$set$34,LFE6944-LFB6944
	.quad L$set$34
	.uleb128 0x8
	.quad	LLSDA6944-.
	.byte	0x4
	.set L$set$35,LCFI20-LFB6944
	.long L$set$35
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$36,LCFI21-LCFI20
	.long L$set$36
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$37,LCFI22-LCFI21
	.long L$set$37
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$38,LCFI23-LCFI22
	.long L$set$38
	.byte	0xb
	.byte	0x4
	.set L$set$39,LCFI24-LCFI23
	.long L$set$39
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE13:
LSFDE15:
	.set L$set$40,LEFDE15-LASFDE15
	.long L$set$40
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB2842-.
	.set L$set$41,LFE2842-LFB2842
	.quad L$set$41
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$42,LCFI25-LFB2842
	.long L$set$42
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$43,LCFI26-LCFI25
	.long L$set$43
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$44,LCFI27-LCFI26
	.long L$set$44
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE15:
LSFDE17:
	.set L$set$45,LEFDE17-LASFDE17
	.long L$set$45
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB2850-.
	.set L$set$46,LFE2850-LFB2850
	.quad L$set$46
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$47,LCFI28-LFB2850
	.long L$set$47
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$48,LCFI29-LCFI28
	.long L$set$48
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$49,LCFI30-LCFI29
	.long L$set$49
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$50,LCFI31-LCFI30
	.long L$set$50
	.byte	0xd3
	.byte	0x4
	.set L$set$51,LCFI32-LCFI31
	.long L$set$51
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$52,LCFI33-LCFI32
	.long L$set$52
	.byte	0xb
	.byte	0x4
	.set L$set$53,LCFI34-LCFI33
	.long L$set$53
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$54,LCFI35-LCFI34
	.long L$set$54
	.byte	0xb
	.byte	0x4
	.set L$set$55,LCFI36-LCFI35
	.long L$set$55
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$56,LCFI37-LCFI36
	.long L$set$56
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE17:
LSFDE19:
	.set L$set$57,LEFDE19-LASFDE19
	.long L$set$57
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB6914-.
	.set L$set$58,LFE6914-LFB6914
	.quad L$set$58
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$59,LCFI38-LFB6914
	.long L$set$59
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$60,LCFI39-LCFI38
	.long L$set$60
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$61,LCFI40-LCFI39
	.long L$set$61
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$62,LCFI41-LCFI40
	.long L$set$62
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x4
	.set L$set$63,LCFI42-LCFI41
	.long L$set$63
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
LEFDE19:
LSFDE21:
	.set L$set$64,LEFDE21-LASFDE21
	.long L$set$64
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB7613-.
	.set L$set$65,LFE7613-LFB7613
	.quad L$set$65
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$66,LCFI43-LFB7613
	.long L$set$66
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$67,LCFI44-LCFI43
	.long L$set$67
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$68,LCFI45-LCFI44
	.long L$set$68
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$69,LCFI46-LCFI45
	.long L$set$69
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE21:
LSFDE23:
	.set L$set$70,LEFDE23-LASFDE23
	.long L$set$70
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB6950-.
	.set L$set$71,LFE6950-LFB6950
	.quad L$set$71
	.uleb128 0x8
	.quad	LLSDA6950-.
	.byte	0x4
	.set L$set$72,LCFI47-LFB6950
	.long L$set$72
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$73,LCFI48-LCFI47
	.long L$set$73
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$74,LCFI49-LCFI48
	.long L$set$74
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x4
	.set L$set$75,LCFI50-LCFI49
	.long L$set$75
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$76,LCFI51-LCFI50
	.long L$set$76
	.byte	0xb
	.byte	0x4
	.set L$set$77,LCFI52-LCFI51
	.long L$set$77
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$78,LCFI53-LCFI52
	.long L$set$78
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$79,LCFI54-LCFI53
	.long L$set$79
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$80,LCFI55-LCFI54
	.long L$set$80
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$81,LCFI56-LCFI55
	.long L$set$81
	.byte	0xa
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$82,LCFI57-LCFI56
	.long L$set$82
	.byte	0xb
	.byte	0x4
	.set L$set$83,LCFI58-LCFI57
	.long L$set$83
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$84,LCFI59-LCFI58
	.long L$set$84
	.byte	0xd3
	.byte	0xd4
	.byte	0x4
	.set L$set$85,LCFI60-LCFI59
	.long L$set$85
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$86,LCFI61-LCFI60
	.long L$set$86
	.byte	0xb
	.byte	0x4
	.set L$set$87,LCFI62-LCFI61
	.long L$set$87
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$88,LCFI63-LCFI62
	.long L$set$88
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.align	3
LEFDE23:
LSFDE25:
	.set L$set$89,LEFDE25-LASFDE25
	.long L$set$89
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB6951-.
	.set L$set$90,LFE6951-LFB6951
	.quad L$set$90
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE25:
LSFDE27:
	.set L$set$91,LEFDE27-LASFDE27
	.long L$set$91
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB6953-.
	.set L$set$92,LFE6953-LFB6953
	.quad L$set$92
	.uleb128 0x8
	.quad	LLSDA6953-.
	.byte	0x4
	.set L$set$93,LCFI64-LFB6953
	.long L$set$93
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$94,LCFI65-LCFI64
	.long L$set$94
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$95,LCFI66-LCFI65
	.long L$set$95
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x4
	.set L$set$96,LCFI67-LCFI66
	.long L$set$96
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$97,LCFI68-LCFI67
	.long L$set$97
	.byte	0xb
	.byte	0x4
	.set L$set$98,LCFI69-LCFI68
	.long L$set$98
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$99,LCFI70-LCFI69
	.long L$set$99
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$100,LCFI71-LCFI70
	.long L$set$100
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$101,LCFI72-LCFI71
	.long L$set$101
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$102,LCFI73-LCFI72
	.long L$set$102
	.byte	0xa
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$103,LCFI74-LCFI73
	.long L$set$103
	.byte	0xb
	.byte	0x4
	.set L$set$104,LCFI75-LCFI74
	.long L$set$104
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$105,LCFI76-LCFI75
	.long L$set$105
	.byte	0xd3
	.byte	0xd4
	.byte	0x4
	.set L$set$106,LCFI77-LCFI76
	.long L$set$106
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$107,LCFI78-LCFI77
	.long L$set$107
	.byte	0xb
	.byte	0x4
	.set L$set$108,LCFI79-LCFI78
	.long L$set$108
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$109,LCFI80-LCFI79
	.long L$set$109
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.align	3
LEFDE27:
LSFDE29:
	.set L$set$110,LEFDE29-LASFDE29
	.long L$set$110
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB6952-.
	.set L$set$111,LFE6952-LFB6952
	.quad L$set$111
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$112,LCFI81-LFB6952
	.long L$set$112
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$113,LCFI82-LCFI81
	.long L$set$113
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$114,LCFI83-LCFI82
	.long L$set$114
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.set L$set$115,LCFI84-LCFI83
	.long L$set$115
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$116,LCFI85-LCFI84
	.long L$set$116
	.byte	0xb
	.align	3
LEFDE29:
LSFDE31:
	.set L$set$117,LEFDE31-LASFDE31
	.long L$set$117
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB6954-.
	.set L$set$118,LFE6954-LFB6954
	.quad L$set$118
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE31:
LSFDE33:
	.set L$set$119,LEFDE33-LASFDE33
	.long L$set$119
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB6956-.
	.set L$set$120,LFE6956-LFB6956
	.quad L$set$120
	.uleb128 0x8
	.quad	LLSDA6956-.
	.byte	0x4
	.set L$set$121,LCFI86-LFB6956
	.long L$set$121
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$122,LCFI87-LCFI86
	.long L$set$122
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$123,LCFI88-LCFI87
	.long L$set$123
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x4
	.set L$set$124,LCFI89-LCFI88
	.long L$set$124
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$125,LCFI90-LCFI89
	.long L$set$125
	.byte	0xb
	.byte	0x4
	.set L$set$126,LCFI91-LCFI90
	.long L$set$126
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$127,LCFI92-LCFI91
	.long L$set$127
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$128,LCFI93-LCFI92
	.long L$set$128
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$129,LCFI94-LCFI93
	.long L$set$129
	.byte	0xb
	.byte	0x4
	.set L$set$130,LCFI95-LCFI94
	.long L$set$130
	.byte	0xa
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$131,LCFI96-LCFI95
	.long L$set$131
	.byte	0xb
	.byte	0x4
	.set L$set$132,LCFI97-LCFI96
	.long L$set$132
	.byte	0xa
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$133,LCFI98-LCFI97
	.long L$set$133
	.byte	0xb
	.byte	0x4
	.set L$set$134,LCFI99-LCFI98
	.long L$set$134
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$135,LCFI100-LCFI99
	.long L$set$135
	.byte	0xb
	.byte	0x4
	.set L$set$136,LCFI101-LCFI100
	.long L$set$136
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$137,LCFI102-LCFI101
	.long L$set$137
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$138,LCFI103-LCFI102
	.long L$set$138
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$139,LCFI104-LCFI103
	.long L$set$139
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$140,LCFI105-LCFI104
	.long L$set$140
	.byte	0xd3
	.byte	0xd4
	.byte	0x4
	.set L$set$141,LCFI106-LCFI105
	.long L$set$141
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.align	3
LEFDE33:
LSFDE35:
	.set L$set$142,LEFDE35-LASFDE35
	.long L$set$142
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB6957-.
	.set L$set$143,LFE6957-LFB6957
	.quad L$set$143
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE35:
LSFDE37:
	.set L$set$144,LEFDE37-LASFDE37
	.long L$set$144
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB6959-.
	.set L$set$145,LFE6959-LFB6959
	.quad L$set$145
	.uleb128 0x8
	.quad	LLSDA6959-.
	.byte	0x4
	.set L$set$146,LCFI107-LFB6959
	.long L$set$146
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$147,LCFI108-LCFI107
	.long L$set$147
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$148,LCFI109-LCFI108
	.long L$set$148
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x4
	.set L$set$149,LCFI110-LCFI109
	.long L$set$149
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$150,LCFI111-LCFI110
	.long L$set$150
	.byte	0xb
	.byte	0x4
	.set L$set$151,LCFI112-LCFI111
	.long L$set$151
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$152,LCFI113-LCFI112
	.long L$set$152
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$153,LCFI114-LCFI113
	.long L$set$153
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$154,LCFI115-LCFI114
	.long L$set$154
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$155,LCFI116-LCFI115
	.long L$set$155
	.byte	0xa
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$156,LCFI117-LCFI116
	.long L$set$156
	.byte	0xb
	.byte	0x4
	.set L$set$157,LCFI118-LCFI117
	.long L$set$157
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$158,LCFI119-LCFI118
	.long L$set$158
	.byte	0xd3
	.byte	0xd4
	.byte	0x4
	.set L$set$159,LCFI120-LCFI119
	.long L$set$159
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$160,LCFI121-LCFI120
	.long L$set$160
	.byte	0xb
	.byte	0x4
	.set L$set$161,LCFI122-LCFI121
	.long L$set$161
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$162,LCFI123-LCFI122
	.long L$set$162
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.align	3
LEFDE37:
LSFDE39:
	.set L$set$163,LEFDE39-LASFDE39
	.long L$set$163
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB6960-.
	.set L$set$164,LFE6960-LFB6960
	.quad L$set$164
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE39:
LSFDE41:
	.set L$set$165,LEFDE41-LASFDE41
	.long L$set$165
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB6962-.
	.set L$set$166,LFE6962-LFB6962
	.quad L$set$166
	.uleb128 0x8
	.quad	LLSDA6962-.
	.byte	0x4
	.set L$set$167,LCFI124-LFB6962
	.long L$set$167
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$168,LCFI125-LCFI124
	.long L$set$168
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$169,LCFI126-LCFI125
	.long L$set$169
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x4
	.set L$set$170,LCFI127-LCFI126
	.long L$set$170
	.byte	0x95
	.uleb128 0x6
	.byte	0x96
	.uleb128 0x5
	.byte	0x97
	.uleb128 0x4
	.byte	0x4
	.set L$set$171,LCFI128-LCFI127
	.long L$set$171
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
	.set L$set$172,LCFI129-LCFI128
	.long L$set$172
	.byte	0xb
	.byte	0x4
	.set L$set$173,LCFI130-LCFI129
	.long L$set$173
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
	.set L$set$174,LCFI131-LCFI130
	.long L$set$174
	.byte	0xb
	.byte	0x4
	.set L$set$175,LCFI132-LCFI131
	.long L$set$175
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
	.set L$set$176,LCFI133-LCFI132
	.long L$set$176
	.byte	0xb
	.byte	0x4
	.set L$set$177,LCFI134-LCFI133
	.long L$set$177
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
	.set L$set$178,LCFI135-LCFI134
	.long L$set$178
	.byte	0xb
	.align	3
LEFDE41:
LSFDE43:
	.set L$set$179,LEFDE43-LASFDE43
	.long L$set$179
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB6963-.
	.set L$set$180,LFE6963-LFB6963
	.quad L$set$180
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE43:
LSFDE45:
	.set L$set$181,LEFDE45-LASFDE45
	.long L$set$181
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB6971-.
	.set L$set$182,LFE6971-LFB6971
	.quad L$set$182
	.uleb128 0x8
	.quad	LLSDA6971-.
	.byte	0x4
	.set L$set$183,LCFI136-LFB6971
	.long L$set$183
	.byte	0xe
	.uleb128 0x180
	.byte	0x9d
	.uleb128 0x30
	.byte	0x9e
	.uleb128 0x2f
	.byte	0x4
	.set L$set$184,LCFI137-LCFI136
	.long L$set$184
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$185,LCFI138-LCFI137
	.long L$set$185
	.byte	0x93
	.uleb128 0x2e
	.byte	0x94
	.uleb128 0x2d
	.byte	0x95
	.uleb128 0x2c
	.byte	0x96
	.uleb128 0x2b
	.byte	0x97
	.uleb128 0x2a
	.byte	0x98
	.uleb128 0x29
	.byte	0x99
	.uleb128 0x28
	.byte	0x9a
	.uleb128 0x27
	.byte	0x9b
	.uleb128 0x26
	.byte	0x9c
	.uleb128 0x25
	.byte	0x5
	.uleb128 0x48
	.uleb128 0x24
	.byte	0x5
	.uleb128 0x49
	.uleb128 0x23
	.byte	0x5
	.uleb128 0x4a
	.uleb128 0x22
	.byte	0x5
	.uleb128 0x4b
	.uleb128 0x21
	.byte	0x5
	.uleb128 0x4c
	.uleb128 0x20
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x1f
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x1d
	.byte	0x4
	.set L$set$186,LCFI139-LCFI138
	.long L$set$186
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
	.set L$set$187,LCFI140-LCFI139
	.long L$set$187
	.byte	0xb
	.align	3
LEFDE45:
LSFDE47:
	.set L$set$188,LEFDE47-LASFDE47
	.long L$set$188
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB9656-.
	.set L$set$189,LFE9656-LFB9656
	.quad L$set$189
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$190,LCFI141-LFB9656
	.long L$set$190
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$191,LCFI142-LCFI141
	.long L$set$191
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$192,LCFI143-LCFI142
	.long L$set$192
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE47:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_b5_propagation.cpp
	.subsections_via_symbols
