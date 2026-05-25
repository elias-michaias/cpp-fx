	.file	"b1_dispatch.cpp"
# GNU C++23 (GCC) version 16.1.1 20260430 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 16.1.1 20260430, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O3 -std=c++23
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata._ZNKSt12bad_any_cast4whatEv.str1.1,"aMS",@progbits,1
.LC0:
	.string	"bad any_cast"
#NO_APP
	.section	.text._ZNKSt12bad_any_cast4whatEv,"axG",@progbits,_ZNKSt12bad_any_cast4whatEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt12bad_any_cast4whatEv
	.type	_ZNKSt12bad_any_cast4whatEv, @function
_ZNKSt12bad_any_cast4whatEv:
.LFB64:
	.cfi_startproc
# /usr/include/c++/16.1.1/any:66:     virtual const char* what() const noexcept { return "bad any_cast"; }
	leaq	.LC0(%rip), %rax	#,
	ret	
	.cfi_endproc
.LFE64:
	.size	_ZNKSt12bad_any_cast4whatEv, .-_ZNKSt12bad_any_cast4whatEv
	.section	.text._ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm,"axG",@progbits,_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm
	.type	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm, @function
_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm:
.LFB2406:
	.cfi_startproc
# /usr/include/c++/16.1.1/memory_resource:434:     { }
	ret	
	.cfi_endproc
.LFE2406:
	.size	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm, .-_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm
	.text
	.p2align 4
	.type	_ZL10direct_inci, @function
_ZL10direct_inci:
.LFB7352:
	.cfi_startproc
# b1_dispatch.cpp:40: [[gnu::noinline]] static int direct_inc(int x) { return x + 1; }
	leal	1(%rdi), %eax	#, _2
# b1_dispatch.cpp:40: [[gnu::noinline]] static int direct_inc(int x) { return x + 1; }
	ret	
	.cfi_endproc
.LFE7352:
	.size	_ZL10direct_inci, .-_ZL10direct_inci
	.align 2
	.p2align 4
	.type	_ZZ4mainEN4Impl3incEi, @function
_ZZ4mainEN4Impl3incEi:
.LFB7394:
	.cfi_startproc
# b1_dispatch.cpp:81:       [[gnu::noinline]] int inc(int x) override { return x + 1; }
	leal	1(%rsi), %eax	#, _2
# b1_dispatch.cpp:81:       [[gnu::noinline]] int inc(int x) override { return x + 1; }
	ret	
	.cfi_endproc
.LFE7394:
	.size	_ZZ4mainEN4Impl3incEi, .-_ZZ4mainEN4Impl3incEi
	.align 2
	.p2align 4
	.type	_ZZ4mainEN4ImplD2Ev, @function
_ZZ4mainEN4ImplD2Ev:
.LFB8052:
	.cfi_startproc
# b1_dispatch.cpp:80:     struct Impl : Base {
	ret	
	.cfi_endproc
.LFE8052:
	.size	_ZZ4mainEN4ImplD2Ev, .-_ZZ4mainEN4ImplD2Ev
	.set	_ZZ4mainEN4ImplD1Ev,_ZZ4mainEN4ImplD2Ev
	.p2align 4
	.type	_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E9_M_invokeERKSt9_Any_dataOi, @function
_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E9_M_invokeERKSt9_Any_dataOi:
.LFB8349:
	.cfi_startproc
# b1_dispatch.cpp:68:     std::function<int(int)> fn = [](int x) { return x + 1; };
	movl	(%rsi), %eax	# *__args#0_4(D), *__args#0_4(D)
	addl	$1, %eax	#, _3
# /usr/include/c++/16.1.1/bits/std_function.h:297:       }
	ret	
	.cfi_endproc
.LFE8349:
	.size	_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E9_M_invokeERKSt9_Any_dataOi, .-_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E9_M_invokeERKSt9_Any_dataOi
	.p2align 4
	.type	_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, @function
_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation:
.LFB8352:
	.cfi_startproc
# /usr/include/c++/16.1.1/bits/std_function.h:275: 	switch (__op)
	testl	%edx, %edx	# __op
	je	.L9	#,
	cmpl	$1, %edx	#, __op
	je	.L10	#,
# /usr/include/c++/16.1.1/bits/std_function.h:290:       }
	xorl	%eax, %eax	#
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
# /usr/include/c++/16.1.1/bits/std_function.h:283: 	    __dest._M_access<_Functor*>() = _Base::_M_get_pointer(__source);
	movq	%rsi, (%rdi)	# __source, MEM[(struct ._anon_205 * &)__dest_5(D)]
# /usr/include/c++/16.1.1/bits/std_function.h:290:       }
	xorl	%eax, %eax	#
	ret	
	.p2align 4,,10
	.p2align 3
.L9:
# /usr/include/c++/16.1.1/bits/std_function.h:279: 	    __dest._M_access<const type_info*>() = &typeid(_Functor);
	leaq	_ZTIZ4mainEUliE_(%rip), %rax	#, tmp111
	movq	%rax, (%rdi)	# tmp111, MEM[(const struct type_info * &)__dest_5(D)]
# /usr/include/c++/16.1.1/bits/std_function.h:290:       }
	xorl	%eax, %eax	#
	ret	
	.cfi_endproc
.LFE8352:
	.size	_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, .-_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.section	.text._ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,"axG",@progbits,_ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,comdat
	.p2align 4
	.weak	_ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.type	_ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, @function
_ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
.LFB8364:
	.cfi_startproc
# b1_dispatch.cpp:34:   void handle(Increment e, auto r) { r(e.value + 1); }
	movl	(%rsi), %eax	# MEM[(struct PerformAwaitable *)_3(D)].effect_.value, tmp111
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	8(%rsi), %rdi	# MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr, _6
# b1_dispatch.cpp:34:   void handle(Increment e, auto r) { r(e.value + 1); }
	addl	$1, %eax	#, _5
# ../../effects.hpp:1140:   pa->result_ = std::move(v);
	movl	%eax, 4(%rsi)	# _5, MEM[(struct PerformAwaitable *)_3(D)].result_
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	jmp	*(%rdi)	# MEM[(void (*<T123>) (void *) *)_6]
	.cfi_endproc
.LFE8364:
	.size	_ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, .-_ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.section	.text._ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
	.type	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, @function
_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE:
.LFB8888:
	.cfi_startproc
# /usr/include/c++/16.1.1/any:588:     any::_Manager_internal<_Tp>::
	movq	%rdx, %rcx	# __arg, __arg
# /usr/include/c++/16.1.1/any:593:       switch (__which)
	cmpl	$4, %edi	#, __which
	ja	.L13	#,
	leaq	.L16(%rip), %rdx	#, tmp109
	movl	%edi, %edi	# __which, __which
	movslq	(%rdx,%rdi,4), %rax	#, tmp111
	addq	%rdx, %rax	# tmp109, tmp112
	jmp	*%rax	# tmp112
	.section	.rodata._ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"aG",@progbits,_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 4
	.align 4
.L16:
	.long	.L20-.L16
	.long	.L19-.L16
	.long	.L18-.L16
	.long	.L13-.L16
	.long	.L15-.L16
	.section	.text._ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.p2align 4,,10
	.p2align 3
.L15:
# /usr/include/c++/16.1.1/any:611: 	::new(&__arg->_M_any->_M_storage._M_buffer) _Tp
	movq	(%rcx), %rax	# __arg_12(D)->_M_any, _4
# /usr/include/c++/16.1.1/any:611: 	::new(&__arg->_M_any->_M_storage._M_buffer) _Tp
	movl	8(%rsi), %edx	# MEM[(type &)__any_8(D) + 8], _5
	movl	%edx, 8(%rax)	# _5, MEM[(int *)_4 + 8B]
# /usr/include/c++/16.1.1/any:614: 	__arg->_M_any->_M_manager = __any->_M_manager;
	movq	(%rsi), %rdx	# __any_8(D)->_M_manager, _6
# /usr/include/c++/16.1.1/any:614: 	__arg->_M_any->_M_manager = __any->_M_manager;
	movq	%rdx, (%rax)	# _6, _4->_M_manager
# /usr/include/c++/16.1.1/any:615: 	const_cast<any*>(__any)->_M_manager = nullptr;
	movq	$0, (%rsi)	#, MEM[(struct any *)__any_8(D)]._M_manager
.L13:
# /usr/include/c++/16.1.1/any:618:     }
	ret	
	.p2align 4,,10
	.p2align 3
.L18:
# /usr/include/c++/16.1.1/any:604: 	::new(&__arg->_M_any->_M_storage._M_buffer) _Tp(*__ptr);
	movl	8(%rsi), %edx	# MEM[(const int *)__any_8(D) + 8B], _2
# /usr/include/c++/16.1.1/any:604: 	::new(&__arg->_M_any->_M_storage._M_buffer) _Tp(*__ptr);
	movq	(%rcx), %rax	# __arg_12(D)->_M_any, _1
# /usr/include/c++/16.1.1/any:604: 	::new(&__arg->_M_any->_M_storage._M_buffer) _Tp(*__ptr);
	movl	%edx, 8(%rax)	# _2, MEM[(int *)_1 + 8B]
# /usr/include/c++/16.1.1/any:605: 	__arg->_M_any->_M_manager = __any->_M_manager;
	movq	(%rsi), %rdx	# __any_8(D)->_M_manager, _3
# /usr/include/c++/16.1.1/any:605: 	__arg->_M_any->_M_manager = __any->_M_manager;
	movq	%rdx, (%rax)	# _3, _1->_M_manager
# /usr/include/c++/16.1.1/any:606: 	break;
	ret	
	.p2align 4,,10
	.p2align 3
.L20:
# /usr/include/c++/16.1.1/any:592:       auto __ptr = reinterpret_cast<const _Tp*>(&__any->_M_storage._M_buffer);
	addq	$8, %rsi	#, tmp114
	movq	%rsi, (%rcx)	# tmp114, __arg_12(D)->_M_obj
# /usr/include/c++/16.1.1/any:597: 	break;
	ret	
	.p2align 4,,10
	.p2align 3
.L19:
# /usr/include/c++/16.1.1/any:600: 	__arg->_M_typeinfo = &typeid(_Tp);
	leaq	_ZTIi(%rip), %rax	#, tmp120
	movq	%rax, (%rcx)	# tmp120, __arg_12(D)->_M_typeinfo
# /usr/include/c++/16.1.1/any:602: 	break;
	ret	
	.cfi_endproc
.LFE8888:
	.size	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, .-_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
	.text
	.align 2
	.p2align 4
	.type	_ZZ4mainEN4ImplD0Ev, @function
_ZZ4mainEN4ImplD0Ev:
.LFB8054:
	.cfi_startproc
# b1_dispatch.cpp:80:     struct Impl : Base {
	movl	$8, %esi	#,
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE8054:
	.size	_ZZ4mainEN4ImplD0Ev, .-_ZZ4mainEN4ImplD0Ev
	.section	.text._ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm,"axG",@progbits,_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm
	.type	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm, @function
_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm:
.LFB2405:
	.cfi_startproc
	movq	%rdi, %r8	# this, this
# /usr/include/c++/16.1.1/memory_resource:418:       if (__builtin_expect(__bytes == 0, false))
	testq	%rsi, %rsi	# __bytes
	movl	$1, %eax	#, tmp128
# /usr/include/c++/16.1.1/memory_resource:416:     do_allocate(size_t __bytes, size_t __alignment) override
	movq	%rdx, %rdi	# __alignment, __alignment
# /usr/include/c++/16.1.1/memory_resource:418:       if (__builtin_expect(__bytes == 0, false))
	cmovne	%rsi, %rax	# __bytes,, tmp128
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%r8), %rdx	# MEM[(size_t &)this_15(D) + 16], _22
# /usr/include/c++/16.1.1/memory_resource:418:       if (__builtin_expect(__bytes == 0, false))
	movq	%rax, %rcx	# tmp128, _4
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	%rax, %rdx	# _4, _22
	jb	.L23	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%r8), %rsi	# MEM[(void * &)this_15(D) + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	movq	%rdi, %r9	# __alignment, _27
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	movq	%rdx, %r10	# _22, _30
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	negq	%r9	# _27
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	subq	%rcx, %r10	# _4, _30
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	-1(%rsi,%rdi), %rax	#, _26
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	%r9, %rax	# _27, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rax, %r9	# __aligned, __diff_29
	subq	%rsi, %r9	# __intptr, __diff_29
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%r9, %r10	# __diff_29, _30
	jb	.L23	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rsi, %rdx	# __intptr, _6
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rax, 8(%r8)	# <retval>, MEM[(void * &)this_15(D) + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rax, %rdx	# __aligned, prephitmp_1
	movq	%rdx, 16(%r8)	# prephitmp_1, MEM[(size_t &)this_15(D) + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rax, %rax	# <retval>
	je	.L23	#,
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	(%rax,%rcx), %rsi	#, tmp122
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	subq	%rcx, %rdx	# _4, tmp123
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rsi, 8(%r8)	# tmp122, this_15(D)->_M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rdx, 16(%r8)	# tmp123, this_15(D)->_M_avail
# /usr/include/c++/16.1.1/memory_resource:430:     }
	ret	
	.p2align 4,,10
	.p2align 3
.L23:
# /usr/include/c++/16.1.1/memory_resource:416:     do_allocate(size_t __bytes, size_t __alignment) override
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movq	%rdi, %rdx	# __alignment,
	movq	%rcx, %rsi	# _4,
	movq	%r8, %rdi	# this,
	movq	%rcx, 8(%rsp)	# _4, %sfp
	movq	%r8, (%rsp)	# this, %sfp
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	(%rsp), %r8	# %sfp, this
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	8(%rsp), %rcx	# %sfp, _4
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	8(%r8), %rax	# this_15(D)->_M_current_buf, <retval>
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%r8), %rdx	# this_15(D)->_M_avail, prephitmp_1
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	(%rax,%rcx), %rsi	#, tmp122
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	subq	%rcx, %rdx	# _4, tmp123
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rsi, 8(%r8)	# tmp122, this_15(D)->_M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rdx, 16(%r8)	# tmp123, this_15(D)->_M_avail
# /usr/include/c++/16.1.1/memory_resource:430:     }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE2405:
	.size	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm, .-_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm
	.section	.text._ZNSt12bad_any_castD2Ev,"axG",@progbits,_ZNSt12bad_any_castD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12bad_any_castD2Ev
	.type	_ZNSt12bad_any_castD2Ev, @function
_ZNSt12bad_any_castD2Ev:
.LFB70:
	.cfi_startproc
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rax	#, tmp103
	movq	%rax, (%rdi)	# tmp103, this_3(D)->D.7902.D.2948._vptr.exception
	jmp	_ZNSt8bad_castD2Ev@PLT	#
	.cfi_endproc
.LFE70:
	.size	_ZNSt12bad_any_castD2Ev, .-_ZNSt12bad_any_castD2Ev
	.weak	_ZNSt12bad_any_castD1Ev
	.set	_ZNSt12bad_any_castD1Ev,_ZNSt12bad_any_castD2Ev
	.section	.text._ZNSt12bad_any_castD0Ev,"axG",@progbits,_ZNSt12bad_any_castD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12bad_any_castD0Ev
	.type	_ZNSt12bad_any_castD0Ev, @function
_ZNSt12bad_any_castD0Ev:
.LFB72:
	.cfi_startproc
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rax	#, tmp103
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	movq	%rax, (%rdi)	# tmp103, this_2(D)->D.7902.D.2948._vptr.exception
	movq	%rdi, 8(%rsp)	# this, %sfp
	call	_ZNSt8bad_castD2Ev@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	movq	8(%rsp), %rdi	# %sfp, this
	movl	$8, %esi	#,
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE72:
	.size	_ZNSt12bad_any_castD0Ev, .-_ZNSt12bad_any_castD0Ev
	.text
	.align 2
	.p2align 4
	.type	_ZZ4mainEN4Impl3incEi.constprop.0, @function
_ZZ4mainEN4Impl3incEi.constprop.0:
.LFB10116:
	.cfi_startproc
# b1_dispatch.cpp:81:       [[gnu::noinline]] int inc(int x) override { return x + 1; }
	leal	1(%rdi), %eax	#, _2
# b1_dispatch.cpp:81:       [[gnu::noinline]] int inc(int x) override { return x + 1; }
	ret	
	.cfi_endproc
.LFE10116:
	.size	_ZZ4mainEN4Impl3incEi.constprop.0, .-_ZZ4mainEN4Impl3incEi.constprop.0
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4
	.type	_Z6fx_incP17_ZL6fx_inci.Frame.actor, @function
_Z6fx_incP17_ZL6fx_inci.Frame.actor:
.LFB7378:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7378
# b1_dispatch.cpp:46: }
	movzwl	92(%rdi), %eax	# frame_ptr_16(D)->_Coro_resume_index, _1
	testb	$1, %al	#, _1
	je	.L33	#,
# b1_dispatch.cpp:46: }
	cmpw	$7, %ax	#, _1
	ja	.L57	#,
.L35:
.L41:
.L42:
.L43:
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	subw	$1, 94(%rdi)	#, frame_ptr_16(D)->_Coro_frame_refcount
# b1_dispatch.cpp:46: }
	je	.L58	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L33:
# b1_dispatch.cpp:46: }
	cmpw	$4, %ax	#, _1
	je	.L36	#,
	ja	.L37	#,
	testw	%ax, %ax	# _1
	je	.L38	#,
.L39:
# b1_dispatch.cpp:46: }
	movl	88(%rdi), %eax	# frame_ptr_16(D)->x, _8
# b1_dispatch.cpp:46: }
	movl	$4, %edx	#,
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	movb	$1, 97(%rdi)	#, frame_ptr_16(D)->_Coro_initial_await_resume_called
# ../../effects.hpp:491:     return a;
	movl	$0, 108(%rdi)	#, frame_ptr_16(D)->Aw0_2_3.result_
# b1_dispatch.cpp:46: }
	movl	%eax, 128(%rdi)	# _8, frame_ptr_16(D)->T002_2_3.value
# ../../effects.hpp:491:     return a;
	movl	%eax, 104(%rdi)	# _8, MEM <int> [(struct _ZL6fx_inci.Frame *)frame_ptr_16(D) + 104B]
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	leaq	16(%rdi), %rax	#, tmp122
	movq	%rax, 120(%rdi)	# tmp122, MEM[(struct PerformAwaitable *)frame_ptr_16(D) + 104B].abort_base_
# ../../effects.hpp:1123:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	leaq	_ZN2fx6detail12effect_tag_vI9IncrementEE(%rip), %rax	#, tmp136
	movq	%rax, 48(%rdi)	# tmp136, MEM[(struct promise_type &)frame_ptr_16(D) + 16].D.168362.D.167321.effect_tag
# b1_dispatch.cpp:45:   co_return perform(Increment{.value = x});
	leaq	104(%rdi), %rax	#, tmp124
# b1_dispatch.cpp:46: }
	movw	%dx, 92(%rdi)	#, frame_ptr_16(D)->_Coro_resume_index
# ../../effects.hpp:1121:     caller_ = caller;
	movq	%rdi, 112(%rdi)	# frame_ptr, MEM[(struct PerformAwaitable *)frame_ptr_16(D) + 104B].caller_._M_fr_ptr
# b1_dispatch.cpp:45:   co_return perform(Increment{.value = x});
	movq	%rax, 56(%rdi)	# tmp124, MEM[(struct promise_type &)frame_ptr_16(D) + 16].D.168362.D.167321.payload_ptr
	ret	
	.p2align 4,,10
	.p2align 3
.L58:
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_16(D) + 64B]._M_exception_object
	je	.L44	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _40
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L44:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_16(D) + 32B]._M_manager, _43
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _43
	je	.L45	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _42
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _43
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L45:
# b1_dispatch.cpp:46: }
	cmpb	$0, 96(%rax)	#, frame_ptr_16(D)->_Coro_frame_needs_free
	jne	.L59	#,
.L40:
.L32:
# b1_dispatch.cpp:46: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L38:
# b1_dispatch.cpp:46: }
	movl	$2, %ecx	#,
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	addw	$1, 94(%rdi)	#, frame_ptr_16(D)->_Coro_frame_refcount
	movb	$0, 97(%rdi)	#, frame_ptr_16(D)->_Coro_initial_await_resume_called
# b1_dispatch.cpp:46: }
	movw	%cx, 92(%rdi)	#, frame_ptr_16(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L36:
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movl	108(%rdi), %eax	# MEM[(type &)frame_ptr_16(D) + 108], MEM[(type &)frame_ptr_16(D) + 108]
	movb	$1, 84(%rdi)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_16(D) + 84B]
# b1_dispatch.cpp:46: }
	movq	$0, (%rdi)	#, frame_ptr_16(D)->_Coro_resume_fn
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movl	%eax, 80(%rdi)	# MEM[(type &)frame_ptr_16(D) + 108], MEM <int> [(struct promise_type *)frame_ptr_16(D) + 80B]
# b1_dispatch.cpp:46: }
	movl	$6, %eax	#,
	movw	%ax, 92(%rdi)	#, frame_ptr_16(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L37:
# b1_dispatch.cpp:46: }
	cmpw	$6, %ax	#, _1
	je	.L43	#,
	jmp	.L34	#
	.p2align 4,,10
	.p2align 3
.L59:
	.cfi_def_cfa_offset 32
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_16(D) + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L46	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_46->_vptr.memory_resource, mr_46->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_47 + 24B], _48
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp132
	cmpq	%rdx, %r8	# tmp132, _48
	je	.L32	#,
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*%r8	# _48
	jmp	.L32	#
	.p2align 4,,10
	.p2align 3
.L46:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b1_dispatch.cpp:46: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB0:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE0:
.L57:
	jmp	.L34	#
	.section	.gcc_except_table,"a",@progbits
.LLSDA7378:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7378-.LLSDACSB7378
.LLSDACSB7378:
	.uleb128 .LEHB0-.LFB7378
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
.LLSDACSE7378:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7378
	.type	_Z6fx_incP17_ZL6fx_inci.Frame.actor.cold, @function
_Z6fx_incP17_ZL6fx_inci.Frame.actor.cold:
.LFSB7378:
.L34:
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	ud2	
	.cfi_endproc
.LFE7378:
	.section	.gcc_except_table
.LLSDAC7378:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7378-.LLSDACSBC7378
.LLSDACSBC7378:
.LLSDACSEC7378:
	.section	.text.unlikely
	.text
	.size	_Z6fx_incP17_ZL6fx_inci.Frame.actor, .-_Z6fx_incP17_ZL6fx_inci.Frame.actor
	.section	.text.unlikely
	.size	_Z6fx_incP17_ZL6fx_inci.Frame.actor.cold, .-_Z6fx_incP17_ZL6fx_inci.Frame.actor.cold
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"fx: unhandled effect -- no matching handler installed"
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4
	.type	_ZZ4mainENKUlvE2_clEv, @function
_ZZ4mainENKUlvE2_clEv:
.LFB7508:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7508
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$112, %rsp	#,
	.cfi_def_cfa_offset 144
# b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	movq	(%rdi), %rax	# __closure_5(D)->__sink, __closure_5(D)->__sink
	movq	.LC5(%rip), %xmm1	#, _84
# b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	movq	%fs:40, %r12	# MEM[(<address-space-1> long unsigned int *)40B], __closure
	movq	%r12, 104(%rsp)	# __closure, D.230179
	movq	%rdi, %r12	# __closure, __closure
	leaq	48(%rsp), %rbp	#, tmp238
	movq	%rbp, %xmm2	# tmp238, tmp238
# b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	movl	(%rax), %r8d	# *_1, _2
	punpcklqdq	%xmm2, %xmm1	# tmp238, _84
	movaps	%xmm1, (%rsp)	# _84, %sfp
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rcx	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rcx, %rcx	# mr
	je	.L61	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rcx), %rax	# mr_42->_vptr.memory_resource, mr_42->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp177
	movq	16(%rax), %rax	# MEM[(int (*) () *)_44 + 16B], _45
	cmpq	%rdx, %rax	# tmp177, _45
	jne	.L62	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rcx), %rax	# MEM[(size_t &)mr_42 + 16], _57
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$143, %rax	#, _57
	jbe	.L63	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rcx), %rdx	# MEM[(void * &)mr_42 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-144(%rax), %rdi	#, _66
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rdx), %rbx	#, _62
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rbx	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rbx, %rsi	# __aligned, __diff_65
	subq	%rdx, %rsi	# __intptr, __diff_65
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rsi, %rdi	# __diff_65, _66
	jb	.L63	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rdx, %rax	# __intptr, _241
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rbx, 8(%rcx)	# __p, MEM[(void * &)mr_42 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rbx, %rax	# __aligned, _68
	movq	%rax, 16(%rcx)	# _68, MEM[(size_t &)mr_42 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rbx, %rbx	# __p
	je	.L63	#,
.L64:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	144(%rbx), %rdx	#, tmp182
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	subq	$144, %rax	#, tmp183
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rdx, 8(%rcx)	# tmp182, MEM[(struct monotonic_buffer_resource *)mr_42]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rax, 16(%rcx)	# tmp183, MEM[(struct monotonic_buffer_resource *)mr_42]._M_avail
.L65:
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	movq	.LC6(%rip), %xmm0	#, _14
	leaq	_Z6fx_incP17_ZL6fx_inci.Frame.destroy(%rip), %rax	#, tmp173
	movb	$1, 96(%rbx)	#, MEM[(struct _ZL6fx_inci.Frame *)raw_48]._Coro_frame_needs_free
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	movq	%rbx, %rdi	# __p,
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	movq	%rax, %xmm3	# tmp173, tmp173
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rbx), %rax	#, tmp189
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rcx, 136(%rbx)	# mr, MEM[(struct memory_resource * *)raw_48 + 136B]
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	punpcklqdq	%xmm3, %xmm0	# tmp173, _14
	movl	%r8d, 88(%rbx)	# _2, MEM[(struct _ZL6fx_inci.Frame *)raw_48].x
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_48 + 16B].aborted
	movq	$0, 24(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_48 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rbx)	#, MEM[(struct any *)raw_48 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 84(%rbx)	#, MEM[(struct _Optional_payload_base *)raw_48 + 80B]._M_engaged
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	movl	$65536, 92(%rbx)	#, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_48 + 92B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp189, MEM[(struct promise_type *)raw_48 + 16B].D.168362.D.167321.result_ptr
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	movups	%xmm0, (%rbx)	# _14, MEM <vector(2) long unsigned int> [(void (*<T1b85b>) (struct _ZL6fx_inci.Frame *) *)raw_48]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp185
	movups	%xmm0, 40(%rbx)	# tmp185, MEM <vector(2) long unsigned int> [(void *)raw_48 + 40B]
	movups	%xmm0, 56(%rbx)	# tmp185, MEM <vector(2) long unsigned int> [(void *)raw_48 + 56B]
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	call	_Z6fx_incP17_ZL6fx_inci.Frame.actor	#
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	subw	$1, 94(%rbx)	#, MEM[(struct _ZL6fx_inci.Frame *)raw_48]._Coro_frame_refcount
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	je	.L114	#,
.L66:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	(%rsp), %xmm4	# %sfp, _84
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	leaq	39(%rsp), %rax	#, tmp197
# b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	movq	(%r12), %r12	# __closure_5(D)->__sink, _3
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%rax, 64(%rsp)	# tmp197, guard.node.real_handler_ptr
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI9Increment16IncrementHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_(%rip), %rax	#, tmp263
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 88(%rsp)	#, MEM[(struct HandlerNode *)&guard].on_return_any_fn
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%rax, 72(%rsp)	# tmp263, guard.node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm4, 48(%rsp)	# _84, MEM <vector(2) long unsigned int> [(const void * *)&guard]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.48_24
	movq	%rax, 96(%rsp)	# stack_top.48_24, guard.saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 80(%rsp)	# stack_top.48_24, guard.node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp238, stack_top
.LEHB1:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_48]
	.p2align 4
	.p2align 3
.L70:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)raw_48]
	je	.L115	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)raw_48 + 16].D.168362.D.167321.effect_tag, _94
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L71	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _94, n_101->effect_tag
	je	.L72	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L73:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_20->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L71	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_105->effect_tag, _94
	jne	.L73	#,
.L72:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)raw_48 + 16].D.168362.D.167321.payload_ptr, MEM[(struct promise_type &)raw_48 + 16].D.168362.D.167321.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_9->dispatch
.LEHE1:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)raw_48 + 16].D.168362.D.167321.aborted
	je	.L70	#,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	96(%rsp), %rdx	# guard.saved, _53
	xorl	%eax, %eax	# _99
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp238, MEM[(struct PromiseAbortBase *)raw_48 + 16B].abort_owner
	je	.L79	#,
.L92:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rdx, %fs:_ZN2fx6detail9stack_topE@tpoff	# _53, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	movl	%eax, (%r12)	# _99, *_3
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_48 + 8B]
# b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	movq	104(%rsp), %rax	# D.230179, tmp254
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp254
	jne	.L116	#,
	addq	$112, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.L63:
	.cfi_restore_state
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movq	%rcx, %rdi	# mr,
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movl	%r8d, 24(%rsp)	# _2, %sfp
	movq	%rcx, 16(%rsp)	# mr, %sfp
.LEHB2:
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
.LEHE2:
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	16(%rsp), %rcx	# %sfp, mr
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movl	24(%rsp), %r8d	# %sfp, _2
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	8(%rcx), %rbx	# MEM[(struct monotonic_buffer_resource *)mr_42]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%rcx), %rax	# MEM[(struct monotonic_buffer_resource *)mr_42]._M_avail, _68
	jmp	.L64	#
.L115:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)raw_48 + 64B]._M_exception_object, _98
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _98
	jne	.L117	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_48 + 16B].aborted
	je	.L85	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp238, MEM[(struct PromiseAbortBase *)raw_48 + 16B].abort_owner
	je	.L79	#,
.L85:
# /usr/include/c++/16.1.1/optional:229: 	    : _M_value(std::forward<_Args>(__args)...)
	movl	80(%rbx), %eax	# MEM[(int &)raw_48 + 80], _99
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	96(%rsp), %rdx	# guard.saved, _53
	jmp	.L92	#
.L114:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_48 + 64B]._M_exception_object
	je	.L67	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _79
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L67:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_48 + 32B]._M_manager, _82
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _82
	je	.L68	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _81
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _82
.L68:
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	cmpw	$0, 94(%rbx)	#, MEM[(struct _ZL6fx_inci.Frame *)raw_48]._Coro_frame_refcount
	jne	.L66	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_48 + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L69	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_85->_vptr.memory_resource, mr_85->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp196
	movq	24(%rax), %rax	# MEM[(int (*) () *)_86 + 24B], _87
	cmpq	%rdx, %rax	# tmp196, _87
	je	.L66	#,
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# __p,
	call	*%rax	# _87
	jmp	.L66	#
.L79:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_48 + 32B]._M_manager, _107
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp220
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_48 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp220, _107
	je	.L88	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _107
	je	.L96	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	40(%rsp), %rdx	#, tmp221
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _29
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _107
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	40(%rsp), %rax	# MEM[(union _Arg *)_21]._M_typeinfo, _108
.L89:
	movq	8(%rax), %rdi	# MEM[(const char * *)_109 + 8B], _113
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _114
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _114, _113
	je	.L88	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_113
	je	.L90	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	xorl	%eax, %eax	# tmp239
	cmpb	$42, (%rsi)	#, *_114
	sete	%al	#, tmp239
	addq	%rax, %rsi	# tmp239, _114
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _121
	jne	.L90	#,
.L88:
# /usr/include/c++/16.1.1/any:516: 	return static_cast<_ValueType>(std::move(*__p));
	movl	40(%rbx), %eax	# MEM[(type &)raw_48 + 40], _99
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	96(%rsp), %rdx	# guard.saved, _53
	jmp	.L92	#
.L61:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$144, %edi	#,
	movq	%rcx, 24(%rsp)	# mr, %sfp
	movl	%r8d, 16(%rsp)	# _2, %sfp
.LEHB3:
	call	_Znwm@PLT	#
	movq	24(%rsp), %rcx	# %sfp, mr
	movl	16(%rsp), %r8d	# %sfp, _2
	movq	%rax, %rbx	# __p, __p
	jmp	.L65	#
.L62:
	movl	%r8d, 24(%rsp)	# _2, %sfp
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	%rcx, %rdi	# mr,
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%rcx, 16(%rsp)	# mr, %sfp
	call	*%rax	# _45
.LEHE3:
	movq	16(%rsp), %rcx	# %sfp, mr
	movl	24(%rsp), %r8d	# %sfp, _2
	movq	%rax, %rbx	# __p, __p
	jmp	.L65	#
.L69:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZdlPvm@PLT	#
	jmp	.L66	#
.L96:
# /usr/include/c++/16.1.1/any:341: 	return typeid(void);
	leaq	_ZTIv(%rip), %rax	#, _108
	jmp	.L89	#
.L116:
# b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	call	__stack_chk_fail@PLT	#
.L117:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	40(%rsp), %rdi	#, tmp264
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 40(%rsp)	# _98, MEM[(struct exception_ptr *)_21]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	104(%rsp), %rax	# D.230179, tmp251
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp251
	jne	.L118	#,
	leaq	40(%rsp), %rdi	#, tmp265
.LEHB4:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE4:
.L118:
	call	__stack_chk_fail@PLT	#
.L108:
	jmp	.L109	#
.L98:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	movq	%rax, %rbp	#, tmp246
	jmp	.L86	#
	.section	.gcc_except_table
.LLSDA7508:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7508-.LLSDACSB7508
.LLSDACSB7508:
	.uleb128 .LEHB1-.LFB7508
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L108-.LFB7508
	.uleb128 0
	.uleb128 .LEHB2-.LFB7508
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB7508
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB7508
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L98-.LFB7508
	.uleb128 0
.LLSDACSE7508:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7508
	.type	_ZZ4mainENKUlvE2_clEv.cold, @function
_ZZ4mainENKUlvE2_clEv.cold:
.LFSB7508:
.L71:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC3(%rip), %rsi	#,
	movq	%rax, %rdi	# _106,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _106
.LEHB5:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE5:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	104(%rsp), %rax	# D.230179, tmp250
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp250
	jne	.L119	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _106,
.LEHB6:
	call	__cxa_throw@PLT	#
.LEHE6:
.L97:
.L109:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp249, tmp209
.L78:
	movq	96(%rsp), %rax	# guard.saved, guard.saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# guard.saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_48 + 8B]
	movq	104(%rsp), %rax	# D.230179, tmp253
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp253
	jne	.L120	#,
	movq	%rbp, %rdi	# tmp209,
.LEHB7:
	call	_Unwind_Resume@PLT	#
.LEHE7:
.L119:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	__stack_chk_fail@PLT	#
.L99:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _106,
	movq	%rax, %rbp	#, tmp245
	call	__cxa_free_exception@PLT	#
	jmp	.L78	#
.L90:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp267
	movq	%rcx, (%rax)	# tmp267, MEM[(struct bad_any_cast *)_123].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	104(%rsp), %rdx	# D.230179, tmp252
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp252
	jne	.L121	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp248,
.LEHB8:
	call	__cxa_throw@PLT	#
.LEHE8:
.L121:
	call	__stack_chk_fail@PLT	#
.L120:
	call	__stack_chk_fail@PLT	#
.L86:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 40(%rsp)	#, MEM[(struct exception_ptr *)_21]._M_exception_object
	je	.L78	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	40(%rsp), %rdi	#, tmp266
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	jmp	.L78	#
	.cfi_endproc
.LFE7508:
	.section	.gcc_except_table
.LLSDAC7508:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7508-.LLSDACSBC7508
.LLSDACSBC7508:
	.uleb128 .LEHB5-.LCOLDB7
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L99-.LCOLDB7
	.uleb128 0
	.uleb128 .LEHB6-.LCOLDB7
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L97-.LCOLDB7
	.uleb128 0
	.uleb128 .LEHB7-.LCOLDB7
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LCOLDB7
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L97-.LCOLDB7
	.uleb128 0
.LLSDACSEC7508:
	.section	.text.unlikely
	.text
	.size	_ZZ4mainENKUlvE2_clEv, .-_ZZ4mainENKUlvE2_clEv
	.section	.text.unlikely
	.size	_ZZ4mainENKUlvE2_clEv.cold, .-_ZZ4mainENKUlvE2_clEv.cold
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4
	.type	_Z6fx_incP17_ZL6fx_inci.Frame.destroy, @function
_Z6fx_incP17_ZL6fx_inci.Frame.destroy:
.LFB7379:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7379
	movzwl	92(%rdi), %eax	# frame_ptr_4(D)->_Coro_resume_index, _2
	orl	$1, %eax	#, _2
	movw	%ax, 92(%rdi)	# _2, frame_ptr_4(D)->_Coro_resume_index
# b1_dispatch.cpp:46: }
	cmpw	$7, %ax	#, _2
	ja	.L130	#,
.L124:
.L125:
.L126:
.L127:
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	subw	$1, 94(%rdi)	#, frame_ptr_4(D)->_Coro_frame_refcount
# b1_dispatch.cpp:46: }
	je	.L142	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L142:
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_4(D) + 64B]._M_exception_object
	je	.L131	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _19
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L131:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_4(D) + 32B]._M_manager, _22
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _22
	je	.L132	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _21
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _22
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L132:
# b1_dispatch.cpp:46: }
	cmpb	$0, 96(%rax)	#, frame_ptr_4(D)->_Coro_frame_needs_free
	jne	.L143	#,
.L128:
.L122:
# b1_dispatch.cpp:46: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L143:
	.cfi_restore_state
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_4(D) + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L133	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_25->_vptr.memory_resource, mr_25->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_26 + 24B], _27
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp119
	cmpq	%rdx, %r8	# tmp119, _27
	je	.L122	#,
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*%r8	# _27
	jmp	.L122	#
	.p2align 4,,10
	.p2align 3
.L133:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b1_dispatch.cpp:46: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB9:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE9:
.L123:
	.section	.gcc_except_table
.LLSDA7379:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7379-.LLSDACSB7379
.LLSDACSB7379:
	.uleb128 .LEHB9-.LFB7379
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE7379:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7379
	.type	_Z6fx_incP17_ZL6fx_inci.Frame.destroy.cold, @function
_Z6fx_incP17_ZL6fx_inci.Frame.destroy.cold:
.LFSB7379:
.L130:
# b1_dispatch.cpp:44: static auto fx_inc(int x) -> Increment::Fx<int> {
	ud2	
	.cfi_endproc
.LFE7379:
	.section	.gcc_except_table
.LLSDAC7379:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7379-.LLSDACSBC7379
.LLSDACSBC7379:
.LLSDACSEC7379:
	.section	.text.unlikely
	.text
	.size	_Z6fx_incP17_ZL6fx_inci.Frame.destroy, .-_Z6fx_incP17_ZL6fx_inci.Frame.destroy
	.section	.text.unlikely
	.size	_Z6fx_incP17_ZL6fx_inci.Frame.destroy.cold, .-_Z6fx_incP17_ZL6fx_inci.Frame.destroy.cold
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC11:
	.string	"\n=== "
.LC12:
	.string	" ===\n"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"  Each iteration dispatches once and returns an int.\n"
	.align 8
.LC14:
	.string	"  Fx: one coroutine-frame alloc per iteration; zero per-perform allocs.\n\n"
	.section	.rodata.str1.1
.LC16:
	.string	"  "
.LC17:
	.string	" "
.LC18:
	.string	" ns/iter\n"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"\nNote: perform() overhead is dominated by the coroutine frame alloc.\n"
	.align 8
.LC20:
	.string	"      Use b2_batch to see the amortised cost across many performs.\n"
	.section	.text.unlikely
.LCOLDB30:
	.section	.text.startup,"ax",@progbits
.LHOTB30:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB7380:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7380
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$51, %edi	#,
# b1_dispatch.cpp:50: int main() {
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$160, %rsp	#,
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp342
	movq	%rax, 152(%rsp)	# tmp342, D.230805
	movabsq	$13563782407139377, %rax	#, tmp342
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	leaq	80(%rsp), %rbp	#, tmp674
	movq	%rax, 80(%rsp)	# tmp342, MEM <vector(8) char> [(char *)_216 + 16B]
.LEHB10:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE10:
	movl	$101, %edi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbp, 64(%rsp)	# tmp674, MEM[(struct basic_string *)_216]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC21(%rip), %xmm0	#, tmp681
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 72(%rsp)	#, MEM[(struct basic_string *)_216]._M_string_length
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbx	#, _402
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp681, MEM <char[1:43]> [(void *)_402]
	movdqa	.LC22(%rip), %xmm0	#, tmp682
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbx, 96(%rsp)	# _402, MEM[(struct basic_string *)_215]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, 16(%rax)	# tmp682, MEM <char[1:43]> [(void *)_402]
	movdqa	.LC23(%rip), %xmm0	#, tmp683
	movups	%xmm0, 27(%rax)	# tmp683, MEM <char[1:43]> [(void *)_402]
	movl	80(%rsp), %eax	# MEM <char[1:7]> [(void *)_216 + 16B], MEM <char[1:7]> [(void *)_216 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 50(%rbx)	#, MEM[(char_type &)_402 + 50]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	%eax, 43(%rbx)	# MEM <char[1:7]> [(void *)_216 + 16B], MEM <char[1:7]> [(void *)_387]
	movl	83(%rsp), %eax	# MEM <char[1:7]> [(void *)_216 + 16B], MEM <char[1:7]> [(void *)_216 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 80(%rsp)	#, MEM <unsigned long> [(void *)_216 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	%eax, 46(%rbx)	# MEM <char[1:7]> [(void *)_216 + 16B], MEM <char[1:7]> [(void *)_387]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$50, %eax	#, tmp351
	movq	%rax, %xmm0	# tmp351, tmp351
	punpcklqdq	%xmm0, %xmm0	# tmp350
	movups	%xmm0, 104(%rsp)	# tmp350, MEM <vector(2) long unsigned int> [(void *)_215 + 8B]
.LEHB11:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE11:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqu	(%rbx), %xmm0	# MEM <char[1:50]> [(void *)_402], MEM <char[1:50]> [(void *)_402]
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r13	#, _460
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movl	$51, %esi	#,
	movq	%rbx, %rdi	# _402,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	112(%rsp), %r12	#, tmp675
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# MEM <char[1:50]> [(void *)_402], MEM <char[1:50]> [(void *)_460]
	movdqu	16(%rbx), %xmm0	# MEM <char[1:50]> [(void *)_402], MEM <char[1:50]> [(void *)_402]
	movups	%xmm0, 16(%rax)	# MEM <char[1:50]> [(void *)_402], MEM <char[1:50]> [(void *)_460]
	movdqu	32(%rbx), %xmm0	# MEM <char[1:50]> [(void *)_402], MEM <char[1:50]> [(void *)_402]
	movups	%xmm0, 32(%rax)	# MEM <char[1:50]> [(void *)_402], MEM <char[1:50]> [(void *)_460]
	movzwl	48(%rbx), %eax	# MEM <char[1:50]> [(void *)_402], MEM <char[1:50]> [(void *)_402]
	movl	$695430767, 58(%r13)	#, MEM <char[1:12]> [(void *)_439]
	movw	%ax, 48(%r13)	# MEM <char[1:50]> [(void *)_402], MEM <char[1:50]> [(void *)_460]
	movabsq	$7598805615237163296, %rax	#, tmp741
	movq	%rax, 50(%r13)	# tmp741, MEM <char[1:12]> [(void *)_439]
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 62(%r13)	#, MEM[(char_type &)_460 + 62]
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC11(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r12, 96(%rsp)	# tmp675, MEM[(struct basic_string *)_215]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 104(%rsp)	#, MEM[(struct basic_string *)_215]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 112(%rsp)	#, MEM <unsigned long> [(void *)_215 + 16B]
.LEHB12:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/string_view:780:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	movl	$62, %edx	#,
	movq	%r13, %rsi	# _460,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC12(%rip), %rsi	#,
	movq	%rax, %rdi	# _471,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE12:
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r13, %rdi	# _460,
	movl	$101, %esi	#,
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	96(%rsp), %rdi	# MEM[(struct basic_string *)_215]._M_dataplus._M_p, _75
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp675, _75
	je	.L145	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	112(%rsp), %rax	# MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity, tmp742
	leaq	1(%rax), %rsi	#, _78
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L145:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdi	# MEM[(struct basic_string *)_216]._M_dataplus._M_p, _71
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp674, _71
	je	.L146	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	80(%rsp), %rax	# MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity, tmp743
	leaq	1(%rax), %rsi	#, _74
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L146:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$53, %edx	#,
	leaq	.LC13(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB13:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$73, %edx	#,
	leaq	.LC14(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$24, %edi	#,
	call	_Znwm@PLT	#
.LEHE13:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC24(%rip), %xmm0	#, tmp684
# b1_dispatch.cpp:62:         bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
	xorl	%edi, %edi	#
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movabsq	$7812726531954598261, %rcx	#, tmp744
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 23(%rax)	#, MEM[(char_type &)_541 + 23]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp684, MEM <char[1:23]> [(void *)_541]
	movq	%rcx, 15(%rax)	# tmp744, MEM <char[1:23]> [(void *)_541]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 64(%rsp)	# tmp692, MEM[(struct basic_string *)_216]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$23, 80(%rsp)	#, MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$23, 72(%rsp)	#, MEM[(struct basic_string *)_216]._M_string_length
# b1_dispatch.cpp:62:         bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
	call	_ZL10direct_inci	#
# b1_dispatch.cpp:62:         bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
	movl	%eax, %edi	# _158,
	call	_ZL10direct_inci	#
# b1_dispatch.cpp:62:         bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
	movl	%eax, %edi	# _937,
	call	_ZL10direct_inci	#
	movl	%eax, %ebx	# sink, sink
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$1000000, %edx	#, ivtmp_992
	movq	%rax, %r13	#, start
	.p2align 4
	.p2align 3
.L147:
# b1_dispatch.cpp:62:         bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
	movl	%ebx, %edi	# sink,
	call	_ZL10direct_inci	#
	movl	%eax, %ebx	# sink, sink
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %rdx	#, ivtmp_992
	jne	.L147	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdx	# MEM[(const struct basic_string *)_216]._M_dataplus._M_p, _549
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%r12, 96(%rsp)	# tmp675, MEM[(struct _Alloc_hider *)_215]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	72(%rsp), %r8	# MEM[(const struct basic_string *)_216]._M_string_length, pretmp_931
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdx	# tmp674, _549
	je	.L228	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rdx, 96(%rsp)	# _549, MEM[(struct basic_string *)_215]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	80(%rsp), %rdx	# MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity
	movq	%rdx, 112(%rsp)	# MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity
.L149:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r13, %rax	# start, _510
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _511
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%r8, 104(%rsp)	# pretmp_931, MEM[(struct basic_string *)_215]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC16(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _510, _511
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbp, 64(%rsp)	# tmp674, MEM[(struct basic_string *)_216]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 136(%rsp)	# _511, MEM[(struct BenchResult *)_215].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC15(%rip), %xmm0	#, _511
	movq	%xmm0, %r14	# _511, _477
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 80(%rsp)	#, MEM[(char_type &)_216 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 72(%rsp)	#, MEM[(struct basic_string *)_216]._M_string_length
# bench.hpp:44: }
	movq	$1000000, 128(%rsp)	#, MEM[(struct BenchResult *)_215].iters
.LEHB14:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _478
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp748
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	96(%rsp), %rsi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp748,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_478 + -24B], MEM[(long int *)_478 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _481->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_478 + -24B], _484
	addq	%rcx, %rdx	# tmp748, _484
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _484->_M_flags, _556
	andb	$79, %al	#, _556
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp408
	movl	%eax, 24(%rdx)	# tmp408, MEM[(_Ios_Fmtflags &)_484 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	104(%rsp), %rdx	# MEM[(const struct basic_string *)_215]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC17(%rip), %rsi	#,
	movq	%rax, %rdi	# _488,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %r13	#, _488
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	0(%r13), %rax	# _488->_vptr.basic_ostream, _489
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%r14, %xmm0	# _477,
	movq	%r13, %rdi	# _488,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_489 + -24B], MEM[(long int *)_489 + -24B]
	movq	$10, 16(%r13,%rdx)	#, _492->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_489 + -24B], _495
	addq	%r13, %rdx	# _488, _495
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _495->_M_flags, _275
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _495->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _275
	orb	$-124, %al	#, tmp417
	movl	%eax, 24(%rdx)	# tmp417, MEM[(_Ios_Fmtflags &)_495 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rax, %rdi	# _496,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE14:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	96(%rsp), %rdi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p, _87
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp675, _87
	je	.L150	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	112(%rsp), %rax	# MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity, tmp753
	leaq	1(%rax), %rsi	#, _90
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L150:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdi	# MEM[(struct basic_string *)_216]._M_dataplus._M_p, _83
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp674, _83
	je	.L151	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	80(%rsp), %rax	# MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity, tmp754
	leaq	1(%rax), %rsi	#, _86
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L151:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/std_function.h:427: 	: _Function_base()
	pxor	%xmm0, %xmm0	# tmp685
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	leaq	_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E9_M_invokeERKSt9_Any_dataOi(%rip), %rax	#, tmp420
# /usr/include/c++/16.1.1/bits/basic_string.h:204: 	: allocator_type(__a), _M_p(__dat) { }
	movq	%rbp, 64(%rsp)	# tmp674, MEM[(struct _Alloc_hider *)_216]._M_p
# b1_dispatch.cpp:69:     int sink = 0;
	xorl	%ebx, %ebx	# sink
# /usr/include/c++/16.1.1/bits/std_function.h:427: 	: _Function_base()
	movaps	%xmm0, 32(%rsp)	# tmp685, MEM <char[16]> [(struct _Function_base *)&fn]
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	movq	%rax, %xmm1	# tmp420, tmp420
	movq	.LC29(%rip), %xmm0	#, _420
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movabsq	$7959380316721017971, %rax	#, tmp757
	movq	%rax, 80(%rsp)	# tmp757, MEM <char[1:13]> [(void *)_216 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$3, %r13d	#, ivtmp_1003
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movabsq	$7957695015192261990, %rax	#, tmp758
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	punpcklqdq	%xmm1, %xmm0	# tmp420, _420
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%rax, 85(%rsp)	# tmp758, MEM <char[1:13]> [(void *)_216 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	leaq	_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation(%rip), %rax	#, prephitmp_882
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 93(%rsp)	#, MEM[(char_type &)_216 + 29]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$13, 72(%rsp)	#, MEM[(struct basic_string *)_216]._M_string_length
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	movaps	%xmm0, 48(%rsp)	# _420, MEM <vector(2) long unsigned int> [(void *)&fn + 16B]
	jmp	.L155	#
	.p2align 4,,10
	.p2align 3
.L229:
# /usr/include/c++/16.1.1/bits/std_function.h:252:     bool _M_empty() const { return !_M_manager; }
	movq	48(%rsp), %rax	# MEM[(const struct _Function_base *)&fn]._M_manager, prephitmp_882
.L155:
	movl	%ebx, 24(%rsp)	# sink, MEM[(int *)_1132]
# /usr/include/c++/16.1.1/bits/std_function.h:579: 	if (_M_empty())
	testq	%rax, %rax	# prephitmp_882
	je	.L224	#,
# /usr/include/c++/16.1.1/bits/std_function.h:581: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	leaq	24(%rsp), %rsi	#, tmp759
	leaq	32(%rsp), %rdi	#, tmp760
.LEHB15:
	call	*56(%rsp)	# fn._M_invoker
	movl	%eax, %ebx	# sink, sink
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r13	#, ivtmp_1003
	jne	.L229	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$1000000, %r13d	#, ivtmp_1022
	movq	%rax, %r14	#, start
	.p2align 4
	.p2align 3
.L158:
	movl	%ebx, 24(%rsp)	# sink, MEM[(int *)_1132]
# /usr/include/c++/16.1.1/bits/std_function.h:579: 	if (_M_empty())
	cmpq	$0, 48(%rsp)	#, MEM[(const struct _Function_base *)&fn]._M_manager
	je	.L225	#,
# /usr/include/c++/16.1.1/bits/std_function.h:581: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	leaq	24(%rsp), %rsi	#, tmp761
	leaq	32(%rsp), %rdi	#, tmp762
	call	*56(%rsp)	# fn._M_invoker
.LEHE15:
	movl	%eax, %ebx	# sink, sink
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r13	#, ivtmp_1022
	jne	.L158	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdx	# MEM[(const struct basic_string *)_216]._M_dataplus._M_p, _628
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%r12, 96(%rsp)	# tmp675, MEM[(struct _Alloc_hider *)_215]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	72(%rsp), %r8	# MEM[(const struct basic_string *)_216]._M_string_length, pretmp_331
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdx	# tmp674, _628
	je	.L230	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rdx, 96(%rsp)	# _628, MEM[(struct basic_string *)_215]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	80(%rsp), %rdx	# MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity
	movq	%rdx, 112(%rsp)	# MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity
.L160:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r14, %rax	# start, _606
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _607
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%r8, 104(%rsp)	# pretmp_331, MEM[(struct basic_string *)_215]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC16(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _606, _607
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbp, 64(%rsp)	# tmp674, MEM[(struct basic_string *)_216]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 136(%rsp)	# _607, MEM[(struct BenchResult *)_215].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC15(%rip), %xmm0	#, _607
	movq	%xmm0, %r14	# _607, _637
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 80(%rsp)	#, MEM[(char_type &)_216 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 72(%rsp)	#, MEM[(struct basic_string *)_216]._M_string_length
# bench.hpp:44: }
	movq	$1000000, 128(%rsp)	#, MEM[(struct BenchResult *)_215].iters
.LEHB16:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _638
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp766
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	96(%rsp), %rsi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp766,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_638 + -24B], MEM[(long int *)_638 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _641->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_638 + -24B], _644
	addq	%rcx, %rdx	# tmp766, _644
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _644->_M_flags, _658
	andb	$79, %al	#, _658
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp471
	movl	%eax, 24(%rdx)	# tmp471, MEM[(_Ios_Fmtflags &)_644 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	104(%rsp), %rdx	# MEM[(const struct basic_string *)_215]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC17(%rip), %rsi	#,
	movq	%rax, %rdi	# _648,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %r13	#, _648
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	0(%r13), %rax	# _648->_vptr.basic_ostream, _649
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%r14, %xmm0	# _637,
	movq	%r13, %rdi	# _648,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_649 + -24B], MEM[(long int *)_649 + -24B]
	movq	$10, 16(%r13,%rdx)	#, _652->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_649 + -24B], _655
	addq	%r13, %rdx	# _648, _655
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _655->_M_flags, _1253
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _655->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _1253
	orb	$-124, %al	#, tmp480
	movl	%eax, 24(%rdx)	# tmp480, MEM[(_Ios_Fmtflags &)_655 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rax, %rdi	# _656,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE16:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	96(%rsp), %rdi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p, _96
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp675, _96
	je	.L161	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	112(%rsp), %rax	# MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity, tmp771
	leaq	1(%rax), %rsi	#, _99
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L161:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdi	# MEM[(struct basic_string *)_216]._M_dataplus._M_p, _92
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp674, _92
	je	.L162	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	80(%rsp), %rax	# MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity, tmp772
	leaq	1(%rax), %rsi	#, _95
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L162:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	48(%rsp), %rax	# MEM[(struct _Function_base *)&fn]._M_manager, _101
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	testq	%rax, %rax	# _101
	je	.L163	#,
# /usr/include/c++/16.1.1/bits/std_function.h:249: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	leaq	32(%rsp), %rsi	#, tmp773
	movl	$3, %edx	#,
	movq	%rsi, %rdi	# tmp773, tmp774
	call	*%rax	# _101
.L163:
# /usr/include/c++/16.1.1/bits/unique_ptr.h:1086:     { return unique_ptr<_Tp>(new _Tp(std::forward<_Args>(__args)...)); }
	movl	$8, %edi	#,
.LEHB17:
	call	_Znwm@PLT	#
.LEHE17:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$17, %edi	#,
# /usr/include/c++/16.1.1/bits/unique_ptr.h:1086:     { return unique_ptr<_Tp>(new _Tp(std::forward<_Args>(__args)...)); }
	movq	%rax, %r13	#, _100
# b1_dispatch.cpp:80:     struct Impl : Base {
	leaq	16+_ZTVZ4mainE4Impl(%rip), %rax	#, tmp775
	movq	%rax, 0(%r13)	# tmp775, MEM[(struct Impl *)_100].D.169319._vptr.Base
.LEHB18:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE18:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC25(%rip), %xmm0	#, tmp686
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 16(%rax)	#, MEM[(char_type &)_694 + 16]
# b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	xorl	%edi, %edi	#
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 64(%rsp)	# tmp708, MEM[(struct basic_string *)_216]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp686, MEM <char[1:16]> [(void *)_694]
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$16, 80(%rsp)	#, MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$16, 72(%rsp)	#, MEM[(struct basic_string *)_216]._M_string_length
# b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	call	_ZZ4mainEN4Impl3incEi.constprop.0	#
# b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	movl	%eax, %edi	# _936,
	call	_ZZ4mainEN4Impl3incEi.constprop.0	#
# b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	movl	%eax, %edi	# _939,
	call	_ZZ4mainEN4Impl3incEi.constprop.0	#
	movl	%eax, %ebx	# sink, sink
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$1000000, %edx	#, ivtmp_1051
	movq	%rax, %r14	#, start
	.p2align 4
	.p2align 3
.L164:
# b1_dispatch.cpp:85:     print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
	movl	%ebx, %edi	# sink,
	call	_ZZ4mainEN4Impl3incEi.constprop.0	#
	movl	%eax, %ebx	# sink, sink
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %rdx	#, ivtmp_1051
	jne	.L164	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdx	# MEM[(const struct basic_string *)_216]._M_dataplus._M_p, _745
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%r12, 96(%rsp)	# tmp675, MEM[(struct _Alloc_hider *)_215]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	72(%rsp), %r8	# MEM[(const struct basic_string *)_216]._M_string_length, pretmp_330
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdx	# tmp674, _745
	je	.L231	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rdx, 96(%rsp)	# _745, MEM[(struct basic_string *)_215]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	80(%rsp), %rdx	# MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity
	movq	%rdx, 112(%rsp)	# MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity
.L166:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r14, %rax	# start, _741
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _742
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%r8, 104(%rsp)	# pretmp_330, MEM[(struct basic_string *)_215]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC16(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _741, _742
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbp, 64(%rsp)	# tmp674, MEM[(struct basic_string *)_216]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 136(%rsp)	# _742, MEM[(struct BenchResult *)_215].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC15(%rip), %xmm0	#, _742
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 80(%rsp)	#, MEM[(char_type &)_216 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 72(%rsp)	#, MEM[(struct basic_string *)_216]._M_string_length
# bench.hpp:44: }
	movq	$1000000, 128(%rsp)	#, MEM[(struct BenchResult *)_215].iters
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movsd	%xmm0, 8(%rsp)	# _742, %sfp
.LEHB19:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _705
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp779
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	96(%rsp), %rsi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp779,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_705 + -24B], MEM[(long int *)_705 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _708->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_705 + -24B], _711
	addq	%rcx, %rdx	# tmp779, _711
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _711->_M_flags, _752
	andb	$79, %al	#, _752
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp522
	movl	%eax, 24(%rdx)	# tmp522, MEM[(_Ios_Fmtflags &)_711 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	104(%rsp), %rdx	# MEM[(const struct basic_string *)_215]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC17(%rip), %rsi	#,
	movq	%rax, %rdi	# _715,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %r14	#, _715
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%r14), %rax	# _715->_vptr.basic_ostream, _716
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movsd	8(%rsp), %xmm0	# %sfp,
	movq	%r14, %rdi	# _715,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_716 + -24B], MEM[(long int *)_716 + -24B]
	movq	$10, 16(%r14,%rdx)	#, _719->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_716 + -24B], _722
	addq	%r14, %rdx	# _715, _722
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _722->_M_flags, _314
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _722->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _314
	orb	$-124, %al	#, tmp531
	movl	%eax, 24(%rdx)	# tmp531, MEM[(_Ios_Fmtflags &)_722 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rax, %rdi	# _723,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE19:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	96(%rsp), %rdi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p, _107
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp675, _107
	je	.L167	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	112(%rsp), %rax	# MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity, tmp784
	leaq	1(%rax), %rsi	#, _110
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L167:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdi	# MEM[(struct basic_string *)_216]._M_dataplus._M_p, _103
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp674, _103
	je	.L168	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	80(%rsp), %rax	# MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity, tmp785
	leaq	1(%rax), %rsi	#, _106
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L168:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# b1_dispatch.cpp:80:     struct Impl : Base {
	movl	$8, %esi	#,
	movq	%r13, %rdi	# _100,
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$3, %ebx	#, ivtmp_1069
# b1_dispatch.cpp:80:     struct Impl : Base {
	call	_ZdlPvm@PLT	#
# b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	leaq	20(%rsp), %rax	#, tmp541
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$36, %edi	#,
# b1_dispatch.cpp:91:     int sink = 0;
	movl	$0, 20(%rsp)	#, sink
# b1_dispatch.cpp:93:                        [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
	movq	%rax, 24(%rsp)	# tmp541, MEM[(struct ._anon_208 *)_1132].__sink
.LEHB20:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE20:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC26(%rip), %xmm0	#, tmp687
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$35, 80(%rsp)	#, MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 64(%rsp)	# tmp717, MEM[(struct basic_string *)_216]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp687, MEM <char[1:35]> [(void *)_798]
	movdqa	.LC27(%rip), %xmm0	#, tmp688
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 35(%rax)	#, MEM[(char_type &)_798 + 35]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, 16(%rax)	# tmp688, MEM <char[1:35]> [(void *)_798]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$35, 72(%rsp)	#, MEM[(struct basic_string *)_216]._M_string_length
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	$694513257, 31(%rax)	#, MEM <char[1:35]> [(void *)_798]
	.p2align 4
	.p2align 3
.L169:
# bench.hpp:35:     fn();
	leaq	24(%rsp), %rdi	#, tmp786
.LEHB21:
	call	_ZZ4mainENKUlvE2_clEv	#
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %rbx	#, ivtmp_1069
	jne	.L169	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$1000000, %ebx	#, ivtmp_1106
	movq	%rax, %r13	#, start
	.p2align 4
	.p2align 3
.L170:
# bench.hpp:39:     fn();
	leaq	24(%rsp), %rdi	#, tmp787
	call	_ZZ4mainENKUlvE2_clEv	#
.LEHE21:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %rbx	#, ivtmp_1106
	jne	.L170	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdx	# MEM[(const struct basic_string *)_216]._M_dataplus._M_p, _806
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%r12, 96(%rsp)	# tmp675, MEM[(struct _Alloc_hider *)_215]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	72(%rsp), %r8	# MEM[(const struct basic_string *)_216]._M_string_length, pretmp_329
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdx	# tmp674, _806
	je	.L232	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rdx, 96(%rsp)	# _806, MEM[(struct basic_string *)_215]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	80(%rsp), %rdx	# MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity
	movq	%rdx, 112(%rsp)	# MEM[(struct basic_string &)_216].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity
.L172:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r13, %rax	# start, _775
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _776
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%r8, 104(%rsp)	# pretmp_329, MEM[(struct basic_string *)_215]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC16(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _775, _776
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbp, 64(%rsp)	# tmp674, MEM[(struct basic_string *)_216]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 136(%rsp)	# _776, MEM[(struct BenchResult *)_215].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC15(%rip), %xmm0	#, _776
	movq	%xmm0, %r13	# _776, _815
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 80(%rsp)	#, MEM[(char_type &)_216 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 72(%rsp)	#, MEM[(struct basic_string *)_216]._M_string_length
# bench.hpp:44: }
	movq	$1000000, 128(%rsp)	#, MEM[(struct BenchResult *)_215].iters
.LEHB22:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _816
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp791
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	96(%rsp), %rsi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp791,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_816 + -24B], MEM[(long int *)_816 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _819->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_816 + -24B], _822
	addq	%rcx, %rdx	# tmp791, _822
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _822->_M_flags, _836
	andb	$79, %al	#, _836
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp572
	movl	%eax, 24(%rdx)	# tmp572, MEM[(_Ios_Fmtflags &)_822 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	104(%rsp), %rdx	# MEM[(const struct basic_string *)_215]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC17(%rip), %rsi	#,
	movq	%rax, %rdi	# _826,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbx	#, _826
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# _826->_vptr.basic_ostream, _827
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%r13, %xmm0	# _815,
	movq	%rbx, %rdi	# _826,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_827 + -24B], MEM[(long int *)_827 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _830->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_827 + -24B], _833
	addq	%rbx, %rdx	# _826, _833
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _833->_M_flags, _1250
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _833->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _1250
	orb	$-124, %al	#, tmp581
	movl	%eax, 24(%rdx)	# tmp581, MEM[(_Ios_Fmtflags &)_833 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rax, %rdi	# _834,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE22:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	96(%rsp), %rdi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p, _117
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp675, _117
	je	.L173	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	112(%rsp), %rax	# MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity, tmp796
	leaq	1(%rax), %rsi	#, _120
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L173:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdi	# MEM[(struct basic_string *)_216]._M_dataplus._M_p, _113
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp674, _113
	je	.L174	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	80(%rsp), %rax	# MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity, tmp797
	leaq	1(%rax), %rsi	#, _116
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L174:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$69, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB23:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$67, %edx	#,
	leaq	.LC20(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE23:
# b1_dispatch.cpp:101: }
	movq	152(%rsp), %rax	# D.230805, tmp733
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp733
	jne	.L233	#,
	addq	$160, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
.L228:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	leal	1(%r8), %ecx	#, _553
	movq	%r12, %rdi	# tmp675, tmp391
	movq	%rbp, %rsi	# tmp674, tmp392
	rep movsb	# MEM <char[1:(sizetype) _553]> [(void *)_216 + 16B]
	jmp	.L149	#
.L230:
	leal	1(%r8), %ecx	#, _632
	movq	%r12, %rdi	# tmp675, tmp454
	movq	%rbp, %rsi	# tmp674, tmp455
	rep movsb	# MEM <char[1:(sizetype) _632]> [(void *)_216 + 16B]
	jmp	.L160	#
.L231:
	leal	1(%r8), %ecx	#, _749
	movq	%r12, %rdi	# tmp675, tmp505
	movq	%rbp, %rsi	# tmp674, tmp506
	rep movsb	# MEM <char[1:(sizetype) _749]> [(void *)_216 + 16B]
	jmp	.L166	#
.L232:
	leal	1(%r8), %ecx	#, _810
	movq	%r12, %rdi	# tmp675, tmp555
	movq	%rbp, %rsi	# tmp674, tmp556
	rep movsb	# MEM <char[1:(sizetype) _810]> [(void *)_216 + 16B]
	jmp	.L172	#
.L233:
# b1_dispatch.cpp:101: }
	call	__stack_chk_fail@PLT	#
.L210:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	# tmp723, tmp596
	jmp	.L178	#
.L207:
# b1_dispatch.cpp:80:     struct Impl : Base {
	movq	%rax, %rbx	# tmp728, tmp653
	jmp	.L194	#
.L205:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	#, tmp725
	jmp	.L185	#
.L202:
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%rax, %rbx	#, tmp722
	jmp	.L175	#
.L209:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	#, tmp729
	jmp	.L196	#
.L208:
	movq	%rax, %rbx	# tmp730, tmp660
	jmp	.L198	#
.L206:
	movq	%rax, %rbx	#, tmp727
	jmp	.L191	#
.L222:
	jmp	.L223	#
.L203:
	movq	%rax, %rbx	#, tmp724
	jmp	.L181	#
	.section	.gcc_except_table
.LLSDA7380:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7380-.LLSDACSB7380
.LLSDACSB7380:
	.uleb128 .LEHB10-.LFB7380
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB7380
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L210-.LFB7380
	.uleb128 0
	.uleb128 .LEHB12-.LFB7380
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L202-.LFB7380
	.uleb128 0
	.uleb128 .LEHB13-.LFB7380
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB7380
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L203-.LFB7380
	.uleb128 0
	.uleb128 .LEHB15-.LFB7380
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L222-.LFB7380
	.uleb128 0
	.uleb128 .LEHB16-.LFB7380
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L205-.LFB7380
	.uleb128 0
	.uleb128 .LEHB17-.LFB7380
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB7380
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L207-.LFB7380
	.uleb128 0
	.uleb128 .LEHB19-.LFB7380
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L206-.LFB7380
	.uleb128 0
	.uleb128 .LEHB20-.LFB7380
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB7380
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L208-.LFB7380
	.uleb128 0
	.uleb128 .LEHB22-.LFB7380
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L209-.LFB7380
	.uleb128 0
	.uleb128 .LEHB23-.LFB7380
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE7380:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7380
	.type	main.cold, @function
main.cold:
.LFSB7380:
.L178:
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	96(%rsp), %rdi	# MEM[(struct basic_string *)_215]._M_dataplus._M_p, _126
.L177:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	112(%rsp), %rax	# MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity, tmp798
	leaq	1(%rax), %rsi	#, _129
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L176:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdi	# MEM[(struct basic_string *)_216]._M_dataplus._M_p, _130
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp674, _130
	je	.L179	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	80(%rsp), %rax	# MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity, tmp799
	leaq	1(%rax), %rsi	#, _133
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L179:
	movq	152(%rsp), %rax	# D.230805, tmp734
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp734
	jne	.L234	#,
	movq	%rbx, %rdi	# tmp596,
.LEHB24:
	call	_Unwind_Resume@PLT	#
.L191:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	96(%rsp), %rdi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p, _152
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp675, _152
	je	.L192	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	112(%rsp), %rax	# MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity, tmp806
	leaq	1(%rax), %rsi	#, _156
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L192:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdi	# MEM[(struct basic_string *)_216]._M_dataplus._M_p, _157
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp674, _157
	je	.L194	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	80(%rsp), %rax	# MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity, tmp807
	leaq	1(%rax), %rsi	#, _161
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L194:
# b1_dispatch.cpp:80:     struct Impl : Base {
	movl	$8, %esi	#,
	movq	%r13, %rdi	# _100,
	call	_ZdlPvm@PLT	#
	movq	152(%rsp), %rax	# D.230805, tmp737
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp737
	jne	.L235	#,
	movq	%rbx, %rdi	# tmp653,
	call	_Unwind_Resume@PLT	#
.LEHE24:
.L185:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	96(%rsp), %rdi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p, _142
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp675, _142
	je	.L187	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	112(%rsp), %rax	# MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity, tmp802
	leaq	1(%rax), %rsi	#, _146
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L187:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdi	# MEM[(struct basic_string *)_216]._M_dataplus._M_p, _147
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp674, _147
	je	.L188	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	80(%rsp), %rax	# MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity, tmp803
	leaq	1(%rax), %rsi	#, _150
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L188:
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	48(%rsp), %rax	# MEM[(struct _Function_base *)&fn]._M_manager, _151
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	testq	%rax, %rax	# _151
	je	.L189	#,
# /usr/include/c++/16.1.1/bits/std_function.h:249: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	leaq	32(%rsp), %rsi	#, tmp804
	movl	$3, %edx	#,
	movq	%rsi, %rdi	# tmp804, tmp805
	call	*%rax	# _151
.L189:
	movq	152(%rsp), %rax	# D.230805, tmp736
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp736
	jne	.L236	#,
	movq	%rbx, %rdi	# tmp628,
.LEHB25:
	call	_Unwind_Resume@PLT	#
.L235:
	call	__stack_chk_fail@PLT	#
.L234:
	call	__stack_chk_fail@PLT	#
.L236:
	call	__stack_chk_fail@PLT	#
.L175:
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r13, %rdi	# _460,
	movl	$101, %esi	#,
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	96(%rsp), %rdi	# MEM[(struct basic_string *)_215]._M_dataplus._M_p, _126
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp675, _126
	je	.L176	#,
	jmp	.L177	#
.L196:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	96(%rsp), %rdi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p, _163
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp675, _163
	je	.L198	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	112(%rsp), %rax	# MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity, tmp808
	leaq	1(%rax), %rsi	#, _166
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L198:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdi	# MEM[(struct basic_string *)_216]._M_dataplus._M_p, _167
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp674, _167
	je	.L199	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	80(%rsp), %rax	# MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity, tmp809
	leaq	1(%rax), %rsi	#, _171
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L199:
	movq	152(%rsp), %rax	# D.230805, tmp738
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp738
	jne	.L237	#,
	movq	%rbx, %rdi	# tmp660,
	call	_Unwind_Resume@PLT	#
.LEHE25:
.L237:
	call	__stack_chk_fail@PLT	#
.L225:
# /usr/include/c++/16.1.1/bits/std_function.h:580: 	  __throw_bad_function_call();
	movq	152(%rsp), %rax	# D.230805, tmp732
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp732
	jne	.L238	#,
.LEHB26:
	call	_ZSt25__throw_bad_function_callv@PLT	#
.L238:
	call	__stack_chk_fail@PLT	#
.L224:
	movq	152(%rsp), %rax	# D.230805, tmp731
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp731
	jne	.L239	#,
	call	_ZSt25__throw_bad_function_callv@PLT	#
.LEHE26:
.L239:
	call	__stack_chk_fail@PLT	#
.L204:
.L223:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	# tmp726, tmp628
	jmp	.L187	#
.L181:
	movq	96(%rsp), %rdi	# MEM[(const struct basic_string *)_215]._M_dataplus._M_p, _134
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp675, _134
	jne	.L240	#,
.L182:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	64(%rsp), %rdi	# MEM[(struct basic_string *)_216]._M_dataplus._M_p, _138
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp674, _138
	je	.L183	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	80(%rsp), %rax	# MEM[(struct basic_string *)_216].D.58684._M_allocated_capacity, tmp801
	leaq	1(%rax), %rsi	#, _141
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L183:
	movq	152(%rsp), %rax	# D.230805, tmp735
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp735
	jne	.L241	#,
	movq	%rbx, %rdi	# tmp724,
.LEHB27:
	call	_Unwind_Resume@PLT	#
.LEHE27:
.L240:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	112(%rsp), %rax	# MEM[(struct basic_string *)_215].D.58684._M_allocated_capacity, tmp800
	leaq	1(%rax), %rsi	#, _137
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L182	#
.L241:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE7380:
	.section	.gcc_except_table
.LLSDAC7380:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7380-.LLSDACSBC7380
.LLSDACSBC7380:
	.uleb128 .LEHB24-.LCOLDB30
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LCOLDB30
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LCOLDB30
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L204-.LCOLDB30
	.uleb128 0
	.uleb128 .LEHB27-.LCOLDB30
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSEC7380:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE30:
	.section	.text.startup
.LHOTE30:
	.weak	_ZTSSt12bad_any_cast
	.section	.rodata._ZTSSt12bad_any_cast,"aG",@progbits,_ZTSSt12bad_any_cast,comdat
	.align 16
	.type	_ZTSSt12bad_any_cast, @object
	.size	_ZTSSt12bad_any_cast, 17
_ZTSSt12bad_any_cast:
	.string	"St12bad_any_cast"
	.weak	_ZTISt12bad_any_cast
	.section	.data.rel.ro._ZTISt12bad_any_cast,"awG",@progbits,_ZTISt12bad_any_cast,comdat
	.align 8
	.type	_ZTISt12bad_any_cast, @object
	.size	_ZTISt12bad_any_cast, 24
_ZTISt12bad_any_cast:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTSSt12bad_any_cast
# <anonymous>:
	.quad	_ZTISt8bad_cast
	.section	.data.rel.ro,"aw"
	.align 8
	.type	_ZTIZ4mainE4Base, @object
	.size	_ZTIZ4mainE4Base, 16
_ZTIZ4mainE4Base:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
# <anonymous>:
	.quad	_ZTSZ4mainE4Base
	.section	.rodata
	.align 8
	.type	_ZTSZ4mainE4Base, @object
	.size	_ZTSZ4mainE4Base, 14
_ZTSZ4mainE4Base:
	.string	"*Z4mainE4Base"
	.section	.data.rel.ro
	.align 8
	.type	_ZTIZ4mainE4Impl, @object
	.size	_ZTIZ4mainE4Impl, 24
_ZTIZ4mainE4Impl:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTSZ4mainE4Impl
# <anonymous>:
	.quad	_ZTIZ4mainE4Base
	.section	.rodata
	.align 8
	.type	_ZTSZ4mainE4Impl, @object
	.size	_ZTSZ4mainE4Impl, 14
_ZTSZ4mainE4Impl:
	.string	"*Z4mainE4Impl"
	.section	.data.rel.ro
	.align 8
	.type	_ZTIZ4mainEUliE_, @object
	.size	_ZTIZ4mainEUliE_, 16
_ZTIZ4mainEUliE_:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
# <anonymous>:
	.quad	_ZTSZ4mainEUliE_
	.section	.rodata
	.align 8
	.type	_ZTSZ4mainEUliE_, @object
	.size	_ZTSZ4mainEUliE_, 14
_ZTSZ4mainEUliE_:
	.string	"*Z4mainEUliE_"
	.weak	_ZTVSt12bad_any_cast
	.section	.data.rel.ro.local._ZTVSt12bad_any_cast,"awG",@progbits,_ZTVSt12bad_any_cast,comdat
	.align 8
	.type	_ZTVSt12bad_any_cast, @object
	.size	_ZTVSt12bad_any_cast, 40
_ZTVSt12bad_any_cast:
	.quad	0
	.quad	_ZTISt12bad_any_cast
	.quad	_ZNSt12bad_any_castD1Ev
	.quad	_ZNSt12bad_any_castD0Ev
	.quad	_ZNKSt12bad_any_cast4whatEv
	.section	.data.rel.ro.local,"aw"
	.align 8
	.type	_ZTVZ4mainE4Impl, @object
	.size	_ZTVZ4mainE4Impl, 40
_ZTVZ4mainE4Impl:
	.quad	0
	.quad	_ZTIZ4mainE4Impl
	.quad	_ZZ4mainEN4Impl3incEi
	.quad	_ZZ4mainEN4ImplD1Ev
	.quad	_ZZ4mainEN4ImplD0Ev
	.weak	_ZN2fx6detail12effect_tag_vI9IncrementEE
	.section	.rodata._ZN2fx6detail12effect_tag_vI9IncrementEE,"aG",@progbits,_ZN2fx6detail12effect_tag_vI9IncrementEE,comdat
	.type	_ZN2fx6detail12effect_tag_vI9IncrementEE, @gnu_unique_object
	.size	_ZN2fx6detail12effect_tag_vI9IncrementEE, 1
_ZN2fx6detail12effect_tag_vI9IncrementEE:
	.zero	1
	.weak	_ZN2fx6detail10current_mrE
	.section	.tbss._ZN2fx6detail10current_mrE,"awTG",@nobits,_ZN2fx6detail10current_mrE,comdat
	.align 8
	.type	_ZN2fx6detail10current_mrE, @gnu_unique_object
	.size	_ZN2fx6detail10current_mrE, 8
_ZN2fx6detail10current_mrE:
	.zero	8
	.weak	_ZN2fx6detail9stack_topE
	.section	.tbss._ZN2fx6detail9stack_topE,"awTG",@nobits,_ZN2fx6detail9stack_topE,comdat
	.align 8
	.type	_ZN2fx6detail9stack_topE, @gnu_unique_object
	.size	_ZN2fx6detail9stack_topE, 8
_ZN2fx6detail9stack_topE:
	.zero	8
	.section	.data.rel.ro.local
	.align 8
.LC5:
	.quad	_ZN2fx6detail12effect_tag_vI9IncrementEE
	.align 8
.LC6:
	.quad	_Z6fx_incP17_ZL6fx_inci.Frame.actor
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC15:
	.long	0
	.long	1093567616
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC21:
	.quad	3274791411303199074
	.quad	7598805550980558441
	.align 16
.LC22:
	.quad	7021238715559210607
	.quad	8243124912628720500
	.align 16
.LC23:
	.quad	7018130434864607008
	.quad	2323048502845775972
	.align 16
.LC24:
	.quad	7935470513679395172
	.quad	8463515397015826031
	.align 16
.LC25:
	.quad	2336349463791167862
	.quad	7521983764486121828
	.align 16
.LC26:
	.quad	7382074271901317222
	.quad	8079511779915166319
	.align 16
.LC27:
	.quad	3395834457300038245
	.quad	7598827592802591520
	.section	.data.rel.ro.local
	.align 8
.LC29:
	.quad	_ZNSt17_Function_handlerIFiiEZ4mainEUliE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
	.ident	"GCC: (GNU) 16.1.1 20260430"
	.section	.note.GNU-stack,"",@progbits
