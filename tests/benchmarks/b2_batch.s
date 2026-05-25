	.file	"b2_batch.cpp"
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
	.type	_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E9_M_invokeERKSt9_Any_data:
.LFB7831:
	.cfi_startproc
# b2_batch.cpp:75:     std::function<int()> fn = [&] { return ++counter; };
	movq	(%rdi), %rdx	# MEM[(const struct ._anon_197 *)__functor_2(D)].__counter, _3
# b2_batch.cpp:75:     std::function<int()> fn = [&] { return ++counter; };
	movl	(%rdx), %eax	# *_3, tmp106
	addl	$1, %eax	#, <retval>
# b2_batch.cpp:75:     std::function<int()> fn = [&] { return ++counter; };
	movl	%eax, (%rdx)	# <retval>, *_3
# /usr/include/c++/16.1.1/bits/std_function.h:297:       }
	ret	
	.cfi_endproc
.LFE7831:
	.size	_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E9_M_invokeERKSt9_Any_data
	.section	.text._ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,"axG",@progbits,_ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,comdat
	.p2align 4
	.weak	_ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.type	_ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, @function
_ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
.LFB7844:
	.cfi_startproc
# b2_batch.cpp:40:   void handle(Tick, auto r) { r(++counter); }
	movq	16(%rdi), %rax	# MEM[(struct HandlerNode *)_2(D)].real_handler_ptr, MEM[(struct HandlerNode *)_2(D)].real_handler_ptr
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	8(%rsi), %rdi	# MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr, _8
# b2_batch.cpp:40:   void handle(Tick, auto r) { r(++counter); }
	movq	(%rax), %rdx	# hh_4->counter, _5
# b2_batch.cpp:40:   void handle(Tick, auto r) { r(++counter); }
	movl	(%rdx), %eax	# *_5, tmp112
	addl	$1, %eax	#, _7
	movl	%eax, (%rdx)	# _7, *_5
# ../../effects.hpp:1140:   pa->result_ = std::move(v);
	movl	%eax, 4(%rsi)	# _7, MEM[(struct PerformAwaitable *)_3(D)].result_
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	jmp	*(%rdi)	# MEM[(void (*<T123>) (void *) *)_8]
	.cfi_endproc
.LFE7844:
	.size	_ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, .-_ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.section	.text._ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
	.type	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, @function
_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE:
.LFB8360:
	.cfi_startproc
# /usr/include/c++/16.1.1/any:588:     any::_Manager_internal<_Tp>::
	movq	%rdx, %rcx	# __arg, __arg
# /usr/include/c++/16.1.1/any:593:       switch (__which)
	cmpl	$4, %edi	#, __which
	ja	.L6	#,
	leaq	.L9(%rip), %rdx	#, tmp109
	movl	%edi, %edi	# __which, __which
	movslq	(%rdx,%rdi,4), %rax	#, tmp111
	addq	%rdx, %rax	# tmp109, tmp112
	jmp	*%rax	# tmp112
	.section	.rodata._ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"aG",@progbits,_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 4
	.align 4
.L9:
	.long	.L13-.L9
	.long	.L12-.L9
	.long	.L11-.L9
	.long	.L6-.L9
	.long	.L8-.L9
	.section	.text._ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.p2align 4,,10
	.p2align 3
.L8:
# /usr/include/c++/16.1.1/any:611: 	::new(&__arg->_M_any->_M_storage._M_buffer) _Tp
	movq	(%rcx), %rax	# __arg_12(D)->_M_any, _4
# /usr/include/c++/16.1.1/any:611: 	::new(&__arg->_M_any->_M_storage._M_buffer) _Tp
	movq	8(%rsi), %rdx	# MEM[(type &)__any_8(D) + 8], _5
	movq	%rdx, 8(%rax)	# _5, MEM[(long long int *)_4 + 8B]
# /usr/include/c++/16.1.1/any:614: 	__arg->_M_any->_M_manager = __any->_M_manager;
	movq	(%rsi), %rdx	# __any_8(D)->_M_manager, _6
# /usr/include/c++/16.1.1/any:614: 	__arg->_M_any->_M_manager = __any->_M_manager;
	movq	%rdx, (%rax)	# _6, _4->_M_manager
# /usr/include/c++/16.1.1/any:615: 	const_cast<any*>(__any)->_M_manager = nullptr;
	movq	$0, (%rsi)	#, MEM[(struct any *)__any_8(D)]._M_manager
.L6:
# /usr/include/c++/16.1.1/any:618:     }
	ret	
	.p2align 4,,10
	.p2align 3
.L11:
# /usr/include/c++/16.1.1/any:604: 	::new(&__arg->_M_any->_M_storage._M_buffer) _Tp(*__ptr);
	movq	8(%rsi), %rdx	# MEM[(const long long int *)__any_8(D) + 8B], _2
# /usr/include/c++/16.1.1/any:604: 	::new(&__arg->_M_any->_M_storage._M_buffer) _Tp(*__ptr);
	movq	(%rcx), %rax	# __arg_12(D)->_M_any, _1
# /usr/include/c++/16.1.1/any:604: 	::new(&__arg->_M_any->_M_storage._M_buffer) _Tp(*__ptr);
	movq	%rdx, 8(%rax)	# _2, MEM[(long long int *)_1 + 8B]
# /usr/include/c++/16.1.1/any:605: 	__arg->_M_any->_M_manager = __any->_M_manager;
	movq	(%rsi), %rdx	# __any_8(D)->_M_manager, _3
# /usr/include/c++/16.1.1/any:605: 	__arg->_M_any->_M_manager = __any->_M_manager;
	movq	%rdx, (%rax)	# _3, _1->_M_manager
# /usr/include/c++/16.1.1/any:606: 	break;
	ret	
	.p2align 4,,10
	.p2align 3
.L13:
# /usr/include/c++/16.1.1/any:592:       auto __ptr = reinterpret_cast<const _Tp*>(&__any->_M_storage._M_buffer);
	addq	$8, %rsi	#, tmp114
	movq	%rsi, (%rcx)	# tmp114, __arg_12(D)->_M_obj
# /usr/include/c++/16.1.1/any:597: 	break;
	ret	
	.p2align 4,,10
	.p2align 3
.L12:
# /usr/include/c++/16.1.1/any:600: 	__arg->_M_typeinfo = &typeid(_Tp);
	leaq	_ZTIx(%rip), %rax	#, tmp120
	movq	%rax, (%rcx)	# tmp120, __arg_12(D)->_M_typeinfo
# /usr/include/c++/16.1.1/any:602: 	break;
	ret	
	.cfi_endproc
.LFE8360:
	.size	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, .-_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
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
	jb	.L15	#,
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
	jb	.L15	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rsi, %rdx	# __intptr, _6
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rax, 8(%r8)	# <retval>, MEM[(void * &)this_15(D) + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rax, %rdx	# __aligned, prephitmp_1
	movq	%rdx, 16(%r8)	# prephitmp_1, MEM[(size_t &)this_15(D) + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rax, %rax	# <retval>
	je	.L15	#,
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
.L15:
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
	.p2align 4
	.type	_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, @function
_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation:
.LFB7835:
	.cfi_startproc
# /usr/include/c++/16.1.1/bits/std_function.h:275: 	switch (__op)
	testl	%edx, %edx	# __op
	je	.L24	#,
	cmpl	$1, %edx	#, __op
	jne	.L29	#,
# /usr/include/c++/16.1.1/bits/std_function.h:283: 	    __dest._M_access<_Functor*>() = _Base::_M_get_pointer(__source);
	movq	%rsi, (%rdi)	# __source, MEM[(struct ._anon_197 * &)__dest_4(D)]
.L27:
# /usr/include/c++/16.1.1/bits/std_function.h:290:       }
	xorl	%eax, %eax	#
	ret	
	.p2align 4,,10
	.p2align 3
.L29:
# /usr/include/c++/16.1.1/bits/std_function.h:188: 	  switch (__op)
	cmpl	$2, %edx	#, __op
	jne	.L27	#,
# /usr/include/c++/16.1.1/bits/std_function.h:157: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	movq	(%rsi), %rax	# MEM[(const struct ._anon_197 &)__source_3(D)], MEM[(const struct ._anon_197 &)__source_3(D)]
	movq	%rax, (%rdi)	# MEM[(const struct ._anon_197 &)__source_3(D)],* __dest
# /usr/include/c++/16.1.1/bits/std_function.h:205: 	      break;
	jmp	.L27	#
	.p2align 4,,10
	.p2align 3
.L24:
# /usr/include/c++/16.1.1/bits/std_function.h:279: 	    __dest._M_access<const type_info*>() = &typeid(_Functor);
	leaq	_ZTIZ4mainEUlvE0_(%rip), %rax	#, tmp110
	movq	%rax, (%rdi)	# tmp110,* __dest
# /usr/include/c++/16.1.1/bits/std_function.h:290:       }
	xorl	%eax, %eax	#
	ret	
	.cfi_endproc
.LFE7835:
	.size	_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, .-_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB9577:
	.cfi_startproc
	movq	%rdi, %r8	# this, this
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	(%rdi), %rdi	# MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:969:       operator=(basic_string&& __str)
	movq	%rsi, %rcx	# __str, __str
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	(%rsi), %rax	# MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p, _22
# /usr/include/c++/16.1.1/bits/basic_string.h:256: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	16(%r8), %r9	#, _3
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	8(%rcx), %rdx	# MEM[(const struct basic_string *)__str_5(D)]._M_string_length, __sz
# /usr/include/c++/16.1.1/bits/basic_string.h:256: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	addq	$16, %rsi	#, _54
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r9, %rdi	# _3, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
	je	.L52	#,
	cmpq	%rsi, %rax	# _54, _22
	je	.L32	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, (%r8)	# _22, this_1(D)->_M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:1008: 		    __capacity = _M_allocated_capacity;
	movq	16(%r8), %r9	# this_1(D)->D.58684._M_allocated_capacity, __capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 8(%r8)	# __sz, this_1(D)->_M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:1016: 	    _M_capacity(__str._M_allocated_capacity);
	movq	16(%rcx), %rax	# __str_5(D)->D.58684._M_allocated_capacity, _19
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	%rax, 16(%r8)	# _19, this_1(D)->D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:1017: 	    if (__data)
	testq	%rdi, %rdi	# MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
	je	.L39	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rdi, (%rcx)	# MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, __str_5(D)->_M_dataplus._M_p
	movq	%rdi, %rax	# MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, _22
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	%r9, 16(%rcx)	# __capacity, __str_5(D)->D.58684._M_allocated_capacity
.L48:
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, (%rax)	#, MEM[(char_type &)_22]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	xorl	%eax, %eax	#
	movq	%rax, 8(%rcx)	#, __str_5(D)->_M_string_length
	ret	
.L52:
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rsi, %rax	# _54, _22
	je	.L32	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, (%r8)	# _22, this_1(D)->_M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 8(%r8)	# __sz, this_1(D)->_M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:1016: 	    _M_capacity(__str._M_allocated_capacity);
	movq	16(%rcx), %rax	# __str_5(D)->D.58684._M_allocated_capacity, _43
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	%rax, 16(%r8)	# _43, this_1(D)->D.58684._M_allocated_capacity
.L39:
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rsi, (%rcx)	# _54, __str_5(D)->_M_dataplus._M_p
	movq	%rsi, %rax	# _54, _22
	jmp	.L48	#
.L32:
# /usr/include/c++/16.1.1/bits/basic_string.h:990: 	    if (__builtin_expect(std::__addressof(__str) != this, true))
	cmpq	%rcx, %r8	# __str, this
	je	.L48	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:992: 		if (__str.size())
	testq	%rdx, %rdx	# __sz
	jne	.L53	#,
.L49:
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, (%rdi,%rdx)	#, MEM[(char_type &)_15]
	movq	(%rcx), %rax	# MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p, _22
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 8(%r8)	# __sz, this_1(D)->_M_string_length
	jmp	.L48	#
.L53:
# /usr/include/c++/16.1.1/bits/basic_string.h:454: 	if (__n == 1)
	cmpq	$1, %rdx	#, __sz
	je	.L54	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:969:       operator=(basic_string&& __str)
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rcx, 8(%rsp)	# __str, %sfp
	movq	%r8, (%rsp)	# this, %sfp
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	call	memcpy@PLT	#
	movq	8(%rsp), %rcx	# %sfp, __str
	movq	(%rsp), %r8	# %sfp, this
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	8(%rcx), %rdx	# MEM[(const struct basic_string *)__str_5(D)]._M_string_length, __sz
	movq	(%r8), %rdi	# MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, (%rdi,%rdx)	#, MEM[(char_type &)_15]
	movq	(%rcx), %rax	# MEM[(const struct basic_string *)__str_5(D)]._M_dataplus._M_p, _22
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 8(%r8)	# __sz, this_1(D)->_M_string_length
	xorl	%edx, %edx	#
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, (%rax)	#, MEM[(char_type &)_22]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 8(%rcx)	#, __str_5(D)->_M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:1029:       }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
.L54:
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movzbl	16(%rcx), %eax	# MEM[(const char_type &)__str_5(D) + 16], _12
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	%al, (%rdi)	# _12, MEM[(char_type &)_2]
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	8(%rcx), %rdx	# MEM[(const struct basic_string *)__str_5(D)]._M_string_length, __sz
	movq	(%r8), %rdi	# MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
	jmp	.L49	#
	.cfi_endproc
.LFE9577:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4
	.type	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor, @function
_Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor:
.LFB6982:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6982
# b2_batch.cpp:36: }
	movzwl	100(%rdi), %eax	# frame_ptr_24(D)->_Coro_resume_index, _1
	testb	$1, %al	#, _1
	je	.L56	#,
# b2_batch.cpp:36: }
	cmpw	$7, %ax	#, _1
	ja	.L82	#,
.L58:
.L66:
.L67:
.L68:
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	subw	$1, 102(%rdi)	#, frame_ptr_24(D)->_Coro_frame_refcount
# b2_batch.cpp:36: }
	je	.L83	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L56:
# b2_batch.cpp:36: }
	cmpw	$4, %ax	#, _1
	je	.L59	#,
	ja	.L60	#,
	testw	%ax, %ax	# _1
	je	.L61	#,
.L62:
# b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	xorl	%edx, %edx	# _14
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	movb	$1, 105(%rdi)	#, frame_ptr_24(D)->_Coro_initial_await_resume_called
# b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	xorl	%eax, %eax	# _12
# b2_batch.cpp:32:   long long total = 0;
	movq	$0, 112(%rdi)	#, frame_ptr_24(D)->total_1_2
# b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	movl	%edx, 120(%rdi)	# _14, frame_ptr_24(D)->i_2_3
# b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	cmpl	%edx, 96(%rdi)	# _14, frame_ptr_24(D)->n
	jg	.L65	#,
.L85:
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movq	%rax, 80(%rdi)	# _12, MEM <long long int> [(struct promise_type *)frame_ptr_24(D) + 80B]
# b2_batch.cpp:36: }
	movl	$6, %eax	#,
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movb	$1, 88(%rdi)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_24(D) + 88B]
# b2_batch.cpp:36: }
	movq	$0, (%rdi)	#, frame_ptr_24(D)->_Coro_resume_fn
# b2_batch.cpp:36: }
	movw	%ax, 100(%rdi)	#, frame_ptr_24(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L83:
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_24(D) + 64B]._M_exception_object
	je	.L69	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _51
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L69:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_24(D) + 32B]._M_manager, _54
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _54
	je	.L70	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _53
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _54
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L70:
# b2_batch.cpp:36: }
	cmpb	$0, 104(%rax)	#, frame_ptr_24(D)->_Coro_frame_needs_free
	jne	.L84	#,
.L63:
.L55:
# b2_batch.cpp:36: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L61:
# b2_batch.cpp:36: }
	movl	$2, %ecx	#,
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	addw	$1, 102(%rdi)	#, frame_ptr_24(D)->_Coro_frame_refcount
	movb	$0, 105(%rdi)	#, frame_ptr_24(D)->_Coro_initial_await_resume_called
# b2_batch.cpp:36: }
	movw	%cx, 100(%rdi)	#, frame_ptr_24(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L59:
# ../../effects.hpp:1127:   typename E::result_type await_resume() { return std::move(result_); }
	movslq	132(%rdi), %rax	# MEM[(type &)frame_ptr_24(D) + 132],
# b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	movl	120(%rdi), %esi	# frame_ptr_24(D)->i_2_3, tmp144
# b2_batch.cpp:36: }
	movl	%eax, 124(%rdi)	# _32, frame_ptr_24(D)->T001_3_4
# b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	leal	1(%rsi), %edx	#, _14
# b2_batch.cpp:34:     total += perform(Tick{});
	addq	112(%rdi), %rax	# frame_ptr_24(D)->total_1_2, _12
	movq	%rax, 112(%rdi)	# _12, frame_ptr_24(D)->total_1_2
# b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	movl	%edx, 120(%rdi)	# _14, frame_ptr_24(D)->i_2_3
# b2_batch.cpp:33:   for (int i = 0; i < n; ++i)
	cmpl	%edx, 96(%rdi)	# _14, frame_ptr_24(D)->n
	jle	.L85	#,
.L65:
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	leaq	16(%rdi), %rax	#, tmp127
# b2_batch.cpp:36: }
	movl	$4, %edx	#,
# ../../effects.hpp:491:     return a;
	movl	$0, 132(%rdi)	#, frame_ptr_24(D)->Aw0_3_4.result_
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	movq	%rax, 144(%rdi)	# tmp127, MEM[(struct PerformAwaitable *)frame_ptr_24(D) + 128B].abort_base_
# ../../effects.hpp:1123:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	leaq	_ZN2fx6detail12effect_tag_vI4TickEE(%rip), %rax	#, tmp143
	movq	%rax, 48(%rdi)	# tmp143, MEM[(struct promise_type &)frame_ptr_24(D) + 16].D.163251.D.162200.effect_tag
# b2_batch.cpp:34:     total += perform(Tick{});
	leaq	128(%rdi), %rax	#, tmp129
# b2_batch.cpp:36: }
	movw	%dx, 100(%rdi)	#, frame_ptr_24(D)->_Coro_resume_index
# ../../effects.hpp:1121:     caller_ = caller;
	movq	%rdi, 136(%rdi)	# frame_ptr, MEM[(struct PerformAwaitable *)frame_ptr_24(D) + 128B].caller_._M_fr_ptr
# b2_batch.cpp:34:     total += perform(Tick{});
	movq	%rax, 56(%rdi)	# tmp129, MEM[(struct promise_type &)frame_ptr_24(D) + 16].D.163251.D.162200.payload_ptr
	ret	
	.p2align 4,,10
	.p2align 3
.L60:
# b2_batch.cpp:36: }
	cmpw	$6, %ax	#, _1
	je	.L68	#,
	jmp	.L57	#
	.p2align 4,,10
	.p2align 3
.L84:
	.cfi_def_cfa_offset 32
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	160(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_24(D) + 160B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L71	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_57->_vptr.memory_resource, mr_57->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_58 + 24B], _59
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp139
	cmpq	%rdx, %r8	# tmp139, _59
	je	.L55	#,
	movl	$16, %ecx	#,
	movl	$168, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*%r8	# _59
	jmp	.L55	#
	.p2align 4,,10
	.p2align 3
.L71:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$168, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b2_batch.cpp:36: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB0:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE0:
.L82:
	jmp	.L57	#
	.section	.gcc_except_table,"a",@progbits
.LLSDA6982:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6982-.LLSDACSB6982
.LLSDACSB6982:
	.uleb128 .LEHB0-.LFB6982
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
.LLSDACSE6982:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6982
	.type	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor.cold, @function
_Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor.cold:
.LFSB6982:
.L57:
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	ud2	
	.cfi_endproc
.LFE6982:
	.section	.gcc_except_table
.LLSDAC6982:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6982-.LLSDACSBC6982
.LLSDACSBC6982:
.LLSDACSEC6982:
	.section	.text.unlikely
	.text
	.size	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor, .-_Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor
	.section	.text.unlikely
	.size	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor.cold, .-_Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor.cold
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"fx: unhandled effect -- no matching handler installed"
	.section	.text.unlikely
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4
	.type	_ZZ4mainENKUlvE2_clEv, @function
_ZZ4mainENKUlvE2_clEv:
.LFB7004:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7004
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
	movq	.LC3(%rip), %xmm1	#, _136
# b2_batch.cpp:89:     fx_r = bench("fx::perform in batch coroutine", REPS, [&] {
	movq	%fs:40, %r12	# MEM[(<address-space-1> long unsigned int *)40B], __closure
	movq	%r12, 104(%rsp)	# __closure, D.217324
	movq	%rdi, %r12	# __closure, __closure
	leaq	48(%rsp), %rbp	#, tmp240
	movq	%rbp, %xmm2	# tmp240, tmp240
	punpcklqdq	%xmm2, %xmm1	# tmp240, _136
	movaps	%xmm1, (%rsp)	# _136, %sfp
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rcx	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rcx, %rcx	# mr
	je	.L87	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rcx), %rax	# mr_44->_vptr.memory_resource, mr_44->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp177
	movq	16(%rax), %rax	# MEM[(int (*) () *)_46 + 16B], _47
	cmpq	%rdx, %rax	# tmp177, _47
	jne	.L88	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rcx), %rax	# MEM[(size_t &)mr_44 + 16], _59
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$167, %rax	#, _59
	jbe	.L89	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rcx), %rdx	# MEM[(void * &)mr_44 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-168(%rax), %rdi	#, _68
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rdx), %rbx	#, _64
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rbx	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rbx, %rsi	# __aligned, __diff_67
	subq	%rdx, %rsi	# __intptr, __diff_67
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rsi, %rdi	# __diff_67, _68
	jb	.L89	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rdx, %rax	# __intptr, _175
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rbx, 8(%rcx)	# __p, MEM[(void * &)mr_44 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rbx, %rax	# __aligned, _70
	movq	%rax, 16(%rcx)	# _70, MEM[(size_t &)mr_44 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rbx, %rbx	# __p
	je	.L89	#,
.L90:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	168(%rbx), %rdx	#, tmp182
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	subq	$168, %rax	#, tmp183
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rdx, 8(%rcx)	# tmp182, MEM[(struct monotonic_buffer_resource *)mr_44]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rax, 16(%rcx)	# tmp183, MEM[(struct monotonic_buffer_resource *)mr_44]._M_avail
.L91:
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	leaq	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy(%rip), %rax	#, tmp174
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rcx, 160(%rbx)	# mr, MEM[(struct memory_resource * *)raw_50 + 160B]
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	movq	%rbx, %rdi	# __p,
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	movq	.LC4(%rip), %xmm0	#, _209
	movq	%rax, %xmm3	# tmp174, tmp174
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_50 + 16B].aborted
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	movabsq	$281474976720656, %rax	#, tmp263
	movq	%rax, 96(%rbx)	# tmp263, MEM <unsigned long> [(void *)raw_50 + 96B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rbx), %rax	#, tmp189
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	punpcklqdq	%xmm3, %xmm0	# tmp174, _209
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	$0, 24(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_50 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rbx)	#, MEM[(struct any *)raw_50 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 88(%rbx)	#, MEM[(struct _Optional_payload_base *)raw_50 + 80B]._M_engaged
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	movb	$1, 104(%rbx)	#, MEM[(struct _ZL9sum_ticksi.Frame *)raw_50]._Coro_frame_needs_free
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp189, MEM[(struct promise_type *)raw_50 + 16B].D.163251.D.162200.result_ptr
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	movups	%xmm0, (%rbx)	# _209, MEM <vector(2) long unsigned int> [(void (*<T1aa3e>) (struct _ZL9sum_ticksi.Frame *) *)raw_50]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp185
	movups	%xmm0, 40(%rbx)	# tmp185, MEM <vector(2) long unsigned int> [(void *)raw_50 + 40B]
	movups	%xmm0, 56(%rbx)	# tmp185, MEM <vector(2) long unsigned int> [(void *)raw_50 + 56B]
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	call	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor	#
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	subw	$1, 102(%rbx)	#, MEM[(struct _ZL9sum_ticksi.Frame *)raw_50]._Coro_frame_refcount
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	je	.L138	#,
.L92:
# b2_batch.cpp:90:       sink += sum_ticks(BATCH).run(TickCounter{.counter = counter});
	movq	8(%r12), %rax	# __closure_7(D)->__counter, __closure_7(D)->__counter
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	(%rsp), %xmm4	# %sfp, _136
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 88(%rsp)	#, MEM[(struct HandlerNode *)&guard].on_return_any_fn
# b2_batch.cpp:90:       sink += sum_ticks(BATCH).run(TickCounter{.counter = counter});
	movq	%rax, 32(%rsp)	# __closure_7(D)->__counter, D.164427.counter
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	leaq	32(%rsp), %rax	#, tmp198
	movq	%rax, 64(%rsp)	# tmp198, guard.node.real_handler_ptr
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI4Tick11TickCounterxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_(%rip), %rax	#, tmp266
	movq	%rax, 72(%rsp)	# tmp266, guard.node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm4, 48(%rsp)	# _136, MEM <vector(2) long unsigned int> [(const void * *)&guard]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.53_26
	movq	%rax, 96(%rsp)	# stack_top.53_26, guard.saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 80(%rsp)	# stack_top.53_26, guard.node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp240, stack_top
.LEHB1:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_50]
	.p2align 4
	.p2align 3
.L96:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)raw_50]
	je	.L139	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)raw_50 + 16].D.163251.D.162200.effect_tag, _96
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L97	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _96, n_103->effect_tag
	je	.L98	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L99:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_22->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L97	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_107->effect_tag, _96
	jne	.L99	#,
.L98:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)raw_50 + 16].D.163251.D.162200.payload_ptr, MEM[(struct promise_type &)raw_50 + 16].D.163251.D.162200.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_11->dispatch
.LEHE1:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)raw_50 + 16].D.163251.D.162200.aborted
	je	.L96	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp240, MEM[(struct PromiseAbortBase *)raw_50 + 16B].abort_owner
	je	.L105	#,
# ../../effects.hpp:804:       return std::nullopt;
	xorl	%edx, %edx	# SR.487
.L106:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	96(%rsp), %rax	# guard.saved, guard.saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# guard.saved, stack_top
# b2_batch.cpp:90:       sink += sum_ticks(BATCH).run(TickCounter{.counter = counter});
	movq	(%r12), %rax	# __closure_7(D)->__sink, _2
# b2_batch.cpp:90:       sink += sum_ticks(BATCH).run(TickCounter{.counter = counter});
	addq	%rdx, (%rax)	# SR.487, *_2
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_50 + 8B]
# b2_batch.cpp:91:     });
	movq	104(%rsp), %rax	# D.217324, tmp255
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp255
	jne	.L140	#,
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
.L89:
	.cfi_restore_state
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movq	%rcx, %rdi	# mr,
	movl	$16, %edx	#,
	movl	$168, %esi	#,
	movq	%rcx, 24(%rsp)	# mr, %sfp
.LEHB2:
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
.LEHE2:
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	24(%rsp), %rcx	# %sfp, mr
	movq	8(%rcx), %rbx	# MEM[(struct monotonic_buffer_resource *)mr_44]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%rcx), %rax	# MEM[(struct monotonic_buffer_resource *)mr_44]._M_avail, _70
	jmp	.L90	#
.L139:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)raw_50 + 64B]._M_exception_object, _100
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _100
	jne	.L141	#,
# /usr/include/c++/16.1.1/optional:229: 	    : _M_value(std::forward<_Args>(__args)...)
	movq	80(%rbx), %rdx	# MEM[(long long int &)raw_50 + 80], SR.487
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_50 + 16B].aborted
	je	.L106	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp240, MEM[(struct PromiseAbortBase *)raw_50 + 16B].abort_owner
	jne	.L106	#,
.L105:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_50 + 32B]._M_manager, _109
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp221
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_50 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp221, _109
	je	.L114	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _109
	je	.L121	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	40(%rsp), %rdx	#, tmp222
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _31
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _109
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	40(%rsp), %rax	# MEM[(union _Arg *)_23]._M_typeinfo, _110
.L115:
	movq	8(%rax), %rdi	# MEM[(const char * *)_111 + 8B], _115
	movq	8+_ZTIx(%rip), %rsi	# MEM[(const char * *)&_ZTIx + 8B], _116
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _116, _115
	je	.L114	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_115
	je	.L116	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	xorl	%eax, %eax	# tmp241
	cmpb	$42, (%rsi)	#, *_116
	sete	%al	#, tmp241
	addq	%rax, %rsi	# tmp241, _116
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _123
	jne	.L116	#,
.L114:
# /usr/include/c++/16.1.1/any:516: 	return static_cast<_ValueType>(std::move(*__p));
	movq	40(%rbx), %rdx	# MEM[(type &)raw_50 + 40], SR.487
	jmp	.L106	#
.L138:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_50 + 64B]._M_exception_object
	je	.L93	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _81
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L93:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_50 + 32B]._M_manager, _84
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _84
	je	.L94	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _83
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _84
.L94:
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	cmpw	$0, 102(%rbx)	#, MEM[(struct _ZL9sum_ticksi.Frame *)raw_50]._Coro_frame_refcount
	jne	.L92	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	160(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_50 + 160B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L95	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_87->_vptr.memory_resource, mr_87->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp196
	movq	24(%rax), %rax	# MEM[(int (*) () *)_88 + 24B], _89
	cmpq	%rdx, %rax	# tmp196, _89
	je	.L92	#,
	movl	$16, %ecx	#,
	movl	$168, %edx	#,
	movq	%rbx, %rsi	# __p,
	call	*%rax	# _89
	jmp	.L92	#
.L87:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$168, %edi	#,
	movq	%rcx, 24(%rsp)	# mr, %sfp
.LEHB3:
	call	_Znwm@PLT	#
	movq	24(%rsp), %rcx	# %sfp, mr
	movq	%rax, %rbx	# __p, __p
	jmp	.L91	#
.L88:
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	%rcx, 24(%rsp)	# mr, %sfp
	movq	%rcx, %rdi	# mr,
	movl	$16, %edx	#,
	movl	$168, %esi	#,
	call	*%rax	# _47
.LEHE3:
	movq	24(%rsp), %rcx	# %sfp, mr
	movq	%rax, %rbx	# __p, __p
	jmp	.L91	#
.L95:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$168, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZdlPvm@PLT	#
	jmp	.L92	#
.L121:
# /usr/include/c++/16.1.1/any:341: 	return typeid(void);
	leaq	_ZTIv(%rip), %rax	#, _110
	jmp	.L115	#
.L140:
# b2_batch.cpp:91:     });
	call	__stack_chk_fail@PLT	#
.L141:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	40(%rsp), %rdi	#, tmp267
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 40(%rsp)	# _100, MEM[(struct exception_ptr *)_23]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	104(%rsp), %rax	# D.217324, tmp253
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp253
	jne	.L142	#,
	leaq	40(%rsp), %rdi	#, tmp268
.LEHB4:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE4:
.L142:
	call	__stack_chk_fail@PLT	#
.L133:
	jmp	.L134	#
.L123:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	movq	%rax, %rbp	#, tmp248
	jmp	.L112	#
	.section	.gcc_except_table
.LLSDA7004:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7004-.LLSDACSB7004
.LLSDACSB7004:
	.uleb128 .LEHB1-.LFB7004
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L133-.LFB7004
	.uleb128 0
	.uleb128 .LEHB2-.LFB7004
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB7004
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB7004
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L123-.LFB7004
	.uleb128 0
.LLSDACSE7004:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7004
	.type	_ZZ4mainENKUlvE2_clEv.cold, @function
_ZZ4mainENKUlvE2_clEv.cold:
.LFSB7004:
.L97:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC2(%rip), %rsi	#,
	movq	%rax, %rdi	# _108,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _108
.LEHB5:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE5:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	104(%rsp), %rax	# D.217324, tmp252
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp252
	jne	.L143	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _108,
.LEHB6:
	call	__cxa_throw@PLT	#
.LEHE6:
.L122:
.L134:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp251, tmp210
.L104:
	movq	96(%rsp), %rax	# guard.saved, guard.saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# guard.saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_50 + 8B]
	movq	104(%rsp), %rax	# D.217324, tmp256
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp256
	jne	.L144	#,
	movq	%rbp, %rdi	# tmp210,
.LEHB7:
	call	_Unwind_Resume@PLT	#
.LEHE7:
.L143:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	__stack_chk_fail@PLT	#
.L124:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _108,
	movq	%rax, %rbp	#, tmp247
	call	__cxa_free_exception@PLT	#
	jmp	.L104	#
.L116:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp270
	movq	%rcx, (%rax)	# tmp270, MEM[(struct bad_any_cast *)_125].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	104(%rsp), %rdx	# D.217324, tmp254
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp254
	jne	.L145	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp250,
.LEHB8:
	call	__cxa_throw@PLT	#
.LEHE8:
.L145:
	call	__stack_chk_fail@PLT	#
.L144:
	call	__stack_chk_fail@PLT	#
.L112:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 40(%rsp)	#, MEM[(struct exception_ptr *)_23]._M_exception_object
	je	.L104	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	40(%rsp), %rdi	#, tmp269
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	jmp	.L104	#
	.cfi_endproc
.LFE7004:
	.section	.gcc_except_table
.LLSDAC7004:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7004-.LLSDACSBC7004
.LLSDACSBC7004:
	.uleb128 .LEHB5-.LCOLDB5
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L124-.LCOLDB5
	.uleb128 0
	.uleb128 .LEHB6-.LCOLDB5
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L122-.LCOLDB5
	.uleb128 0
	.uleb128 .LEHB7-.LCOLDB5
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LCOLDB5
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L122-.LCOLDB5
	.uleb128 0
.LLSDACSEC7004:
	.section	.text.unlikely
	.text
	.size	_ZZ4mainENKUlvE2_clEv, .-_ZZ4mainENKUlvE2_clEv
	.section	.text.unlikely
	.size	_ZZ4mainENKUlvE2_clEv.cold, .-_ZZ4mainENKUlvE2_clEv.cold
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4
	.type	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy, @function
_Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy:
.LFB6983:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6983
	movzwl	100(%rdi), %eax	# frame_ptr_4(D)->_Coro_resume_index, _2
	orl	$1, %eax	#, _2
	movw	%ax, 100(%rdi)	# _2, frame_ptr_4(D)->_Coro_resume_index
# b2_batch.cpp:36: }
	cmpw	$7, %ax	#, _2
	ja	.L154	#,
.L148:
.L149:
.L150:
.L151:
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	subw	$1, 102(%rdi)	#, frame_ptr_4(D)->_Coro_frame_refcount
# b2_batch.cpp:36: }
	je	.L166	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L166:
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_4(D) + 64B]._M_exception_object
	je	.L155	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _26
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L155:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_4(D) + 32B]._M_manager, _29
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _29
	je	.L156	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _28
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _29
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L156:
# b2_batch.cpp:36: }
	cmpb	$0, 104(%rax)	#, frame_ptr_4(D)->_Coro_frame_needs_free
	jne	.L167	#,
.L152:
.L146:
# b2_batch.cpp:36: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L167:
	.cfi_restore_state
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	160(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_4(D) + 160B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L157	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_32->_vptr.memory_resource, mr_32->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_33 + 24B], _34
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp119
	cmpq	%rdx, %r8	# tmp119, _34
	je	.L146	#,
	movl	$16, %ecx	#,
	movl	$168, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*%r8	# _34
	jmp	.L146	#
	.p2align 4,,10
	.p2align 3
.L157:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$168, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b2_batch.cpp:36: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB9:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE9:
.L147:
	.section	.gcc_except_table
.LLSDA6983:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6983-.LLSDACSB6983
.LLSDACSB6983:
	.uleb128 .LEHB9-.LFB6983
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE6983:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6983
	.type	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy.cold, @function
_Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy.cold:
.LFSB6983:
.L154:
# b2_batch.cpp:31: static auto sum_ticks(int n) -> Tick::Fx<long long> {
	ud2	
	.cfi_endproc
.LFE6983:
	.section	.gcc_except_table
.LLSDAC6983:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6983-.LLSDACSBC6983
.LLSDACSBC6983:
.LLSDACSEC6983:
	.section	.text.unlikely
	.text
	.size	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy, .-_Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy
	.section	.text.unlikely
	.size	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy.cold, .-_Z9sum_ticksP20_ZL9sum_ticksi.Frame.destroy.cold
.LCOLDE6:
	.text
.LHOTE6:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC12:
	.string	"\n=== "
.LC13:
	.string	" ===\n"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"  Each iteration runs a loop of "
	.section	.rodata.str1.1
.LC15:
	.string	" dispatches.\n"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"  Fx: one coroutine frame per iteration; "
	.section	.rodata.str1.1
.LC17:
	.string	" performs are zero-alloc.\n\n"
.LC18:
	.string	"  "
.LC19:
	.string	" "
.LC20:
	.string	" ns/iter\n"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"\n  --- amortised per-call breakdown ---\n"
	.section	.rodata.str1.1
.LC22:
	.string	"direct loop  (per call)"
.LC24:
	.string	" ns/call\n"
.LC25:
	.string	"std::function (per call)"
.LC26:
	.string	"fx::perform  (per call)"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"\nNote: the Fx overhead vs direct is the handler stack walk + resume\n"
	.align 8
.LC28:
	.string	"      per perform, plus the one-time coroutine frame alloc amortised\n"
	.section	.rodata.str1.1
.LC29:
	.string	"      across all "
.LC30:
	.string	" performs.\n"
	.section	.text.unlikely
.LCOLDB37:
	.section	.text.startup,"ax",@progbits
.LHOTB37:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB6985:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6985
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# /usr/include/c++/16.1.1/bits/charconv.h:100: 	  __first[__pos] = __digits[__num + 1];
	movl	$48, %esi	#,
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$45, %edi	#,
# b2_batch.cpp:46: int main() {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$328, %rsp	#,
	.cfi_def_cfa_offset 384
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%fs:40, %r13	# MEM[(<address-space-1> long unsigned int *)40B], tmp895
	movq	%r13, 312(%rsp)	# tmp895, D.218110
	leaq	176(%rsp), %r13	#, tmp895
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 180(%rsp)	#, MEM[(char_type &)_1818 + 20]
	movl	$808464434, 176(%rsp)	#, MEM <vector(4) char> [(char *)_1818 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$4, 168(%rsp)	#, MEM[(struct basic_string *)_1818]._M_string_length
	movl	$808464433, 64(%rsp)	#, MEM <vector(4) char> [(char *)_1423 + 16B]
# /usr/include/c++/16.1.1/bits/charconv.h:100: 	  __first[__pos] = __digits[__num + 1];
	movw	%si, 68(%rsp)	#, MEM <vector(2) char> [(char *)_1423 + 20B]
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%r13, 160(%rsp)	# tmp895, MEM[(struct _Alloc_hider *)_1818]._M_p
.LEHB10:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE10:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC31(%rip), %xmm0	#, tmp898
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbp	#, _641
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	leaq	64(%rsp), %rbx	#, tmp888
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$89, %edi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbp, 80(%rsp)	# _641, MEM[(struct basic_string *)_1670]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp898, MEM <char[1:39]> [(void *)_641]
	movdqa	.LC32(%rip), %xmm0	#, tmp899
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbx, 48(%rsp)	# tmp888, MEM[(struct basic_string *)_1423]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, 16(%rax)	# tmp899, MEM <char[1:39]> [(void *)_641]
	movabsq	$4424895985392691232, %rax	#, tmp941
	movq	%rax, 31(%rbp)	# tmp941, MEM <char[1:39]> [(void *)_641]
	movl	64(%rsp), %eax	# MEM <char[1:5]> [(void *)_1423 + 16B], MEM <char[1:5]> [(void *)_1423 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 44(%rbp)	#, MEM[(char_type &)_641 + 44]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	%eax, 39(%rbp)	# MEM <char[1:5]> [(void *)_1423 + 16B], MEM <char[1:5]> [(void *)_626]
	movzbl	68(%rsp), %eax	# MEM <char[1:5]> [(void *)_1423 + 16B], MEM <char[1:5]> [(void *)_1423 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 56(%rsp)	#, MEM[(struct basic_string *)_1423]._M_string_length
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movb	%al, 43(%rbp)	# MEM <char[1:5]> [(void *)_1423 + 16B], MEM <char[1:5]> [(void *)_626]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$44, %eax	#, tmp435
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 64(%rsp)	#, MEM <unsigned long> [(void *)_1423 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rax, %xmm0	# tmp435, tmp435
	punpcklqdq	%xmm0, %xmm0	# tmp434
	movups	%xmm0, 88(%rsp)	# tmp434, MEM <vector(2) long unsigned int> [(void *)_1670 + 8B]
.LEHB11:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE11:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqu	0(%rbp), %xmm0	# MEM <char[1:44]> [(void *)_641], MEM <char[1:44]> [(void *)_641]
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movl	$45, %esi	#,
	movq	%rbp, %rdi	# _641,
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r12	#, _699
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	$1701978156, 44(%rax)	#, MEM <char[1:7]> [(void *)_678]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	96(%rsp), %r14	#, tmp890
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# MEM <char[1:44]> [(void *)_641], MEM <char[1:44]> [(void *)_699]
	movdqu	16(%rbp), %xmm0	# MEM <char[1:44]> [(void *)_641], MEM <char[1:44]> [(void *)_641]
	movl	$1030975589, 47(%rax)	#, MEM <char[1:7]> [(void *)_678]
	movups	%xmm0, 16(%rax)	# MEM <char[1:44]> [(void *)_641], MEM <char[1:44]> [(void *)_699]
	movdqu	28(%rbp), %xmm0	# MEM <char[1:44]> [(void *)_641], MEM <char[1:44]> [(void *)_641]
	movups	%xmm0, 28(%rax)	# MEM <char[1:44]> [(void *)_641], MEM <char[1:44]> [(void *)_699]
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movl	$41, %ecx	#,
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movl	$808464434, 51(%r12)	#, MEM <unsigned int> [(void *)_699 + 51B]
	movw	%cx, 55(%r12)	#, MEM <unsigned short> [(char_type &)_699 + 55]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	128(%rsp), %rax	#, tmp943
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movdqa	.LC11(%rip), %xmm0	#, tmp447
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC12(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 112(%rsp)	# tmp943, MEM[(struct basic_string *)_1787]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	224(%rsp), %rax	#, tmp944
	movq	%r14, 80(%rsp)	# tmp890, MEM[(struct basic_string *)_1670]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 88(%rsp)	#, MEM[(struct basic_string *)_1670]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 96(%rsp)	#, MEM <unsigned long> [(void *)_1670 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 120(%rsp)	#, MEM[(struct basic_string *)_1787]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 128(%rsp)	#, MEM <unsigned long> [(void *)_1787 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r12, 256(%rsp)	# _699, MEM[(struct basic_string *)_1795]._M_dataplus._M_p
	movq	%rax, 208(%rsp)	# tmp944, MEM[(struct basic_string *)_1363]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 216(%rsp)	#, MEM[(struct basic_string *)_1363]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 224(%rsp)	#, MEM <unsigned long> [(void *)_1363 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movups	%xmm0, 264(%rsp)	# tmp447, MEM <vector(2) long unsigned int> [(void *)_1795 + 8B]
.LEHB12:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/string_view:780:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	movl	$56, %edx	#,
	movq	%r12, %rsi	# _699,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _913,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE12:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(struct basic_string *)_1795]._M_dataplus._M_p, _126
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp945
	cmpq	%rax, %rdi	# tmp945, _126
	je	.L169	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_1795].D.58684._M_allocated_capacity, tmp946
	leaq	1(%rax), %rsi	#, _129
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L169:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	208(%rsp), %rdi	# MEM[(struct basic_string *)_1363]._M_dataplus._M_p, _122
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	224(%rsp), %rax	#, tmp947
	cmpq	%rax, %rdi	# tmp947, _122
	je	.L170	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	224(%rsp), %rax	# MEM[(struct basic_string *)_1363].D.58684._M_allocated_capacity, tmp948
	leaq	1(%rax), %rsi	#, _125
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L170:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	112(%rsp), %rdi	# MEM[(struct basic_string *)_1787]._M_dataplus._M_p, _118
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	128(%rsp), %rax	#, tmp949
	cmpq	%rax, %rdi	# tmp949, _118
	je	.L171	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	128(%rsp), %rax	# MEM[(struct basic_string *)_1787].D.58684._M_allocated_capacity, tmp950
	leaq	1(%rax), %rsi	#, _121
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L171:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(struct basic_string *)_1670]._M_dataplus._M_p, _114
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rdi	# tmp890, _114
	je	.L172	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_1670].D.58684._M_allocated_capacity, tmp951
	leaq	1(%rax), %rsi	#, _117
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L172:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdi	# MEM[(struct basic_string *)_1423]._M_dataplus._M_p, _110
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp888, _110
	je	.L173	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	64(%rsp), %rax	# MEM[(struct basic_string *)_1423].D.58684._M_allocated_capacity, tmp952
	leaq	1(%rax), %rsi	#, _113
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L173:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	160(%rsp), %rdi	# MEM[(struct basic_string *)_1818]._M_dataplus._M_p, _106
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r13, %rdi	# tmp895, _106
	je	.L174	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	176(%rsp), %rax	# MEM[(struct basic_string *)_1818].D.58684._M_allocated_capacity, tmp953
	leaq	1(%rax), %rsi	#, _109
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L174:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$32, %edx	#,
	leaq	.LC14(%rip), %rsi	#,
# b2_batch.cpp:65:       sink += total;
	movl	$450015000, %ebp	#, sink
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB13:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b2_batch.cpp:53:       << "  Each iteration runs a loop of " << BATCH << " dispatches.\n"
	movl	$10000, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEi@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$13, %edx	#,
	leaq	.LC15(%rip), %rsi	#,
# b2_batch.cpp:53:       << "  Each iteration runs a loop of " << BATCH << " dispatches.\n"
	movq	%rax, %rbx	#, _20
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movq	%rax, %rdi	# _20,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$41, %edx	#,
	movq	%rbx, %rdi	# _20,
	leaq	.LC16(%rip), %rsi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b2_batch.cpp:54:       << "  Fx: one coroutine frame per iteration; " << BATCH << " performs are zero-alloc.\n\n";
	movq	%rbx, %rdi	# _20,
	movl	$10000, %esi	#,
	call	_ZNSolsEi@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$27, %edx	#,
	leaq	.LC17(%rip), %rsi	#,
	movq	%rax, %rdi	# _22,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE13:
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	128(%rsp), %rax	#, tmp954
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 128(%rsp)	#, MEM[(char_type &)_1787 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rax, 112(%rsp)	# tmp954, MEM[(struct _Alloc_hider *)_1787]._M_p
	leaq	224(%rsp), %rax	#, tmp955
	movq	%rax, 208(%rsp)	# tmp955, MEM[(struct _Alloc_hider *)_1363]._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movabsq	$7791355325603539300, %rax	#, tmp956
	movq	%rax, 96(%rsp)	# tmp956, MEM <char[1:11]> [(void *)_1670 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 120(%rsp)	#, MEM[(struct basic_string *)_1787]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%r13, 160(%rsp)	# tmp895, MEM[(struct _Alloc_hider *)_1818]._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 176(%rsp)	#, MEM[(char_type &)_1818 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 168(%rsp)	#, MEM[(struct basic_string *)_1818]._M_string_length
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 224(%rsp)	#, MEM[(char_type &)_1363 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 216(%rsp)	#, MEM[(struct basic_string *)_1363]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:204: 	: allocator_type(__a), _M_p(__dat) { }
	movq	%r14, 80(%rsp)	# tmp890, MEM[(struct _Alloc_hider *)_1670]._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	$1886351212, 103(%rsp)	#, MEM <char[1:11]> [(void *)_1670 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 107(%rsp)	#, MEM[(char_type &)_1670 + 27]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$11, 88(%rsp)	#, MEM[(struct basic_string *)_1670]._M_string_length
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	movabsq	$200350005000, %rdx	#, tmp495
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movq	%rax, %rbx	#, start
	movl	$350005000, %eax	#, ivtmp.594
	.p2align 5
	.p2align 4
	.p2align 3
.L175:
# b2_batch.cpp:65:       sink += total;
	leaq	100000000(%rbp,%rax,2), %rbp	#, sink
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	addq	$200000000, %rax	#, ivtmp.594
	cmpq	%rdx, %rax	# tmp495, ivtmp.594
	jne	.L175	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp957
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	88(%rsp), %rdx	# MEM[(const struct basic_string *)_1670]._M_string_length, pretmp_1349
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp957, MEM[(struct _Alloc_hider *)_1795]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rcx	# MEM[(const struct basic_string *)_1670]._M_dataplus._M_p, _990
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rcx	# tmp890, _990
	je	.L264	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _990, MEM[(struct basic_string *)_1795]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	96(%rsp), %rcx	# MEM[(struct basic_string &)_1670].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1670].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1670].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_1795].D.58684._M_allocated_capacity
.L177:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	# start, _986
# bench.hpp:23: struct BenchResult {
	leaq	112(%rsp), %rdi	#, tmp515
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp513
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_1349, MEM[(struct basic_string *)_1795]._M_string_length
# bench.hpp:23: struct BenchResult {
	leaq	256(%rsp), %rsi	#, tmp960
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _986, tmp513
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r14, 80(%rsp)	# tmp890, MEM[(struct basic_string *)_1670]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 296(%rsp)	# tmp513, MEM[(struct BenchResult *)_1795].total_ns
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 96(%rsp)	#, MEM[(char_type &)_1670 + 16]
# bench.hpp:44: }
	movq	$2000, 288(%rsp)	#, MEM[(struct BenchResult *)_1795].iters
# bench.hpp:23: struct BenchResult {
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0	#
# bench.hpp:23: struct BenchResult {
	movq	288(%rsp), %rax	# MEM[(struct BenchResult *)_1795].iters, MEM[(struct BenchResult *)_1795].iters
	movsd	296(%rsp), %xmm0	# MEM[(struct BenchResult *)_1795].total_ns, MEM[(struct BenchResult *)_1795].total_ns
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_1795]._M_dataplus._M_p, _134
# bench.hpp:23: struct BenchResult {
	movq	%rax, 144(%rsp)	# MEM[(struct BenchResult *)_1795].iters, MEM[(struct BenchResult *)_1787].iters
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp961
# bench.hpp:23: struct BenchResult {
	movsd	%xmm0, 152(%rsp)	# MEM[(struct BenchResult *)_1795].total_ns, MEM[(struct BenchResult *)_1787].total_ns
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rdi	# tmp961, _134
	je	.L178	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_1795].D.58684._M_allocated_capacity, tmp962
	leaq	1(%rax), %rsi	#, _137
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L178:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(struct basic_string *)_1670]._M_dataplus._M_p, _130
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rdi	# tmp890, _130
	je	.L179	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_1670].D.58684._M_allocated_capacity, tmp963
	leaq	1(%rax), %rsi	#, _133
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L179:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movq	144(%rsp), %rax	# MEM[(struct BenchResult *)_1787].iters, MEM[(struct BenchResult *)_1787].iters
	testq	%rax, %rax	# MEM[(struct BenchResult *)_1787].iters
	js	.L180	#,
	pxor	%xmm0, %xmm0	# _998
	cvtsi2sdq	%rax, %xmm0	# MEM[(struct BenchResult *)_1787].iters, _998
.L181:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movsd	152(%rsp), %xmm1	# MEM[(struct BenchResult *)_1787].total_ns, MEM[(struct BenchResult *)_1787].total_ns
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	%xmm0, %xmm1	# _998, MEM[(struct BenchResult *)_1787].total_ns
	movq	%xmm1, %rbx	# MEM[(struct BenchResult *)_1787].total_ns, _999
.LEHB14:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _1000
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp966
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	112(%rsp), %rsi	# MEM[(const struct basic_string *)_1787]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp966,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1000 + -24B], MEM[(long int *)_1000 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _1003->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1000 + -24B], _1006
	addq	%rcx, %rdx	# tmp966, _1006
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1006->_M_flags, _1020
	andb	$79, %al	#, _1020
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp541
	movl	%eax, 24(%rdx)	# tmp541, MEM[(_Ios_Fmtflags &)_1006 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	120(%rsp), %rdx	# MEM[(const struct basic_string *)_1787]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rax, %rdi	# _1010,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %r12	#, _1010
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%r12), %rax	# _1010->_vptr.basic_ostream, _1011
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbx, %xmm0	# _999,
	movq	%r12, %rdi	# _1010,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1011 + -24B], MEM[(long int *)_1011 + -24B]
	movq	$10, 16(%r12,%rdx)	#, _1014->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1011 + -24B], _1017
	addq	%r12, %rdx	# _1010, _1017
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1017->_M_flags, _1350
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _1017->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _1350
	orb	$-124, %al	#, tmp550
	movl	%eax, 24(%rdx)	# tmp550, MEM[(_Ios_Fmtflags &)_1017 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC20(%rip), %rsi	#,
	movq	%rax, %rdi	# _1018,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE14:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/std_function.h:157: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	leaq	32(%rsp), %rax	#, tmp971
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$19, %edi	#,
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	movq	.LC36(%rip), %xmm0	#, _1314
# b2_batch.cpp:74:     int counter = 0;
	movl	$0, 32(%rsp)	#, MEM[(int *)_1796]
# /usr/include/c++/16.1.1/bits/std_function.h:157: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	movq	%rax, 48(%rsp)	# tmp971, MEM[(struct ._anon_197 *)_1423]
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	leaq	_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E9_M_invokeERKSt9_Any_data(%rip), %rax	#, tmp552
# /usr/include/c++/16.1.1/bits/std_function.h:427: 	: _Function_base()
	movq	$0, 56(%rsp)	#, MEM <char[8]> [(struct _Function_base *)_1423 + 8B]
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	movq	%rax, %xmm3	# tmp552, tmp552
	punpcklqdq	%xmm3, %xmm0	# tmp552, _1314
	movaps	%xmm0, 64(%rsp)	# _1314, MEM <vector(2) long unsigned int> [(void *)_1423 + 16B]
.LEHB15:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE15:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC33(%rip), %xmm0	#, tmp900
	movl	$28783, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 80(%rsp)	# tmp912, MEM[(struct basic_string *)_1670]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$3, %r15d	#, ivtmp_961
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$18, 96(%rsp)	#, MEM[(struct basic_string *)_1670].D.58684._M_allocated_capacity
# b2_batch.cpp:73:     long long sink = 0;
	xorl	%r12d, %r12d	# sink
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$18, 88(%rsp)	#, MEM[(struct basic_string *)_1670]._M_string_length
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movw	%dx, 16(%rax)	#, MEM <char[1:18]> [(void *)_1056]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 18(%rax)	#, MEM[(char_type &)_1056 + 18]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp900, MEM <char[1:18]> [(void *)_1056]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	leaq	_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation(%rip), %rax	#, pretmp_446
	.p2align 4
	.p2align 3
.L182:
# b2_batch.cpp:65:       sink += total;
	movl	$10000, %ebx	#, ivtmp_960
# b2_batch.cpp:77:       long long total = 0;
	xorl	%ebp, %ebp	# total
	jmp	.L187	#
	.p2align 4,,10
	.p2align 3
.L185:
# /usr/include/c++/16.1.1/bits/std_function.h:252:     bool _M_empty() const { return !_M_manager; }
	movq	64(%rsp), %rax	# MEM[(const struct _Function_base *)_1423]._M_manager, pretmp_446
.L187:
# /usr/include/c++/16.1.1/bits/std_function.h:579: 	if (_M_empty())
	testq	%rax, %rax	# pretmp_446
	je	.L260	#,
# /usr/include/c++/16.1.1/bits/std_function.h:581: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	leaq	48(%rsp), %rdi	#, tmp974
.LEHB16:
	call	*72(%rsp)	# MEM[(struct function *)_1423]._M_invoker
# b2_batch.cpp:78:       for (int i = 0; i < BATCH; ++i) total += fn();
	cltq
	addq	%rax, %rbp	# _1078, total
# b2_batch.cpp:78:       for (int i = 0; i < BATCH; ++i) total += fn();
	subl	$1, %ebx	#, ivtmp_960
	jne	.L185	#,
# b2_batch.cpp:79:       sink += total;
	addq	%rbp, %r12	# total, sink
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r15	#, ivtmp_961
	je	.L186	#,
# /usr/include/c++/16.1.1/bits/std_function.h:252:     bool _M_empty() const { return !_M_manager; }
	movq	64(%rsp), %rax	# MEM[(const struct _Function_base *)_1423]._M_manager, pretmp_446
	jmp	.L182	#
.L186:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$2000, %r15d	#, ivtmp_1
	movq	%rax, (%rsp)	#, %sfp
	.p2align 4
	.p2align 3
.L188:
# b2_batch.cpp:73:     long long sink = 0;
	movl	$10000, %ebx	#, ivtmp_1334
# b2_batch.cpp:77:       long long total = 0;
	xorl	%ebp, %ebp	# total
	.p2align 4
	.p2align 3
.L191:
# /usr/include/c++/16.1.1/bits/std_function.h:579: 	if (_M_empty())
	cmpq	$0, 64(%rsp)	#, MEM[(const struct _Function_base *)_1423]._M_manager
	je	.L261	#,
# /usr/include/c++/16.1.1/bits/std_function.h:581: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	leaq	48(%rsp), %rdi	#, tmp975
	call	*72(%rsp)	# MEM[(struct function *)_1423]._M_invoker
.LEHE16:
# b2_batch.cpp:78:       for (int i = 0; i < BATCH; ++i) total += fn();
	cltq
	addq	%rax, %rbp	# _1091, total
# b2_batch.cpp:78:       for (int i = 0; i < BATCH; ++i) total += fn();
	subl	$1, %ebx	#, ivtmp_1334
	jne	.L191	#,
# b2_batch.cpp:79:       sink += total;
	addq	%rbp, %r12	# total, sink
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r15	#, ivtmp_1
	jne	.L188	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp976
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	88(%rsp), %rdx	# MEM[(const struct basic_string *)_1670]._M_string_length, pretmp_1357
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp976, MEM[(struct _Alloc_hider *)_1795]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rcx	# MEM[(const struct basic_string *)_1670]._M_dataplus._M_p, _1100
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rcx	# tmp890, _1100
	je	.L265	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _1100, MEM[(struct basic_string *)_1795]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	96(%rsp), %rcx	# MEM[(struct basic_string &)_1670].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1670].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1670].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_1795].D.58684._M_allocated_capacity
.L194:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	(%rsp), %rax	# %sfp, _1070
# bench.hpp:23: struct BenchResult {
	leaq	160(%rsp), %rdi	#, tmp584
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp582
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_1357, MEM[(struct basic_string *)_1795]._M_string_length
# bench.hpp:23: struct BenchResult {
	leaq	256(%rsp), %rsi	#, tmp980
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _1070, tmp582
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r14, 80(%rsp)	# tmp890, MEM[(struct basic_string *)_1670]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 296(%rsp)	# tmp582, MEM[(struct BenchResult *)_1795].total_ns
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 96(%rsp)	#, MEM[(char_type &)_1670 + 16]
# bench.hpp:44: }
	movq	$2000, 288(%rsp)	#, MEM[(struct BenchResult *)_1795].iters
# bench.hpp:23: struct BenchResult {
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0	#
# bench.hpp:23: struct BenchResult {
	movq	288(%rsp), %rax	# MEM[(struct BenchResult *)_1795].iters, MEM[(struct BenchResult *)_1795].iters
	movsd	296(%rsp), %xmm0	# MEM[(struct BenchResult *)_1795].total_ns, MEM[(struct BenchResult *)_1795].total_ns
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_1795]._M_dataplus._M_p, _145
# bench.hpp:23: struct BenchResult {
	movq	%rax, 192(%rsp)	# MEM[(struct BenchResult *)_1795].iters, MEM[(struct BenchResult *)_1818].iters
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp981
# bench.hpp:23: struct BenchResult {
	movsd	%xmm0, 200(%rsp)	# MEM[(struct BenchResult *)_1795].total_ns, MEM[(struct BenchResult *)_1818].total_ns
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rdi	# tmp981, _145
	je	.L195	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_1795].D.58684._M_allocated_capacity, tmp982
	leaq	1(%rax), %rsi	#, _148
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L195:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(struct basic_string *)_1670]._M_dataplus._M_p, _141
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rdi	# tmp890, _141
	je	.L196	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_1670].D.58684._M_allocated_capacity, tmp983
	leaq	1(%rax), %rsi	#, _144
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L196:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movq	192(%rsp), %rax	# MEM[(struct BenchResult *)_1818].iters, MEM[(struct BenchResult *)_1818].iters
	testq	%rax, %rax	# MEM[(struct BenchResult *)_1818].iters
	js	.L197	#,
	pxor	%xmm0, %xmm0	# _1108
	cvtsi2sdq	%rax, %xmm0	# MEM[(struct BenchResult *)_1818].iters, _1108
.L198:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movsd	200(%rsp), %xmm1	# MEM[(struct BenchResult *)_1818].total_ns, MEM[(struct BenchResult *)_1818].total_ns
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	%xmm0, %xmm1	# _1108, MEM[(struct BenchResult *)_1818].total_ns
	movq	%xmm1, %rbx	# MEM[(struct BenchResult *)_1818].total_ns, _1109
.LEHB17:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _1110
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp986
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	160(%rsp), %rsi	# MEM[(const struct basic_string *)_1818]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp986,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1110 + -24B], MEM[(long int *)_1110 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _1113->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1110 + -24B], _1116
	addq	%rcx, %rdx	# tmp986, _1116
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1116->_M_flags, _1130
	andb	$79, %al	#, _1130
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp610
	movl	%eax, 24(%rdx)	# tmp610, MEM[(_Ios_Fmtflags &)_1116 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	168(%rsp), %rdx	# MEM[(const struct basic_string *)_1818]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rax, %rdi	# _1120,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbp	#, _1120
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	0(%rbp), %rax	# _1120->_vptr.basic_ostream, _1121
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbx, %xmm0	# _1109,
	movq	%rbp, %rdi	# _1120,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1121 + -24B], MEM[(long int *)_1121 + -24B]
	movq	$10, 16(%rbp,%rdx)	#, _1124->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1121 + -24B], _1127
	addq	%rbp, %rdx	# _1120, _1127
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1127->_M_flags, _1819
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _1127->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _1819
	orb	$-124, %al	#, tmp619
	movl	%eax, 24(%rdx)	# tmp619, MEM[(_Ios_Fmtflags &)_1127 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
	leaq	20(%rsp), %rdx	#, _2
	leaq	24(%rsp), %rcx	#, tmp993
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movq	%rax, %rdi	# _1128,
	movq	%rdx, %xmm4	# _2, _2
	movq	%rcx, %xmm2	# tmp993, _1342
	movl	$9, %edx	#,
	punpcklqdq	%xmm4, %xmm2	# _2, _1342
	leaq	.LC20(%rip), %rsi	#,
	movaps	%xmm2, (%rsp)	# _1342, %sfp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE17:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	64(%rsp), %rax	# MEM[(struct _Function_base *)_1423]._M_manager, _151
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	testq	%rax, %rax	# _151
	je	.L199	#,
# /usr/include/c++/16.1.1/bits/std_function.h:249: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	leaq	48(%rsp), %rsi	#, tmp994
	movl	$3, %edx	#,
	movq	%rsi, %rdi	# tmp994, tmp995
	call	*%rax	# _151
.L199:
# b2_batch.cpp:89:     fx_r = bench("fx::perform in batch coroutine", REPS, [&] {
	movdqa	(%rsp), %xmm5	# %sfp, _1342
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$31, %edi	#,
# b2_batch.cpp:87:     long long sink = 0;
	movq	$0, 24(%rsp)	#, sink
# b2_batch.cpp:88:     int counter = 0;
	movl	$0, 20(%rsp)	#, counter
# b2_batch.cpp:89:     fx_r = bench("fx::perform in batch coroutine", REPS, [&] {
	movaps	%xmm5, 32(%rsp)	# _1342, MEM <vector(2) long unsigned int> [(void *)_1796]
.LEHB18:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE18:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC34(%rip), %xmm0	#, tmp901
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 80(%rsp)	# tmp919, MEM[(struct basic_string *)_1670]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$3, %ebx	#, ivtmp_1400
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$30, 96(%rsp)	#, MEM[(struct basic_string *)_1670].D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp901, MEM <char[1:30]> [(void *)_1166]
	movdqa	.LC35(%rip), %xmm0	#, tmp902
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 30(%rax)	#, MEM[(char_type &)_1166 + 30]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$30, 88(%rsp)	#, MEM[(struct basic_string *)_1670]._M_string_length
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, 14(%rax)	# tmp902, MEM <char[1:30]> [(void *)_1166]
	.p2align 4
	.p2align 3
.L200:
# bench.hpp:35:     fn();
	leaq	32(%rsp), %rdi	#, tmp997
.LEHB19:
	call	_ZZ4mainENKUlvE2_clEv	#
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %rbx	#, ivtmp_1400
	jne	.L200	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$2000, %ebx	#, ivtmp_1511
	movq	%rax, %rbp	#, start
	.p2align 4
	.p2align 3
.L201:
# bench.hpp:39:     fn();
	leaq	32(%rsp), %rdi	#, tmp998
	call	_ZZ4mainENKUlvE2_clEv	#
.LEHE19:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %rbx	#, ivtmp_1511
	jne	.L201	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp999
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	88(%rsp), %rdx	# MEM[(const struct basic_string *)_1670]._M_string_length, pretmp_448
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp999, MEM[(struct _Alloc_hider *)_1795]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rcx	# MEM[(const struct basic_string *)_1670]._M_dataplus._M_p, _1184
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rcx	# tmp890, _1184
	je	.L266	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _1184, MEM[(struct basic_string *)_1795]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	96(%rsp), %rcx	# MEM[(struct basic_string &)_1670].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1670].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1670].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_1795].D.58684._M_allocated_capacity
.L203:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbp, %rax	# start, _1180
# bench.hpp:23: struct BenchResult {
	leaq	208(%rsp), %rdi	#, tmp648
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp646
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_448, MEM[(struct basic_string *)_1795]._M_string_length
# bench.hpp:23: struct BenchResult {
	leaq	256(%rsp), %rsi	#, tmp1002
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _1180, tmp646
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r14, 80(%rsp)	# tmp890, MEM[(struct basic_string *)_1670]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 296(%rsp)	# tmp646, MEM[(struct BenchResult *)_1795].total_ns
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 96(%rsp)	#, MEM[(char_type &)_1670 + 16]
# bench.hpp:44: }
	movq	$2000, 288(%rsp)	#, MEM[(struct BenchResult *)_1795].iters
# bench.hpp:23: struct BenchResult {
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0	#
# bench.hpp:23: struct BenchResult {
	movq	288(%rsp), %rax	# MEM[(struct BenchResult *)_1795].iters, MEM[(struct BenchResult *)_1795].iters
	movsd	296(%rsp), %xmm0	# MEM[(struct BenchResult *)_1795].total_ns, MEM[(struct BenchResult *)_1795].total_ns
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_1795]._M_dataplus._M_p, _157
# bench.hpp:23: struct BenchResult {
	movq	%rax, 240(%rsp)	# MEM[(struct BenchResult *)_1795].iters, MEM[(struct BenchResult *)_1363].iters
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp1003
# bench.hpp:23: struct BenchResult {
	movsd	%xmm0, 248(%rsp)	# MEM[(struct BenchResult *)_1795].total_ns, MEM[(struct BenchResult *)_1363].total_ns
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rdi	# tmp1003, _157
	je	.L204	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_1795].D.58684._M_allocated_capacity, tmp1004
	leaq	1(%rax), %rsi	#, _160
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L204:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(struct basic_string *)_1670]._M_dataplus._M_p, _153
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rdi	# tmp890, _153
	je	.L205	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_1670].D.58684._M_allocated_capacity, tmp1005
	leaq	1(%rax), %rsi	#, _156
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L205:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movq	240(%rsp), %rax	# MEM[(struct BenchResult *)_1363].iters, MEM[(struct BenchResult *)_1363].iters
	testq	%rax, %rax	# MEM[(struct BenchResult *)_1363].iters
	js	.L206	#,
	pxor	%xmm0, %xmm0	# _1192
	cvtsi2sdq	%rax, %xmm0	# MEM[(struct BenchResult *)_1363].iters, _1192
.L207:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movsd	248(%rsp), %xmm1	# MEM[(struct BenchResult *)_1363].total_ns, MEM[(struct BenchResult *)_1363].total_ns
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	%xmm0, %xmm1	# _1192, MEM[(struct BenchResult *)_1363].total_ns
	movq	%xmm1, %rbp	# MEM[(struct BenchResult *)_1363].total_ns, _1193
.LEHB20:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _1194
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %r14	#, tmp1008
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	208(%rsp), %rsi	# MEM[(const struct basic_string *)_1363]._M_dataplus._M_p,
	movq	%r14, %rdi	# tmp1008,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1194 + -24B], MEM[(long int *)_1194 + -24B]
	movq	$44, 16(%r14,%rdx)	#, _1197->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1194 + -24B], _1200
	addq	%r14, %rdx	# tmp1008, _1200
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1200->_M_flags, _1214
	andb	$79, %al	#, _1214
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp674
	movl	%eax, 24(%rdx)	# tmp674, MEM[(_Ios_Fmtflags &)_1200 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	216(%rsp), %rdx	# MEM[(const struct basic_string *)_1363]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rax, %rdi	# _1204,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbx	#, _1204
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# _1204->_vptr.basic_ostream, _1205
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbp, %xmm0	# _1193,
	movq	%rbx, %rdi	# _1204,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1205 + -24B], MEM[(long int *)_1205 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _1208->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1205 + -24B], _1211
	addq	%rbx, %rdx	# _1204, _1211
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1211->_M_flags, _1816
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _1211->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _1816
	orb	$-124, %al	#, tmp683
	movl	%eax, 24(%rdx)	# tmp683, MEM[(_Ios_Fmtflags &)_1211 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC20(%rip), %rsi	#,
	movq	%rax, %rdi	# _1212,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$40, %edx	#,
	leaq	.LC21(%rip), %rsi	#,
	movq	%r14, %rdi	# tmp1008,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$2, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%r14, %rdi	# tmp1008,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _167
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC22(%rip), %rsi	#,
	movq	%r14, %rdi	# tmp1008,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_167 + -24B], MEM[(long int *)_167 + -24B]
	movq	$44, 16(%r14,%rdx)	#, _170->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_167 + -24B], _166
	addq	%r14, %rdx	# tmp1008, _166
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _166->_M_flags, _1239
	andb	$79, %al	#, _1239
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp696
	movl	%eax, 24(%rdx)	# tmp696, MEM[(_Ios_Fmtflags &)_166 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$23, %edx	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$1, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%r14, %rdi	# tmp1008,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _174
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_174 + -24B], MEM[(long int *)_174 + -24B]
	movq	$10, 16(%r14,%rdx)	#, _177->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_174 + -24B], _173
	addq	%r14, %rdx	# tmp1008, _173
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _173->_M_flags, _1813
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _173->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _1813
	orb	$-124, %al	#, tmp708
	movl	%eax, 24(%rdx)	# tmp708, MEM[(_Ios_Fmtflags &)_173 + 24]
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movq	144(%rsp), %rax	# MEM[(struct BenchResult *)_1787].iters, MEM[(struct BenchResult *)_1787].iters
	testq	%rax, %rax	# MEM[(struct BenchResult *)_1787].iters
	js	.L208	#,
	pxor	%xmm1, %xmm1	# _181
	cvtsi2sdq	%rax, %xmm1	# MEM[(struct BenchResult *)_1787].iters, _181
.L209:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movsd	152(%rsp), %xmm0	# MEM[(struct BenchResult *)_1787].total_ns, MEM[(struct BenchResult *)_1787].total_ns
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	%xmm1, %xmm0	# _181, _182
# b2_batch.cpp:99:     return r.ns_per_iter() / BATCH;
	divsd	.LC23(%rip), %xmm0	#, _183
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC24(%rip), %rsi	#,
	movq	%rax, %rdi	# _178,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$2, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _187
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rbx	#, tmp1020
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC25(%rip), %rsi	#,
	movq	%rbx, %rdi	# tmp1020,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_187 + -24B], MEM[(long int *)_187 + -24B]
	movq	$44, 16(%rbx,%rdx)	#, _190->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_187 + -24B], _186
	addq	%rbx, %rdx	# tmp1020, _186
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _186->_M_flags, _1256
	andb	$79, %al	#, _1256
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp729
	movl	%eax, 24(%rdx)	# tmp729, MEM[(_Ios_Fmtflags &)_186 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$24, %edx	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$1, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rbx, %rdi	# tmp1020,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _194
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_194 + -24B], MEM[(long int *)_194 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _197->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_194 + -24B], _193
	addq	%rbx, %rdx	# tmp1020, _193
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _193->_M_flags, _1793
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _193->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _1793
	orb	$-124, %al	#, tmp741
	movl	%eax, 24(%rdx)	# tmp741, MEM[(_Ios_Fmtflags &)_193 + 24]
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movq	192(%rsp), %rax	# MEM[(struct BenchResult *)_1818].iters, MEM[(struct BenchResult *)_1818].iters
	testq	%rax, %rax	# MEM[(struct BenchResult *)_1818].iters
	js	.L210	#,
	pxor	%xmm1, %xmm1	# _201
	cvtsi2sdq	%rax, %xmm1	# MEM[(struct BenchResult *)_1818].iters, _201
.L211:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movsd	200(%rsp), %xmm0	# MEM[(struct BenchResult *)_1818].total_ns, MEM[(struct BenchResult *)_1818].total_ns
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	%xmm1, %xmm0	# _201, _202
# b2_batch.cpp:99:     return r.ns_per_iter() / BATCH;
	divsd	.LC23(%rip), %xmm0	#, _203
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC24(%rip), %rsi	#,
	movq	%rax, %rdi	# _198,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$2, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _207
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rbx	#, tmp1027
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC26(%rip), %rsi	#,
	movq	%rbx, %rdi	# tmp1027,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_207 + -24B], MEM[(long int *)_207 + -24B]
	movq	$44, 16(%rbx,%rdx)	#, _210->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_207 + -24B], _206
	addq	%rbx, %rdx	# tmp1027, _206
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _206->_M_flags, _1273
	andb	$79, %al	#, _1273
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp762
	movl	%eax, 24(%rdx)	# tmp762, MEM[(_Ios_Fmtflags &)_206 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$23, %edx	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$1, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rbx, %rdi	# tmp1027,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _214
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_214 + -24B], MEM[(long int *)_214 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _217->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_214 + -24B], _213
	addq	%rbx, %rdx	# tmp1027, _213
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _213->_M_flags, _1789
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _213->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _1789
	orb	$-124, %al	#, tmp774
	movl	%eax, 24(%rdx)	# tmp774, MEM[(_Ios_Fmtflags &)_213 + 24]
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movq	240(%rsp), %rax	# MEM[(struct BenchResult *)_1363].iters, MEM[(struct BenchResult *)_1363].iters
	testq	%rax, %rax	# MEM[(struct BenchResult *)_1363].iters
	js	.L212	#,
	pxor	%xmm1, %xmm1	# _221
	cvtsi2sdq	%rax, %xmm1	# MEM[(struct BenchResult *)_1363].iters, _221
.L213:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movsd	248(%rsp), %xmm0	# MEM[(struct BenchResult *)_1363].total_ns, MEM[(struct BenchResult *)_1363].total_ns
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	%xmm1, %xmm0	# _221, _222
# b2_batch.cpp:99:     return r.ns_per_iter() / BATCH;
	divsd	.LC23(%rip), %xmm0	#, _223
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC24(%rip), %rsi	#,
	movq	%rax, %rdi	# _218,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$68, %edx	#,
	leaq	.LC27(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$69, %edx	#,
	leaq	.LC28(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$17, %edx	#,
	leaq	.LC29(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b2_batch.cpp:114:       << "      across all " << BATCH << " performs.\n";
	movl	$10000, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEi@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$11, %edx	#,
	leaq	.LC30(%rip), %rsi	#,
	movq	%rax, %rdi	# _78,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE20:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	208(%rsp), %rdi	# MEM[(const struct basic_string *)_1363]._M_dataplus._M_p, _232
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	224(%rsp), %rax	#, tmp1034
	cmpq	%rax, %rdi	# tmp1034, _232
	je	.L214	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	224(%rsp), %rax	# MEM[(struct basic_string *)_1363].D.58684._M_allocated_capacity, tmp1035
	leaq	1(%rax), %rsi	#, _235
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L214:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	160(%rsp), %rdi	# MEM[(const struct basic_string *)_1818]._M_dataplus._M_p, _228
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r13, %rdi	# tmp895, _228
	je	.L215	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	176(%rsp), %rax	# MEM[(struct basic_string *)_1818].D.58684._M_allocated_capacity, tmp1036
	leaq	1(%rax), %rsi	#, _231
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L215:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	112(%rsp), %rdi	# MEM[(const struct basic_string *)_1787]._M_dataplus._M_p, _224
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	128(%rsp), %rax	#, tmp1037
	cmpq	%rax, %rdi	# tmp1037, _224
	je	.L216	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	128(%rsp), %rax	# MEM[(struct basic_string *)_1787].D.58684._M_allocated_capacity, tmp1038
	leaq	1(%rax), %rsi	#, _227
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L216:
# b2_batch.cpp:116: }
	movq	312(%rsp), %rax	# D.218110, tmp937
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp937
	jne	.L267	#,
	addq	$328, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L180:
	.cfi_restore_state
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movq	%rax, %rdx	# MEM[(struct BenchResult *)_1787].iters, tmp529
	andl	$1, %eax	#, tmp530
	pxor	%xmm0, %xmm0	# tmp528
	shrq	%rdx	# tmp529
	orq	%rax, %rdx	# tmp530, tmp529
	cvtsi2sdq	%rdx, %xmm0	# tmp529, tmp528
	addsd	%xmm0, %xmm0	# tmp528, _998
	jmp	.L181	#
.L212:
	movq	%rax, %rdx	# MEM[(struct BenchResult *)_1363].iters, tmp778
	andl	$1, %eax	#, tmp779
	pxor	%xmm1, %xmm1	# tmp777
	shrq	%rdx	# tmp778
	orq	%rax, %rdx	# tmp779, tmp778
	cvtsi2sdq	%rdx, %xmm1	# tmp778, tmp777
	addsd	%xmm1, %xmm1	# tmp777, _221
	jmp	.L213	#
.L210:
	movq	%rax, %rdx	# MEM[(struct BenchResult *)_1818].iters, tmp745
	andl	$1, %eax	#, tmp746
	pxor	%xmm1, %xmm1	# tmp744
	shrq	%rdx	# tmp745
	orq	%rax, %rdx	# tmp746, tmp745
	cvtsi2sdq	%rdx, %xmm1	# tmp745, tmp744
	addsd	%xmm1, %xmm1	# tmp744, _201
	jmp	.L211	#
.L208:
	movq	%rax, %rdx	# MEM[(struct BenchResult *)_1787].iters, tmp712
	andl	$1, %eax	#, tmp713
	pxor	%xmm1, %xmm1	# tmp711
	shrq	%rdx	# tmp712
	orq	%rax, %rdx	# tmp713, tmp712
	cvtsi2sdq	%rdx, %xmm1	# tmp712, tmp711
	addsd	%xmm1, %xmm1	# tmp711, _181
	jmp	.L209	#
.L206:
	movq	%rax, %rdx	# MEM[(struct BenchResult *)_1363].iters, tmp662
	andl	$1, %eax	#, tmp663
	pxor	%xmm0, %xmm0	# tmp661
	shrq	%rdx	# tmp662
	orq	%rax, %rdx	# tmp663, tmp662
	cvtsi2sdq	%rdx, %xmm0	# tmp662, tmp661
	addsd	%xmm0, %xmm0	# tmp661, _1192
	jmp	.L207	#
.L197:
	movq	%rax, %rdx	# MEM[(struct BenchResult *)_1818].iters, tmp598
	andl	$1, %eax	#, tmp599
	pxor	%xmm0, %xmm0	# tmp597
	shrq	%rdx	# tmp598
	orq	%rax, %rdx	# tmp599, tmp598
	cvtsi2sdq	%rdx, %xmm0	# tmp598, tmp597
	addsd	%xmm0, %xmm0	# tmp597, _1108
	jmp	.L198	#
.L264:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	leal	1(%rdx), %ecx	#, _994
	leaq	272(%rsp), %rdi	#, tmp506
	movq	%r14, %rsi	# tmp890, tmp507
	rep movsb	# MEM <char[1:(sizetype) _994]> [(void *)_1670 + 16B]
	jmp	.L177	#
.L266:
	leal	1(%rdx), %ecx	#, _1188
	leaq	272(%rsp), %rdi	#, tmp639
	movq	%r14, %rsi	# tmp890, tmp640
	rep movsb	# MEM <char[1:(sizetype) _1188]> [(void *)_1670 + 16B]
	jmp	.L203	#
.L265:
	leal	1(%rdx), %ecx	#, _1104
	leaq	272(%rsp), %rdi	#, tmp575
	movq	%r14, %rsi	# tmp890, tmp576
	rep movsb	# MEM <char[1:(sizetype) _1104]> [(void *)_1670 + 16B]
	jmp	.L194	#
.L267:
# b2_batch.cpp:116: }
	call	__stack_chk_fail@PLT	#
.L244:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	#, tmp933
	jmp	.L233	#
.L246:
	movq	%rax, %rbp	# tmp929, tmp825
	jmp	.L223	#
.L258:
	jmp	.L259	#
.L245:
	movq	%rax, %rbp	# tmp930, tmp831
	jmp	.L225	#
.L243:
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	%rax, %rbx	# tmp932, tmp848
	jmp	.L230	#
.L241:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	# tmp934, tmp854
	jmp	.L232	#
.L240:
	movq	%rax, %rbp	#, tmp928
	jmp	.L217	#
	.section	.gcc_except_table
.LLSDA6985:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6985-.LLSDACSB6985
.LLSDACSB6985:
	.uleb128 .LEHB10-.LFB6985
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L245-.LFB6985
	.uleb128 0
	.uleb128 .LEHB11-.LFB6985
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L246-.LFB6985
	.uleb128 0
	.uleb128 .LEHB12-.LFB6985
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L240-.LFB6985
	.uleb128 0
	.uleb128 .LEHB13-.LFB6985
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB6985
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L241-.LFB6985
	.uleb128 0
	.uleb128 .LEHB15-.LFB6985
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L243-.LFB6985
	.uleb128 0
	.uleb128 .LEHB16-.LFB6985
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L258-.LFB6985
	.uleb128 0
	.uleb128 .LEHB17-.LFB6985
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L243-.LFB6985
	.uleb128 0
	.uleb128 .LEHB18-.LFB6985
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L241-.LFB6985
	.uleb128 0
	.uleb128 .LEHB19-.LFB6985
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L244-.LFB6985
	.uleb128 0
	.uleb128 .LEHB20-.LFB6985
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L241-.LFB6985
	.uleb128 0
.LLSDACSE6985:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6985
	.type	main.cold, @function
main.cold:
.LFSB6985:
.L261:
	.cfi_def_cfa_offset 384
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
# /usr/include/c++/16.1.1/bits/std_function.h:580: 	  __throw_bad_function_call();
	movq	312(%rsp), %rax	# D.218110, tmp936
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp936
	jne	.L268	#,
.LEHB21:
	call	_ZSt25__throw_bad_function_callv@PLT	#
.LEHE21:
.L233:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(struct basic_string *)_1670]._M_dataplus._M_p, _265
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rdi	# tmp890, _265
	je	.L232	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_1670].D.58684._M_allocated_capacity, tmp1050
	leaq	1(%rax), %rsi	#, _268
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L232:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	208(%rsp), %rdi	# MEM[(const struct basic_string *)_1363]._M_dataplus._M_p, _269
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	224(%rsp), %rax	#, tmp1051
	cmpq	%rax, %rdi	# tmp1051, _269
	je	.L235	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	224(%rsp), %rax	# MEM[(struct basic_string *)_1363].D.58684._M_allocated_capacity, tmp1052
	leaq	1(%rax), %rsi	#, _272
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L235:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	160(%rsp), %rdi	# MEM[(const struct basic_string *)_1818]._M_dataplus._M_p, _273
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r13, %rdi	# tmp895, _273
	je	.L236	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	176(%rsp), %rax	# MEM[(struct basic_string *)_1818].D.58684._M_allocated_capacity, tmp1053
	leaq	1(%rax), %rsi	#, _276
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L236:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	112(%rsp), %rdi	# MEM[(const struct basic_string *)_1787]._M_dataplus._M_p, _277
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	128(%rsp), %rax	#, tmp1054
	cmpq	%rax, %rdi	# tmp1054, _277
	je	.L237	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	128(%rsp), %rax	# MEM[(struct basic_string *)_1787].D.58684._M_allocated_capacity, tmp1055
	leaq	1(%rax), %rsi	#, _280
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L237:
	movq	312(%rsp), %rax	# D.218110, tmp939
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp939
	jne	.L269	#,
	movq	%rbx, %rdi	# tmp854,
.LEHB22:
	call	_Unwind_Resume@PLT	#
.L223:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(struct basic_string *)_1670]._M_dataplus._M_p, _248
.L222:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_1670].D.58684._M_allocated_capacity, tmp1044
	leaq	1(%rax), %rsi	#, _251
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L221:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdi	# MEM[(struct basic_string *)_1423]._M_dataplus._M_p, _252
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp888, _252
	je	.L225	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	64(%rsp), %rax	# MEM[(struct basic_string *)_1423].D.58684._M_allocated_capacity, tmp1045
	leaq	1(%rax), %rsi	#, _255
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L225:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	160(%rsp), %rdi	# MEM[(struct basic_string *)_1818]._M_dataplus._M_p, _256
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r13, %rdi	# tmp895, _256
	je	.L226	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	176(%rsp), %rax	# MEM[(struct basic_string *)_1818].D.58684._M_allocated_capacity, tmp1046
	leaq	1(%rax), %rsi	#, _259
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L226:
	movq	312(%rsp), %rax	# D.218110, tmp938
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp938
	jne	.L270	#,
	movq	%rbp, %rdi	# tmp831,
	call	_Unwind_Resume@PLT	#
.LEHE22:
.L270:
	call	__stack_chk_fail@PLT	#
.L269:
	call	__stack_chk_fail@PLT	#
.L260:
# /usr/include/c++/16.1.1/bits/std_function.h:580: 	  __throw_bad_function_call();
	movq	312(%rsp), %rax	# D.218110, tmp935
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp935
	jne	.L271	#,
.LEHB23:
	call	_ZSt25__throw_bad_function_callv@PLT	#
.LEHE23:
.L242:
.L259:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(struct basic_string *)_1670]._M_dataplus._M_p, _260
	movq	%rax, %rbx	#, tmp931
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rdi	# tmp890, _260
	je	.L230	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_1670].D.58684._M_allocated_capacity, tmp1047
	leaq	1(%rax), %rsi	#, _263
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L230:
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	64(%rsp), %rax	# MEM[(struct _Function_base *)_1423]._M_manager, _264
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	testq	%rax, %rax	# _264
	je	.L232	#,
# /usr/include/c++/16.1.1/bits/std_function.h:249: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	leaq	48(%rsp), %rsi	#, tmp1048
	movl	$3, %edx	#,
	movq	%rsi, %rdi	# tmp1048, tmp1049
	call	*%rax	# _264
	jmp	.L232	#
.L271:
# /usr/include/c++/16.1.1/bits/std_function.h:580: 	  __throw_bad_function_call();
	call	__stack_chk_fail@PLT	#
.L268:
	call	__stack_chk_fail@PLT	#
.L217:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(struct basic_string *)_1795]._M_dataplus._M_p, _236
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp808
	cmpq	%rax, %rdi	# tmp808, _236
	je	.L218	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_1795].D.58684._M_allocated_capacity, tmp1039
	leaq	1(%rax), %rsi	#, _239
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L218:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	208(%rsp), %rdi	# MEM[(struct basic_string *)_1363]._M_dataplus._M_p, _240
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	224(%rsp), %rax	#, tmp1040
	cmpq	%rax, %rdi	# tmp1040, _240
	jne	.L272	#,
.L219:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	112(%rsp), %rdi	# MEM[(struct basic_string *)_1787]._M_dataplus._M_p, _244
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	128(%rsp), %rax	#, tmp1042
	cmpq	%rax, %rdi	# tmp1042, _244
	je	.L220	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	128(%rsp), %rax	# MEM[(struct basic_string *)_1787].D.58684._M_allocated_capacity, tmp1043
	leaq	1(%rax), %rsi	#, _247
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L220:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(struct basic_string *)_1670]._M_dataplus._M_p, _248
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rdi	# tmp890, _248
	je	.L221	#,
	jmp	.L222	#
.L272:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	224(%rsp), %rax	# MEM[(struct basic_string *)_1363].D.58684._M_allocated_capacity, tmp1041
	leaq	1(%rax), %rsi	#, _243
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L219	#
	.cfi_endproc
.LFE6985:
	.section	.gcc_except_table
.LLSDAC6985:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6985-.LLSDACSBC6985
.LLSDACSBC6985:
	.uleb128 .LEHB21-.LCOLDB37
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L242-.LCOLDB37
	.uleb128 0
	.uleb128 .LEHB22-.LCOLDB37
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LCOLDB37
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L242-.LCOLDB37
	.uleb128 0
.LLSDACSEC6985:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE37:
	.section	.text.startup
.LHOTE37:
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
	.type	_ZTIZ4mainEUlvE0_, @object
	.size	_ZTIZ4mainEUlvE0_, 16
_ZTIZ4mainEUlvE0_:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
# <anonymous>:
	.quad	_ZTSZ4mainEUlvE0_
	.section	.rodata
	.align 8
	.type	_ZTSZ4mainEUlvE0_, @object
	.size	_ZTSZ4mainEUlvE0_, 15
_ZTSZ4mainEUlvE0_:
	.string	"*Z4mainEUlvE0_"
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
	.weak	_ZN2fx6detail12effect_tag_vI4TickEE
	.section	.rodata._ZN2fx6detail12effect_tag_vI4TickEE,"aG",@progbits,_ZN2fx6detail12effect_tag_vI4TickEE,comdat
	.type	_ZN2fx6detail12effect_tag_vI4TickEE, @gnu_unique_object
	.size	_ZN2fx6detail12effect_tag_vI4TickEE, 1
_ZN2fx6detail12effect_tag_vI4TickEE:
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
	.section	.data.rel.ro.local,"aw"
	.align 8
.LC3:
	.quad	_ZN2fx6detail12effect_tag_vI4TickEE
	.align 8
.LC4:
	.quad	_Z9sum_ticksP20_ZL9sum_ticksi.Frame.actor
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC11:
	.quad	56
	.quad	88
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC23:
	.long	0
	.long	1086556160
	.section	.rodata.cst16
	.align 16
.LC31:
	.quad	8245929706658607714
	.quad	7309377810793195892
	.align 16
.LC32:
	.quad	8245922084252822898
	.quad	2314978247607263341
	.align 16
.LC33:
	.quad	7959380316721017971
	.quad	8028827894382425187
	.align 16
.LC34:
	.quad	7382074271901317222
	.quad	7070772812766343791
	.align 16
.LC35:
	.quad	7142823785373196832
	.quad	7308895194176254575
	.section	.data.rel.ro.local
	.align 8
.LC36:
	.quad	_ZNSt17_Function_handlerIFivEZ4mainEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
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
