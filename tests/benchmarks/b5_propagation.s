	.file	"b5_propagation.cpp"
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
	.section	.text._ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,"axG",@progbits,_ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,comdat
	.p2align 4
	.weak	_ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.type	_ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, @function
_ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
.LFB7119:
	.cfi_startproc
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	8(%rsi), %rdi	# MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr, _4
# ../../effects.hpp:1140:   pa->result_ = std::move(v);
	movl	$1, 4(%rsi)	#, MEM[(struct PerformAwaitable *)_3(D)].result_
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	jmp	*(%rdi)	# MEM[(void (*<T123>) (void *) *)_4]
	.cfi_endproc
.LFE7119:
	.size	_ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, .-_ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.section	.text._ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
	.type	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, @function
_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE:
.LFB7624:
	.cfi_startproc
# /usr/include/c++/16.1.1/any:588:     any::_Manager_internal<_Tp>::
	movq	%rdx, %rcx	# __arg, __arg
# /usr/include/c++/16.1.1/any:593:       switch (__which)
	cmpl	$4, %edi	#, __which
	ja	.L5	#,
	leaq	.L8(%rip), %rdx	#, tmp109
	movl	%edi, %edi	# __which, __which
	movslq	(%rdx,%rdi,4), %rax	#, tmp111
	addq	%rdx, %rax	# tmp109, tmp112
	jmp	*%rax	# tmp112
	.section	.rodata._ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"aG",@progbits,_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 4
	.align 4
.L8:
	.long	.L12-.L8
	.long	.L11-.L8
	.long	.L10-.L8
	.long	.L5-.L8
	.long	.L7-.L8
	.section	.text._ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.p2align 4,,10
	.p2align 3
.L7:
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
.L5:
# /usr/include/c++/16.1.1/any:618:     }
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
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
.L12:
# /usr/include/c++/16.1.1/any:592:       auto __ptr = reinterpret_cast<const _Tp*>(&__any->_M_storage._M_buffer);
	addq	$8, %rsi	#, tmp114
	movq	%rsi, (%rcx)	# tmp114, __arg_12(D)->_M_obj
# /usr/include/c++/16.1.1/any:597: 	break;
	ret	
	.p2align 4,,10
	.p2align 3
.L11:
# /usr/include/c++/16.1.1/any:600: 	__arg->_M_typeinfo = &typeid(_Tp);
	leaq	_ZTIi(%rip), %rax	#, tmp120
	movq	%rax, (%rcx)	# tmp120, __arg_12(D)->_M_typeinfo
# /usr/include/c++/16.1.1/any:602: 	break;
	ret	
	.cfi_endproc
.LFE7624:
	.size	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, .-_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
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
	jb	.L14	#,
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
	jb	.L14	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rsi, %rdx	# __intptr, _6
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rax, 8(%r8)	# <retval>, MEM[(void * &)this_15(D) + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rax, %rdx	# __aligned, prephitmp_1
	movq	%rdx, 16(%r8)	# prephitmp_1, MEM[(size_t &)this_15(D) + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rax, %rax	# <retval>
	je	.L14	#,
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
.L14:
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"basic_string::_M_create"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0:
.LFB8853:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp	# this, this
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
# /usr/include/c++/16.1.1/bits/stl_iterator_base_funcs.h:185: 	    return __last - __first;
	movq	%rdx, %rbx	# __end, __end
	subq	%rsi, %rbx	# __beg, __end
# /usr/include/c++/16.1.1/bits/basic_string.tcc:227:       basic_string<_CharT, _Traits, _Alloc>::
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
# /usr/include/c++/16.1.1/bits/basic_string.tcc:233: 	if (__dnew > size_type(_S_local_capacity))
	cmpq	$15, %rbx	#, _4
	ja	.L33	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	(%rdi), %rdx	# MEM[(const struct basic_string *)this_5(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_5(D)]._M_dataplus._M_p
	movq	%rdx, %rdi	# MEM[(const struct basic_string *)this_5(D)]._M_dataplus._M_p, _8
# /usr/include/c++/16.1.1/bits/basic_string.h:454: 	if (__n == 1)
	cmpq	$1, %rbx	#, _4
	je	.L34	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:426: 	if (__n == 0)
	testq	%rbx, %rbx	# _4
	jne	.L25	#,
.L27:
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, (%rdx,%rbx)	#, MEM[(char_type &)_12]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rbx, 8(%rbp)	# _4, this_5(D)->_M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.tcc:258:       }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L34:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movzbl	(%rsi), %eax	# MEM[(const char_type &)__beg_2(D)], _9
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	%al, (%rdx)	# _9, MEM[(char_type &)_8]
	movq	0(%rbp), %rdx	# MEM[(const struct basic_string *)this_5(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_5(D)]._M_dataplus._M_p
	jmp	.L27	#
.L33:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	movabsq	$9223372036854775806, %rax	#, tmp108
	cmpq	%rbx, %rax	# _4, tmp108
	jb	.L31	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	leaq	1(%rbx), %rdi	#, _35
	movq	%rsi, 8(%rsp)	# __beg, %sfp
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	%rbx, 16(%rbp)	# _4, this_5(D)->D.58684._M_allocated_capacity
	movq	8(%rsp), %rsi	# %sfp, __beg
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 0(%rbp)	# _8, this_5(D)->_M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rdi	# _8, _8
.L25:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%rbx, %rdx	# _4,
	call	memcpy@PLT	#
	movq	0(%rbp), %rdx	# MEM[(const struct basic_string *)this_5(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_5(D)]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L27	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0.cold, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0.cold:
.LFSB8853:
.L31:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -24
	.cfi_offset 6, -16
# /usr/include/c++/16.1.1/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	leaq	.LC1(%rip), %rdi	#,
	call	_ZSt20__throw_length_errorPKc@PLT	#
	.cfi_endproc
.LFE8853:
	.text
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	.section	.text.unlikely
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0.cold, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0.cold
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.str1.1
.LC3:
	.string	"    direct"
	.text
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.1, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.1:
.LFB8857:
	.cfi_startproc
# /usr/include/c++/16.1.1/bits/basic_string.h:245: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	leaq	16(%rdi), %rax	#, tmp100
# /usr/include/c++/16.1.1/bits/basic_string.h:738: 	_M_construct(__s, __end, forward_iterator_tag());
	leaq	10+.LC3(%rip), %rdx	#, tmp101
# /usr/include/c++/16.1.1/bits/basic_string.h:245: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	movq	%rax, (%rdi)	# tmp100, MEM[(struct _Alloc_hider *)this_1(D)]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:738: 	_M_construct(__s, __end, forward_iterator_tag());
	leaq	-10(%rdx), %rsi	#, tmp102
	jmp	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0	#
	.cfi_endproc
.LFE8857:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.1, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.1
	.section	.rodata.str1.1
.LC4:
	.string	"    fx"
	.text
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0:
.LFB8858:
	.cfi_startproc
# /usr/include/c++/16.1.1/bits/basic_string.h:245: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	leaq	16(%rdi), %rax	#, tmp100
# /usr/include/c++/16.1.1/bits/basic_string.h:738: 	_M_construct(__s, __end, forward_iterator_tag());
	leaq	6+.LC4(%rip), %rdx	#, tmp101
# /usr/include/c++/16.1.1/bits/basic_string.h:245: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	movq	%rax, (%rdi)	# tmp100, MEM[(struct _Alloc_hider *)this_1(D)]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:738: 	_M_construct(__s, __end, forward_iterator_tag());
	leaq	-6(%rdx), %rsi	#, tmp102
	jmp	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0	#
	.cfi_endproc
.LFE8858:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4
	.type	_Z7ping_d1P18_ZL7ping_d1v.Frame.destroy, @function
_Z7ping_d1P18_ZL7ping_d1v.Frame.destroy:
.LFB6260:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6260
	movzwl	88(%rdi), %eax	# frame_ptr_4(D)->_Coro_resume_index, _2
	orl	$1, %eax	#, _2
	movw	%ax, 88(%rdi)	# _2, frame_ptr_4(D)->_Coro_resume_index
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	cmpw	$7, %ax	#, _2
	ja	.L45	#,
.L39:
.L40:
.L41:
.L42:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	subw	$1, 90(%rdi)	#, frame_ptr_4(D)->_Coro_frame_refcount
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	je	.L57	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L57:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_4(D) + 64B]._M_exception_object
	je	.L46	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _18
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L46:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_4(D) + 32B]._M_manager, _21
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _21
	je	.L47	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _20
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _21
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L47:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	cmpb	$0, 92(%rax)	#, frame_ptr_4(D)->_Coro_frame_needs_free
	jne	.L58	#,
.L43:
.L37:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L58:
	.cfi_restore_state
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	128(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_4(D) + 128B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L48	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_24->_vptr.memory_resource, mr_24->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_25 + 24B], _26
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp119
	cmpq	%rdx, %r8	# tmp119, _26
	je	.L37	#,
	movl	$16, %ecx	#,
	movl	$136, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*%r8	# _26
	jmp	.L37	#
	.p2align 4,,10
	.p2align 3
.L48:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$136, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB0:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE0:
.L38:
	.section	.gcc_except_table,"a",@progbits
.LLSDA6260:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6260-.LLSDACSB6260
.LLSDACSB6260:
	.uleb128 .LEHB0-.LFB6260
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
.LLSDACSE6260:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6260
	.type	_Z7ping_d1P18_ZL7ping_d1v.Frame.destroy.cold, @function
_Z7ping_d1P18_ZL7ping_d1v.Frame.destroy.cold:
.LFSB6260:
.L45:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	ud2	
	.cfi_endproc
.LFE6260:
	.section	.gcc_except_table
.LLSDAC6260:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6260-.LLSDACSBC6260
.LLSDACSBC6260:
.LLSDACSEC6260:
	.section	.text.unlikely
	.text
	.size	_Z7ping_d1P18_ZL7ping_d1v.Frame.destroy, .-_Z7ping_d1P18_ZL7ping_d1v.Frame.destroy
	.section	.text.unlikely
	.size	_Z7ping_d1P18_ZL7ping_d1v.Frame.destroy.cold, .-_Z7ping_d1P18_ZL7ping_d1v.Frame.destroy.cold
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4
	.type	_Z7ping_d1P18_ZL7ping_d1v.Frame.actor, @function
_Z7ping_d1P18_ZL7ping_d1v.Frame.actor:
.LFB6259:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6259
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movzwl	88(%rdi), %eax	# frame_ptr_15(D)->_Coro_resume_index, _1
	testb	$1, %al	#, _1
	je	.L60	#,
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	cmpw	$7, %ax	#, _1
	ja	.L84	#,
.L62:
.L68:
.L69:
.L70:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	subw	$1, 90(%rdi)	#, frame_ptr_15(D)->_Coro_frame_refcount
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	je	.L85	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L60:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	cmpw	$4, %ax	#, _1
	je	.L63	#,
	ja	.L64	#,
	testw	%ax, %ax	# _1
	je	.L65	#,
.L66:
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	leaq	16(%rdi), %rax	#, tmp121
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movl	$4, %edx	#,
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movb	$1, 93(%rdi)	#, frame_ptr_15(D)->_Coro_initial_await_resume_called
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	movq	%rax, 112(%rdi)	# tmp121, MEM[(struct PerformAwaitable *)frame_ptr_15(D) + 96B].abort_base_
# ../../effects.hpp:1123:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	leaq	_ZN2fx6detail12effect_tag_vI4PingEE(%rip), %rax	#, tmp135
	movq	%rax, 48(%rdi)	# tmp135, MEM[(struct promise_type &)frame_ptr_15(D) + 16].D.146467.D.145421.effect_tag
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	leaq	96(%rdi), %rax	#, tmp123
# ../../effects.hpp:491:     return a;
	movl	$0, 100(%rdi)	#, frame_ptr_15(D)->Aw0_2_3.result_
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movw	%dx, 88(%rdi)	#, frame_ptr_15(D)->_Coro_resume_index
# ../../effects.hpp:1121:     caller_ = caller;
	movq	%rdi, 104(%rdi)	# frame_ptr, MEM[(struct PerformAwaitable *)frame_ptr_15(D) + 96B].caller_._M_fr_ptr
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movq	%rax, 56(%rdi)	# tmp123, MEM[(struct promise_type &)frame_ptr_15(D) + 16].D.146467.D.145421.payload_ptr
	ret	
	.p2align 4,,10
	.p2align 3
.L85:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_15(D) + 64B]._M_exception_object
	je	.L71	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _37
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L71:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_15(D) + 32B]._M_manager, _40
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _40
	je	.L72	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _39
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _40
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L72:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	cmpb	$0, 92(%rax)	#, frame_ptr_15(D)->_Coro_frame_needs_free
	jne	.L86	#,
.L67:
.L59:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L65:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movl	$2, %ecx	#,
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	addw	$1, 90(%rdi)	#, frame_ptr_15(D)->_Coro_frame_refcount
	movb	$0, 93(%rdi)	#, frame_ptr_15(D)->_Coro_initial_await_resume_called
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movw	%cx, 88(%rdi)	#, frame_ptr_15(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L63:
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movl	100(%rdi), %eax	# MEM[(type &)frame_ptr_15(D) + 100], MEM[(type &)frame_ptr_15(D) + 100]
	movb	$1, 84(%rdi)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_15(D) + 84B]
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movq	$0, (%rdi)	#, frame_ptr_15(D)->_Coro_resume_fn
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movl	%eax, 80(%rdi)	# MEM[(type &)frame_ptr_15(D) + 100], MEM <int> [(struct promise_type *)frame_ptr_15(D) + 80B]
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movl	$6, %eax	#,
	movw	%ax, 88(%rdi)	#, frame_ptr_15(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L64:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	cmpw	$6, %ax	#, _1
	je	.L70	#,
	jmp	.L61	#
	.p2align 4,,10
	.p2align 3
.L86:
	.cfi_def_cfa_offset 32
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	128(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_15(D) + 128B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L73	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_43->_vptr.memory_resource, mr_43->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_44 + 24B], _45
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp131
	cmpq	%rdx, %r8	# tmp131, _45
	je	.L59	#,
	movl	$16, %ecx	#,
	movl	$136, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*%r8	# _45
	jmp	.L59	#
	.p2align 4,,10
	.p2align 3
.L73:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$136, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB1:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE1:
.L84:
	jmp	.L61	#
	.section	.gcc_except_table
.LLSDA6259:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6259-.LLSDACSB6259
.LLSDACSB6259:
	.uleb128 .LEHB1-.LFB6259
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE6259:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6259
	.type	_Z7ping_d1P18_ZL7ping_d1v.Frame.actor.cold, @function
_Z7ping_d1P18_ZL7ping_d1v.Frame.actor.cold:
.LFSB6259:
.L61:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	ud2	
	.cfi_endproc
.LFE6259:
	.section	.gcc_except_table
.LLSDAC6259:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6259-.LLSDACSBC6259
.LLSDACSBC6259:
.LLSDACSEC6259:
	.section	.text.unlikely
	.text
	.size	_Z7ping_d1P18_ZL7ping_d1v.Frame.actor, .-_Z7ping_d1P18_ZL7ping_d1v.Frame.actor
	.section	.text.unlikely
	.size	_Z7ping_d1P18_ZL7ping_d1v.Frame.actor.cold, .-_Z7ping_d1P18_ZL7ping_d1v.Frame.actor.cold
.LCOLDE6:
	.text
.LHOTE6:
	.p2align 4
	.type	_ZL7ping_d1v, @function
_ZL7ping_d1v:
.LFB6235:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp	# .result_ptr, <retval>
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rbx	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rbx, %rbx	# mr
	je	.L88	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rbx), %rax	# mr_43->_vptr.memory_resource, mr_43->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp123
	movq	16(%rax), %rax	# MEM[(int (*) () *)_45 + 16B], _46
	cmpq	%rdx, %rax	# tmp123, _46
	jne	.L89	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rbx), %rdx	# MEM[(size_t &)mr_43 + 16], _58
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$135, %rdx	#, _58
	jbe	.L90	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rbx), %rcx	# MEM[(void * &)mr_43 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-136(%rdx), %rdi	#, _67
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rcx), %rax	#, _63
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rax	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rax, %rsi	# __aligned, __diff_66
	subq	%rcx, %rsi	# __intptr, __diff_66
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rsi, %rdi	# __diff_66, _67
	jb	.L90	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rcx, %rdx	# __intptr, _13
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rax, 8(%rbx)	# __p, MEM[(void * &)mr_43 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rax, %rdx	# __aligned, prephitmp_6
	movq	%rdx, 16(%rbx)	# prephitmp_6, MEM[(size_t &)mr_43 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rax, %rax	# __p
	je	.L90	#,
.L91:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	136(%rax), %rcx	#, tmp128
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	subq	$136, %rdx	#, tmp129
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rcx, 8(%rbx)	# tmp128, MEM[(struct monotonic_buffer_resource *)mr_43]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rdx, 16(%rbx)	# tmp129, MEM[(struct monotonic_buffer_resource *)mr_43]._M_avail
.L92:
.L93:
.L94:
.L95:
.L96:
.L97:
.L98:
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movq	.LC9(%rip), %xmm0	#, _102
	leaq	_Z7ping_d1P18_ZL7ping_d1v.Frame.destroy(%rip), %rdx	#, tmp120
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rbx, 128(%rax)	# mr, MEM[(struct memory_resource * *)raw_49 + 128B]
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movq	%rdx, %xmm1	# tmp120, tmp120
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rax), %rdx	#, tmp134
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movb	$1, 92(%rax)	#, MEM[(struct _ZL7ping_d1v.Frame *)raw_49]._Coro_frame_needs_free
	punpcklqdq	%xmm1, %xmm0	# tmp120, _102
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rax)	#, MEM[(struct PromiseAbortBase *)raw_49 + 16B].aborted
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movups	%xmm0, (%rax)	# _102, MEM <vector(2) long unsigned int> [(void (*<T1778d>) (struct _ZL7ping_d1v.Frame *) *)raw_49]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp131
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	$0, 24(%rax)	#, MEM[(struct PromiseAbortBase *)raw_49 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rax)	#, MEM[(struct any *)raw_49 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 84(%rax)	#, MEM[(struct _Optional_payload_base *)raw_49 + 80B]._M_engaged
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rdx, 72(%rax)	# tmp134, MEM[(struct promise_type *)raw_49 + 16B].D.146467.D.145421.result_ptr
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, 40(%rax)	# tmp131, MEM <vector(2) long unsigned int> [(void *)raw_49 + 40B]
	movups	%xmm0, 56(%rax)	# tmp131, MEM <vector(2) long unsigned int> [(void *)raw_49 + 56B]
# ../../effects.hpp:521:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	movq	%rax, 0(%rbp)	# __p, MEM[(struct OwnedHandle *)_Coro_gro_14(D)].h._M_fr_ptr
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movb	$0, 93(%rax)	#, MEM[(struct _ZL7ping_d1v.Frame *)raw_49]._Coro_initial_await_resume_called
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	movl	$65538, 88(%rax)	#, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_49 + 88B]
# b5_propagation.cpp:26: static auto ping_d1() -> Ping::Fx<int> { co_return perform(Ping{}); }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L90:
	.cfi_restore_state
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movl	$16, %edx	#,
	movl	$136, %esi	#,
	movq	%rbx, %rdi	# mr,
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	8(%rbx), %rax	# MEM[(struct monotonic_buffer_resource *)mr_43]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%rbx), %rdx	# MEM[(struct monotonic_buffer_resource *)mr_43]._M_avail, prephitmp_6
	jmp	.L91	#
	.p2align 4,,10
	.p2align 3
.L88:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$136, %edi	#,
	call	_Znwm@PLT	#
	jmp	.L98	#
	.p2align 4,,10
	.p2align 3
.L89:
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$136, %esi	#,
	movq	%rbx, %rdi	# mr,
	call	*%rax	# _46
	jmp	.L98	#
	.cfi_endproc
.LFE6235:
	.size	_ZL7ping_d1v, .-_ZL7ping_d1v
	.section	.rodata._Z12print_resultRK11BenchResult.str1.1,"aMS",@progbits,1
.LC10:
	.string	"  "
.LC11:
	.string	" "
.LC12:
	.string	" ns/iter\n"
	.section	.text._Z12print_resultRK11BenchResult,"axG",@progbits,_Z12print_resultRK11BenchResult,comdat
	.p2align 4
	.weak	_Z12print_resultRK11BenchResult
	.type	_Z12print_resultRK11BenchResult, @function
_Z12print_resultRK11BenchResult:
.LFB6233:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# r, r
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movq	32(%rdi), %rax	# r_2(D)->iters, r_2(D)->iters
	testq	%rax, %rax	# r_2(D)->iters
	js	.L101	#,
	pxor	%xmm1, %xmm1	# _25
	cvtsi2sdq	%rax, %xmm1	# r_2(D)->iters, _25
.L102:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movsd	40(%rbx), %xmm0	# r_2(D)->total_ns, r_2(D)->total_ns
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	leaq	.LC10(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	%xmm1, %xmm0	# _25, _26
	movsd	%xmm0, 8(%rsp)	# _26, %sfp
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _19
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp159
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	(%rbx), %rsi	# MEM[(const struct basic_string *)r_2(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)r_2(D)]._M_dataplus._M_p
	movq	%rcx, %rdi	# tmp159,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_19 + -24B], MEM[(long int *)_19 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _22->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_19 + -24B], _18
	addq	%rcx, %rdx	# tmp159, _18
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _18->_M_flags, _38
	andb	$79, %al	#, _38
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp143
	movl	%eax, 24(%rdx)	# tmp143, MEM[(_Ios_Fmtflags &)_18 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	8(%rbx), %rdx	# MEM[(const struct basic_string *)r_2(D)]._M_string_length, MEM[(const struct basic_string *)r_2(D)]._M_string_length
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC11(%rip), %rsi	#,
	movl	$1, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbx	#, _15
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movq	%rax, %rdi	# _15,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# _15->_vptr.basic_ostream, _8
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movsd	8(%rsp), %xmm0	# %sfp, _26
	movq	%rbx, %rdi	# _15,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_8 + -24B], MEM[(long int *)_8 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _11->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_8 + -24B], _7
	addq	%rbx, %rdx	# _15, _7
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _7->_M_flags, _40
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _7->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _40
	orb	$-124, %al	#, tmp152
	movl	%eax, 24(%rdx)	# tmp152, MEM[(_Ios_Fmtflags &)_7 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# bench.hpp:52: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC12(%rip), %rsi	#,
	movq	%rax, %rdi	# _3,
# bench.hpp:52: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	.p2align 4,,10
	.p2align 3
.L101:
	.cfi_restore_state
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movq	%rax, %rdx	# r_2(D)->iters, tmp131
	andl	$1, %eax	#, tmp132
	pxor	%xmm1, %xmm1	# tmp130
	shrq	%rdx	# tmp131
	orq	%rax, %rdx	# tmp132, tmp131
	cvtsi2sdq	%rdx, %xmm1	# tmp131, tmp130
	addsd	%xmm1, %xmm1	# tmp130, _25
	jmp	.L102	#
	.cfi_endproc
.LFE6233:
	.size	_Z12print_resultRK11BenchResult, .-_Z12print_resultRK11BenchResult
	.section	.text._ZN2fx6detail16PromiseAbortBaseD2Ev,"axG",@progbits,_ZN2fx6detail16PromiseAbortBaseD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN2fx6detail16PromiseAbortBaseD2Ev
	.type	_ZN2fx6detail16PromiseAbortBaseD2Ev, @function
_ZN2fx6detail16PromiseAbortBaseD2Ev:
.LFB6244:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6244
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rdi, %rsi	# this, this
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 48(%rdi)	#, MEM[(struct exception_ptr *)this_3(D) + 48B]._M_exception_object
	je	.L105	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	48(%rdi), %rdi	#, _1
	movq	%rsi, 8(%rsp)	# this, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rsi	# %sfp, this
.L105:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	16(%rsi), %rax	# MEM[(const struct any *)this_3(D) + 16B]._M_manager, _6
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _6
	je	.L104	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	addq	$16, %rsi	#, _2
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _6
.L104:
# ../../effects.hpp:144: struct PromiseAbortBase {
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE6244:
	.section	.gcc_except_table._ZN2fx6detail16PromiseAbortBaseD2Ev,"aG",@progbits,_ZN2fx6detail16PromiseAbortBaseD5Ev,comdat
.LLSDA6244:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6244-.LLSDACSB6244
.LLSDACSB6244:
.LLSDACSE6244:
	.section	.text._ZN2fx6detail16PromiseAbortBaseD2Ev,"axG",@progbits,_ZN2fx6detail16PromiseAbortBaseD5Ev,comdat
	.size	_ZN2fx6detail16PromiseAbortBaseD2Ev, .-_ZN2fx6detail16PromiseAbortBaseD2Ev
	.weak	_ZN2fx6detail16PromiseAbortBaseD1Ev
	.set	_ZN2fx6detail16PromiseAbortBaseD1Ev,_ZN2fx6detail16PromiseAbortBaseD2Ev
	.section	.text._ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv,"axG",@progbits,_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv,comdat
	.align 2
	.p2align 4
	.weak	_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv
	.type	_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv, @function
_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv:
.LFB6787:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 48
# ../../effects.hpp:458:   void unhandled_exception() { exception = std::current_exception(); }
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], this
	movq	%rbx, 24(%rsp)	# this, D.200936
	movq	%rdi, %rbx	# this, this
# ../../effects.hpp:458:   void unhandled_exception() { exception = std::current_exception(); }
	leaq	8(%rsp), %rdi	#, tmp111
	call	_ZSt17current_exceptionv@PLT	#
# /usr/include/c++/16.1.1/bits/exception_ptr.h:161:       : _M_exception_object(__o._M_exception_object)
	movq	8(%rsp), %rdx	# D.155412._M_exception_object, _6
# /usr/include/c++/16.1.1/bits/exception_ptr.h:162:       { __o._M_exception_object = nullptr; }
	movq	$0, 8(%rsp)	#, D.155412._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:282:       _M_exception_object = __other._M_exception_object;
	movq	48(%rbx), %rax	# MEM[(struct exception_ptr &)this_3(D) + 48]._M_exception_object, _7
# /usr/include/c++/16.1.1/bits/exception_ptr.h:283:       __other._M_exception_object = __tmp;
	movq	%rdx, 48(%rbx)	# _6, MEM[(struct exception_ptr &)this_3(D) + 48]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:282:       _M_exception_object = __other._M_exception_object;
	movq	%rax, 16(%rsp)	# _7, D.199170._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	testq	%rax, %rax	# _7
	je	.L111	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	16(%rsp), %rdi	#, tmp105
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 8(%rsp)	#, D.155412._M_exception_object
	je	.L111	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	8(%rsp), %rdi	#, tmp112
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L111:
# ../../effects.hpp:458:   void unhandled_exception() { exception = std::current_exception(); }
	movq	24(%rsp), %rax	# D.200936, tmp109
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	jne	.L119	#,
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
.L119:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6787:
	.size	_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv, .-_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"fx: unhandled effect -- no matching handler installed"
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4
	.type	_Z7ping_d2P18_ZL7ping_d2v.Frame.actor, @function
_Z7ping_d2P18_ZL7ping_d2v.Frame.actor:
.LFB6266:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6266
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 64
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movzwl	88(%rdi), %eax	# frame_ptr_22(D)->_Coro_resume_index, _1
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], frame_ptr
	movq	%rbx, 24(%rsp)	# frame_ptr, D.200983
	movq	%rdi, %rbx	# frame_ptr, frame_ptr
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	testb	$1, %al	#, _1
	je	.L121	#,
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmpw	$5, %ax	#, _1
	jne	.L199	#,
.L122:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _49
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _49
	je	.L147	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _49,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_49 + 8B]
.L147:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _25
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _25
	je	.L150	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _25,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_25 + 8B]
.L123:
.L149:
.L150:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	subw	$1, 90(%rbx)	#, frame_ptr_22(D)->_Coro_frame_refcount
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	jne	.L120	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)frame_ptr_22(D) + 64B]._M_exception_object
	je	.L151	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _97
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L151:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)frame_ptr_22(D) + 32B]._M_manager, _100
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _100
	je	.L152	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _99
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _100
.L152:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmpb	$0, 92(%rbx)	#, frame_ptr_22(D)->_Coro_frame_needs_free
	jne	.L200	#,
.L120:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movq	24(%rsp), %rax	# D.200983, tmp206
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp206
	jne	.L197	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L121:
	.cfi_restore_state
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmpw	$4, %ax	#, _1
	je	.L125	#,
	ja	.L126	#,
	testw	%ax, %ax	# _1
	je	.L127	#,
.L128:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movb	$1, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	leaq	104(%rbx), %rdi	#, tmp151
.LEHB2:
	call	_ZL7ping_d1v	#
.LEHE2:
# /usr/include/c++/16.1.1/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	movq	104(%rbx), %rax	# MEM[(struct coroutine_handle &)frame_ptr_22(D) + 104], __old_val$_M_fr_ptr
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movl	$4, %ecx	#,
# /usr/include/c++/16.1.1/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	movq	$0, 104(%rbx)	#, MEM[(struct coroutine_handle *)frame_ptr_22(D) + 104B]
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movw	%cx, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
# ../../effects.hpp:522:   OwnedHandle(OwnedHandle &&o) noexcept : h(std::exchange(o.h, {})) {}
	movq	%rax, 96(%rbx)	# __old_val$_M_fr_ptr, MEM[(struct OwnedHandle *)frame_ptr_22(D) + 96B]
	jmp	.L129	#
	.p2align 4,,10
	.p2align 3
.L199:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	jbe	.L150	#,
	cmpw	$7, %ax	#, _1
	je	.L150	#,
	jmp	.L124	#
	.p2align 4,,10
	.p2align 3
.L125:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, __old_val$_M_fr_ptr
.L129:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rax, %rdi	# __old_val$_M_fr_ptr,
.LEHB3:
	call	*(%rax)	# MEM[(void (*<T123>) (void *) *)prephitmp_34]
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	96(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _84
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_84]
	je	.L201	#,
	.p2align 4
	.p2align 3
.L139:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:893:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rcx), %rdx	# MEM[(struct promise_type &)_84 + 16].D.146467.D.145421.effect_tag, _86
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L132	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _86, n_91->effect_tag
	je	.L133	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L134:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_89->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L132	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_95->effect_tag, _86
	jne	.L134	#,
.L133:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rcx), %rsi	# MEM[(struct promise_type &)_84 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_84 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_71->dispatch
.LEHE3:
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	96(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _84
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_84]
	jne	.L139	#,
.L201:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rcx), %rax	# MEM[(const struct exception_ptr *)_84 + 64B]._M_exception_object, _88
# ../../effects.hpp:896:     if (p.exception)
	testq	%rax, %rax	# _88
	jne	.L202	#,
# ../../effects.hpp:898:     return std::move(*p.result);
	movl	80(%rcx), %eax	# MEM[(type &)_84 + 80], _28
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rcx, %rdi	# _84,
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movb	$1, 84(%rbx)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_22(D) + 84B]
	movl	%eax, 80(%rbx)	# _28, MEM <int> [(struct promise_type *)frame_ptr_22(D) + 80B]
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rcx)	# MEM[(void (*<T123>) (void *) *)_84 + 8B]
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _33
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _33
	je	.L146	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _33,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_33 + 8B]
.L146:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movl	$6, %edx	#,
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movq	$0, (%rbx)	#, frame_ptr_22(D)->_Coro_resume_fn
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movw	%dx, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	jmp	.L120	#
.L127:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movl	$2, %esi	#,
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	addw	$1, 90(%rbx)	#, frame_ptr_22(D)->_Coro_frame_refcount
	movb	$0, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movw	%si, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	jmp	.L120	#
.L126:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmpw	$6, %ax	#, _1
	je	.L150	#,
	jmp	.L124	#
	.p2align 4,,10
	.p2align 3
.L200:
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	120(%rbx), %rdi	# MEM[(struct memory_resource * *)frame_ptr_22(D) + 120B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L153	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_103->_vptr.memory_resource, mr_103->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp181
	movq	24(%rax), %rax	# MEM[(int (*) () *)_104 + 24B], _105
	cmpq	%rdx, %rax	# tmp181, _105
	je	.L120	#,
	movl	$16, %ecx	#,
	movl	$128, %edx	#,
	movq	%rbx, %rsi	# frame_ptr,
	call	*%rax	# _105
	jmp	.L120	#
.L153:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	24(%rsp), %rax	# D.200983, tmp203
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp203
	jne	.L197	#,
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	%rbx, %rdi	# frame_ptr,
	movl	$128, %esi	#,
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
.LEHB4:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE4:
.L202:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	16(%rsp), %rdi	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 16(%rsp)	# _88, MEM[(struct exception_ptr *)&D.200941]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:897:       std::rethrow_exception(p.exception);
	movq	24(%rsp), %rax	# D.200983, tmp202
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp202
	jne	.L197	#,
	leaq	16(%rsp), %rdi	#,
.LEHB5:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE5:
.L197:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	call	__stack_chk_fail@PLT	#
.L193:
	jmp	.L194	#
.L163:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movq	%rax, %rdi	# tmp199, tmp187
	jmp	.L157	#
.L166:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	jmp	.L144	#
	.section	.gcc_except_table
	.align 4
.LLSDA6266:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6266-.LLSDATTD6266
.LLSDATTD6266:
	.byte	0x1
	.uleb128 .LLSDACSE6266-.LLSDACSB6266
.LLSDACSB6266:
	.uleb128 .LEHB2-.LFB6266
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L163-.LFB6266
	.uleb128 0x1
	.uleb128 .LEHB3-.LFB6266
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L193-.LFB6266
	.uleb128 0x3
	.uleb128 .LEHB4-.LFB6266
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB6266
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L166-.LFB6266
	.uleb128 0x3
.LLSDACSE6266:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT6266:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6266
	.type	_Z7ping_d2P18_ZL7ping_d2v.Frame.actor.cold, @function
_Z7ping_d2P18_ZL7ping_d2v.Frame.actor.cold:
.LFSB6266:
.L124:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -24
	.cfi_offset 14, -16
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	ud2	
.L132:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _96,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r14	# _96, _96
.LEHB6:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE6:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	24(%rsp), %rax	# D.200983, tmp201
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp201
	jne	.L198	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r14, %rdi	# _96,
.LEHB7:
	call	__cxa_throw@PLT	#
.LEHE7:
.L130:
.L164:
.L194:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	%rax, %r14	# tmp198, tmp161
.L138:
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _53
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _53
	je	.L155	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _53,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_53 + 8B]
.L155:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _55
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _55
	je	.L156	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _55,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_55 + 8B]
.L156:
	movq	%r14, %rdi	# tmp161, tmp187
.L157:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	call	__cxa_begin_catch@PLT	#
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmpb	$0, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
	jne	.L158	#,
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movq	24(%rsp), %rax	# D.200983, tmp204
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp204
	jne	.L198	#,
.LEHB8:
	call	__cxa_rethrow@PLT	#
.LEHE8:
.L165:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movq	%rax, %rbx	#, tmp200
	call	__cxa_end_catch@PLT	#
	movq	24(%rsp), %rax	# D.200983, tmp205
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp205
	je	.L161	#,
.L198:
	call	__stack_chk_fail@PLT	#
.L158:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	xorl	%eax, %eax	#
	movw	$0, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	leaq	16(%rbx), %rdi	#, _12
	movq	%rax, (%rbx)	#, frame_ptr_22(D)->_Coro_resume_fn
	call	_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv	#
.LEHB9:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	call	__cxa_end_catch@PLT	#
	jmp	.L146	#
.L167:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r14, %rdi	# _96,
	movq	%rax, 8(%rsp)	# tmp196, %sfp
	call	__cxa_free_exception@PLT	#
	movq	8(%rsp), %r14	# %sfp, tmp161
	jmp	.L138	#
.L144:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 16(%rsp)	#, D.200941._M_exception_object
	je	.L194	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	16(%rsp), %rdi	#,
	movq	%rax, 8(%rsp)	# tmp197, %sfp
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, tmp197
	jmp	.L194	#
.L161:
	movq	%rbx, %rdi	# tmp200,
	call	_Unwind_Resume@PLT	#
.LEHE9:
	.cfi_endproc
.LFE6266:
	.section	.gcc_except_table
	.align 4
.LLSDAC6266:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC6266-.LLSDATTDC6266
.LLSDATTDC6266:
	.byte	0x1
	.uleb128 .LLSDACSEC6266-.LLSDACSBC6266
.LLSDACSBC6266:
	.uleb128 .LEHB6-.LCOLDB14
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L167-.LCOLDB14
	.uleb128 0x3
	.uleb128 .LEHB7-.LCOLDB14
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L164-.LCOLDB14
	.uleb128 0x3
	.uleb128 .LEHB8-.LCOLDB14
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L165-.LCOLDB14
	.uleb128 0
	.uleb128 .LEHB9-.LCOLDB14
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC6266:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATTC6266:
	.section	.text.unlikely
	.text
	.size	_Z7ping_d2P18_ZL7ping_d2v.Frame.actor, .-_Z7ping_d2P18_ZL7ping_d2v.Frame.actor
	.section	.text.unlikely
	.size	_Z7ping_d2P18_ZL7ping_d2v.Frame.actor.cold, .-_Z7ping_d2P18_ZL7ping_d2v.Frame.actor.cold
.LCOLDE14:
	.text
.LHOTE14:
	.p2align 4
	.type	_Z7ping_d2P18_ZL7ping_d2v.Frame.destroy, @function
_Z7ping_d2P18_ZL7ping_d2v.Frame.destroy:
.LFB6267:
	.cfi_startproc
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	orw	$1, 88(%rdi)	#, frame_ptr_4(D)->_Coro_resume_index
	jmp	_Z7ping_d2P18_ZL7ping_d2v.Frame.actor	#
	.cfi_endproc
.LFE6267:
	.size	_Z7ping_d2P18_ZL7ping_d2v.Frame.destroy, .-_Z7ping_d2P18_ZL7ping_d2v.Frame.destroy
	.section	.text._ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm,"axG",@progbits,_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm,comdat
	.p2align 4
	.weak	_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm
	.type	_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm, @function
_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm:
.LFB6789:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6789
	movq	%rdi, %rax	# ptr, ptr
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	(%rdi,%rsi), %rdi	# *_1, mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L205	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_7->_vptr.memory_resource, mr_7->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_9 + 24B], _10
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp107
	cmpq	%rdx, %r8	# tmp107, _10
	jne	.L211	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L205:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	addq	$8, %rsi	#,
	movq	%rax, %rdi	# ptr,
.LEHB10:
	jmp	_ZdlPvm@PLT	#
.LEHE10:
	.p2align 4,,10
	.p2align 3
.L211:
# ../../effects.hpp:476:   static void operator delete(void *ptr, std::size_t n) noexcept {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	leaq	8(%rsi), %rdx	#,
	movl	$16, %ecx	#,
	movq	%rax, %rsi	# ptr, ptr
	call	*%r8	# _10
# ../../effects.hpp:485:   }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE6789:
	.section	.gcc_except_table._ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm,"aG",@progbits,_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm,comdat
.LLSDA6789:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6789-.LLSDACSB6789
.LLSDACSB6789:
	.uleb128 .LEHB10-.LFB6789
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE6789:
	.section	.text._ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm,"axG",@progbits,_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm,comdat
	.size	_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm, .-_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4
	.type	_Z7ping_d3P18_ZL7ping_d3v.Frame.actor, @function
_Z7ping_d3P18_ZL7ping_d3v.Frame.actor:
.LFB6269:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6269
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 64
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movzwl	88(%rdi), %eax	# frame_ptr_22(D)->_Coro_resume_index, _1
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	%rbx, 32(%rsp)	#,
	movq	%rbp, 40(%rsp)	#,
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], frame_ptr
	movq	%rbx, 24(%rsp)	# frame_ptr, D.201095
	movq	%rdi, %rbx	# frame_ptr, frame_ptr
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	testb	$1, %al	#, _1
	je	.L213	#,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmpw	$5, %ax	#, _1
	jne	.L312	#,
.L214:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _49
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _49
	je	.L253	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _49,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_49 + 8B]
.L253:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _25
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _25
	je	.L256	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _25,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_25 + 8B]
.L215:
.L255:
.L256:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	subw	$1, 90(%rbx)	#, frame_ptr_22(D)->_Coro_frame_refcount
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	jne	.L212	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)frame_ptr_22(D) + 64B]._M_exception_object
	je	.L257	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _158
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L257:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)frame_ptr_22(D) + 32B]._M_manager, _161
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _161
	je	.L258	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _160
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _161
.L258:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmpb	$0, 92(%rbx)	#, frame_ptr_22(D)->_Coro_frame_needs_free
	jne	.L313	#,
.L212:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	24(%rsp), %rax	# D.201095, tmp280
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp280
	jne	.L311	#,
	movq	32(%rsp), %rbx	#,
	movq	40(%rsp), %rbp	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L213:
	.cfi_restore_state
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmpw	$4, %ax	#, _1
	je	.L217	#,
	ja	.L218	#,
	testw	%ax, %ax	# _1
	je	.L219	#,
.L220:
	movq	%r14, 48(%rsp)	#,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movb	$1, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rdi	# current_mr, mr
	.cfi_offset 14, -16
	movq	%rdi, %r14	# mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rdi, %rdi	# mr
	je	.L222	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rdi), %rax	# mr_95->_vptr.memory_resource, mr_95->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp189
	movq	16(%rax), %rax	# MEM[(int (*) () *)_97 + 16B], _98
	cmpq	%rdx, %rax	# tmp189, _98
	jne	.L223	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rdi), %rax	# MEM[(size_t &)mr_95 + 16], _110
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$127, %rax	#, _110
	jbe	.L224	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rdi), %rdx	# MEM[(void * &)mr_95 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-128(%rax), %rsi	#, _119
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rdx), %rbp	#, _115
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rbp	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rbp, %rcx	# __aligned, __diff_118
	subq	%rdx, %rcx	# __intptr, __diff_118
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rcx, %rsi	# __diff_118, _119
	jb	.L224	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rdx, %rax	# __intptr, _82
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rbp, 8(%rdi)	# __p, MEM[(void * &)mr_95 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rbp, %rax	# __aligned, prephitmp_44
	movq	%rax, 16(%rdi)	# prephitmp_44, MEM[(size_t &)mr_95 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rbp, %rbp	# __p
	je	.L224	#,
.L225:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	128(%rbp), %rdx	#, tmp194
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	addq	$-128, %rax	#, tmp195
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rdx, 8(%r14)	# tmp194, MEM[(struct monotonic_buffer_resource *)mr_95]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rax, 16(%r14)	# tmp195, MEM[(struct monotonic_buffer_resource *)mr_95]._M_avail
.L226:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	leaq	_Z7ping_d2P18_ZL7ping_d2v.Frame.destroy(%rip), %rax	#, tmp198
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%r14, 120(%rbp)	# mr, MEM[(struct memory_resource * *)raw_101 + 120B]
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movq	%rbp, %rdi	# __p,
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movq	.LC16(%rip), %xmm0	#, _87
	movq	%rax, %xmm1	# tmp198, tmp198
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rbp), %rax	#, tmp204
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movb	$1, 92(%rbp)	#, MEM[(struct _ZL7ping_d2v.Frame *)raw_101]._Coro_frame_needs_free
	punpcklqdq	%xmm1, %xmm0	# tmp198, _87
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rbp)	#, MEM[(struct PromiseAbortBase *)raw_101 + 16B].aborted
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movups	%xmm0, 0(%rbp)	# _87, MEM <vector(2) long unsigned int> [(void (*<T17805>) (struct _ZL7ping_d2v.Frame *) *)raw_101]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp200
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	$0, 24(%rbp)	#, MEM[(struct PromiseAbortBase *)raw_101 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rbp)	#, MEM[(struct any *)raw_101 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 84(%rbp)	#, MEM[(struct _Optional_payload_base *)raw_101 + 80B]._M_engaged
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movl	$65536, 88(%rbp)	#, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_101 + 88B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbp)	# tmp204, MEM[(struct promise_type *)raw_101 + 16B].D.146467.D.145421.result_ptr
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, 40(%rbp)	# tmp200, MEM <vector(2) long unsigned int> [(void *)raw_101 + 40B]
	movups	%xmm0, 56(%rbp)	# tmp200, MEM <vector(2) long unsigned int> [(void *)raw_101 + 56B]
# ../../effects.hpp:521:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	movq	%rbp, 104(%rbx)	# __p, MEM[(struct OwnedHandle *)frame_ptr_22(D) + 104B].h._M_fr_ptr
.LEHB11:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	call	_Z7ping_d2P18_ZL7ping_d2v.Frame.actor	#
.LEHE11:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	subw	$1, 90(%rbp)	#, MEM[(struct _ZL7ping_d2v.Frame *)raw_101]._Coro_frame_refcount
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	je	.L314	#,
.L227:
# /usr/include/c++/16.1.1/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	movq	104(%rbx), %rax	# MEM[(struct coroutine_handle &)frame_ptr_22(D) + 104], __old_val$_M_fr_ptr
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movl	$4, %ecx	#,
# /usr/include/c++/16.1.1/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	movq	$0, 104(%rbx)	#, MEM[(struct coroutine_handle *)frame_ptr_22(D) + 104B]
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movw	%cx, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	movq	48(%rsp), %r14	#,
	.cfi_restore 14
# ../../effects.hpp:522:   OwnedHandle(OwnedHandle &&o) noexcept : h(std::exchange(o.h, {})) {}
	movq	%rax, 96(%rbx)	# __old_val$_M_fr_ptr, MEM[(struct OwnedHandle *)frame_ptr_22(D) + 96B]
	jmp	.L231	#
	.p2align 4,,10
	.p2align 3
.L312:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	jbe	.L256	#,
	cmpw	$7, %ax	#, _1
	je	.L256	#,
	jmp	.L216	#
	.p2align 4,,10
	.p2align 3
.L217:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, __old_val$_M_fr_ptr
.L231:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rax, %rdi	# __old_val$_M_fr_ptr,
.LEHB12:
	call	*(%rax)	# MEM[(void (*<T123>) (void *) *)prephitmp_102]
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	96(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _145
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_145]
	je	.L315	#,
	.p2align 4
	.p2align 3
.L245:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:893:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rcx), %rdx	# MEM[(struct promise_type &)_145 + 16].D.146467.D.145421.effect_tag, _147
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L238	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _147, n_152->effect_tag
	je	.L239	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L240:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_150->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L238	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_156->effect_tag, _147
	jne	.L240	#,
.L239:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rcx), %rsi	# MEM[(struct promise_type &)_145 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_145 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_71->dispatch
.LEHE12:
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	96(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _145
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_145]
	jne	.L245	#,
.L315:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rcx), %rax	# MEM[(const struct exception_ptr *)_145 + 64B]._M_exception_object, _149
# ../../effects.hpp:896:     if (p.exception)
	testq	%rax, %rax	# _149
	jne	.L316	#,
# ../../effects.hpp:898:     return std::move(*p.result);
	movl	80(%rcx), %eax	# MEM[(type &)_145 + 80], _28
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rcx, %rdi	# _145,
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movb	$1, 84(%rbx)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_22(D) + 84B]
	movl	%eax, 80(%rbx)	# _28, MEM <int> [(struct promise_type *)frame_ptr_22(D) + 80B]
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rcx)	# MEM[(void (*<T123>) (void *) *)_145 + 8B]
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _33
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _33
	je	.L252	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _33,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_33 + 8B]
.L252:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movl	$6, %edx	#,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	$0, (%rbx)	#, frame_ptr_22(D)->_Coro_resume_fn
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movw	%dx, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	jmp	.L212	#
.L219:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movl	$2, %esi	#,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	addw	$1, 90(%rbx)	#, frame_ptr_22(D)->_Coro_frame_refcount
	movb	$0, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movw	%si, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	jmp	.L212	#
.L218:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmpw	$6, %ax	#, _1
	je	.L256	#,
	jmp	.L216	#
	.p2align 4,,10
	.p2align 3
.L313:
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	120(%rbx), %rdi	# MEM[(struct memory_resource * *)frame_ptr_22(D) + 120B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L259	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_164->_vptr.memory_resource, mr_164->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp254
	movq	24(%rax), %rax	# MEM[(int (*) () *)_165 + 24B], _166
	cmpq	%rdx, %rax	# tmp254, _166
	je	.L212	#,
	movl	$16, %ecx	#,
	movl	$128, %edx	#,
	movq	%rbx, %rsi	# frame_ptr,
	call	*%rax	# _166
	jmp	.L212	#
.L314:
	.cfi_offset 14, -16
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbp)	#, MEM[(struct exception_ptr *)raw_101 + 64B]._M_exception_object
	je	.L228	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbp), %rdi	#, _132
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L228:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbp), %rax	# MEM[(const struct any *)raw_101 + 32B]._M_manager, _135
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _135
	je	.L229	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbp), %rsi	#, _134
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _135
.L229:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmpw	$0, 90(%rbp)	#, MEM[(struct _ZL7ping_d2v.Frame *)raw_101]._Coro_frame_refcount
	jne	.L227	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	120(%rbp), %rdi	# MEM[(struct memory_resource * *)raw_101 + 120B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L230	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_138->_vptr.memory_resource, mr_138->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp211
	movq	24(%rax), %rax	# MEM[(int (*) () *)_139 + 24B], _140
	cmpq	%rdx, %rax	# tmp211, _140
	je	.L227	#,
	movl	$16, %ecx	#,
	movl	$128, %edx	#,
	movq	%rbp, %rsi	# __p,
	call	*%rax	# _140
	jmp	.L227	#
.L224:
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movl	$16, %edx	#,
	movl	$128, %esi	#,
	movq	%r14, %rdi	# mr,
.LEHB13:
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	8(%r14), %rbp	# MEM[(struct monotonic_buffer_resource *)mr_95]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%r14), %rax	# MEM[(struct monotonic_buffer_resource *)mr_95]._M_avail, prephitmp_44
	jmp	.L225	#
.L222:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$128, %edi	#,
	call	_Znwm@PLT	#
.L309:
	movq	%rax, %rbp	# __p, __p
	jmp	.L226	#
.L223:
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$128, %esi	#,
	call	*%rax	# _98
.LEHE13:
	jmp	.L309	#
.L259:
	.cfi_restore 14
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	24(%rsp), %rax	# D.201095, tmp277
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp277
	jne	.L311	#,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	40(%rsp), %rbp	#,
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	%rbx, %rdi	# frame_ptr,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	32(%rsp), %rbx	#,
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$128, %esi	#,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB14:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE14:
.L230:
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
	movl	$128, %esi	#,
	movq	%rbp, %rdi	# __p,
	call	_ZdlPvm@PLT	#
	jmp	.L227	#
.L316:
	.cfi_restore 14
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	16(%rsp), %rdi	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 16(%rsp)	# _149, MEM[(struct exception_ptr *)&D.201042]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:897:       std::rethrow_exception(p.exception);
	movq	24(%rsp), %rax	# D.201095, tmp276
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp276
	jne	.L311	#,
	leaq	16(%rsp), %rdi	#,
.LEHB15:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE15:
.L311:
	movq	%r14, 48(%rsp)	#,
	.cfi_offset 14, -16
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	call	__stack_chk_fail@PLT	#
.L271:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	%rax, %r14	#, tmp268
	jmp	.L232	#
.L272:
	.cfi_restore 14
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	movq	%rax, %rbp	#, tmp271
	jmp	.L250	#
.L305:
	jmp	.L306	#
.L268:
	.cfi_offset 14, -16
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	48(%rsp), %r14	#,
	.cfi_restore 14
	movq	%rax, %rdi	# tmp273, tmp223
	jmp	.L236	#
	.section	.gcc_except_table
	.align 4
.LLSDA6269:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6269-.LLSDATTD6269
.LLSDATTD6269:
	.byte	0x1
	.uleb128 .LLSDACSE6269-.LLSDACSB6269
.LLSDACSB6269:
	.uleb128 .LEHB11-.LFB6269
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L271-.LFB6269
	.uleb128 0x3
	.uleb128 .LEHB12-.LFB6269
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L305-.LFB6269
	.uleb128 0x3
	.uleb128 .LEHB13-.LFB6269
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L268-.LFB6269
	.uleb128 0x1
	.uleb128 .LEHB14-.LFB6269
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB6269
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L272-.LFB6269
	.uleb128 0x3
.LLSDACSE6269:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT6269:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6269
	.type	_Z7ping_d3P18_ZL7ping_d3v.Frame.actor.cold, @function
_Z7ping_d3P18_ZL7ping_d3v.Frame.actor.cold:
.LFSB6269:
.L216:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	movq	%r14, 48(%rsp)	#,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	ud2	
.L238:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _157,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %rbp	#, _157
.LEHB16:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE16:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	24(%rsp), %rax	# D.201095, tmp275
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp275
	jne	.L310	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%rbp, %rdi	# _157,
.LEHB17:
	call	__cxa_throw@PLT	#
.LEHE17:
.L250:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 16(%rsp)	#, D.201042._M_exception_object
	je	.L244	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	16(%rsp), %rdi	#,
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L244:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _53
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _53
	je	.L261	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _53,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_53 + 8B]
.L261:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _55
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _55
	je	.L262	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _55,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_55 + 8B]
.L262:
	movq	%rbp, %rdi	# tmp234, tmp223
.L236:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	call	__cxa_begin_catch@PLT	#
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmpb	$0, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
	jne	.L263	#,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	24(%rsp), %rax	# D.201095, tmp278
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp278
	jne	.L310	#,
.LEHB18:
	call	__cxa_rethrow@PLT	#
.LEHE18:
.L221:
.L269:
.L306:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	%rax, %rbp	# tmp272, tmp234
	jmp	.L244	#
.L263:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	xorl	%eax, %eax	#
	movw	$0, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	leaq	16(%rbx), %rdi	#, _12
	movq	%rax, (%rbx)	#, frame_ptr_22(D)->_Coro_resume_fn
	call	_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv	#
.LEHB19:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	call	__cxa_end_catch@PLT	#
.LEHE19:
	jmp	.L252	#
.L232:
	.cfi_offset 14, -16
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _89
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _89
	je	.L233	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _89,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_89 + 8B]
.L233:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	subw	$1, 90(%rbp)	#, MEM[(struct _ZL7ping_d2v.Frame *)raw_101]._Coro_frame_refcount
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	jne	.L234	#,
# ../../effects.hpp:454: template <typename... Es> struct PromiseBase : PromiseAbortBase {
	leaq	16(%rbp), %rdi	#, _93
	call	_ZN2fx6detail16PromiseAbortBaseD2Ev	#
.L234:
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	cmpw	$0, 90(%rbp)	#, MEM[(struct _ZL7ping_d2v.Frame *)raw_101]._Coro_frame_refcount
	jne	.L235	#,
# b5_propagation.cpp:27: static auto ping_d2() -> Ping::Fx<int> { co_return co_await ping_d1(); }
	movl	$120, %esi	#,
	movq	%rbp, %rdi	# __p,
	call	_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm	#
.L235:
	movq	%r14, %rdi	# tmp268, tmp223
	movq	48(%rsp), %r14	#,
	.cfi_restore 14
	jmp	.L236	#
.L273:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rbp, %rdi	# _157,
	movq	%rax, 8(%rsp)	# tmp270, %sfp
	call	__cxa_free_exception@PLT	#
	movq	8(%rsp), %rbp	# %sfp, tmp234
	jmp	.L244	#
.L310:
	movq	%r14, 48(%rsp)	#,
	.cfi_remember_state
	.cfi_offset 14, -16
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	call	__stack_chk_fail@PLT	#
.L270:
	.cfi_restore_state
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	%rax, %rbx	#, tmp274
	call	__cxa_end_catch@PLT	#
	movq	24(%rsp), %rax	# D.201095, tmp279
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp279
	movq	%r14, 48(%rsp)	#,
	.cfi_offset 14, -16
	jne	.L317	#,
	movq	%rbx, %rdi	# tmp274,
.LEHB20:
	call	_Unwind_Resume@PLT	#
.LEHE20:
.L317:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6269:
	.section	.gcc_except_table
	.align 4
.LLSDAC6269:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC6269-.LLSDATTDC6269
.LLSDATTDC6269:
	.byte	0x1
	.uleb128 .LLSDACSEC6269-.LLSDACSBC6269
.LLSDACSBC6269:
	.uleb128 .LEHB16-.LCOLDB17
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L273-.LCOLDB17
	.uleb128 0x3
	.uleb128 .LEHB17-.LCOLDB17
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L269-.LCOLDB17
	.uleb128 0x3
	.uleb128 .LEHB18-.LCOLDB17
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L270-.LCOLDB17
	.uleb128 0
	.uleb128 .LEHB19-.LCOLDB17
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LCOLDB17
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSEC6269:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATTC6269:
	.section	.text.unlikely
	.text
	.size	_Z7ping_d3P18_ZL7ping_d3v.Frame.actor, .-_Z7ping_d3P18_ZL7ping_d3v.Frame.actor
	.section	.text.unlikely
	.size	_Z7ping_d3P18_ZL7ping_d3v.Frame.actor.cold, .-_Z7ping_d3P18_ZL7ping_d3v.Frame.actor.cold
.LCOLDE17:
	.text
.LHOTE17:
	.p2align 4
	.type	_Z7ping_d3P18_ZL7ping_d3v.Frame.destroy, @function
_Z7ping_d3P18_ZL7ping_d3v.Frame.destroy:
.LFB6270:
	.cfi_startproc
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	orw	$1, 88(%rdi)	#, frame_ptr_4(D)->_Coro_resume_index
	jmp	_Z7ping_d3P18_ZL7ping_d3v.Frame.actor	#
	.cfi_endproc
.LFE6270:
	.size	_Z7ping_d3P18_ZL7ping_d3v.Frame.destroy, .-_Z7ping_d3P18_ZL7ping_d3v.Frame.destroy
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4
	.type	_ZL7ping_d3v, @function
_ZL7ping_d3v:
.LFB6268:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6268
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12	# .result_ptr, <retval>
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rbp	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rbp, %rbp	# mr
	je	.L320	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	0(%rbp), %rax	# mr_45->_vptr.memory_resource, mr_45->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp141
	movq	16(%rax), %rax	# MEM[(int (*) () *)_47 + 16B], _48
	cmpq	%rdx, %rax	# tmp141, _48
	jne	.L321	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rbp), %rax	# MEM[(size_t &)mr_45 + 16], _60
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$127, %rax	#, _60
	jbe	.L322	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rbp), %rdx	# MEM[(void * &)mr_45 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-128(%rax), %rsi	#, _69
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rdx), %rbx	#, _65
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rbx	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rbx, %rcx	# __aligned, __diff_68
	subq	%rdx, %rcx	# __intptr, __diff_68
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rcx, %rsi	# __diff_68, _69
	jb	.L322	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rdx, %rax	# __intptr, _73
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rbx, 8(%rbp)	# __p, MEM[(void * &)mr_45 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rbx, %rax	# __aligned, _71
	movq	%rax, 16(%rbp)	# _71, MEM[(size_t &)mr_45 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rbx, %rbx	# __p
	je	.L322	#,
.L323:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	128(%rbx), %rdx	#, tmp146
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	addq	$-128, %rax	#, tmp147
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rdx, 8(%rbp)	# tmp146, MEM[(struct monotonic_buffer_resource *)mr_45]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rax, 16(%rbp)	# tmp147, MEM[(struct monotonic_buffer_resource *)mr_45]._M_avail
.L324:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	leaq	_Z7ping_d3P18_ZL7ping_d3v.Frame.destroy(%rip), %rax	#, tmp138
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rbp, 120(%rbx)	# mr, MEM[(struct memory_resource * *)raw_51 + 120B]
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	%rbx, %rdi	# __p,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	.LC18(%rip), %xmm0	#, _7
	movq	%rax, %xmm1	# tmp138, tmp138
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rbx), %rax	#, tmp153
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movb	$1, 92(%rbx)	#, MEM[(struct _ZL7ping_d3v.Frame *)raw_51]._Coro_frame_needs_free
	punpcklqdq	%xmm1, %xmm0	# tmp138, _7
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_51 + 16B].aborted
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movups	%xmm0, (%rbx)	# _7, MEM <vector(2) long unsigned int> [(void (*<T1780e>) (struct _ZL7ping_d3v.Frame *) *)raw_51]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp149
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	$0, 24(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_51 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rbx)	#, MEM[(struct any *)raw_51 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 84(%rbx)	#, MEM[(struct _Optional_payload_base *)raw_51 + 80B]._M_engaged
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movl	$65536, 88(%rbx)	#, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_51 + 88B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp153, MEM[(struct promise_type *)raw_51 + 16B].D.146467.D.145421.result_ptr
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, 40(%rbx)	# tmp149, MEM <vector(2) long unsigned int> [(void *)raw_51 + 40B]
	movups	%xmm0, 56(%rbx)	# tmp149, MEM <vector(2) long unsigned int> [(void *)raw_51 + 56B]
# ../../effects.hpp:521:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	movq	%rbx, (%r12)	# __p, MEM[(struct OwnedHandle *)_Coro_gro_18(D)].h._M_fr_ptr
.LEHB21:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	call	_Z7ping_d3P18_ZL7ping_d3v.Frame.actor	#
.LEHE21:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	subw	$1, 90(%rbx)	#, MEM[(struct _ZL7ping_d3v.Frame *)raw_51]._Coro_frame_refcount
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	je	.L341	#,
.L319:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movq	%r12, %rax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L322:
	.cfi_restore_state
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movl	$16, %edx	#,
	movl	$128, %esi	#,
	movq	%rbp, %rdi	# mr,
.LEHB22:
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
.LEHE22:
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	8(%rbp), %rbx	# MEM[(struct monotonic_buffer_resource *)mr_45]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%rbp), %rax	# MEM[(struct monotonic_buffer_resource *)mr_45]._M_avail, _71
	jmp	.L323	#
	.p2align 4,,10
	.p2align 3
.L341:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_51 + 64B]._M_exception_object
	je	.L326	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _82
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L326:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_51 + 32B]._M_manager, _85
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _85
	je	.L327	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _84
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _85
.L327:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmpw	$0, 90(%rbx)	#, MEM[(struct _ZL7ping_d3v.Frame *)raw_51]._Coro_frame_refcount
	jne	.L319	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	120(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_51 + 120B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L328	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_88->_vptr.memory_resource, mr_88->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp160
	movq	24(%rax), %rax	# MEM[(int (*) () *)_89 + 24B], _90
	cmpq	%rdx, %rax	# tmp160, _90
	je	.L319	#,
	movl	$16, %ecx	#,
	movl	$128, %edx	#,
	movq	%rbx, %rsi	# __p,
	call	*%rax	# _90
	jmp	.L319	#
	.p2align 4,,10
	.p2align 3
.L320:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$128, %edi	#,
.LEHB23:
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# __p, __p
	jmp	.L324	#
	.p2align 4,,10
	.p2align 3
.L321:
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$128, %esi	#,
	movq	%rbp, %rdi	# mr,
	call	*%rax	# _48
.LEHE23:
	movq	%rax, %rbx	# __p, __p
	jmp	.L324	#
	.p2align 4,,10
	.p2align 3
.L328:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZdlPvm@PLT	#
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	jmp	.L319	#
.L333:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	%rax, %rbp	#, tmp176
	jmp	.L329	#
	.section	.gcc_except_table
.LLSDA6268:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6268-.LLSDACSB6268
.LLSDACSB6268:
	.uleb128 .LEHB21-.LFB6268
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L333-.LFB6268
	.uleb128 0
	.uleb128 .LEHB22-.LFB6268
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB6268
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE6268:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6268
	.type	_ZL7ping_d3v.cold, @function
_ZL7ping_d3v.cold:
.LFSB6268:
.L329:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	(%r12), %rax	# MEM[(const struct coroutine_handle *)_Coro_gro_18(D)]._M_fr_ptr, _26
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _26
	je	.L330	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _26,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_26 + 8B]
.L330:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	subw	$1, 90(%rbx)	#, MEM[(struct _ZL7ping_d3v.Frame *)raw_51]._Coro_frame_refcount
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	jne	.L331	#,
# ../../effects.hpp:454: template <typename... Es> struct PromiseBase : PromiseAbortBase {
	leaq	16(%rbx), %rdi	#, _28
	call	_ZN2fx6detail16PromiseAbortBaseD2Ev	#
.L331:
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	cmpw	$0, 90(%rbx)	#, MEM[(struct _ZL7ping_d3v.Frame *)raw_51]._Coro_frame_refcount
	jne	.L332	#,
# b5_propagation.cpp:28: static auto ping_d3() -> Ping::Fx<int> { co_return co_await ping_d2(); }
	movl	$120, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm	#
.L332:
	movq	%rbp, %rdi	# tmp176,
.LEHB24:
	call	_Unwind_Resume@PLT	#
.LEHE24:
	.cfi_endproc
.LFE6268:
	.section	.gcc_except_table
.LLSDAC6268:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6268-.LLSDACSBC6268
.LLSDACSBC6268:
	.uleb128 .LEHB24-.LCOLDB19
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSEC6268:
	.section	.text.unlikely
	.text
	.size	_ZL7ping_d3v, .-_ZL7ping_d3v
	.section	.text.unlikely
	.size	_ZL7ping_d3v.cold, .-_ZL7ping_d3v.cold
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4
	.type	_Z7ping_d4P18_ZL7ping_d4v.Frame.actor, @function
_Z7ping_d4P18_ZL7ping_d4v.Frame.actor:
.LFB6272:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6272
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 64
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movzwl	88(%rdi), %eax	# frame_ptr_22(D)->_Coro_resume_index, _1
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], frame_ptr
	movq	%rbx, 24(%rsp)	# frame_ptr, D.201178
	movq	%rdi, %rbx	# frame_ptr, frame_ptr
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	testb	$1, %al	#, _1
	je	.L343	#,
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmpw	$5, %ax	#, _1
	jne	.L421	#,
.L344:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _49
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _49
	je	.L369	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _49,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_49 + 8B]
.L369:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _25
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _25
	je	.L372	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _25,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_25 + 8B]
.L345:
.L371:
.L372:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	subw	$1, 90(%rbx)	#, frame_ptr_22(D)->_Coro_frame_refcount
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	jne	.L342	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)frame_ptr_22(D) + 64B]._M_exception_object
	je	.L373	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _97
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L373:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)frame_ptr_22(D) + 32B]._M_manager, _100
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _100
	je	.L374	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _99
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _100
.L374:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmpb	$0, 92(%rbx)	#, frame_ptr_22(D)->_Coro_frame_needs_free
	jne	.L422	#,
.L342:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movq	24(%rsp), %rax	# D.201178, tmp206
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp206
	jne	.L419	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L343:
	.cfi_restore_state
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmpw	$4, %ax	#, _1
	je	.L347	#,
	ja	.L348	#,
	testw	%ax, %ax	# _1
	je	.L349	#,
.L350:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movb	$1, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	leaq	104(%rbx), %rdi	#, tmp151
.LEHB25:
	call	_ZL7ping_d3v	#
.LEHE25:
# /usr/include/c++/16.1.1/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	movq	104(%rbx), %rax	# MEM[(struct coroutine_handle &)frame_ptr_22(D) + 104], __old_val$_M_fr_ptr
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movl	$4, %ecx	#,
# /usr/include/c++/16.1.1/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	movq	$0, 104(%rbx)	#, MEM[(struct coroutine_handle *)frame_ptr_22(D) + 104B]
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movw	%cx, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
# ../../effects.hpp:522:   OwnedHandle(OwnedHandle &&o) noexcept : h(std::exchange(o.h, {})) {}
	movq	%rax, 96(%rbx)	# __old_val$_M_fr_ptr, MEM[(struct OwnedHandle *)frame_ptr_22(D) + 96B]
	jmp	.L351	#
	.p2align 4,,10
	.p2align 3
.L421:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	jbe	.L372	#,
	cmpw	$7, %ax	#, _1
	je	.L372	#,
	jmp	.L346	#
	.p2align 4,,10
	.p2align 3
.L347:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, __old_val$_M_fr_ptr
.L351:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rax, %rdi	# __old_val$_M_fr_ptr,
.LEHB26:
	call	*(%rax)	# MEM[(void (*<T123>) (void *) *)prephitmp_34]
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	96(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _84
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_84]
	je	.L423	#,
	.p2align 4
	.p2align 3
.L361:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:893:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rcx), %rdx	# MEM[(struct promise_type &)_84 + 16].D.146467.D.145421.effect_tag, _86
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L354	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _86, n_91->effect_tag
	je	.L355	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L356:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_89->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L354	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_95->effect_tag, _86
	jne	.L356	#,
.L355:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rcx), %rsi	# MEM[(struct promise_type &)_84 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_84 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_71->dispatch
.LEHE26:
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	96(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _84
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_84]
	jne	.L361	#,
.L423:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rcx), %rax	# MEM[(const struct exception_ptr *)_84 + 64B]._M_exception_object, _88
# ../../effects.hpp:896:     if (p.exception)
	testq	%rax, %rax	# _88
	jne	.L424	#,
# ../../effects.hpp:898:     return std::move(*p.result);
	movl	80(%rcx), %eax	# MEM[(type &)_84 + 80], _28
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rcx, %rdi	# _84,
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movb	$1, 84(%rbx)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_22(D) + 84B]
	movl	%eax, 80(%rbx)	# _28, MEM <int> [(struct promise_type *)frame_ptr_22(D) + 80B]
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rcx)	# MEM[(void (*<T123>) (void *) *)_84 + 8B]
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _33
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _33
	je	.L368	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _33,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_33 + 8B]
.L368:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movl	$6, %edx	#,
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movq	$0, (%rbx)	#, frame_ptr_22(D)->_Coro_resume_fn
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movw	%dx, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	jmp	.L342	#
.L349:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movl	$2, %esi	#,
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	addw	$1, 90(%rbx)	#, frame_ptr_22(D)->_Coro_frame_refcount
	movb	$0, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movw	%si, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	jmp	.L342	#
.L348:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmpw	$6, %ax	#, _1
	je	.L372	#,
	jmp	.L346	#
	.p2align 4,,10
	.p2align 3
.L422:
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	120(%rbx), %rdi	# MEM[(struct memory_resource * *)frame_ptr_22(D) + 120B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L375	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_103->_vptr.memory_resource, mr_103->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp181
	movq	24(%rax), %rax	# MEM[(int (*) () *)_104 + 24B], _105
	cmpq	%rdx, %rax	# tmp181, _105
	je	.L342	#,
	movl	$16, %ecx	#,
	movl	$128, %edx	#,
	movq	%rbx, %rsi	# frame_ptr,
	call	*%rax	# _105
	jmp	.L342	#
.L375:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	24(%rsp), %rax	# D.201178, tmp203
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp203
	jne	.L419	#,
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	%rbx, %rdi	# frame_ptr,
	movl	$128, %esi	#,
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
.LEHB27:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE27:
.L424:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	16(%rsp), %rdi	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 16(%rsp)	# _88, MEM[(struct exception_ptr *)&D.201136]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:897:       std::rethrow_exception(p.exception);
	movq	24(%rsp), %rax	# D.201178, tmp202
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp202
	jne	.L419	#,
	leaq	16(%rsp), %rdi	#,
.LEHB28:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE28:
.L419:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	call	__stack_chk_fail@PLT	#
.L415:
	jmp	.L416	#
.L385:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movq	%rax, %rdi	# tmp199, tmp187
	jmp	.L379	#
.L388:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	jmp	.L366	#
	.section	.gcc_except_table
	.align 4
.LLSDA6272:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6272-.LLSDATTD6272
.LLSDATTD6272:
	.byte	0x1
	.uleb128 .LLSDACSE6272-.LLSDACSB6272
.LLSDACSB6272:
	.uleb128 .LEHB25-.LFB6272
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L385-.LFB6272
	.uleb128 0x1
	.uleb128 .LEHB26-.LFB6272
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L415-.LFB6272
	.uleb128 0x3
	.uleb128 .LEHB27-.LFB6272
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB6272
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L388-.LFB6272
	.uleb128 0x3
.LLSDACSE6272:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT6272:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6272
	.type	_Z7ping_d4P18_ZL7ping_d4v.Frame.actor.cold, @function
_Z7ping_d4P18_ZL7ping_d4v.Frame.actor.cold:
.LFSB6272:
.L346:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -24
	.cfi_offset 14, -16
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	ud2	
.L354:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _96,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r14	# _96, _96
.LEHB29:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE29:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	24(%rsp), %rax	# D.201178, tmp201
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp201
	jne	.L420	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r14, %rdi	# _96,
.LEHB30:
	call	__cxa_throw@PLT	#
.LEHE30:
.L352:
.L386:
.L416:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	%rax, %r14	# tmp198, tmp161
.L360:
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _53
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _53
	je	.L377	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _53,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_53 + 8B]
.L377:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _55
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _55
	je	.L378	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _55,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_55 + 8B]
.L378:
	movq	%r14, %rdi	# tmp161, tmp187
.L379:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	call	__cxa_begin_catch@PLT	#
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmpb	$0, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
	jne	.L380	#,
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movq	24(%rsp), %rax	# D.201178, tmp204
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp204
	jne	.L420	#,
.LEHB31:
	call	__cxa_rethrow@PLT	#
.LEHE31:
.L387:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movq	%rax, %rbx	#, tmp200
	call	__cxa_end_catch@PLT	#
	movq	24(%rsp), %rax	# D.201178, tmp205
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp205
	je	.L383	#,
.L420:
	call	__stack_chk_fail@PLT	#
.L380:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	xorl	%eax, %eax	#
	movw	$0, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	leaq	16(%rbx), %rdi	#, _12
	movq	%rax, (%rbx)	#, frame_ptr_22(D)->_Coro_resume_fn
	call	_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv	#
.LEHB32:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	call	__cxa_end_catch@PLT	#
	jmp	.L368	#
.L389:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r14, %rdi	# _96,
	movq	%rax, 8(%rsp)	# tmp196, %sfp
	call	__cxa_free_exception@PLT	#
	movq	8(%rsp), %r14	# %sfp, tmp161
	jmp	.L360	#
.L366:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 16(%rsp)	#, D.201136._M_exception_object
	je	.L416	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	16(%rsp), %rdi	#,
	movq	%rax, 8(%rsp)	# tmp197, %sfp
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, tmp197
	jmp	.L416	#
.L383:
	movq	%rbx, %rdi	# tmp200,
	call	_Unwind_Resume@PLT	#
.LEHE32:
	.cfi_endproc
.LFE6272:
	.section	.gcc_except_table
	.align 4
.LLSDAC6272:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC6272-.LLSDATTDC6272
.LLSDATTDC6272:
	.byte	0x1
	.uleb128 .LLSDACSEC6272-.LLSDACSBC6272
.LLSDACSBC6272:
	.uleb128 .LEHB29-.LCOLDB20
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L389-.LCOLDB20
	.uleb128 0x3
	.uleb128 .LEHB30-.LCOLDB20
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L386-.LCOLDB20
	.uleb128 0x3
	.uleb128 .LEHB31-.LCOLDB20
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L387-.LCOLDB20
	.uleb128 0
	.uleb128 .LEHB32-.LCOLDB20
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSEC6272:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATTC6272:
	.section	.text.unlikely
	.text
	.size	_Z7ping_d4P18_ZL7ping_d4v.Frame.actor, .-_Z7ping_d4P18_ZL7ping_d4v.Frame.actor
	.section	.text.unlikely
	.size	_Z7ping_d4P18_ZL7ping_d4v.Frame.actor.cold, .-_Z7ping_d4P18_ZL7ping_d4v.Frame.actor.cold
.LCOLDE20:
	.text
.LHOTE20:
	.p2align 4
	.type	_Z7ping_d4P18_ZL7ping_d4v.Frame.destroy, @function
_Z7ping_d4P18_ZL7ping_d4v.Frame.destroy:
.LFB6273:
	.cfi_startproc
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	orw	$1, 88(%rdi)	#, frame_ptr_4(D)->_Coro_resume_index
	jmp	_Z7ping_d4P18_ZL7ping_d4v.Frame.actor	#
	.cfi_endproc
.LFE6273:
	.size	_Z7ping_d4P18_ZL7ping_d4v.Frame.destroy, .-_Z7ping_d4P18_ZL7ping_d4v.Frame.destroy
	.section	.text.unlikely
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4
	.type	_Z7ping_d5P18_ZL7ping_d5v.Frame.actor, @function
_Z7ping_d5P18_ZL7ping_d5v.Frame.actor:
.LFB6275:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6275
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 64
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movzwl	88(%rdi), %eax	# frame_ptr_22(D)->_Coro_resume_index, _1
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	%rbx, 32(%rsp)	#,
	movq	%rbp, 40(%rsp)	#,
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], frame_ptr
	movq	%rbx, 24(%rsp)	# frame_ptr, D.201275
	movq	%rdi, %rbx	# frame_ptr, frame_ptr
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	testb	$1, %al	#, _1
	je	.L427	#,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmpw	$5, %ax	#, _1
	jne	.L526	#,
.L428:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _49
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _49
	je	.L467	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _49,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_49 + 8B]
.L467:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _25
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _25
	je	.L470	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _25,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_25 + 8B]
.L429:
.L469:
.L470:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	subw	$1, 90(%rbx)	#, frame_ptr_22(D)->_Coro_frame_refcount
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	jne	.L426	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)frame_ptr_22(D) + 64B]._M_exception_object
	je	.L471	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _158
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L471:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)frame_ptr_22(D) + 32B]._M_manager, _161
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _161
	je	.L472	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _160
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _161
.L472:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmpb	$0, 92(%rbx)	#, frame_ptr_22(D)->_Coro_frame_needs_free
	jne	.L527	#,
.L426:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	24(%rsp), %rax	# D.201275, tmp280
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp280
	jne	.L525	#,
	movq	32(%rsp), %rbx	#,
	movq	40(%rsp), %rbp	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L427:
	.cfi_restore_state
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmpw	$4, %ax	#, _1
	je	.L431	#,
	ja	.L432	#,
	testw	%ax, %ax	# _1
	je	.L433	#,
.L434:
	movq	%r14, 48(%rsp)	#,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movb	$1, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rdi	# current_mr, mr
	.cfi_offset 14, -16
	movq	%rdi, %r14	# mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rdi, %rdi	# mr
	je	.L436	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rdi), %rax	# mr_95->_vptr.memory_resource, mr_95->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp189
	movq	16(%rax), %rax	# MEM[(int (*) () *)_97 + 16B], _98
	cmpq	%rdx, %rax	# tmp189, _98
	jne	.L437	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rdi), %rax	# MEM[(size_t &)mr_95 + 16], _110
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$127, %rax	#, _110
	jbe	.L438	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rdi), %rdx	# MEM[(void * &)mr_95 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-128(%rax), %rsi	#, _119
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rdx), %rbp	#, _115
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rbp	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rbp, %rcx	# __aligned, __diff_118
	subq	%rdx, %rcx	# __intptr, __diff_118
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rcx, %rsi	# __diff_118, _119
	jb	.L438	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rdx, %rax	# __intptr, _82
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rbp, 8(%rdi)	# __p, MEM[(void * &)mr_95 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rbp, %rax	# __aligned, prephitmp_44
	movq	%rax, 16(%rdi)	# prephitmp_44, MEM[(size_t &)mr_95 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rbp, %rbp	# __p
	je	.L438	#,
.L439:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	128(%rbp), %rdx	#, tmp194
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	addq	$-128, %rax	#, tmp195
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rdx, 8(%r14)	# tmp194, MEM[(struct monotonic_buffer_resource *)mr_95]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rax, 16(%r14)	# tmp195, MEM[(struct monotonic_buffer_resource *)mr_95]._M_avail
.L440:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	leaq	_Z7ping_d4P18_ZL7ping_d4v.Frame.destroy(%rip), %rax	#, tmp198
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%r14, 120(%rbp)	# mr, MEM[(struct memory_resource * *)raw_101 + 120B]
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movq	%rbp, %rdi	# __p,
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movq	.LC21(%rip), %xmm0	#, _87
	movq	%rax, %xmm1	# tmp198, tmp198
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rbp), %rax	#, tmp204
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movb	$1, 92(%rbp)	#, MEM[(struct _ZL7ping_d4v.Frame *)raw_101]._Coro_frame_needs_free
	punpcklqdq	%xmm1, %xmm0	# tmp198, _87
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rbp)	#, MEM[(struct PromiseAbortBase *)raw_101 + 16B].aborted
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movups	%xmm0, 0(%rbp)	# _87, MEM <vector(2) long unsigned int> [(void (*<T17817>) (struct _ZL7ping_d4v.Frame *) *)raw_101]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp200
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	$0, 24(%rbp)	#, MEM[(struct PromiseAbortBase *)raw_101 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rbp)	#, MEM[(struct any *)raw_101 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 84(%rbp)	#, MEM[(struct _Optional_payload_base *)raw_101 + 80B]._M_engaged
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movl	$65536, 88(%rbp)	#, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_101 + 88B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbp)	# tmp204, MEM[(struct promise_type *)raw_101 + 16B].D.146467.D.145421.result_ptr
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, 40(%rbp)	# tmp200, MEM <vector(2) long unsigned int> [(void *)raw_101 + 40B]
	movups	%xmm0, 56(%rbp)	# tmp200, MEM <vector(2) long unsigned int> [(void *)raw_101 + 56B]
# ../../effects.hpp:521:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	movq	%rbp, 104(%rbx)	# __p, MEM[(struct OwnedHandle *)frame_ptr_22(D) + 104B].h._M_fr_ptr
.LEHB33:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	call	_Z7ping_d4P18_ZL7ping_d4v.Frame.actor	#
.LEHE33:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	subw	$1, 90(%rbp)	#, MEM[(struct _ZL7ping_d4v.Frame *)raw_101]._Coro_frame_refcount
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	je	.L528	#,
.L441:
# /usr/include/c++/16.1.1/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	movq	104(%rbx), %rax	# MEM[(struct coroutine_handle &)frame_ptr_22(D) + 104], __old_val$_M_fr_ptr
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movl	$4, %ecx	#,
# /usr/include/c++/16.1.1/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	movq	$0, 104(%rbx)	#, MEM[(struct coroutine_handle *)frame_ptr_22(D) + 104B]
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movw	%cx, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	movq	48(%rsp), %r14	#,
	.cfi_restore 14
# ../../effects.hpp:522:   OwnedHandle(OwnedHandle &&o) noexcept : h(std::exchange(o.h, {})) {}
	movq	%rax, 96(%rbx)	# __old_val$_M_fr_ptr, MEM[(struct OwnedHandle *)frame_ptr_22(D) + 96B]
	jmp	.L445	#
	.p2align 4,,10
	.p2align 3
.L526:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	jbe	.L470	#,
	cmpw	$7, %ax	#, _1
	je	.L470	#,
	jmp	.L430	#
	.p2align 4,,10
	.p2align 3
.L431:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, __old_val$_M_fr_ptr
.L445:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rax, %rdi	# __old_val$_M_fr_ptr,
.LEHB34:
	call	*(%rax)	# MEM[(void (*<T123>) (void *) *)prephitmp_102]
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	96(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _145
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_145]
	je	.L529	#,
	.p2align 4
	.p2align 3
.L459:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:893:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rcx), %rdx	# MEM[(struct promise_type &)_145 + 16].D.146467.D.145421.effect_tag, _147
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L452	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _147, n_152->effect_tag
	je	.L453	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L454:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_150->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L452	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_156->effect_tag, _147
	jne	.L454	#,
.L453:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rcx), %rsi	# MEM[(struct promise_type &)_145 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_145 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_71->dispatch
.LEHE34:
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	96(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _145
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_145]
	jne	.L459	#,
.L529:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rcx), %rax	# MEM[(const struct exception_ptr *)_145 + 64B]._M_exception_object, _149
# ../../effects.hpp:896:     if (p.exception)
	testq	%rax, %rax	# _149
	jne	.L530	#,
# ../../effects.hpp:898:     return std::move(*p.result);
	movl	80(%rcx), %eax	# MEM[(type &)_145 + 80], _28
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rcx, %rdi	# _145,
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movb	$1, 84(%rbx)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_22(D) + 84B]
	movl	%eax, 80(%rbx)	# _28, MEM <int> [(struct promise_type *)frame_ptr_22(D) + 80B]
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rcx)	# MEM[(void (*<T123>) (void *) *)_145 + 8B]
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _33
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _33
	je	.L466	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _33,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_33 + 8B]
.L466:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movl	$6, %edx	#,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	$0, (%rbx)	#, frame_ptr_22(D)->_Coro_resume_fn
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movw	%dx, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	jmp	.L426	#
.L433:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movl	$2, %esi	#,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	addw	$1, 90(%rbx)	#, frame_ptr_22(D)->_Coro_frame_refcount
	movb	$0, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movw	%si, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	jmp	.L426	#
.L432:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmpw	$6, %ax	#, _1
	je	.L470	#,
	jmp	.L430	#
	.p2align 4,,10
	.p2align 3
.L527:
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	120(%rbx), %rdi	# MEM[(struct memory_resource * *)frame_ptr_22(D) + 120B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L473	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_164->_vptr.memory_resource, mr_164->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp254
	movq	24(%rax), %rax	# MEM[(int (*) () *)_165 + 24B], _166
	cmpq	%rdx, %rax	# tmp254, _166
	je	.L426	#,
	movl	$16, %ecx	#,
	movl	$128, %edx	#,
	movq	%rbx, %rsi	# frame_ptr,
	call	*%rax	# _166
	jmp	.L426	#
.L528:
	.cfi_offset 14, -16
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbp)	#, MEM[(struct exception_ptr *)raw_101 + 64B]._M_exception_object
	je	.L442	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbp), %rdi	#, _132
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L442:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbp), %rax	# MEM[(const struct any *)raw_101 + 32B]._M_manager, _135
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _135
	je	.L443	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbp), %rsi	#, _134
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _135
.L443:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmpw	$0, 90(%rbp)	#, MEM[(struct _ZL7ping_d4v.Frame *)raw_101]._Coro_frame_refcount
	jne	.L441	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	120(%rbp), %rdi	# MEM[(struct memory_resource * *)raw_101 + 120B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L444	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_138->_vptr.memory_resource, mr_138->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp211
	movq	24(%rax), %rax	# MEM[(int (*) () *)_139 + 24B], _140
	cmpq	%rdx, %rax	# tmp211, _140
	je	.L441	#,
	movl	$16, %ecx	#,
	movl	$128, %edx	#,
	movq	%rbp, %rsi	# __p,
	call	*%rax	# _140
	jmp	.L441	#
.L438:
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movl	$16, %edx	#,
	movl	$128, %esi	#,
	movq	%r14, %rdi	# mr,
.LEHB35:
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	8(%r14), %rbp	# MEM[(struct monotonic_buffer_resource *)mr_95]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%r14), %rax	# MEM[(struct monotonic_buffer_resource *)mr_95]._M_avail, prephitmp_44
	jmp	.L439	#
.L436:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$128, %edi	#,
	call	_Znwm@PLT	#
.L523:
	movq	%rax, %rbp	# __p, __p
	jmp	.L440	#
.L437:
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$128, %esi	#,
	call	*%rax	# _98
.LEHE35:
	jmp	.L523	#
.L473:
	.cfi_restore 14
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	24(%rsp), %rax	# D.201275, tmp277
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp277
	jne	.L525	#,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	40(%rsp), %rbp	#,
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	%rbx, %rdi	# frame_ptr,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	32(%rsp), %rbx	#,
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$128, %esi	#,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB36:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE36:
.L444:
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
	movl	$128, %esi	#,
	movq	%rbp, %rdi	# __p,
	call	_ZdlPvm@PLT	#
	jmp	.L441	#
.L530:
	.cfi_restore 14
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	16(%rsp), %rdi	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 16(%rsp)	# _149, MEM[(struct exception_ptr *)&D.201222]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:897:       std::rethrow_exception(p.exception);
	movq	24(%rsp), %rax	# D.201275, tmp276
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp276
	jne	.L525	#,
	leaq	16(%rsp), %rdi	#,
.LEHB37:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE37:
.L525:
	movq	%r14, 48(%rsp)	#,
	.cfi_offset 14, -16
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	call	__stack_chk_fail@PLT	#
.L485:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	%rax, %r14	#, tmp268
	jmp	.L446	#
.L486:
	.cfi_restore 14
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	movq	%rax, %rbp	#, tmp271
	jmp	.L464	#
.L519:
	jmp	.L520	#
.L482:
	.cfi_offset 14, -16
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	48(%rsp), %r14	#,
	.cfi_restore 14
	movq	%rax, %rdi	# tmp273, tmp223
	jmp	.L450	#
	.section	.gcc_except_table
	.align 4
.LLSDA6275:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6275-.LLSDATTD6275
.LLSDATTD6275:
	.byte	0x1
	.uleb128 .LLSDACSE6275-.LLSDACSB6275
.LLSDACSB6275:
	.uleb128 .LEHB33-.LFB6275
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L485-.LFB6275
	.uleb128 0x3
	.uleb128 .LEHB34-.LFB6275
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L519-.LFB6275
	.uleb128 0x3
	.uleb128 .LEHB35-.LFB6275
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L482-.LFB6275
	.uleb128 0x1
	.uleb128 .LEHB36-.LFB6275
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB6275
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L486-.LFB6275
	.uleb128 0x3
.LLSDACSE6275:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT6275:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6275
	.type	_Z7ping_d5P18_ZL7ping_d5v.Frame.actor.cold, @function
_Z7ping_d5P18_ZL7ping_d5v.Frame.actor.cold:
.LFSB6275:
.L430:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	movq	%r14, 48(%rsp)	#,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	ud2	
.L452:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _157,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %rbp	#, _157
.LEHB38:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE38:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	24(%rsp), %rax	# D.201275, tmp275
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp275
	jne	.L524	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%rbp, %rdi	# _157,
.LEHB39:
	call	__cxa_throw@PLT	#
.LEHE39:
.L464:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 16(%rsp)	#, D.201222._M_exception_object
	je	.L458	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	16(%rsp), %rdi	#,
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L458:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 96B]._M_fr_ptr, _53
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _53
	je	.L475	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _53,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_53 + 8B]
.L475:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _55
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _55
	je	.L476	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _55,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_55 + 8B]
.L476:
	movq	%rbp, %rdi	# tmp234, tmp223
.L450:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	call	__cxa_begin_catch@PLT	#
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmpb	$0, 93(%rbx)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
	jne	.L477	#,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	24(%rsp), %rax	# D.201275, tmp278
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp278
	jne	.L524	#,
.LEHB40:
	call	__cxa_rethrow@PLT	#
.LEHE40:
.L435:
.L483:
.L520:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	%rax, %rbp	# tmp272, tmp234
	jmp	.L458	#
.L477:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	xorl	%eax, %eax	#
	movw	$0, 88(%rbx)	#, frame_ptr_22(D)->_Coro_resume_index
	leaq	16(%rbx), %rdi	#, _12
	movq	%rax, (%rbx)	#, frame_ptr_22(D)->_Coro_resume_fn
	call	_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv	#
.LEHB41:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	call	__cxa_end_catch@PLT	#
.LEHE41:
	jmp	.L466	#
.L446:
	.cfi_offset 14, -16
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_22(D) + 104B]._M_fr_ptr, _89
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _89
	je	.L447	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _89,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_89 + 8B]
.L447:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	subw	$1, 90(%rbp)	#, MEM[(struct _ZL7ping_d4v.Frame *)raw_101]._Coro_frame_refcount
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	jne	.L448	#,
# ../../effects.hpp:454: template <typename... Es> struct PromiseBase : PromiseAbortBase {
	leaq	16(%rbp), %rdi	#, _93
	call	_ZN2fx6detail16PromiseAbortBaseD2Ev	#
.L448:
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	cmpw	$0, 90(%rbp)	#, MEM[(struct _ZL7ping_d4v.Frame *)raw_101]._Coro_frame_refcount
	jne	.L449	#,
# b5_propagation.cpp:29: static auto ping_d4() -> Ping::Fx<int> { co_return co_await ping_d3(); }
	movl	$120, %esi	#,
	movq	%rbp, %rdi	# __p,
	call	_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm	#
.L449:
	movq	%r14, %rdi	# tmp268, tmp223
	movq	48(%rsp), %r14	#,
	.cfi_restore 14
	jmp	.L450	#
.L487:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rbp, %rdi	# _157,
	movq	%rax, 8(%rsp)	# tmp270, %sfp
	call	__cxa_free_exception@PLT	#
	movq	8(%rsp), %rbp	# %sfp, tmp234
	jmp	.L458	#
.L524:
	movq	%r14, 48(%rsp)	#,
	.cfi_remember_state
	.cfi_offset 14, -16
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	call	__stack_chk_fail@PLT	#
.L484:
	.cfi_restore_state
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	%rax, %rbx	#, tmp274
	call	__cxa_end_catch@PLT	#
	movq	24(%rsp), %rax	# D.201275, tmp279
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp279
	movq	%r14, 48(%rsp)	#,
	.cfi_offset 14, -16
	jne	.L531	#,
	movq	%rbx, %rdi	# tmp274,
.LEHB42:
	call	_Unwind_Resume@PLT	#
.LEHE42:
.L531:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6275:
	.section	.gcc_except_table
	.align 4
.LLSDAC6275:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC6275-.LLSDATTDC6275
.LLSDATTDC6275:
	.byte	0x1
	.uleb128 .LLSDACSEC6275-.LLSDACSBC6275
.LLSDACSBC6275:
	.uleb128 .LEHB38-.LCOLDB22
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L487-.LCOLDB22
	.uleb128 0x3
	.uleb128 .LEHB39-.LCOLDB22
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L483-.LCOLDB22
	.uleb128 0x3
	.uleb128 .LEHB40-.LCOLDB22
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L484-.LCOLDB22
	.uleb128 0
	.uleb128 .LEHB41-.LCOLDB22
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LCOLDB22
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSEC6275:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATTC6275:
	.section	.text.unlikely
	.text
	.size	_Z7ping_d5P18_ZL7ping_d5v.Frame.actor, .-_Z7ping_d5P18_ZL7ping_d5v.Frame.actor
	.section	.text.unlikely
	.size	_Z7ping_d5P18_ZL7ping_d5v.Frame.actor.cold, .-_Z7ping_d5P18_ZL7ping_d5v.Frame.actor.cold
.LCOLDE22:
	.text
.LHOTE22:
	.p2align 4
	.type	_Z7ping_d5P18_ZL7ping_d5v.Frame.destroy, @function
_Z7ping_d5P18_ZL7ping_d5v.Frame.destroy:
.LFB6276:
	.cfi_startproc
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	orw	$1, 88(%rdi)	#, frame_ptr_4(D)->_Coro_resume_index
	jmp	_Z7ping_d5P18_ZL7ping_d5v.Frame.actor	#
	.cfi_endproc
.LFE6276:
	.size	_Z7ping_d5P18_ZL7ping_d5v.Frame.destroy, .-_Z7ping_d5P18_ZL7ping_d5v.Frame.destroy
	.section	.text.unlikely
.LCOLDB24:
	.text
.LHOTB24:
	.p2align 4
	.type	_ZL7ping_d5v, @function
_ZL7ping_d5v:
.LFB6274:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6274
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12	# .result_ptr, <retval>
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rbp	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rbp, %rbp	# mr
	je	.L534	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	0(%rbp), %rax	# mr_45->_vptr.memory_resource, mr_45->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp141
	movq	16(%rax), %rax	# MEM[(int (*) () *)_47 + 16B], _48
	cmpq	%rdx, %rax	# tmp141, _48
	jne	.L535	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rbp), %rax	# MEM[(size_t &)mr_45 + 16], _60
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$127, %rax	#, _60
	jbe	.L536	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rbp), %rdx	# MEM[(void * &)mr_45 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-128(%rax), %rsi	#, _69
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rdx), %rbx	#, _65
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rbx	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rbx, %rcx	# __aligned, __diff_68
	subq	%rdx, %rcx	# __intptr, __diff_68
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rcx, %rsi	# __diff_68, _69
	jb	.L536	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rdx, %rax	# __intptr, _73
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rbx, 8(%rbp)	# __p, MEM[(void * &)mr_45 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rbx, %rax	# __aligned, _71
	movq	%rax, 16(%rbp)	# _71, MEM[(size_t &)mr_45 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rbx, %rbx	# __p
	je	.L536	#,
.L537:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	128(%rbx), %rdx	#, tmp146
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	addq	$-128, %rax	#, tmp147
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rdx, 8(%rbp)	# tmp146, MEM[(struct monotonic_buffer_resource *)mr_45]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rax, 16(%rbp)	# tmp147, MEM[(struct monotonic_buffer_resource *)mr_45]._M_avail
.L538:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	leaq	_Z7ping_d5P18_ZL7ping_d5v.Frame.destroy(%rip), %rax	#, tmp138
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rbp, 120(%rbx)	# mr, MEM[(struct memory_resource * *)raw_51 + 120B]
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	%rbx, %rdi	# __p,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	.LC23(%rip), %xmm0	#, _7
	movq	%rax, %xmm1	# tmp138, tmp138
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rbx), %rax	#, tmp153
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movb	$1, 92(%rbx)	#, MEM[(struct _ZL7ping_d5v.Frame *)raw_51]._Coro_frame_needs_free
	punpcklqdq	%xmm1, %xmm0	# tmp138, _7
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_51 + 16B].aborted
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movups	%xmm0, (%rbx)	# _7, MEM <vector(2) long unsigned int> [(void (*<T17820>) (struct _ZL7ping_d5v.Frame *) *)raw_51]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp149
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	$0, 24(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_51 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rbx)	#, MEM[(struct any *)raw_51 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 84(%rbx)	#, MEM[(struct _Optional_payload_base *)raw_51 + 80B]._M_engaged
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movl	$65536, 88(%rbx)	#, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_51 + 88B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp153, MEM[(struct promise_type *)raw_51 + 16B].D.146467.D.145421.result_ptr
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, 40(%rbx)	# tmp149, MEM <vector(2) long unsigned int> [(void *)raw_51 + 40B]
	movups	%xmm0, 56(%rbx)	# tmp149, MEM <vector(2) long unsigned int> [(void *)raw_51 + 56B]
# ../../effects.hpp:521:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	movq	%rbx, (%r12)	# __p, MEM[(struct OwnedHandle *)_Coro_gro_18(D)].h._M_fr_ptr
.LEHB43:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	call	_Z7ping_d5P18_ZL7ping_d5v.Frame.actor	#
.LEHE43:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	subw	$1, 90(%rbx)	#, MEM[(struct _ZL7ping_d5v.Frame *)raw_51]._Coro_frame_refcount
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	je	.L555	#,
.L533:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movq	%r12, %rax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L536:
	.cfi_restore_state
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movl	$16, %edx	#,
	movl	$128, %esi	#,
	movq	%rbp, %rdi	# mr,
.LEHB44:
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
.LEHE44:
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	8(%rbp), %rbx	# MEM[(struct monotonic_buffer_resource *)mr_45]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%rbp), %rax	# MEM[(struct monotonic_buffer_resource *)mr_45]._M_avail, _71
	jmp	.L537	#
	.p2align 4,,10
	.p2align 3
.L555:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_51 + 64B]._M_exception_object
	je	.L540	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _82
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L540:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_51 + 32B]._M_manager, _85
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _85
	je	.L541	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _84
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _85
.L541:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmpw	$0, 90(%rbx)	#, MEM[(struct _ZL7ping_d5v.Frame *)raw_51]._Coro_frame_refcount
	jne	.L533	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	120(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_51 + 120B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L542	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_88->_vptr.memory_resource, mr_88->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp160
	movq	24(%rax), %rax	# MEM[(int (*) () *)_89 + 24B], _90
	cmpq	%rdx, %rax	# tmp160, _90
	je	.L533	#,
	movl	$16, %ecx	#,
	movl	$128, %edx	#,
	movq	%rbx, %rsi	# __p,
	call	*%rax	# _90
	jmp	.L533	#
	.p2align 4,,10
	.p2align 3
.L534:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$128, %edi	#,
.LEHB45:
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# __p, __p
	jmp	.L538	#
	.p2align 4,,10
	.p2align 3
.L535:
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$128, %esi	#,
	movq	%rbp, %rdi	# mr,
	call	*%rax	# _48
.LEHE45:
	movq	%rax, %rbx	# __p, __p
	jmp	.L538	#
	.p2align 4,,10
	.p2align 3
.L542:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZdlPvm@PLT	#
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	jmp	.L533	#
.L547:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	%rax, %rbp	#, tmp176
	jmp	.L543	#
	.section	.gcc_except_table
.LLSDA6274:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6274-.LLSDACSB6274
.LLSDACSB6274:
	.uleb128 .LEHB43-.LFB6274
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L547-.LFB6274
	.uleb128 0
	.uleb128 .LEHB44-.LFB6274
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB6274
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSE6274:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6274
	.type	_ZL7ping_d5v.cold, @function
_ZL7ping_d5v.cold:
.LFSB6274:
.L543:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	(%r12), %rax	# MEM[(const struct coroutine_handle *)_Coro_gro_18(D)]._M_fr_ptr, _26
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _26
	je	.L544	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _26,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_26 + 8B]
.L544:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	subw	$1, 90(%rbx)	#, MEM[(struct _ZL7ping_d5v.Frame *)raw_51]._Coro_frame_refcount
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	jne	.L545	#,
# ../../effects.hpp:454: template <typename... Es> struct PromiseBase : PromiseAbortBase {
	leaq	16(%rbx), %rdi	#, _28
	call	_ZN2fx6detail16PromiseAbortBaseD2Ev	#
.L545:
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	cmpw	$0, 90(%rbx)	#, MEM[(struct _ZL7ping_d5v.Frame *)raw_51]._Coro_frame_refcount
	jne	.L546	#,
# b5_propagation.cpp:30: static auto ping_d5() -> Ping::Fx<int> { co_return co_await ping_d4(); }
	movl	$120, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm	#
.L546:
	movq	%rbp, %rdi	# tmp176,
.LEHB46:
	call	_Unwind_Resume@PLT	#
.LEHE46:
	.cfi_endproc
.LFE6274:
	.section	.gcc_except_table
.LLSDAC6274:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6274-.LLSDACSBC6274
.LLSDACSBC6274:
	.uleb128 .LEHB46-.LCOLDB24
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
.LLSDACSEC6274:
	.section	.text.unlikely
	.text
	.size	_ZL7ping_d5v, .-_ZL7ping_d5v
	.section	.text.unlikely
	.size	_ZL7ping_d5v.cold, .-_ZL7ping_d5v.cold
.LCOLDE24:
	.text
.LHOTE24:
	.section	.text.unlikely
.LCOLDB25:
	.text
.LHOTB25:
	.p2align 4
	.type	_Z7ping_d8P18_ZL7ping_d8v.Frame.actor, @function
_Z7ping_d8P18_ZL7ping_d8v.Frame.actor:
.LFB6278:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6278
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 64
# b5_propagation.cpp:33: }
	movzwl	88(%rdi), %ecx	# frame_ptr_28(D)->_Coro_resume_index,
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movq	%rbx, 40(%rsp)	#,
	.cfi_offset 3, -24
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], frame_ptr
	movq	%rbx, 24(%rsp)	# frame_ptr, D.201382
	movq	%rdi, %rbx	# frame_ptr, frame_ptr
# b5_propagation.cpp:33: }
	testb	$1, %cl	#, _1
	je	.L557	#,
# b5_propagation.cpp:33: }
	cmpw	$9, %cx	#, _1
	ja	.L558	#,
	movl	$1, %eax	#, tmp188
	salq	%cl, %rax	# _1, _165
	testl	$522, %eax	#, _165
	jne	.L608	#,
.L560:
.L561:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 96B]._M_fr_ptr, _68
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _68
	je	.L563	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _68,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_68 + 8B]
.L563:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 104B]._M_fr_ptr, _66
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _66
	je	.L604	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _66,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_66 + 8B]
.L604:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	112(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 112B]._M_fr_ptr, _64
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _64
	je	.L605	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _64,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_64 + 8B]
.L605:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	120(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 120B]._M_fr_ptr, _62
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _62
	je	.L608	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _62,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_62 + 8B]
.L559:
.L607:
.L608:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	subw	$1, 90(%rbx)	#, frame_ptr_28(D)->_Coro_frame_refcount
# b5_propagation.cpp:33: }
	jne	.L556	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)frame_ptr_28(D) + 64B]._M_exception_object
	je	.L609	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _155
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L609:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)frame_ptr_28(D) + 32B]._M_manager, _158
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _158
	je	.L610	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _157
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _158
.L610:
# b5_propagation.cpp:33: }
	cmpb	$0, 92(%rbx)	#, frame_ptr_28(D)->_Coro_frame_needs_free
	jne	.L679	#,
	.p2align 4
	.p2align 3
.L556:
# b5_propagation.cpp:33: }
	movq	24(%rsp), %rax	# D.201382, tmp289
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp289
	jne	.L677	#,
	movq	40(%rsp), %rbx	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L557:
	.cfi_restore_state
# b5_propagation.cpp:33: }
	cmpw	$8, %cx	#, _1
	ja	.L558	#,
	leaq	.L564(%rip), %rdx	#, tmp191
	movslq	(%rdx,%rcx,4), %rax	#, tmp193
	addq	%rdx, %rax	# tmp191, tmp194
	jmp	*%rax	# tmp194
	.section	.rodata
	.align 4
	.align 4
.L564:
	.long	.L568-.L564
	.long	.L558-.L564
	.long	.L567-.L564
	.long	.L558-.L564
	.long	.L669-.L564
	.long	.L558-.L564
	.long	.L670-.L564
	.long	.L558-.L564
	.long	.L608-.L564
	.text
.L679:
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)frame_ptr_28(D) + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L611	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_161->_vptr.memory_resource, mr_161->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp252
	movq	24(%rax), %rax	# MEM[(int (*) () *)_162 + 24B], _163
	cmpq	%rdx, %rax	# tmp252, _163
	je	.L556	#,
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# frame_ptr,
	call	*%rax	# _163
	jmp	.L556	#
.L568:
# b5_propagation.cpp:33: }
	movl	$2, %esi	#,
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	addw	$1, 90(%rbx)	#, frame_ptr_28(D)->_Coro_frame_refcount
	movb	$0, 93(%rbx)	#, frame_ptr_28(D)->_Coro_initial_await_resume_called
# b5_propagation.cpp:33: }
	movw	%si, 88(%rbx)	#, frame_ptr_28(D)->_Coro_resume_index
	jmp	.L556	#
.L567:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movb	$1, 93(%rbx)	#, frame_ptr_28(D)->_Coro_initial_await_resume_called
# b5_propagation.cpp:33: }
	leaq	120(%rbx), %rdi	#, tmp196
.LEHB47:
	call	_ZL7ping_d5v	#
.LEHE47:
# /usr/include/c++/16.1.1/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	movq	120(%rbx), %rax	# MEM[(struct coroutine_handle &)frame_ptr_28(D) + 120], __old_val$_M_fr_ptr
	movq	%r14, 48(%rsp)	#,
# b5_propagation.cpp:33: }
	leaq	104(%rbx), %rdi	#, tmp197
# /usr/include/c++/16.1.1/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	movq	$0, 120(%rbx)	#, MEM[(struct coroutine_handle *)frame_ptr_28(D) + 120B]
# ../../effects.hpp:522:   OwnedHandle(OwnedHandle &&o) noexcept : h(std::exchange(o.h, {})) {}
	movq	%rax, 112(%rbx)	# __old_val$_M_fr_ptr, MEM[(struct OwnedHandle *)frame_ptr_28(D) + 112B]
.LEHB48:
	.cfi_offset 14, -16
# b5_propagation.cpp:33: }
	call	_ZL7ping_d3v	#
.LEHE48:
# /usr/include/c++/16.1.1/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	movq	104(%rbx), %rax	# MEM[(struct coroutine_handle &)frame_ptr_28(D) + 104], __old_val$_M_fr_ptr
# /usr/include/c++/16.1.1/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	movq	$0, 104(%rbx)	#, MEM[(struct coroutine_handle *)frame_ptr_28(D) + 104B]
# ../../effects.hpp:522:   OwnedHandle(OwnedHandle &&o) noexcept : h(std::exchange(o.h, {})) {}
	movq	%rax, 96(%rbx)	# __old_val$_M_fr_ptr, MEM[(struct OwnedHandle *)frame_ptr_28(D) + 96B]
.L566:
# b5_propagation.cpp:33: }
	movl	$6, %ecx	#,
	movw	%cx, 88(%rbx)	#, frame_ptr_28(D)->_Coro_resume_index
.L565:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	112(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 112B]._M_fr_ptr, _125
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rax, %rdi	# _125,
.LEHB49:
	call	*(%rax)	# MEM[(void (*<T123>) (void *) *)_125]
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	112(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 112B]._M_fr_ptr, _127
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_127]
	je	.L680	#,
	.p2align 4
	.p2align 3
.L580:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:893:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rcx), %rdx	# MEM[(struct promise_type &)_127 + 16].D.146467.D.145421.effect_tag, _129
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L576	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _129, n_134->effect_tag
	je	.L573	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L574:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_147->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L681	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_138->effect_tag, _129
	jne	.L574	#,
.L573:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rcx), %rsi	# MEM[(struct promise_type &)_127 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_127 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_106->dispatch
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	112(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 112B]._M_fr_ptr, _127
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_127]
	jne	.L580	#,
.L680:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rcx), %rax	# MEM[(const struct exception_ptr *)_127 + 64B]._M_exception_object, _131
# ../../effects.hpp:896:     if (p.exception)
	testq	%rax, %rax	# _131
	jne	.L682	#,
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	96(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 96B]._M_fr_ptr, _140
# ../../effects.hpp:898:     return std::move(*p.result);
	movl	80(%rcx), %r14d	# MEM[(type &)_127 + 80], _132
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rax, %rdi	# _140,
	call	*(%rax)	# MEM[(void (*<T123>) (void *) *)_140]
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	96(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 96B]._M_fr_ptr, _142
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_142]
	je	.L683	#,
	.p2align 4
	.p2align 3
.L594:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:893:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rcx), %rdx	# MEM[(struct promise_type &)_142 + 16].D.146467.D.145421.effect_tag, _144
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L591	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _144, n_149->effect_tag
	je	.L588	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L589:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_197->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L684	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_153->effect_tag, _144
	jne	.L589	#,
.L588:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rcx), %rsi	# MEM[(struct promise_type &)_142 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_142 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_185->dispatch
.LEHE49:
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	96(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 96B]._M_fr_ptr, _142
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_142]
	jne	.L594	#,
.L683:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rcx), %rax	# MEM[(const struct exception_ptr *)_142 + 64B]._M_exception_object, _146
# ../../effects.hpp:896:     if (p.exception)
	testq	%rax, %rax	# _146
	jne	.L685	#,
# b5_propagation.cpp:32:   co_return co_await ping_d5() + co_await ping_d3();
	movl	80(%rcx), %eax	# MEM[(type &)_142 + 80], _132
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rcx, %rdi	# _142,
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movb	$1, 84(%rbx)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_28(D) + 84B]
# b5_propagation.cpp:32:   co_return co_await ping_d5() + co_await ping_d3();
	addl	%r14d, %eax	# _132, _132
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movl	%eax, 80(%rbx)	# _160, MEM <int> [(struct promise_type *)frame_ptr_28(D) + 80B]
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rcx)	# MEM[(void (*<T123>) (void *) *)_142 + 8B]
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 104B]._M_fr_ptr, _57
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _57
	je	.L598	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _57,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_57 + 8B]
.L598:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	112(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 112B]._M_fr_ptr, _31
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _31
	je	.L601	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _31,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_31 + 8B]
.L601:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	120(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 120B]._M_fr_ptr, _34
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _34
	je	.L671	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _34,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_34 + 8B]
# b5_propagation.cpp:32:   co_return co_await ping_d5() + co_await ping_d3();
	movq	48(%rsp), %r14	#,
	.cfi_restore 14
.L603:
# b5_propagation.cpp:33: }
	movl	$8, %edx	#,
# b5_propagation.cpp:33: }
	movq	$0, (%rbx)	#, frame_ptr_28(D)->_Coro_resume_fn
# b5_propagation.cpp:33: }
	movw	%dx, 88(%rbx)	#, frame_ptr_28(D)->_Coro_resume_index
	jmp	.L556	#
.L670:
	movq	%r14, 48(%rsp)	#,
	.cfi_remember_state
	.cfi_offset 14, -16
	jmp	.L565	#
.L669:
	.cfi_restore_state
	movq	%r14, 48(%rsp)	#,
	.cfi_offset 14, -16
	jmp	.L566	#
.L671:
	movq	48(%rsp), %r14	#,
	.cfi_restore 14
	jmp	.L603	#
.L611:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	24(%rsp), %rax	# D.201382, tmp286
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp286
	jne	.L677	#,
	movq	%rbx, %rdi	# frame_ptr,
# b5_propagation.cpp:33: }
	movq	40(%rsp), %rbx	#,
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
# b5_propagation.cpp:33: }
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LEHB50:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE50:
.L677:
	.cfi_restore_state
	movq	%r14, 48(%rsp)	#,
	.cfi_offset 14, -16
.L675:
# b5_propagation.cpp:33: }
	call	__stack_chk_fail@PLT	#
.L685:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	16(%rsp), %rdi	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 16(%rsp)	# _146, MEM[(struct exception_ptr *)_204]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:897:       std::rethrow_exception(p.exception);
	movq	24(%rsp), %rax	# D.201382, tmp285
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp285
	jne	.L675	#,
	leaq	16(%rsp), %rdi	#,
.LEHB51:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE51:
.L682:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	16(%rsp), %rdi	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 16(%rsp)	# _131, MEM[(struct exception_ptr *)_204]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:897:       std::rethrow_exception(p.exception);
	movq	24(%rsp), %rax	# D.201382, tmp283
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp283
	jne	.L675	#,
	leaq	16(%rsp), %rdi	#,
.LEHB52:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE52:
.L628:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	jmp	.L599	#
.L684:
	jmp	.L591	#
.L681:
	jmp	.L576	#
.L630:
	jmp	.L599	#
.L625:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	%rax, %r14	# tmp279, tmp258
	jmp	.L615	#
.L624:
	.cfi_restore 14
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movq	%rax, %rdi	# tmp280, tmp264
	jmp	.L618	#
.L664:
	.cfi_offset 14, -16
	jmp	.L579	#
	.section	.gcc_except_table
	.align 4
.LLSDA6278:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6278-.LLSDATTD6278
.LLSDATTD6278:
	.byte	0x1
	.uleb128 .LLSDACSE6278-.LLSDACSB6278
.LLSDACSB6278:
	.uleb128 .LEHB47-.LFB6278
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L624-.LFB6278
	.uleb128 0x1
	.uleb128 .LEHB48-.LFB6278
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L625-.LFB6278
	.uleb128 0x3
	.uleb128 .LEHB49-.LFB6278
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L664-.LFB6278
	.uleb128 0x3
	.uleb128 .LEHB50-.LFB6278
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB6278
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L630-.LFB6278
	.uleb128 0x3
	.uleb128 .LEHB52-.LFB6278
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L628-.LFB6278
	.uleb128 0x3
.LLSDACSE6278:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT6278:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6278
	.type	_Z7ping_d8P18_ZL7ping_d8v.Frame.actor.cold, @function
_Z7ping_d8P18_ZL7ping_d8v.Frame.actor.cold:
.LFSB6278:
.L558:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -24
	movq	%r14, 48(%rsp)	#,
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	ud2	
.L576:
	.cfi_offset 14, -16
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _139,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r14	# _139, _139
.LEHB53:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE53:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	24(%rsp), %rax	# D.201382, tmp282
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp282
	jne	.L676	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r14, %rdi	# _139,
.LEHB54:
	call	__cxa_throw@PLT	#
.LEHE54:
.L569:
.L626:
.L579:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	96(%rbx), %rdx	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 96B]._M_fr_ptr, _71
# ../../effects.hpp:534:     if (h)
	testq	%rdx, %rdx	# _71
	jne	.L686	#,
.L613:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	104(%rbx), %rdx	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 104B]._M_fr_ptr, _73
# ../../effects.hpp:534:     if (h)
	testq	%rdx, %rdx	# _73
	jne	.L687	#,
.L614:
	movq	%rax, %r14	# tmp207, tmp258
.L615:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	112(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 112B]._M_fr_ptr, _75
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _75
	je	.L616	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _75,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_75 + 8B]
.L616:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	120(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_28(D) + 120B]._M_fr_ptr, _77
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _77
	je	.L617	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _77,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_77 + 8B]
.L617:
	movq	%r14, %rdi	# tmp258, tmp264
	movq	48(%rsp), %r14	#,
	.cfi_restore 14
.L618:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	call	__cxa_begin_catch@PLT	#
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	cmpb	$0, 93(%rbx)	#, frame_ptr_28(D)->_Coro_initial_await_resume_called
	jne	.L619	#,
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movq	24(%rsp), %rax	# D.201382, tmp287
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp287
	jne	.L688	#,
.LEHB55:
	call	__cxa_rethrow@PLT	#
.LEHE55:
.L591:
	.cfi_offset 14, -16
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _154,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r14	# _154, _154
.LEHB56:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE56:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	24(%rsp), %rax	# D.201382, tmp284
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp284
	jne	.L676	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r14, %rdi	# _154,
.LEHB57:
	call	__cxa_throw@PLT	#
.LEHE57:
.L688:
	.cfi_restore 14
	movq	%r14, 48(%rsp)	#,
	.cfi_offset 14, -16
.L676:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	call	__stack_chk_fail@PLT	#
.L631:
.L673:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r14, %rdi	# _154,
	movq	%rax, 8(%rsp)	# tmp276, %sfp
	call	__cxa_free_exception@PLT	#
	movq	8(%rsp), %rax	# %sfp, tmp276
	jmp	.L579	#
.L629:
	jmp	.L673	#
.L686:
	movq	%rax, 8(%rsp)	# tmp207, %sfp
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rdx, %rdi	# _71,
	call	*8(%rdx)	# MEM[(void (*<T123>) (void *) *)_71 + 8B]
	movq	8(%rsp), %rax	# %sfp, tmp207
	jmp	.L613	#
.L687:
	movq	%rax, 8(%rsp)	# tmp207, %sfp
	movq	%rdx, %rdi	# _73,
	call	*8(%rdx)	# MEM[(void (*<T123>) (void *) *)_73 + 8B]
	movq	8(%rsp), %rax	# %sfp, tmp207
	jmp	.L614	#
.L599:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 16(%rsp)	#, MEM[(struct exception_ptr *)_204]._M_exception_object
	je	.L579	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	16(%rsp), %rdi	#,
	movq	%rax, 8(%rsp)	# tmp277, %sfp
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, tmp277
	jmp	.L579	#
.L619:
	.cfi_restore 14
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	xorl	%eax, %eax	#
	movw	$0, 88(%rbx)	#, frame_ptr_28(D)->_Coro_resume_index
	leaq	16(%rbx), %rdi	#, _15
	movq	%rax, (%rbx)	#, frame_ptr_28(D)->_Coro_resume_fn
	call	_ZN2fx6detail11PromiseBaseIJ4PingEE19unhandled_exceptionEv	#
.LEHB58:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	call	__cxa_end_catch@PLT	#
.LEHE58:
	jmp	.L603	#
.L627:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movq	%rax, %rbx	#, tmp281
	call	__cxa_end_catch@PLT	#
	movq	24(%rsp), %rax	# D.201382, tmp288
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp288
	movq	%r14, 48(%rsp)	#,
	.cfi_offset 14, -16
	jne	.L676	#,
	movq	%rbx, %rdi	# tmp281,
.LEHB59:
	call	_Unwind_Resume@PLT	#
.LEHE59:
	.cfi_endproc
.LFE6278:
	.section	.gcc_except_table
	.align 4
.LLSDAC6278:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC6278-.LLSDATTDC6278
.LLSDATTDC6278:
	.byte	0x1
	.uleb128 .LLSDACSEC6278-.LLSDACSBC6278
.LLSDACSBC6278:
	.uleb128 .LEHB53-.LCOLDB25
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L629-.LCOLDB25
	.uleb128 0x3
	.uleb128 .LEHB54-.LCOLDB25
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L626-.LCOLDB25
	.uleb128 0x3
	.uleb128 .LEHB55-.LCOLDB25
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L627-.LCOLDB25
	.uleb128 0
	.uleb128 .LEHB56-.LCOLDB25
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L631-.LCOLDB25
	.uleb128 0x3
	.uleb128 .LEHB57-.LCOLDB25
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L626-.LCOLDB25
	.uleb128 0x3
	.uleb128 .LEHB58-.LCOLDB25
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LCOLDB25
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
.LLSDACSEC6278:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATTC6278:
	.section	.text.unlikely
	.text
	.size	_Z7ping_d8P18_ZL7ping_d8v.Frame.actor, .-_Z7ping_d8P18_ZL7ping_d8v.Frame.actor
	.section	.text.unlikely
	.size	_Z7ping_d8P18_ZL7ping_d8v.Frame.actor.cold, .-_Z7ping_d8P18_ZL7ping_d8v.Frame.actor.cold
.LCOLDE25:
	.text
.LHOTE25:
	.p2align 4
	.type	_Z7ping_d8P18_ZL7ping_d8v.Frame.destroy, @function
_Z7ping_d8P18_ZL7ping_d8v.Frame.destroy:
.LFB6279:
	.cfi_startproc
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	orw	$1, 88(%rdi)	#, frame_ptr_4(D)->_Coro_resume_index
	jmp	_Z7ping_d8P18_ZL7ping_d8v.Frame.actor	#
	.cfi_endproc
.LFE6279:
	.size	_Z7ping_d8P18_ZL7ping_d8v.Frame.destroy, .-_Z7ping_d8P18_ZL7ping_d8v.Frame.destroy
	.section	.rodata.str1.1
.LC29:
	.string	"\n=== "
.LC30:
	.string	" ===\n"
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"  Each iteration traverses the full chain once.\n"
	.align 8
.LC32:
	.string	"  Direct: plain non-inlined function calls at equivalent depth.\n"
	.align 8
.LC33:
	.string	"  Fx:     co_await chain \342\200\224 each level allocates one coroutine frame.\n\n"
	.section	.rodata.str1.1
.LC34:
	.string	"  depth 1:\n"
.LC36:
	.string	"  depth 3:\n"
.LC37:
	.string	"  depth 5:\n"
.LC38:
	.string	"  depth 8 (two branches):\n"
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"\nNote: the Fx/direct ratio stays roughly constant across depths\n"
	.align 8
.LC40:
	.string	"      because each extra level adds the same fixed per-frame cost.\n"
	.align 8
.LC41:
	.string	"      A pool allocator for coroutine frames would flatten the curve.\n"
	.section	.text.unlikely
.LCOLDB46:
	.section	.text.startup,"ax",@progbits
.LHOTB46:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB6287:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6287
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$12341, %edx	#,
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$47, %edi	#,
# b5_propagation.cpp:53: int main() {
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
# b5_propagation.cpp:53: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp748
	movq	%rax, 312(%rsp)	# tmp748, D.202590
	xorl	%eax, %eax	# tmp748
	movw	%dx, 240(%rsp)	#, MEM <vector(2) char> [(char *)_1766 + 16B]
# /usr/include/c++/16.1.1/bits/charconv.h:101: 	  __first[__pos - 1] = __digits[__num];
	movl	$808464432, 242(%rsp)	#, MEM <vector(2) unsigned short> [(char *)_1766 + 18B]
.LEHB60:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE60:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC42(%rip), %xmm0	#, tmp1710
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$93, %edi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 232(%rsp)	#, MEM[(struct basic_string *)_1766]._M_string_length
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbx	#, _512
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp1710, MEM <char[1:40]> [(void *)_512]
	movdqa	.LC43(%rip), %xmm0	#, tmp1711
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbx, 256(%rsp)	# _512, MEM[(struct basic_string *)_12]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, 16(%rax)	# tmp1711, MEM <char[1:40]> [(void *)_512]
	movabsq	$4417512402944749161, %rax	#, tmp1879
	movq	%rax, 32(%rbx)	# tmp1879, MEM <char[1:40]> [(void *)_512]
	movl	240(%rsp), %eax	# MEM <char[1:6]> [(void *)_1766 + 16B], MEM <char[1:6]> [(void *)_1766 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 46(%rbx)	#, MEM[(char_type &)_512 + 46]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	%eax, 40(%rbx)	# MEM <char[1:6]> [(void *)_1766 + 16B], MEM <char[1:6]> [(void *)_497]
	movzwl	244(%rsp), %eax	# MEM <char[1:6]> [(void *)_1766 + 16B], MEM <char[1:6]> [(void *)_1766 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 240(%rsp)	#, MEM <unsigned long> [(void *)_1766 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movw	%ax, 44(%rbx)	# MEM <char[1:6]> [(void *)_1766 + 16B], MEM <char[1:6]> [(void *)_497]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$46, %eax	#, tmp760
	movq	%rax, %xmm0	# tmp760, tmp760
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	240(%rsp), %rax	#, tmp1881
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	punpcklqdq	%xmm0, %xmm0	# tmp759
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 224(%rsp)	# tmp1881, MEM[(struct basic_string *)_1766]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movups	%xmm0, 264(%rsp)	# tmp759, MEM <vector(2) long unsigned int> [(void *)_12 + 8B]
.LEHB61:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE61:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqu	(%rbx), %xmm0	# MEM <char[1:46]> [(void *)_512], MEM <char[1:46]> [(void *)_512]
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbp	#, _570
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movl	$47, %esi	#,
	movq	%rbx, %rdi	# _512,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# MEM <char[1:46]> [(void *)_512], MEM <char[1:46]> [(void *)_570]
	movdqu	16(%rbx), %xmm0	# MEM <char[1:46]> [(void *)_512], MEM <char[1:46]> [(void *)_512]
	movups	%xmm0, 16(%rax)	# MEM <char[1:46]> [(void *)_512], MEM <char[1:46]> [(void *)_570]
	movdqu	30(%rbx), %xmm0	# MEM <char[1:46]> [(void *)_512], MEM <char[1:46]> [(void *)_512]
	movups	%xmm0, 30(%rax)	# MEM <char[1:46]> [(void *)_512], MEM <char[1:46]> [(void *)_570]
	movabsq	$7810758119753347104, %rax	#, tmp1882
	movq	%rax, 46(%rbp)	# tmp1882, MEM <char[1:10]> [(void *)_549]
	movl	$10604, %eax	#,
	movw	%ax, 54(%rbp)	#, MEM <char[1:10]> [(void *)_549]
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 56(%rbp)	#, MEM[(char_type &)_570 + 56]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	272(%rsp), %rax	#, tmp1883
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC29(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 256(%rsp)	# tmp1883, MEM[(struct basic_string *)_12]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 264(%rsp)	#, MEM[(struct basic_string *)_12]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 272(%rsp)	#, MEM <unsigned long> [(void *)_12 + 16B]
.LEHB62:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/string_view:780:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	movl	$56, %edx	#,
	movq	%rbp, %rsi	# _570,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC30(%rip), %rsi	#,
	movq	%rax, %rdi	# _581,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE62:
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%rbp, %rdi	# _570,
	movl	$93, %esi	#,
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(struct basic_string *)_12]._M_dataplus._M_p, _21
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp1884
	cmpq	%rax, %rdi	# tmp1884, _21
	je	.L691	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp1885
	leaq	1(%rax), %rsi	#, _103
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L691:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _71
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp1886
	cmpq	%rax, %rdi	# tmp1886, _71
	je	.L692	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp1887
	leaq	1(%rax), %rsi	#, _30
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L692:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$48, %edx	#,
	leaq	.LC31(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB63:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$64, %edx	#,
	leaq	.LC32(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$72, %edx	#,
	leaq	.LC33(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$11, %edx	#,
	leaq	.LC34(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b5_propagation.cpp:66:     print_result(bench("    direct", N, [&] { sink += direct_d1(); }));
	leaq	224(%rsp), %rdi	#, tmp1888
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.1	#
.LEHE63:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, %rbx	#, start
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp1889
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rdi	#, tmp1890
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	232(%rsp), %rdx	# MEM[(const struct basic_string *)_1766]._M_string_length, pretmp_828
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp1889, MEM[(struct _Alloc_hider *)_12]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rcx	# MEM[(const struct basic_string *)_1766]._M_dataplus._M_p, _646
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp1890, _646
	je	.L1157	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _646, MEM[(struct basic_string *)_12]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	240(%rsp), %rcx	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity
.L694:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	# start, _626
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _627
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_828, MEM[(struct basic_string *)_12]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC10(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _626, _627
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	240(%rsp), %rax	#, tmp1893
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 296(%rsp)	# _627, MEM[(struct BenchResult *)_12].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC35(%rip), %xmm0	#, _627
	movq	%xmm0, %rbp	# _627, _593
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 224(%rsp)	# tmp1893, MEM[(struct basic_string *)_1766]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 240(%rsp)	#, MEM[(char_type &)_1766 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 232(%rsp)	#, MEM[(struct basic_string *)_1766]._M_string_length
# bench.hpp:44: }
	movq	$500000, 288(%rsp)	#, MEM[(struct BenchResult *)_12].iters
.LEHB64:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _594
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp1895
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	256(%rsp), %rsi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp1895,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_594 + -24B], MEM[(long int *)_594 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _597->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_594 + -24B], _600
	addq	%rcx, %rdx	# tmp1895, _600
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _600->_M_flags, _653
	andb	$79, %al	#, _653
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp819
	movl	%eax, 24(%rdx)	# tmp819, MEM[(_Ios_Fmtflags &)_600 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	264(%rsp), %rdx	# MEM[(const struct basic_string *)_12]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# _604,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbx	#, _604
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# _604->_vptr.basic_ostream, _605
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbp, %xmm0	# _593,
	movq	%rbx, %rdi	# _604,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_605 + -24B], MEM[(long int *)_605 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _608->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_605 + -24B], _611
	addq	%rbx, %rdx	# _604, _611
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _611->_M_flags, _550
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _611->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _550
	orb	$-124, %al	#, tmp828
	movl	%eax, 24(%rdx)	# tmp828, MEM[(_Ios_Fmtflags &)_611 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC12(%rip), %rsi	#,
	movq	%rax, %rdi	# _612,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE64:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _112
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp1900
	cmpq	%rax, %rdi	# tmp1900, _112
	je	.L695	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp1901
	leaq	1(%rax), %rsi	#, _115
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L695:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _108
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp1902
	cmpq	%rax, %rdi	# tmp1902, _108
	je	.L696	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp1903
	leaq	1(%rax), %rsi	#, _111
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L696:
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	leaq	224(%rsp), %rdi	#, tmp1904
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	leaq	160(%rsp), %rbp	#, tmp1707
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	movl	$3, %r14d	#, ivtmp_93
# b5_propagation.cpp:66:     print_result(bench("    direct", N, [&] { sink += direct_d1(); }));
	movl	$500003, %r15d	#, sink
.LEHB65:
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE65:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	%rbp, %xmm7	# tmp1707, tmp1707
	movq	.LC44(%rip), %xmm6	#, _1690
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI4Ping11PingHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_(%rip), %r12	#, tmp1709
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	punpcklqdq	%xmm7, %xmm6	# tmp1707, _1690
	movaps	%xmm6, (%rsp)	# _1690, %sfp
	.p2align 4
	.p2align 3
.L720:
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	leaq	88(%rsp), %rdi	#, tmp1907
.LEHB66:
	call	_ZL7ping_d1v	#
.LEHE66:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	(%rsp), %xmm3	# %sfp, _1690
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	leaq	87(%rsp), %r13	#, tmp1650
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 200(%rsp)	#, MEM[(struct HandlerNode *)_1650].on_return_any_fn
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%r13, 176(%rsp)	# tmp1650, MEM[(struct ScopedHandler *)_1650].node.real_handler_ptr
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%r12, 184(%rsp)	# tmp1709, MEM[(struct ScopedHandler *)_1650].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm3, 160(%rsp)	# _1690, MEM <vector(2) long unsigned int> [(const void * *)_1650]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.39_688
	movq	%rax, 208(%rsp)	# stack_top.39_688, MEM[(struct ScopedHandler *)_1650].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 192(%rsp)	# stack_top.39_688, MEM[(struct ScopedHandler *)_1650].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp1707, stack_top
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	88(%rsp), %rbx	# MEM[(const struct coroutine_handle *)_1806]._M_fr_ptr, _699
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# _699,
.LEHB67:
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)_699]
	.p2align 4
	.p2align 3
.L697:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)_699]
	je	.L1158	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)_699 + 16].D.146467.D.145421.effect_tag, _703
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L698	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _703, n_710->effect_tag
	je	.L699	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L700:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_2289->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L1159	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_714->effect_tag, _703
	jne	.L700	#,
.L699:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)_699 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_699 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_2376->dispatch
.LEHE67:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)_699 + 16].D.146467.D.145421.aborted
	je	.L697	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_699 + 16B].abort_owner
	je	.L706	#,
.L707:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _699,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_699 + 8B]
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r14	#, ivtmp_93
	jne	.L720	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	%rbp, %xmm6	# tmp1707, tmp1707
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movl	$500000, %r14d	#, ivtmp_1180
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	.LC44(%rip), %xmm7	#, _484
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movq	%rax, 16(%rsp)	#, %sfp
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	punpcklqdq	%xmm6, %xmm7	# tmp1707, _484
	movaps	%xmm7, (%rsp)	# _484, %sfp
	.p2align 4
	.p2align 3
.L746:
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	leaq	88(%rsp), %rdi	#, tmp1915
.LEHB68:
	call	_ZL7ping_d1v	#
.LEHE68:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	(%rsp), %xmm4	# %sfp, _484
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%r13, 176(%rsp)	# tmp1650, MEM[(struct ScopedHandler *)_1650].node.real_handler_ptr
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 200(%rsp)	#, MEM[(struct HandlerNode *)_1650].on_return_any_fn
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%r12, 184(%rsp)	# tmp1709, MEM[(struct ScopedHandler *)_1650].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm4, 160(%rsp)	# _484, MEM <vector(2) long unsigned int> [(const void * *)_1650]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.39_742
	movq	%rax, 208(%rsp)	# stack_top.39_742, MEM[(struct ScopedHandler *)_1650].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 192(%rsp)	# stack_top.39_742, MEM[(struct ScopedHandler *)_1650].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp1707, stack_top
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	88(%rsp), %rbx	# MEM[(const struct coroutine_handle *)_1806]._M_fr_ptr, _753
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# _753,
.LEHB69:
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)_753]
	.p2align 4
	.p2align 3
.L723:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)_753]
	je	.L1160	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)_753 + 16].D.146467.D.145421.effect_tag, _757
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L724	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _757, n_764->effect_tag
	je	.L725	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L726:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_2281->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L1161	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_768->effect_tag, _757
	jne	.L726	#,
.L725:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)_753 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_753 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_2282->dispatch
.LEHE69:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)_753 + 16].D.146467.D.145421.aborted
	je	.L723	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_753 + 16B].abort_owner
	je	.L732	#,
.L733:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _753,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_753 + 8B]
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r14	#, ivtmp_1180
	jne	.L746	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp1921
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rdi	#, tmp1922
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	232(%rsp), %rdx	# MEM[(const struct basic_string *)_1766]._M_string_length, pretmp_835
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp1921, MEM[(struct _Alloc_hider *)_12]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rcx	# MEM[(const struct basic_string *)_1766]._M_dataplus._M_p, _788
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp1922, _788
	je	.L1162	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _788, MEM[(struct basic_string *)_12]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	240(%rsp), %rcx	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity
.L749:
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	240(%rsp), %rcx	#, tmp1925
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	16(%rsp), %rax	# %sfp, _676
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp946
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_835, MEM[(struct basic_string *)_12]._M_string_length
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	leaq	256(%rsp), %rdi	#, tmp1927
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _676, tmp946
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 224(%rsp)	# tmp1925, MEM[(struct basic_string *)_1766]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 240(%rsp)	#, MEM[(char_type &)_1766 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 232(%rsp)	#, MEM[(struct basic_string *)_1766]._M_string_length
# bench.hpp:44: }
	movq	$500000, 288(%rsp)	#, MEM[(struct BenchResult *)_12].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 296(%rsp)	# tmp946, MEM[(struct BenchResult *)_12].total_ns
.LEHB70:
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	call	_Z12print_resultRK11BenchResult	#
.LEHE70:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _120
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp1928
	cmpq	%rax, %rdi	# tmp1928, _120
	je	.L750	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp1929
	leaq	1(%rax), %rsi	#, _123
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L750:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _116
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp1930
	cmpq	%rax, %rdi	# tmp1930, _116
	je	.L751	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp1931
	leaq	1(%rax), %rsi	#, _119
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L751:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$11, %edx	#,
	leaq	.LC36(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB71:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b5_propagation.cpp:74:     print_result(bench("    direct", N, [&] { sink += direct_d3(); }));
	leaq	224(%rsp), %rdi	#, tmp1932
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.1	#
.LEHE71:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, %rbx	#, start
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp1933
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rdi	#, tmp1934
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	232(%rsp), %rdx	# MEM[(const struct basic_string *)_1766]._M_string_length, pretmp_837
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp1933, MEM[(struct _Alloc_hider *)_12]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rcx	# MEM[(const struct basic_string *)_1766]._M_dataplus._M_p, _819
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp1934, _819
	je	.L1163	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _819, MEM[(struct basic_string *)_12]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	240(%rsp), %rcx	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity
.L753:
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	240(%rsp), %rcx	#, tmp1937
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	# start, _807
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp976
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_837, MEM[(struct basic_string *)_12]._M_string_length
# b5_propagation.cpp:74:     print_result(bench("    direct", N, [&] { sink += direct_d3(); }));
	leaq	256(%rsp), %rdi	#, tmp1938
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _807, tmp976
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 224(%rsp)	# tmp1937, MEM[(struct basic_string *)_1766]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 240(%rsp)	#, MEM[(char_type &)_1766 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 232(%rsp)	#, MEM[(struct basic_string *)_1766]._M_string_length
# bench.hpp:44: }
	movq	$500000, 288(%rsp)	#, MEM[(struct BenchResult *)_12].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 296(%rsp)	# tmp976, MEM[(struct BenchResult *)_12].total_ns
.LEHB72:
# b5_propagation.cpp:74:     print_result(bench("    direct", N, [&] { sink += direct_d3(); }));
	call	_Z12print_resultRK11BenchResult	#
.LEHE72:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _129
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp1939
	cmpq	%rax, %rdi	# tmp1939, _129
	je	.L754	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp1940
	leaq	1(%rax), %rsi	#, _132
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L754:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _125
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp1941
	cmpq	%rax, %rdi	# tmp1941, _125
	je	.L755	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp1942
	leaq	1(%rax), %rsi	#, _128
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L755:
# b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	leaq	224(%rsp), %rdi	#, tmp1943
	movl	$3, %r14d	#, ivtmp_616
# b5_propagation.cpp:74:     print_result(bench("    direct", N, [&] { sink += direct_d3(); }));
	movl	$500003, %r15d	#, sink
.LEHB73:
# b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE73:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	%rbp, %xmm4	# tmp1707, tmp1707
	movq	.LC44(%rip), %xmm3	#, _1655
	punpcklqdq	%xmm4, %xmm3	# tmp1707, _1655
	movaps	%xmm3, (%rsp)	# _1655, %sfp
	.p2align 4
	.p2align 3
.L779:
# b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	leaq	88(%rsp), %rdi	#, tmp1946
.LEHB74:
	call	_ZL7ping_d3v	#
.LEHE74:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	(%rsp), %xmm5	# %sfp, _1655
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%r13, 176(%rsp)	# tmp1650, MEM[(struct ScopedHandler *)_1650].node.real_handler_ptr
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 200(%rsp)	#, MEM[(struct HandlerNode *)_1650].on_return_any_fn
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%r12, 184(%rsp)	# tmp1709, MEM[(struct ScopedHandler *)_1650].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm5, 160(%rsp)	# _1655, MEM <vector(2) long unsigned int> [(const void * *)_1650]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.39_844
	movq	%rax, 208(%rsp)	# stack_top.39_844, MEM[(struct ScopedHandler *)_1650].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 192(%rsp)	# stack_top.39_844, MEM[(struct ScopedHandler *)_1650].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp1707, stack_top
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	88(%rsp), %rbx	# MEM[(const struct coroutine_handle *)_1806]._M_fr_ptr, _855
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# _855,
.LEHB75:
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)_855]
	.p2align 4
	.p2align 3
.L756:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)_855]
	je	.L1164	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)_855 + 16].D.146467.D.145421.effect_tag, _859
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L757	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _859, n_866->effect_tag
	je	.L758	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L759:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_33->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L1165	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_870->effect_tag, _859
	jne	.L759	#,
.L758:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)_855 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_855 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_45->dispatch
.LEHE75:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)_855 + 16].D.146467.D.145421.aborted
	je	.L756	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_855 + 16B].abort_owner
	je	.L765	#,
.L766:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _855,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_855 + 8B]
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r14	#, ivtmp_616
	jne	.L779	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	%rbp, %xmm3	# tmp1707, tmp1707
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movl	$500000, %r14d	#, ivtmp_1579
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	.LC44(%rip), %xmm4	#, _464
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movq	%rax, 16(%rsp)	#, %sfp
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	punpcklqdq	%xmm3, %xmm4	# tmp1707, _464
	movaps	%xmm4, (%rsp)	# _464, %sfp
	.p2align 4
	.p2align 3
.L805:
# b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	leaq	88(%rsp), %rdi	#, tmp1954
.LEHB76:
	call	_ZL7ping_d3v	#
.LEHE76:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	(%rsp), %xmm6	# %sfp, _464
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%r13, 176(%rsp)	# tmp1650, MEM[(struct ScopedHandler *)_1650].node.real_handler_ptr
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 200(%rsp)	#, MEM[(struct HandlerNode *)_1650].on_return_any_fn
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%r12, 184(%rsp)	# tmp1709, MEM[(struct ScopedHandler *)_1650].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm6, 160(%rsp)	# _464, MEM <vector(2) long unsigned int> [(const void * *)_1650]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.39_898
	movq	%rax, 208(%rsp)	# stack_top.39_898, MEM[(struct ScopedHandler *)_1650].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 192(%rsp)	# stack_top.39_898, MEM[(struct ScopedHandler *)_1650].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp1707, stack_top
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	88(%rsp), %rbx	# MEM[(const struct coroutine_handle *)_1806]._M_fr_ptr, _909
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# _909,
.LEHB77:
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)_909]
	.p2align 4
	.p2align 3
.L782:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)_909]
	je	.L1166	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)_909 + 16].D.146467.D.145421.effect_tag, _913
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	jne	.L787	#,
	jmp	.L783	#
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L785:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_1724->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L1167	#,
.L787:
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	#* n, _913
	jne	.L785	#,
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)_909 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_909 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_24->dispatch
.LEHE77:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)_909 + 16].D.146467.D.145421.aborted
	je	.L782	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_909 + 16B].abort_owner
	je	.L791	#,
.L792:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _909,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_909 + 8B]
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r14	#, ivtmp_1579
	jne	.L805	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp1960
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rdi	#, tmp1961
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	232(%rsp), %rdx	# MEM[(const struct basic_string *)_1766]._M_string_length, pretmp_852
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp1960, MEM[(struct _Alloc_hider *)_12]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rcx	# MEM[(const struct basic_string *)_1766]._M_dataplus._M_p, _944
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp1961, _944
	je	.L1168	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _944, MEM[(struct basic_string *)_12]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	240(%rsp), %rcx	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity
.L808:
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	240(%rsp), %rcx	#, tmp1964
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	16(%rsp), %rax	# %sfp, _832
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp1094
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_852, MEM[(struct basic_string *)_12]._M_string_length
# b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	leaq	256(%rsp), %rdi	#, tmp1966
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _832, tmp1094
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 224(%rsp)	# tmp1964, MEM[(struct basic_string *)_1766]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 240(%rsp)	#, MEM[(char_type &)_1766 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 232(%rsp)	#, MEM[(struct basic_string *)_1766]._M_string_length
# bench.hpp:44: }
	movq	$500000, 288(%rsp)	#, MEM[(struct BenchResult *)_12].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 296(%rsp)	# tmp1094, MEM[(struct BenchResult *)_12].total_ns
.LEHB78:
# b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	call	_Z12print_resultRK11BenchResult	#
.LEHE78:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _137
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp1967
	cmpq	%rax, %rdi	# tmp1967, _137
	je	.L809	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp1968
	leaq	1(%rax), %rsi	#, _140
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L809:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _133
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp1969
	cmpq	%rax, %rdi	# tmp1969, _133
	je	.L810	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp1970
	leaq	1(%rax), %rsi	#, _136
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L810:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$11, %edx	#,
	leaq	.LC37(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB79:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b5_propagation.cpp:82:     print_result(bench("    direct", N, [&] { sink += direct_d5(); }));
	leaq	224(%rsp), %rdi	#, tmp1971
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.1	#
.LEHE79:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, %rbx	#, start
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp1972
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rdi	#, tmp1973
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	232(%rsp), %rdx	# MEM[(const struct basic_string *)_1766]._M_string_length, pretmp_860
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp1972, MEM[(struct _Alloc_hider *)_12]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rcx	# MEM[(const struct basic_string *)_1766]._M_dataplus._M_p, _975
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp1973, _975
	je	.L1169	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _975, MEM[(struct basic_string *)_12]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	240(%rsp), %rcx	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity
.L812:
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	240(%rsp), %rcx	#, tmp1976
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	# start, _963
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp1124
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_860, MEM[(struct basic_string *)_12]._M_string_length
# b5_propagation.cpp:82:     print_result(bench("    direct", N, [&] { sink += direct_d5(); }));
	leaq	256(%rsp), %rdi	#, tmp1977
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _963, tmp1124
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 224(%rsp)	# tmp1976, MEM[(struct basic_string *)_1766]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 240(%rsp)	#, MEM[(char_type &)_1766 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 232(%rsp)	#, MEM[(struct basic_string *)_1766]._M_string_length
# bench.hpp:44: }
	movq	$500000, 288(%rsp)	#, MEM[(struct BenchResult *)_12].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 296(%rsp)	# tmp1124, MEM[(struct BenchResult *)_12].total_ns
.LEHB80:
# b5_propagation.cpp:82:     print_result(bench("    direct", N, [&] { sink += direct_d5(); }));
	call	_Z12print_resultRK11BenchResult	#
.LEHE80:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _146
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp1978
	cmpq	%rax, %rdi	# tmp1978, _146
	je	.L813	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp1979
	leaq	1(%rax), %rsi	#, _149
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L813:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _142
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp1980
	cmpq	%rax, %rdi	# tmp1980, _142
	je	.L814	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp1981
	leaq	1(%rax), %rsi	#, _145
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L814:
# b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	leaq	224(%rsp), %rdi	#, tmp1982
	movl	$3, %r14d	#, ivtmp_1498
# b5_propagation.cpp:82:     print_result(bench("    direct", N, [&] { sink += direct_d5(); }));
	movl	$500003, %r15d	#, sink
.LEHB81:
# b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE81:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	%rbp, %xmm7	# tmp1707, tmp1707
	movq	.LC44(%rip), %xmm6	#, _1374
	punpcklqdq	%xmm7, %xmm6	# tmp1707, _1374
	movaps	%xmm6, (%rsp)	# _1374, %sfp
	.p2align 4
	.p2align 3
.L838:
# b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	leaq	88(%rsp), %rdi	#, tmp1985
.LEHB82:
	call	_ZL7ping_d5v	#
.LEHE82:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	(%rsp), %xmm7	# %sfp, _1374
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%r13, 176(%rsp)	# tmp1650, MEM[(struct ScopedHandler *)_1650].node.real_handler_ptr
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 200(%rsp)	#, MEM[(struct HandlerNode *)_1650].on_return_any_fn
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%r12, 184(%rsp)	# tmp1709, MEM[(struct ScopedHandler *)_1650].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm7, 160(%rsp)	# _1374, MEM <vector(2) long unsigned int> [(const void * *)_1650]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.39_1000
	movq	%rax, 208(%rsp)	# stack_top.39_1000, MEM[(struct ScopedHandler *)_1650].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 192(%rsp)	# stack_top.39_1000, MEM[(struct ScopedHandler *)_1650].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp1707, stack_top
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	88(%rsp), %rbx	# MEM[(const struct coroutine_handle *)_1806]._M_fr_ptr, _1011
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1011,
.LEHB83:
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)_1011]
	.p2align 4
	.p2align 3
.L815:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)_1011]
	je	.L1170	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)_1011 + 16].D.146467.D.145421.effect_tag, _1015
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	jne	.L820	#,
	jmp	.L816	#
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L818:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_13->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L1171	#,
.L820:
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	#* n, _1015
	jne	.L818	#,
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)_1011 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_1011 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_301->dispatch
.LEHE83:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)_1011 + 16].D.146467.D.145421.aborted
	je	.L815	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_1011 + 16B].abort_owner
	je	.L824	#,
.L825:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1011,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_1011 + 8B]
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r14	#, ivtmp_1498
	jne	.L838	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	%rbp, %xmm6	# tmp1707, tmp1707
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movl	$500000, %r14d	#, ivtmp_1503
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	.LC44(%rip), %xmm7	#, _1598
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movq	%rax, 16(%rsp)	#, %sfp
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	punpcklqdq	%xmm6, %xmm7	# tmp1707, _1598
	movaps	%xmm7, (%rsp)	# _1598, %sfp
	.p2align 4
	.p2align 3
.L864:
# b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	leaq	88(%rsp), %rdi	#, tmp1993
.LEHB84:
	call	_ZL7ping_d5v	#
.LEHE84:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	(%rsp), %xmm5	# %sfp, _1598
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%r13, 176(%rsp)	# tmp1650, MEM[(struct ScopedHandler *)_1650].node.real_handler_ptr
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 200(%rsp)	#, MEM[(struct HandlerNode *)_1650].on_return_any_fn
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%r12, 184(%rsp)	# tmp1709, MEM[(struct ScopedHandler *)_1650].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm5, 160(%rsp)	# _1598, MEM <vector(2) long unsigned int> [(const void * *)_1650]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.39_1054
	movq	%rax, 208(%rsp)	# stack_top.39_1054, MEM[(struct ScopedHandler *)_1650].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 192(%rsp)	# stack_top.39_1054, MEM[(struct ScopedHandler *)_1650].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp1707, stack_top
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	88(%rsp), %rbx	# MEM[(const struct coroutine_handle *)_1806]._M_fr_ptr, _1065
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1065,
.LEHB85:
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)_1065]
	.p2align 4
	.p2align 3
.L841:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)_1065]
	je	.L1172	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)_1065 + 16].D.146467.D.145421.effect_tag, _1069
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	jne	.L846	#,
	jmp	.L842	#
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L844:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_416->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L1173	#,
.L846:
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	#* n, _1069
	jne	.L844	#,
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)_1065 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)_1065 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_541->dispatch
.LEHE85:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)_1065 + 16].D.146467.D.145421.aborted
	je	.L841	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_1065 + 16B].abort_owner
	je	.L850	#,
.L851:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1065,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_1065 + 8B]
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r14	#, ivtmp_1503
	jne	.L864	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp1999
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rdi	#, tmp2000
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	232(%rsp), %rdx	# MEM[(const struct basic_string *)_1766]._M_string_length, pretmp_857
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp1999, MEM[(struct _Alloc_hider *)_12]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rcx	# MEM[(const struct basic_string *)_1766]._M_dataplus._M_p, _1100
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp2000, _1100
	je	.L1174	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _1100, MEM[(struct basic_string *)_12]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	240(%rsp), %rcx	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity
.L867:
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	240(%rsp), %rcx	#, tmp2003
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	16(%rsp), %rax	# %sfp, _988
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp1242
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_857, MEM[(struct basic_string *)_12]._M_string_length
# b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	leaq	256(%rsp), %rdi	#, tmp2005
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _988, tmp1242
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 224(%rsp)	# tmp2003, MEM[(struct basic_string *)_1766]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 240(%rsp)	#, MEM[(char_type &)_1766 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 232(%rsp)	#, MEM[(struct basic_string *)_1766]._M_string_length
# bench.hpp:44: }
	movq	$500000, 288(%rsp)	#, MEM[(struct BenchResult *)_12].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 296(%rsp)	# tmp1242, MEM[(struct BenchResult *)_12].total_ns
.LEHB86:
# b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	call	_Z12print_resultRK11BenchResult	#
.LEHE86:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _154
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2006
	cmpq	%rax, %rdi	# tmp2006, _154
	je	.L868	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2007
	leaq	1(%rax), %rsi	#, _157
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L868:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _150
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2008
	cmpq	%rax, %rdi	# tmp2008, _150
	je	.L869	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2009
	leaq	1(%rax), %rsi	#, _153
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L869:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$26, %edx	#,
	leaq	.LC38(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB87:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b5_propagation.cpp:90:     print_result(bench("    direct", N, [&] { sink += direct_d8(); }));
	leaq	224(%rsp), %rdi	#, tmp2010
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.1	#
.LEHE87:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, %rbx	#, start
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp2011
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rdi	#, tmp2012
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	232(%rsp), %rdx	# MEM[(const struct basic_string *)_1766]._M_string_length, pretmp_867
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp2011, MEM[(struct _Alloc_hider *)_12]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rcx	# MEM[(const struct basic_string *)_1766]._M_dataplus._M_p, _1154
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp2012, _1154
	je	.L1175	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _1154, MEM[(struct basic_string *)_12]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	240(%rsp), %rcx	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity
.L871:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	# start, _1142
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _1143
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_867, MEM[(struct basic_string *)_12]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC10(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _1142, _1143
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	240(%rsp), %rax	#, tmp2015
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 296(%rsp)	# _1143, MEM[(struct BenchResult *)_12].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC35(%rip), %xmm0	#, _1143
	movq	%xmm0, %rbx	# _1143, _1109
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 224(%rsp)	# tmp2015, MEM[(struct basic_string *)_1766]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 240(%rsp)	#, MEM[(char_type &)_1766 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 232(%rsp)	#, MEM[(struct basic_string *)_1766]._M_string_length
# bench.hpp:44: }
	movq	$500000, 288(%rsp)	#, MEM[(struct BenchResult *)_12].iters
.LEHB88:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _1110
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp2017
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	256(%rsp), %rsi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp2017,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1110 + -24B], MEM[(long int *)_1110 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _1113->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1110 + -24B], _1116
	addq	%rcx, %rdx	# tmp2017, _1116
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1116->_M_flags, _1161
	andb	$79, %al	#, _1161
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp1282
	movl	%eax, 24(%rdx)	# tmp1282, MEM[(_Ios_Fmtflags &)_1116 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	264(%rsp), %rdx	# MEM[(const struct basic_string *)_12]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# _1120,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %r13	#, _1120
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	0(%r13), %rax	# _1120->_vptr.basic_ostream, _1121
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbx, %xmm0	# _1109,
	movq	%r13, %rdi	# _1120,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1121 + -24B], MEM[(long int *)_1121 + -24B]
	movq	$10, 16(%r13,%rdx)	#, _1124->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1121 + -24B], _1127
	addq	%r13, %rdx	# _1120, _1127
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1127->_M_flags, _384
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _1127->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _384
	orb	$-124, %al	#, tmp1291
	movl	%eax, 24(%rdx)	# tmp1291, MEM[(_Ios_Fmtflags &)_1127 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC12(%rip), %rsi	#,
	movq	%rax, %rdi	# _1128,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE88:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _163
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2022
	cmpq	%rax, %rdi	# tmp2022, _163
	je	.L872	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2023
	leaq	1(%rax), %rsi	#, _166
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L872:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _159
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2024
	cmpq	%rax, %rdi	# tmp2024, _159
	je	.L873	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2025
	leaq	1(%rax), %rsi	#, _162
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L873:
# b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	leaq	224(%rsp), %rdi	#, tmp2026
	movl	$3, %r13d	#, ivtmp_1216
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movl	$65536, %r14d	#, tmp1700
.LEHB89:
# b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE89:
	leaq	_Z7ping_d8P18_ZL7ping_d8v.Frame.destroy(%rip), %rax	#, tmp1697
	movq	.LC45(%rip), %xmm3	#, _383
# b5_propagation.cpp:90:     print_result(bench("    direct", N, [&] { sink += direct_d8(); }));
	movq	$1000006, 40(%rsp)	#, %sfp
	movq	%rax, %xmm1	# tmp1697, tmp1697
	punpcklqdq	%xmm1, %xmm3	# tmp1697, _383
	movaps	%xmm3, (%rsp)	# _383, %sfp
	.p2align 4
	.p2align 3
.L910:
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rcx	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rcx, %rcx	# mr
	je	.L874	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rcx), %rax	# mr_1209->_vptr.memory_resource, mr_1209->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp1303
	movq	16(%rax), %rax	# MEM[(int (*) () *)_1211 + 16B], _1212
	cmpq	%rdx, %rax	# tmp1303, _1212
	jne	.L875	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rcx), %rax	# MEM[(size_t &)mr_1209 + 16], _1224
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$143, %rax	#, _1224
	jbe	.L876	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rcx), %rdx	# MEM[(void * &)mr_1209 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-144(%rax), %rdi	#, _1233
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rdx), %rbx	#, _1229
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rbx	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rbx, %rsi	# __aligned, __diff_1232
	subq	%rdx, %rsi	# __intptr, __diff_1232
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rsi, %rdi	# __diff_1232, _1233
	jb	.L876	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rdx, %rax	# __intptr, _2359
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rbx, 8(%rcx)	# __p, MEM[(void * &)mr_1209 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rbx, %rax	# __aligned, prephitmp_1168
	movq	%rax, 16(%rcx)	# prephitmp_1168, MEM[(size_t &)mr_1209 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rbx, %rbx	# __p
	je	.L876	#,
.L877:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	144(%rbx), %rdx	#, tmp1308
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	subq	$144, %rax	#, tmp1309
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rdx, 8(%rcx)	# tmp1308, MEM[(struct monotonic_buffer_resource *)mr_1209]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rax, 16(%rcx)	# tmp1309, MEM[(struct monotonic_buffer_resource *)mr_1209]._M_avail
.L878:
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rbx), %rax	#, tmp1320
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movdqa	(%rsp), %xmm7	# %sfp, _383
	movb	$1, 92(%rbx)	#, MEM[(struct _ZL7ping_d8v.Frame *)raw_1215]._Coro_frame_needs_free
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movq	%rbx, %rdi	# __p,
	leaq	96(%rsp), %r15	#, tmp1653
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rcx, 136(%rbx)	# mr, MEM[(struct memory_resource * *)raw_1215 + 136B]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp1316
	movq	.LC44(%rip), %xmm1	#, _107
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1215 + 16B].aborted
	movq	%r15, %xmm6	# tmp1653, tmp1653
	movq	$0, 24(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1215 + 16B].abort_owner
	punpcklqdq	%xmm6, %xmm1	# tmp1653, _107
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rbx)	#, MEM[(struct any *)raw_1215 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 84(%rbx)	#, MEM[(struct _Optional_payload_base *)raw_1215 + 80B]._M_engaged
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movl	%r14d, 88(%rbx)	# tmp1700, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_1215 + 88B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp1320, MEM[(struct promise_type *)raw_1215 + 16B].D.146467.D.145421.result_ptr
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movups	%xmm7, (%rbx)	# _383, MEM <vector(2) long unsigned int> [(void (*<T17829>) (struct _ZL7ping_d8v.Frame *) *)raw_1215]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, 40(%rbx)	# tmp1316, MEM <vector(2) long unsigned int> [(void *)raw_1215 + 40B]
	movups	%xmm0, 56(%rbx)	# tmp1316, MEM <vector(2) long unsigned int> [(void *)raw_1215 + 56B]
	movaps	%xmm1, 16(%rsp)	# _107, %sfp
.LEHB90:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	call	_Z7ping_d8P18_ZL7ping_d8v.Frame.actor	#
.LEHE90:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	subw	$1, 90(%rbx)	#, MEM[(struct _ZL7ping_d8v.Frame *)raw_1215]._Coro_frame_refcount
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	je	.L1176	#,
.L879:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	16(%rsp), %xmm3	# %sfp, _107
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	leaq	88(%rsp), %rax	#, tmp2034
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%r12, 120(%rsp)	# tmp1709, MEM[(struct ScopedHandler *)_295].node.dispatch
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 136(%rsp)	#, MEM[(struct HandlerNode *)_295].on_return_any_fn
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%rax, 112(%rsp)	# tmp2034, MEM[(struct ScopedHandler *)_295].node.real_handler_ptr
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm3, 96(%rsp)	# _107, MEM <vector(2) long unsigned int> [(const void * *)_295]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.39_1257
	movq	%rax, 144(%rsp)	# stack_top.39_1257, MEM[(struct ScopedHandler *)_295].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 128(%rsp)	# stack_top.39_1257, MEM[(struct ScopedHandler *)_295].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%r15, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp1653, stack_top
.LEHB91:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1215]
	.p2align 4
	.p2align 3
.L883:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)raw_1215]
	je	.L1177	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)raw_1215 + 16].D.146467.D.145421.effect_tag, _1272
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	jne	.L892	#,
	jmp	.L888	#
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L890:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_545->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L1178	#,
.L892:
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	#* n, _1272
	jne	.L890	#,
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)raw_1215 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)raw_1215 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_1476->dispatch
.LEHE91:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)raw_1215 + 16].D.146467.D.145421.aborted
	je	.L883	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%r15, 24(%rbx)	# tmp1653, MEM[(struct PromiseAbortBase *)raw_1215 + 16B].abort_owner
	je	.L896	#,
.L897:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	144(%rsp), %rax	# MEM[(struct ScopedHandler *)_295].saved, MEM[(struct ScopedHandler *)_295].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_295].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1215 + 8B]
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r13	#, ivtmp_1216
	jne	.L910	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rbp, %xmm3	# tmp1707, tmp1707
	movl	$500000, %r13d	#, ivtmp_1197
	movq	.LC44(%rip), %xmm4	#, _436
	movq	%rax, 72(%rsp)	#, %sfp
	punpcklqdq	%xmm3, %xmm4	# tmp1707, _436
	movaps	%xmm4, 16(%rsp)	# _436, %sfp
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm4, %xmm4	# tmp1695
	movaps	%xmm4, 48(%rsp)	# tmp1695, %sfp
	.p2align 4
	.p2align 3
.L947:
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rcx	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rcx, %rcx	# mr
	je	.L912	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rcx), %rax	# mr_1324->_vptr.memory_resource, mr_1324->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdi	#, tmp2042
	movq	16(%rax), %rax	# MEM[(int (*) () *)_1326 + 16B], _1327
	cmpq	%rdi, %rax	# tmp2042, _1327
	jne	.L913	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rcx), %rax	# MEM[(size_t &)mr_1324 + 16], _1339
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$143, %rax	#, _1339
	jbe	.L914	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rcx), %rdx	# MEM[(void * &)mr_1324 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-144(%rax), %rdi	#, _1348
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rdx), %rbx	#, _1344
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rbx	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rbx, %rsi	# __aligned, __diff_1347
	subq	%rdx, %rsi	# __intptr, __diff_1347
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rsi, %rdi	# __diff_1347, _1348
	jb	.L914	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rdx, %rax	# __intptr, _2355
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rbx, 8(%rcx)	# __p, MEM[(void * &)mr_1324 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rbx, %rax	# __aligned, prephitmp_967
	movq	%rax, 16(%rcx)	# prephitmp_967, MEM[(size_t &)mr_1324 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rbx, %rbx	# __p
	je	.L914	#,
.L915:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	144(%rbx), %rdx	#, tmp1388
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	subq	$144, %rax	#, tmp1389
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rdx, 8(%rcx)	# tmp1388, MEM[(struct monotonic_buffer_resource *)mr_1324]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rax, 16(%rcx)	# tmp1389, MEM[(struct monotonic_buffer_resource *)mr_1324]._M_avail
.L916:
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rbx), %rax	#, tmp1397
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movdqa	(%rsp), %xmm4	# %sfp, _383
	movb	$1, 92(%rbx)	#, MEM[(struct _ZL7ping_d8v.Frame *)raw_1330]._Coro_frame_needs_free
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movq	%rbx, %rdi	# __p,
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movdqa	48(%rsp), %xmm2	# %sfp, tmp1695
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rcx, 136(%rbx)	# mr, MEM[(struct memory_resource * *)raw_1330 + 136B]
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1330 + 16B].aborted
	movq	$0, 24(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1330 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rbx)	#, MEM[(struct any *)raw_1330 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 84(%rbx)	#, MEM[(struct _Optional_payload_base *)raw_1330 + 80B]._M_engaged
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movl	%r14d, 88(%rbx)	# tmp1700, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_1330 + 88B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp1397, MEM[(struct promise_type *)raw_1330 + 16B].D.146467.D.145421.result_ptr
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movups	%xmm4, (%rbx)	# _383, MEM <vector(2) long unsigned int> [(void (*<T17829>) (struct _ZL7ping_d8v.Frame *) *)raw_1330]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm2, 40(%rbx)	# tmp1695, MEM <vector(2) long unsigned int> [(void *)raw_1330 + 40B]
	movups	%xmm2, 56(%rbx)	# tmp1695, MEM <vector(2) long unsigned int> [(void *)raw_1330 + 56B]
.LEHB92:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	call	_Z7ping_d8P18_ZL7ping_d8v.Frame.actor	#
.LEHE92:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	subw	$1, 90(%rbx)	#, MEM[(struct _ZL7ping_d8v.Frame *)raw_1330]._Coro_frame_refcount
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	je	.L1179	#,
.L917:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	16(%rsp), %xmm5	# %sfp, _436
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	leaq	88(%rsp), %rax	#, tmp2049
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 200(%rsp)	#, MEM[(struct HandlerNode *)_1650].on_return_any_fn
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%rax, 176(%rsp)	# tmp2049, MEM[(struct ScopedHandler *)_1650].node.real_handler_ptr
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%r12, 184(%rsp)	# tmp1709, MEM[(struct ScopedHandler *)_1650].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm5, 160(%rsp)	# _436, MEM <vector(2) long unsigned int> [(const void * *)_1650]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.39_1372
	movq	%rax, 208(%rsp)	# stack_top.39_1372, MEM[(struct ScopedHandler *)_1650].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 192(%rsp)	# stack_top.39_1372, MEM[(struct ScopedHandler *)_1650].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp1707, stack_top
.LEHB93:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1330]
	.p2align 4
	.p2align 3
.L921:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)raw_1330]
	je	.L1180	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)raw_1330 + 16].D.146467.D.145421.effect_tag, _1387
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	jne	.L929	#,
	jmp	.L925	#
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L927:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_1496->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L1181	#,
.L929:
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	#* n, _1387
	jne	.L927	#,
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)raw_1330 + 16].D.146467.D.145421.payload_ptr, MEM[(struct promise_type &)raw_1330 + 16].D.146467.D.145421.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_1702->dispatch
.LEHE93:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)raw_1330 + 16].D.146467.D.145421.aborted
	je	.L921	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)raw_1330 + 16B].abort_owner
	je	.L933	#,
.L934:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1330 + 8B]
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r13	#, ivtmp_1197
	jne	.L947	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	272(%rsp), %rcx	#, tmp2054
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rdi	#, tmp2055
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	232(%rsp), %rdx	# MEM[(const struct basic_string *)_1766]._M_string_length, pretmp_889
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 256(%rsp)	# tmp2054, MEM[(struct _Alloc_hider *)_12]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rcx	# MEM[(const struct basic_string *)_1766]._M_dataplus._M_p, _1418
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp2055, _1418
	je	.L1182	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 256(%rsp)	# _1418, MEM[(struct basic_string *)_12]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	240(%rsp), %rcx	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity
	movq	%rcx, 272(%rsp)	# MEM[(struct basic_string &)_1766].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity
.L950:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	72(%rsp), %rax	# %sfp, _1184
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _1185
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 264(%rsp)	# pretmp_889, MEM[(struct basic_string *)_12]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC10(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _1184, _1185
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	240(%rsp), %rax	#, tmp2059
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 296(%rsp)	# _1185, MEM[(struct BenchResult *)_12].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC35(%rip), %xmm0	#, _1185
	movq	%xmm0, %rbp	# _1185, _1427
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 224(%rsp)	# tmp2059, MEM[(struct basic_string *)_1766]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 240(%rsp)	#, MEM[(char_type &)_1766 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 232(%rsp)	#, MEM[(struct basic_string *)_1766]._M_string_length
# bench.hpp:44: }
	movq	$500000, 288(%rsp)	#, MEM[(struct BenchResult *)_12].iters
.LEHB94:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _1428
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp2061
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	256(%rsp), %rsi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp2061,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1428 + -24B], MEM[(long int *)_1428 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _1431->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1428 + -24B], _1434
	addq	%rcx, %rdx	# tmp2061, _1434
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1434->_M_flags, _1448
	andb	$79, %al	#, _1448
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp1484
	movl	%eax, 24(%rdx)	# tmp1484, MEM[(_Ios_Fmtflags &)_1434 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	264(%rsp), %rdx	# MEM[(const struct basic_string *)_12]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# _1438,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbx	#, _1438
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# _1438->_vptr.basic_ostream, _1439
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbp, %xmm0	# _1427,
	movq	%rbx, %rdi	# _1438,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1439 + -24B], MEM[(long int *)_1439 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _1442->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1439 + -24B], _1445
	addq	%rbx, %rdx	# _1438, _1445
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1445->_M_flags, _2459
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _1445->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _2459
	orb	$-124, %al	#, tmp1493
	movl	%eax, 24(%rdx)	# tmp1493, MEM[(_Ios_Fmtflags &)_1445 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC12(%rip), %rsi	#,
	movq	%rax, %rdi	# _1446,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE94:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _171
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2066
	cmpq	%rax, %rdi	# tmp2066, _171
	je	.L951	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2067
	leaq	1(%rax), %rsi	#, _174
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L951:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _167
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2068
	cmpq	%rax, %rdi	# tmp2068, _167
	je	.L952	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2069
	leaq	1(%rax), %rsi	#, _170
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L952:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$64, %edx	#,
	leaq	.LC39(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB95:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$67, %edx	#,
	leaq	.LC40(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$69, %edx	#,
	leaq	.LC41(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE95:
# b5_propagation.cpp:100: }
	movq	312(%rsp), %rax	# D.202590, tmp1830
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1830
	jne	.L1183	#,
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
.L1166:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)_909 + 64B]._M_exception_object, _917
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _917
	jne	.L1184	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_909 + 16B].aborted
	je	.L797	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_909 + 16B].abort_owner
	je	.L791	#,
.L797:
# b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	movslq	80(%rbx), %rax	# MEM[(int &)_909 + 80], _1491
	addq	%rax, %r15	# _1491, sink
	jmp	.L792	#
.L1164:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)_855 + 64B]._M_exception_object, _863
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _863
	jne	.L1185	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_855 + 16B].aborted
	je	.L771	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_855 + 16B].abort_owner
	je	.L765	#,
.L771:
# b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	movslq	80(%rbx), %rax	# MEM[(int &)_855 + 80], _1552
	addq	%rax, %r15	# _1552, sink
	jmp	.L766	#
.L1160:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)_753 + 64B]._M_exception_object, _761
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _761
	jne	.L1186	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_753 + 16B].aborted
	je	.L738	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_753 + 16B].abort_owner
	je	.L732	#,
.L738:
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	movslq	80(%rbx), %rax	# MEM[(int &)_753 + 80], _1639
	addq	%rax, %r15	# _1639, sink
	jmp	.L733	#
.L1158:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)_699 + 64B]._M_exception_object, _707
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _707
	jne	.L1187	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_699 + 16B].aborted
	je	.L712	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_699 + 16B].abort_owner
	je	.L706	#,
.L712:
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	movslq	80(%rbx), %rax	# MEM[(int &)_699 + 80], _1836
	addq	%rax, %r15	# _1836, sink
	jmp	.L707	#
.L1180:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)raw_1330 + 64B]._M_exception_object, _1391
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _1391
	jne	.L1188	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1330 + 16B].aborted
	je	.L939	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)raw_1330 + 16B].abort_owner
	je	.L933	#,
.L939:
# b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	movslq	80(%rbx), %rax	# MEM[(int &)raw_1330 + 80], _921
	addq	%rax, 40(%rsp)	# _921, %sfp
	jmp	.L934	#
.L1177:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)raw_1215 + 64B]._M_exception_object, _1276
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _1276
	jne	.L1189	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1215 + 16B].aborted
	je	.L902	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%r15, 24(%rbx)	# tmp1653, MEM[(struct PromiseAbortBase *)raw_1215 + 16B].abort_owner
	je	.L896	#,
.L902:
# b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	movslq	80(%rbx), %rax	# MEM[(int &)raw_1215 + 80], _1070
	addq	%rax, 40(%rsp)	# _1070, %sfp
	jmp	.L897	#
.L1172:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)_1065 + 64B]._M_exception_object, _1073
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _1073
	jne	.L1190	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_1065 + 16B].aborted
	je	.L856	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_1065 + 16B].abort_owner
	je	.L850	#,
.L856:
# b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	movslq	80(%rbx), %rax	# MEM[(int &)_1065 + 80], _1230
	addq	%rax, %r15	# _1230, sink
	jmp	.L851	#
.L1170:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)_1011 + 64B]._M_exception_object, _1019
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _1019
	jne	.L1191	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_1011 + 16B].aborted
	je	.L830	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp1707, MEM[(struct PromiseAbortBase *)_1011 + 16B].abort_owner
	je	.L824	#,
.L830:
# b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	movslq	80(%rbx), %rax	# MEM[(int &)_1011 + 80], _1405
	addq	%rax, %r15	# _1405, sink
	jmp	.L825	#
.L1179:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_1330 + 64B]._M_exception_object
	je	.L918	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _1361
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L918:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1330 + 32B]._M_manager, _1364
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _1364
	je	.L919	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _1363
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _1364
.L919:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	cmpw	$0, 90(%rbx)	#, MEM[(struct _ZL7ping_d8v.Frame *)raw_1330]._Coro_frame_refcount
	jne	.L917	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_1330 + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L920	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_1367->_vptr.memory_resource, mr_1367->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rcx	#, tmp2048
	movq	24(%rax), %rax	# MEM[(int (*) () *)_1368 + 24B], _1369
	cmpq	%rcx, %rax	# tmp2048, _1369
	je	.L917	#,
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# __p,
	call	*%rax	# _1369
	jmp	.L917	#
.L1176:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_1215 + 64B]._M_exception_object
	je	.L880	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _1246
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L880:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1215 + 32B]._M_manager, _1249
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _1249
	je	.L881	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _1248
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _1249
.L881:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	cmpw	$0, 90(%rbx)	#, MEM[(struct _ZL7ping_d8v.Frame *)raw_1215]._Coro_frame_refcount
	jne	.L879	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_1215 + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L882	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_1252->_vptr.memory_resource, mr_1252->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp1327
	movq	24(%rax), %rax	# MEM[(int (*) () *)_1253 + 24B], _1254
	cmpq	%rdx, %rax	# tmp1327, _1254
	je	.L879	#,
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# __p,
	call	*%rax	# _1254
	jmp	.L879	#
.L914:
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%rcx, %rdi	# mr,
	movq	%rcx, 64(%rsp)	# mr, %sfp
.LEHB96:
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	64(%rsp), %rcx	# %sfp, mr
	movq	8(%rcx), %rbx	# MEM[(struct monotonic_buffer_resource *)mr_1324]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%rcx), %rax	# MEM[(struct monotonic_buffer_resource *)mr_1324]._M_avail, prephitmp_967
	jmp	.L915	#
.L876:
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%rcx, %rdi	# mr,
	movq	%rcx, 16(%rsp)	# mr, %sfp
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	16(%rsp), %rcx	# %sfp, mr
	movq	8(%rcx), %rbx	# MEM[(struct monotonic_buffer_resource *)mr_1209]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%rcx), %rax	# MEM[(struct monotonic_buffer_resource *)mr_1209]._M_avail, prephitmp_1168
	jmp	.L877	#
.L874:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$144, %edi	#,
	movq	%rcx, 16(%rsp)	# mr, %sfp
	call	_Znwm@PLT	#
.L1150:
	movq	16(%rsp), %rcx	# %sfp, mr
	movq	%rax, %rbx	# __p, __p
	jmp	.L878	#
.L912:
	movl	$144, %edi	#,
	movq	%rcx, 64(%rsp)	# mr, %sfp
	call	_Znwm@PLT	#
.L1152:
	movq	64(%rsp), %rcx	# %sfp, mr
	movq	%rax, %rbx	# __p, __p
	jmp	.L916	#
.L875:
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	%rcx, 16(%rsp)	# mr, %sfp
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%rcx, %rdi	# mr,
	call	*%rax	# _1212
	jmp	.L1150	#
.L913:
	movq	%rcx, 64(%rsp)	# mr, %sfp
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%rcx, %rdi	# mr,
	call	*%rax	# _1327
.LEHE96:
	jmp	.L1152	#
.L850:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)_1065 + 32B]._M_manager, _1082
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp1207
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_1065 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp1207, _1082
	je	.L859	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _1082
	je	.L997	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	96(%rsp), %rdx	#, tmp1208
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _1059
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _1082
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	96(%rsp), %rax	# MEM[(union _Arg *)_295]._M_typeinfo, _1084
.L860:
	movq	8(%rax), %rdi	# MEM[(const char * *)_1084 + 8B], _1088
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _1089
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _1089, _1088
	je	.L859	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_1088
	je	.L861	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_1089
	leaq	1(%rsi), %rax	#, tmp1683
	cmove	%rax, %rsi	# tmp1683,, _1089
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _1096
	jne	.L861	#,
.L859:
# b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	movslq	40(%rbx), %rax	# MEM[(type &)_1065 + 40], _1304
	addq	%rax, %r15	# _1304, sink
	jmp	.L851	#
.L824:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)_1011 + 32B]._M_manager, _1028
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp1161
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_1011 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp1161, _1028
	je	.L833	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _1028
	je	.L996	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	96(%rsp), %rdx	#, tmp1162
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _1005
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _1028
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	96(%rsp), %rax	# MEM[(union _Arg *)_295]._M_typeinfo, _1030
.L834:
	movq	8(%rax), %rdi	# MEM[(const char * *)_1030 + 8B], _1034
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _1035
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _1035, _1034
	je	.L833	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_1034
	je	.L835	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_1035
	leaq	1(%rsi), %rax	#, tmp1679
	cmove	%rax, %rsi	# tmp1679,, _1035
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _1042
	jne	.L835	#,
.L833:
# b5_propagation.cpp:83:     print_result(bench("    fx",     N, [&] { sink += ping_d5().run(PingHandler{}); }));
	movslq	40(%rbx), %rax	# MEM[(type &)_1011 + 40], _1417
	addq	%rax, %r15	# _1417, sink
	jmp	.L825	#
.L933:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1330 + 32B]._M_manager, _1400
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp1439
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1330 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp1439, _1400
	je	.L942	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _1400
	je	.L999	#,
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _1377
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movq	%r15, %rdx	# tmp1653,
	movl	$1, %edi	#,
	call	*%rax	# _1400
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	96(%rsp), %rax	# MEM[(union _Arg *)_295]._M_typeinfo, _1402
.L943:
	movq	8(%rax), %rdi	# MEM[(const char * *)_1402 + 8B], _1406
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _1407
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _1407, _1406
	je	.L942	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_1406
	je	.L944	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_1407
	leaq	1(%rsi), %rax	#, tmp1691
	cmove	%rax, %rsi	# tmp1691,, _1407
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _1414
	jne	.L944	#,
.L942:
# b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	movslq	40(%rbx), %rax	# MEM[(type &)raw_1330 + 40], _941
	addq	%rax, 40(%rsp)	# _941, %sfp
	jmp	.L934	#
.L896:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1215 + 32B]._M_manager, _1285
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp1364
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1215 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp1364, _1285
	je	.L905	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _1285
	je	.L998	#,
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _1262
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movq	%rbp, %rdx	# tmp1707,
	movl	$1, %edi	#,
	call	*%rax	# _1285
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	160(%rsp), %rax	# MEM[(union _Arg *)_1650]._M_typeinfo, _1287
.L906:
	movq	8(%rax), %rdi	# MEM[(const char * *)_1287 + 8B], _1291
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _1292
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _1292, _1291
	je	.L905	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_1291
	je	.L907	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_1292
	leaq	1(%rsi), %rax	#, tmp1687
	cmove	%rax, %rsi	# tmp1687,, _1292
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _1299
	jne	.L907	#,
.L905:
# b5_propagation.cpp:91:     print_result(bench("    fx",     N, [&] { sink += ping_d8().run(PingHandler{}); }));
	movslq	40(%rbx), %rax	# MEM[(type &)raw_1215 + 40], _1106
	addq	%rax, 40(%rsp)	# _1106, %sfp
	jmp	.L897	#
.L732:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)_753 + 32B]._M_manager, _770
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp911
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_753 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp911, _770
	je	.L741	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _770
	je	.L993	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	96(%rsp), %rdx	#, tmp912
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _747
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _770
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	96(%rsp), %rax	# MEM[(union _Arg *)_295]._M_typeinfo, _772
.L742:
	movq	8(%rax), %rdi	# MEM[(const char * *)_772 + 8B], _776
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _777
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _777, _776
	je	.L741	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_776
	je	.L743	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_777
	leaq	1(%rsi), %rax	#, tmp1667
	cmove	%rax, %rsi	# tmp1667,, _777
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _784
	jne	.L743	#,
.L741:
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	movslq	40(%rbx), %rax	# MEM[(type &)_753 + 40], _1680
	addq	%rax, %r15	# _1680, sink
	jmp	.L733	#
.L706:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)_699 + 32B]._M_manager, _716
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp865
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_699 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp865, _716
	je	.L715	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _716
	je	.L992	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	96(%rsp), %rdx	#, tmp866
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _693
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _716
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	96(%rsp), %rax	# MEM[(union _Arg *)_295]._M_typeinfo, _718
.L716:
	movq	8(%rax), %rdi	# MEM[(const char * *)_718 + 8B], _722
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _723
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _723, _722
	je	.L715	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_722
	je	.L717	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_723
	leaq	1(%rsi), %rax	#, tmp1663
	cmove	%rax, %rsi	# tmp1663,, _723
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _730
	jne	.L717	#,
.L715:
# b5_propagation.cpp:67:     print_result(bench("    fx",     N, [&] { sink += ping_d1().run(PingHandler{}); }));
	movslq	40(%rbx), %rax	# MEM[(type &)_699 + 40], _1843
	addq	%rax, %r15	# _1843, sink
	jmp	.L707	#
.L791:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)_909 + 32B]._M_manager, _926
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp1059
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_909 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp1059, _926
	je	.L800	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _926
	je	.L995	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	96(%rsp), %rdx	#, tmp1060
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _903
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _926
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	96(%rsp), %rax	# MEM[(union _Arg *)_295]._M_typeinfo, _928
.L801:
	movq	8(%rax), %rdi	# MEM[(const char * *)_928 + 8B], _932
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _933
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _933, _932
	je	.L800	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_932
	je	.L802	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_933
	leaq	1(%rsi), %rax	#, tmp1675
	cmove	%rax, %rsi	# tmp1675,, _933
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _940
	jne	.L802	#,
.L800:
# b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	movslq	40(%rbx), %rax	# MEM[(type &)_909 + 40], _1513
	addq	%rax, %r15	# _1513, sink
	jmp	.L792	#
.L765:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)_855 + 32B]._M_manager, _872
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp1013
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)_855 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp1013, _872
	je	.L774	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _872
	je	.L994	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	96(%rsp), %rdx	#, tmp1014
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _849
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _872
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	96(%rsp), %rax	# MEM[(union _Arg *)_295]._M_typeinfo, _874
.L775:
	movq	8(%rax), %rdi	# MEM[(const char * *)_874 + 8B], _878
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _879
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _879, _878
	je	.L774	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_878
	je	.L776	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_879
	leaq	1(%rsi), %rax	#, tmp1671
	cmove	%rax, %rsi	# tmp1671,, _879
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _886
	jne	.L776	#,
.L774:
# b5_propagation.cpp:75:     print_result(bench("    fx",     N, [&] { sink += ping_d3().run(PingHandler{}); }));
	movslq	40(%rbx), %rax	# MEM[(type &)_855 + 40], _1555
	addq	%rax, %r15	# _1555, sink
	jmp	.L766	#
.L920:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZdlPvm@PLT	#
	jmp	.L917	#
.L882:
	movl	$144, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZdlPvm@PLT	#
	jmp	.L879	#
.L1182:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	leal	1(%rdx), %ecx	#, _1422
	leaq	272(%rsp), %rdi	#, tmp1467
	leaq	240(%rsp), %rsi	#, tmp1468
	rep movsb	# MEM <char[1:(sizetype) _1422]> [(void *)_1766 + 16B]
	jmp	.L950	#
.L1157:
	leal	1(%rdx), %ecx	#, _650
	leaq	272(%rsp), %rdi	#, tmp802
	leaq	240(%rsp), %rsi	#, tmp803
	rep movsb	# MEM <char[1:(sizetype) _650]> [(void *)_1766 + 16B]
	jmp	.L694	#
.L1162:
	leal	1(%rdx), %ecx	#, _792
	leaq	272(%rsp), %rdi	#, tmp939
	leaq	240(%rsp), %rsi	#, tmp940
	rep movsb	# MEM <char[1:(sizetype) _792]> [(void *)_1766 + 16B]
	jmp	.L749	#
.L1163:
	leal	1(%rdx), %ecx	#, _823
	leaq	272(%rsp), %rdi	#, tmp969
	leaq	240(%rsp), %rsi	#, tmp970
	rep movsb	# MEM <char[1:(sizetype) _823]> [(void *)_1766 + 16B]
	jmp	.L753	#
.L1168:
	leal	1(%rdx), %ecx	#, _948
	leaq	272(%rsp), %rdi	#, tmp1087
	leaq	240(%rsp), %rsi	#, tmp1088
	rep movsb	# MEM <char[1:(sizetype) _948]> [(void *)_1766 + 16B]
	jmp	.L808	#
.L1169:
	leal	1(%rdx), %ecx	#, _979
	leaq	272(%rsp), %rdi	#, tmp1117
	leaq	240(%rsp), %rsi	#, tmp1118
	rep movsb	# MEM <char[1:(sizetype) _979]> [(void *)_1766 + 16B]
	jmp	.L812	#
.L1174:
	leal	1(%rdx), %ecx	#, _1104
	leaq	272(%rsp), %rdi	#, tmp1235
	leaq	240(%rsp), %rsi	#, tmp1236
	rep movsb	# MEM <char[1:(sizetype) _1104]> [(void *)_1766 + 16B]
	jmp	.L867	#
.L1175:
	leal	1(%rdx), %ecx	#, _1158
	leaq	272(%rsp), %rdi	#, tmp1265
	leaq	240(%rsp), %rsi	#, tmp1266
	rep movsb	# MEM <char[1:(sizetype) _1158]> [(void *)_1766 + 16B]
	jmp	.L871	#
.L997:
# /usr/include/c++/16.1.1/any:341: 	return typeid(void);
	leaq	_ZTIv(%rip), %rax	#, _1084
	jmp	.L860	#
.L996:
	leaq	_ZTIv(%rip), %rax	#, _1030
	jmp	.L834	#
.L999:
	leaq	_ZTIv(%rip), %rax	#, _1402
	jmp	.L943	#
.L998:
	leaq	_ZTIv(%rip), %rax	#, _1287
	jmp	.L906	#
.L995:
	leaq	_ZTIv(%rip), %rax	#, _928
	jmp	.L801	#
.L993:
	leaq	_ZTIv(%rip), %rax	#, _772
	jmp	.L742	#
.L992:
	leaq	_ZTIv(%rip), %rax	#, _718
	jmp	.L716	#
.L994:
	leaq	_ZTIv(%rip), %rax	#, _874
	jmp	.L775	#
.L1183:
# b5_propagation.cpp:100: }
	call	__stack_chk_fail@PLT	#
.L1191:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	96(%rsp), %rdi	#, tmp1987
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 96(%rsp)	# _1019, MEM[(struct exception_ptr *)_295]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	312(%rsp), %rax	# D.202590, tmp1819
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1819
	jne	.L1192	#,
	leaq	96(%rsp), %rdi	#, tmp1988
.LEHB97:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE97:
.L1190:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	96(%rsp), %rdi	#, tmp1995
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 96(%rsp)	# _1073, MEM[(struct exception_ptr *)_295]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	312(%rsp), %rax	# D.202590, tmp1822
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1822
	jne	.L1193	#,
	leaq	96(%rsp), %rdi	#, tmp1996
.LEHB98:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE98:
.L1192:
	call	__stack_chk_fail@PLT	#
.L1187:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	96(%rsp), %rdi	#, tmp1909
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 96(%rsp)	# _707, MEM[(struct exception_ptr *)_295]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	312(%rsp), %rax	# D.202590, tmp1807
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1807
	jne	.L1194	#,
	leaq	96(%rsp), %rdi	#, tmp1910
.LEHB99:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE99:
.L1186:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	96(%rsp), %rdi	#, tmp1917
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 96(%rsp)	# _761, MEM[(struct exception_ptr *)_295]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	312(%rsp), %rax	# D.202590, tmp1810
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1810
	jne	.L1195	#,
	leaq	96(%rsp), %rdi	#, tmp1918
.LEHB100:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE100:
.L1189:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	movq	%rbp, %rdi	# tmp1707,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 160(%rsp)	# _1276, MEM[(struct exception_ptr *)_1650]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	312(%rsp), %rax	# D.202590, tmp1825
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1825
	jne	.L1196	#,
	movq	%rbp, %rdi	# tmp1707,
.LEHB101:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE101:
.L1188:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	movq	%r15, %rdi	# tmp1653,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 96(%rsp)	# _1391, MEM[(struct exception_ptr *)_295]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	312(%rsp), %rax	# D.202590, tmp1828
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1828
	jne	.L1197	#,
	movq	%r15, %rdi	# tmp1653,
.LEHB102:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE102:
.L1196:
	call	__stack_chk_fail@PLT	#
.L1197:
	call	__stack_chk_fail@PLT	#
.L1185:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	96(%rsp), %rdi	#, tmp1948
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 96(%rsp)	# _863, MEM[(struct exception_ptr *)_295]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	312(%rsp), %rax	# D.202590, tmp1813
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1813
	jne	.L1198	#,
	leaq	96(%rsp), %rdi	#, tmp1949
.LEHB103:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE103:
.L1184:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	96(%rsp), %rdi	#, tmp1956
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 96(%rsp)	# _917, MEM[(struct exception_ptr *)_295]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	312(%rsp), %rax	# D.202590, tmp1816
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1816
	jne	.L1199	#,
	leaq	96(%rsp), %rdi	#, tmp1957
.LEHB104:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE104:
.L1193:
	call	__stack_chk_fail@PLT	#
.L1194:
	call	__stack_chk_fail@PLT	#
.L1198:
	call	__stack_chk_fail@PLT	#
.L1195:
	call	__stack_chk_fail@PLT	#
.L1199:
	call	__stack_chk_fail@PLT	#
.L1017:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	movq	%rax, %rbp	#, tmp1728
	jmp	.L739	#
.L1023:
	movq	%rax, %rbp	#, tmp1744
	jmp	.L798	#
.L1026:
	movq	%rax, %rbp	#, tmp1753
	jmp	.L831	#
.L1033:
	movq	%rax, %r12	#, tmp1774
	jmp	.L903	#
.L1014:
	movq	%rax, %rbp	#, tmp1721
	jmp	.L713	#
.L1020:
	movq	%rax, %rbp	#, tmp1737
	jmp	.L772	#
.L1037:
	movq	%rax, %rbp	#, tmp1784
	jmp	.L940	#
.L1029:
	movq	%rax, %rbp	#, tmp1760
	jmp	.L857	#
.L1007:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	#, tmp1799
	jmp	.L975	#
.L1006:
	movq	%rax, %rbp	#, tmp1797
	jmp	.L971	#
.L1009:
	movq	%rax, %rbp	#, tmp1800
	jmp	.L979	#
.L1173:
	jmp	.L842	#
.L1103:
	jmp	.L1104	#
.L1167:
	jmp	.L783	#
.L1101:
	jmp	.L1102	#
.L1165:
	jmp	.L757	#
.L1107:
	jmp	.L1108	#
.L1171:
	jmp	.L816	#
.L1105:
	jmp	.L1106	#
.L1008:
	movq	%rax, %rbp	# tmp1801, tmp1179
	jmp	.L840	#
.L1003:
	movq	%rax, %rbp	#, tmp1794
	jmp	.L963	#
.L1161:
	jmp	.L724	#
.L1099:
	jmp	.L1100	#
.L1005:
	movq	%rax, %rbp	# tmp1798, tmp1031
	jmp	.L781	#
.L1001:
	movq	%rax, %rbx	#, tmp1793
	jmp	.L959	#
.L1012:
	movq	%rax, %rbp	#, tmp1803
	jmp	.L987	#
.L1109:
	jmp	.L1110	#
.L1159:
	jmp	.L698	#
.L1111:
	jmp	.L1112	#
.L1011:
	movq	%rax, %rbp	# tmp1804, tmp1343
	jmp	.L887	#
.L1181:
	jmp	.L925	#
.L1035:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rbp	#, tmp1781
	jmp	.L922	#
.L1178:
	jmp	.L888	#
.L1031:
	movq	%rax, %rbp	#, tmp1771
	jmp	.L884	#
.L1010:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	#, tmp1802
	jmp	.L983	#
.L1000:
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%rax, %rbx	#, tmp1791
	jmp	.L953	#
.L1039:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	# tmp1792, tmp1510
	jmp	.L956	#
.L1097:
	jmp	.L1098	#
.L1002:
	movq	%rax, %rbp	# tmp1795, tmp883
	jmp	.L722	#
.L1004:
	movq	%rax, %rbx	#, tmp1796
	jmp	.L967	#
	.section	.gcc_except_table
.LLSDA6287:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6287-.LLSDACSB6287
.LLSDACSB6287:
	.uleb128 .LEHB60-.LFB6287
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB61-.LFB6287
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L1039-.LFB6287
	.uleb128 0
	.uleb128 .LEHB62-.LFB6287
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L1000-.LFB6287
	.uleb128 0
	.uleb128 .LEHB63-.LFB6287
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB64-.LFB6287
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L1001-.LFB6287
	.uleb128 0
	.uleb128 .LEHB65-.LFB6287
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB66-.LFB6287
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1002-.LFB6287
	.uleb128 0
	.uleb128 .LEHB67-.LFB6287
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L1097-.LFB6287
	.uleb128 0
	.uleb128 .LEHB68-.LFB6287
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L1002-.LFB6287
	.uleb128 0
	.uleb128 .LEHB69-.LFB6287
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1099-.LFB6287
	.uleb128 0
	.uleb128 .LEHB70-.LFB6287
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L1003-.LFB6287
	.uleb128 0
	.uleb128 .LEHB71-.LFB6287
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB72-.LFB6287
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L1004-.LFB6287
	.uleb128 0
	.uleb128 .LEHB73-.LFB6287
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB74-.LFB6287
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L1005-.LFB6287
	.uleb128 0
	.uleb128 .LEHB75-.LFB6287
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L1101-.LFB6287
	.uleb128 0
	.uleb128 .LEHB76-.LFB6287
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L1005-.LFB6287
	.uleb128 0
	.uleb128 .LEHB77-.LFB6287
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L1103-.LFB6287
	.uleb128 0
	.uleb128 .LEHB78-.LFB6287
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1006-.LFB6287
	.uleb128 0
	.uleb128 .LEHB79-.LFB6287
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB80-.LFB6287
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L1007-.LFB6287
	.uleb128 0
	.uleb128 .LEHB81-.LFB6287
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB82-.LFB6287
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L1008-.LFB6287
	.uleb128 0
	.uleb128 .LEHB83-.LFB6287
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L1105-.LFB6287
	.uleb128 0
	.uleb128 .LEHB84-.LFB6287
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1008-.LFB6287
	.uleb128 0
	.uleb128 .LEHB85-.LFB6287
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1107-.LFB6287
	.uleb128 0
	.uleb128 .LEHB86-.LFB6287
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L1009-.LFB6287
	.uleb128 0
	.uleb128 .LEHB87-.LFB6287
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB88-.LFB6287
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1010-.LFB6287
	.uleb128 0
	.uleb128 .LEHB89-.LFB6287
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB90-.LFB6287
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L1031-.LFB6287
	.uleb128 0
	.uleb128 .LEHB91-.LFB6287
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L1109-.LFB6287
	.uleb128 0
	.uleb128 .LEHB92-.LFB6287
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1035-.LFB6287
	.uleb128 0
	.uleb128 .LEHB93-.LFB6287
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L1111-.LFB6287
	.uleb128 0
	.uleb128 .LEHB94-.LFB6287
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L1012-.LFB6287
	.uleb128 0
	.uleb128 .LEHB95-.LFB6287
	.uleb128 .LEHE95-.LEHB95
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB96-.LFB6287
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L1011-.LFB6287
	.uleb128 0
	.uleb128 .LEHB97-.LFB6287
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L1026-.LFB6287
	.uleb128 0
	.uleb128 .LEHB98-.LFB6287
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1029-.LFB6287
	.uleb128 0
	.uleb128 .LEHB99-.LFB6287
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L1014-.LFB6287
	.uleb128 0
	.uleb128 .LEHB100-.LFB6287
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L1017-.LFB6287
	.uleb128 0
	.uleb128 .LEHB101-.LFB6287
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L1033-.LFB6287
	.uleb128 0
	.uleb128 .LEHB102-.LFB6287
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L1037-.LFB6287
	.uleb128 0
	.uleb128 .LEHB103-.LFB6287
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1020-.LFB6287
	.uleb128 0
	.uleb128 .LEHB104-.LFB6287
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1023-.LFB6287
	.uleb128 0
.LLSDACSE6287:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6287
	.type	main.cold, @function
main.cold:
.LFSB6287:
.L739:
	.cfi_def_cfa_offset 384
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 96(%rsp)	#, MEM[(struct exception_ptr *)_295]._M_exception_object
	jne	.L1200	#,
.L731:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _753,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_753 + 8B]
.L722:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _200
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2080
	cmpq	%rax, %rdi	# tmp2080, _200
	je	.L965	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2081
	leaq	1(%rax), %rsi	#, _203
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L965:
	movq	312(%rsp), %rax	# D.202590, tmp1833
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1833
	jne	.L1201	#,
	movq	%rbp, %rdi	# tmp883,
.LEHB105:
	call	_Unwind_Resume@PLT	#
.LEHE105:
.L798:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 96(%rsp)	#, MEM[(struct exception_ptr *)_295]._M_exception_object
	je	.L790	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	96(%rsp), %rdi	#, tmp1958
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L790:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _909,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_909 + 8B]
	jmp	.L781	#
.L1200:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	96(%rsp), %rdi	#, tmp1919
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	jmp	.L731	#
.L831:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 96(%rsp)	#, MEM[(struct exception_ptr *)_295]._M_exception_object
	jne	.L1202	#,
.L823:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1011,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_1011 + 8B]
.L840:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _232
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2096
	cmpq	%rax, %rdi	# tmp2096, _232
	je	.L981	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2097
	leaq	1(%rax), %rsi	#, _235
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L981:
	movq	312(%rsp), %rax	# D.202590, tmp1837
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1837
	jne	.L1203	#,
	movq	%rbp, %rdi	# tmp1179,
.LEHB106:
	call	_Unwind_Resume@PLT	#
.LEHE106:
.L903:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 160(%rsp)	#, MEM[(struct exception_ptr *)_1650]._M_exception_object
	je	.L904	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	movq	%rbp, %rdi	# tmp1707,
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L904:
	movq	%r12, %rbp	# tmp1774, tmp1353
.L895:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	144(%rsp), %rax	# MEM[(struct ScopedHandler *)_295].saved, MEM[(struct ScopedHandler *)_295].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_295].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1215 + 8B]
.L887:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _248
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2104
	cmpq	%rax, %rdi	# tmp2104, _248
	je	.L989	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2105
	leaq	1(%rax), %rsi	#, _251
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L989:
	movq	312(%rsp), %rax	# D.202590, tmp1839
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1839
	jne	.L1204	#,
	movq	%rbp, %rdi	# tmp1343,
.LEHB107:
	call	_Unwind_Resume@PLT	#
.LEHE107:
.L1202:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	96(%rsp), %rdi	#, tmp1989
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	jmp	.L823	#
.L1203:
	call	__stack_chk_fail@PLT	#
.L713:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 96(%rsp)	#, MEM[(struct exception_ptr *)_295]._M_exception_object
	je	.L705	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	96(%rsp), %rdi	#, tmp1911
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L705:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _699,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_699 + 8B]
	jmp	.L722	#
.L772:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 96(%rsp)	#, MEM[(struct exception_ptr *)_295]._M_exception_object
	jne	.L1205	#,
.L764:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _855,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_855 + 8B]
.L781:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _216
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2088
	cmpq	%rax, %rdi	# tmp2088, _216
	je	.L973	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2089
	leaq	1(%rax), %rsi	#, _219
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L973:
	movq	312(%rsp), %rax	# D.202590, tmp1835
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1835
	jne	.L1206	#,
	movq	%rbp, %rdi	# tmp1031,
.LEHB108:
	call	_Unwind_Resume@PLT	#
.LEHE108:
.L1205:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	96(%rsp), %rdi	#, tmp1950
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	jmp	.L764	#
.L940:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 96(%rsp)	#, MEM[(struct exception_ptr *)_295]._M_exception_object
	je	.L932	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	movq	%r15, %rdi	# tmp1653,
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L932:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1330 + 8B]
	jmp	.L887	#
.L857:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 96(%rsp)	#, MEM[(struct exception_ptr *)_295]._M_exception_object
	je	.L849	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	96(%rsp), %rdi	#, tmp1997
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L849:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	208(%rsp), %rax	# MEM[(struct ScopedHandler *)_1650].saved, MEM[(struct ScopedHandler *)_1650].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1065,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1650].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_1065 + 8B]
	jmp	.L840	#
.L1204:
	call	__stack_chk_fail@PLT	#
.L1201:
	call	__stack_chk_fail@PLT	#
.L1206:
	call	__stack_chk_fail@PLT	#
.L975:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _220
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2090
	cmpq	%rax, %rdi	# tmp2090, _220
	je	.L976	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2091
	leaq	1(%rax), %rsi	#, _223
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L976:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _224
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2092
	cmpq	%rax, %rdi	# tmp2092, _224
	je	.L977	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2093
	leaq	1(%rax), %rsi	#, _227
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L977:
	movq	312(%rsp), %rax	# D.202590, tmp1836
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1836
	jne	.L1207	#,
	movq	%rbx, %rdi	# tmp1799,
.LEHB109:
	call	_Unwind_Resume@PLT	#
.LEHE109:
.L971:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _212
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2086
	cmpq	%rax, %rdi	# tmp2086, _212
	je	.L781	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2087
	leaq	1(%rax), %rsi	#, _215
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L781	#
.L979:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _228
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2094
	cmpq	%rax, %rdi	# tmp2094, _228
	je	.L840	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2095
	leaq	1(%rax), %rsi	#, _231
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L840	#
.L783:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _925,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _925
.LEHB110:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE110:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	312(%rsp), %rax	# D.202590, tmp1815
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1815
	jne	.L1208	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _925,
.LEHB111:
	call	__cxa_throw@PLT	#
.LEHE111:
.L1022:
.L1104:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1747, tmp1048
	jmp	.L790	#
.L1208:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	__stack_chk_fail@PLT	#
.L1024:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _925,
	movq	%rax, %rbp	#, tmp1743
	call	__cxa_free_exception@PLT	#
	jmp	.L790	#
.L757:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _871,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _871
.LEHB112:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE112:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	312(%rsp), %rax	# D.202590, tmp1812
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1812
	jne	.L1209	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _871,
.LEHB113:
	call	__cxa_throw@PLT	#
.LEHE113:
.L1209:
	call	__stack_chk_fail@PLT	#
.L1019:
.L1102:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1740, tmp1002
	jmp	.L764	#
.L1021:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _871,
	movq	%rax, %rbp	#, tmp1736
	call	__cxa_free_exception@PLT	#
	jmp	.L764	#
.L842:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _1081,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _1081
.LEHB114:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE114:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	312(%rsp), %rax	# D.202590, tmp1821
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1821
	jne	.L1210	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _1081,
.LEHB115:
	call	__cxa_throw@PLT	#
.LEHE115:
.L1210:
	call	__stack_chk_fail@PLT	#
.L1028:
.L1108:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1763, tmp1196
	jmp	.L849	#
.L1030:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _1081,
	movq	%rax, %rbp	#, tmp1759
	call	__cxa_free_exception@PLT	#
	jmp	.L849	#
.L816:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _1027,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _1027
.LEHB116:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE116:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	312(%rsp), %rax	# D.202590, tmp1818
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1818
	jne	.L1211	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _1027,
.LEHB117:
	call	__cxa_throw@PLT	#
.LEHE117:
.L1207:
	call	__stack_chk_fail@PLT	#
.L1025:
.L1106:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1756, tmp1150
	jmp	.L823	#
.L1211:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	__stack_chk_fail@PLT	#
.L1027:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _1027,
	movq	%rax, %rbp	#, tmp1752
	call	__cxa_free_exception@PLT	#
	jmp	.L823	#
.L963:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _196
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2078
	cmpq	%rax, %rdi	# tmp2078, _196
	je	.L722	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2079
	leaq	1(%rax), %rsi	#, _199
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L722	#
.L724:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _769,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _769
.LEHB118:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE118:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	312(%rsp), %rax	# D.202590, tmp1809
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1809
	jne	.L1212	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _769,
.LEHB119:
	call	__cxa_throw@PLT	#
.LEHE119:
.L717:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp1912
	movq	%rcx, (%rax)	# tmp1912, MEM[(struct bad_any_cast *)_732].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	312(%rsp), %rdx	# D.202590, tmp1808
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp1808
	jne	.L1213	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp1723,
.LEHB120:
	call	__cxa_throw@PLT	#
.LEHE120:
.L743:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp1920
	movq	%rcx, (%rax)	# tmp1920, MEM[(struct bad_any_cast *)_786].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	312(%rsp), %rdx	# D.202590, tmp1811
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp1811
	jne	.L1214	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp1730,
.LEHB121:
	call	__cxa_throw@PLT	#
.LEHE121:
.L1213:
	call	__stack_chk_fail@PLT	#
.L959:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _188
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2074
	cmpq	%rax, %rdi	# tmp2074, _188
	je	.L960	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2075
	leaq	1(%rax), %rsi	#, _191
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L960:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _192
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2076
	cmpq	%rax, %rdi	# tmp2076, _192
	je	.L961	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2077
	leaq	1(%rax), %rsi	#, _195
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L961:
	movq	312(%rsp), %rax	# D.202590, tmp1832
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1832
	jne	.L1215	#,
	movq	%rbx, %rdi	# tmp1793,
.LEHB122:
	call	_Unwind_Resume@PLT	#
.LEHE122:
.L987:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _244
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2102
	cmpq	%rax, %rdi	# tmp2102, _244
	je	.L887	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2103
	leaq	1(%rax), %rsi	#, _247
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L887	#
.L888:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _1284,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _1284
.LEHB123:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE123:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	312(%rsp), %rax	# D.202590, tmp1824
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1824
	jne	.L1216	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _1284,
.LEHB124:
	call	__cxa_throw@PLT	#
.LEHE124:
.L1216:
	call	__stack_chk_fail@PLT	#
.L1032:
.L1110:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1777, tmp1353
	jmp	.L895	#
.L1034:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _1284,
	movq	%rax, %rbp	#, tmp1773
	call	__cxa_free_exception@PLT	#
	jmp	.L895	#
.L944:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp2052
	movq	%rcx, (%rax)	# tmp2052, MEM[(struct bad_any_cast *)_1416].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	312(%rsp), %rdx	# D.202590, tmp1829
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp1829
	jne	.L1217	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp1786,
.LEHB125:
	call	__cxa_throw@PLT	#
.LEHE125:
.L835:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp1990
	movq	%rcx, (%rax)	# tmp1990, MEM[(struct bad_any_cast *)_1044].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	312(%rsp), %rdx	# D.202590, tmp1820
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp1820
	jne	.L1218	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp1755,
.LEHB126:
	call	__cxa_throw@PLT	#
.LEHE126:
.L1217:
	call	__stack_chk_fail@PLT	#
.L925:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _1399,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _1399
.LEHB127:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE127:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	312(%rsp), %rax	# D.202590, tmp1827
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1827
	jne	.L1219	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _1399,
.LEHB128:
	call	__cxa_throw@PLT	#
.LEHE128:
.L1219:
	call	__stack_chk_fail@PLT	#
.L1036:
.L1112:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1787, tmp1428
	jmp	.L932	#
.L1038:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _1399,
	movq	%rax, %rbp	#, tmp1783
	call	__cxa_free_exception@PLT	#
	jmp	.L932	#
.L922:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1330 + 8B]
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	subw	$1, 90(%rbx)	#,
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	jne	.L923	#,
.L1156:
# ../../effects.hpp:454: template <typename... Es> struct PromiseBase : PromiseAbortBase {
	leaq	16(%rbx), %rdi	#, _1322
	call	_ZN2fx6detail16PromiseAbortBaseD2Ev	#
.L923:
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	cmpw	$0, 90(%rbx)	#,
	jne	.L887	#,
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	movl	$136, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZN2fx6detail11PromiseBaseIJ4PingEEdlEPvm	#
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	jmp	.L887	#
.L802:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp1959
	movq	%rcx, (%rax)	# tmp1959, MEM[(struct bad_any_cast *)_942].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	312(%rsp), %rdx	# D.202590, tmp1817
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp1817
	jne	.L1220	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp1746,
.LEHB129:
	call	__cxa_throw@PLT	#
.LEHE129:
.L907:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp2038
	movq	%rcx, (%rax)	# tmp2038, MEM[(struct bad_any_cast *)_1301].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	312(%rsp), %rdx	# D.202590, tmp1826
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp1826
	jne	.L1221	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp1776,
.LEHB130:
	call	__cxa_throw@PLT	#
.LEHE130:
.L1220:
	call	__stack_chk_fail@PLT	#
.L1221:
	call	__stack_chk_fail@PLT	#
.L861:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp1998
	movq	%rcx, (%rax)	# tmp1998, MEM[(struct bad_any_cast *)_1098].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	312(%rsp), %rdx	# D.202590, tmp1823
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp1823
	jne	.L1222	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp1762,
.LEHB131:
	call	__cxa_throw@PLT	#
.LEHE131:
.L776:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp1951
	movq	%rcx, (%rax)	# tmp1951, MEM[(struct bad_any_cast *)_888].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	312(%rsp), %rdx	# D.202590, tmp1814
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp1814
	jne	.L1223	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp1739,
.LEHB132:
	call	__cxa_throw@PLT	#
.LEHE132:
.L1222:
	call	__stack_chk_fail@PLT	#
.L1214:
	call	__stack_chk_fail@PLT	#
.L1016:
.L1100:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1731, tmp900
	jmp	.L731	#
.L1218:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	call	__stack_chk_fail@PLT	#
.L1223:
	call	__stack_chk_fail@PLT	#
.L1018:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _769,
	movq	%rax, %rbp	#, tmp1727
	call	__cxa_free_exception@PLT	#
	jmp	.L731	#
.L1212:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	__stack_chk_fail@PLT	#
.L884:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1215 + 8B]
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	subw	$1, 90(%rbx)	#,
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	je	.L1156	#,
# b5_propagation.cpp:31: static auto ping_d8() -> Ping::Fx<int> {
	jmp	.L923	#
.L983:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _236
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2098
	cmpq	%rax, %rdi	# tmp2098, _236
	je	.L984	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2099
	leaq	1(%rax), %rsi	#, _239
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L984:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _240
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2100
	cmpq	%rax, %rdi	# tmp2100, _240
	je	.L985	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2101
	leaq	1(%rax), %rsi	#, _243
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L985:
	movq	312(%rsp), %rax	# D.202590, tmp1838
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1838
	jne	.L1224	#,
	movq	%rbx, %rdi	# tmp1802,
.LEHB133:
	call	_Unwind_Resume@PLT	#
.L1215:
	call	__stack_chk_fail@PLT	#
.L953:
	movq	%rbp, %rdi	# _570,
	movl	$93, %esi	#,
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(struct basic_string *)_12]._M_dataplus._M_p, _180
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2070
	cmpq	%rax, %rdi	# tmp2070, _180
	je	.L954	#,
.L955:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2071
	leaq	1(%rax), %rsi	#, _183
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L954:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _184
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2072
	cmpq	%rax, %rdi	# tmp2072, _184
	je	.L957	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2073
	leaq	1(%rax), %rsi	#, _187
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L957:
	movq	312(%rsp), %rax	# D.202590, tmp1831
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1831
	jne	.L1225	#,
	movq	%rbx, %rdi	# tmp1510,
	call	_Unwind_Resume@PLT	#
.L956:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(struct basic_string *)_12]._M_dataplus._M_p, _180
	jmp	.L955	#
.L1013:
.L1098:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1724, tmp854
	jmp	.L705	#
.L967:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	256(%rsp), %rdi	# MEM[(const struct basic_string *)_12]._M_dataplus._M_p, _204
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	272(%rsp), %rax	#, tmp2082
	cmpq	%rax, %rdi	# tmp2082, _204
	je	.L968	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	272(%rsp), %rax	# MEM[(struct basic_string *)_12].D.58684._M_allocated_capacity, tmp2083
	leaq	1(%rax), %rsi	#, _207
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L968:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	224(%rsp), %rdi	# MEM[(struct basic_string *)_1766]._M_dataplus._M_p, _208
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	240(%rsp), %rax	#, tmp2084
	cmpq	%rax, %rdi	# tmp2084, _208
	je	.L969	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	240(%rsp), %rax	# MEM[(struct basic_string *)_1766].D.58684._M_allocated_capacity, tmp2085
	leaq	1(%rax), %rsi	#, _211
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L969:
	movq	312(%rsp), %rax	# D.202590, tmp1834
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1834
	jne	.L1226	#,
	movq	%rbx, %rdi	# tmp1796,
	call	_Unwind_Resume@PLT	#
.LEHE133:
.L1224:
	call	__stack_chk_fail@PLT	#
.L698:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC13(%rip), %rsi	#,
	movq	%rax, %rdi	# _715,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _715
.LEHB134:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE134:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	312(%rsp), %rax	# D.202590, tmp1806
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1806
	jne	.L1227	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _715,
.LEHB135:
	call	__cxa_throw@PLT	#
.LEHE135:
.L1227:
	call	__stack_chk_fail@PLT	#
.L1015:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _715,
	movq	%rax, %rbp	#, tmp1720
	call	__cxa_free_exception@PLT	#
	jmp	.L705	#
.L1226:
	call	__stack_chk_fail@PLT	#
.L1225:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6287:
	.section	.gcc_except_table
.LLSDAC6287:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6287-.LLSDACSBC6287
.LLSDACSBC6287:
	.uleb128 .LEHB105-.LCOLDB46
	.uleb128 .LEHE105-.LEHB105
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB106-.LCOLDB46
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LCOLDB46
	.uleb128 .LEHE107-.LEHB107
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB108-.LCOLDB46
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LCOLDB46
	.uleb128 .LEHE109-.LEHB109
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB110-.LCOLDB46
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L1024-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB111-.LCOLDB46
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1022-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB112-.LCOLDB46
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L1021-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB113-.LCOLDB46
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1019-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB114-.LCOLDB46
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L1030-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB115-.LCOLDB46
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L1028-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB116-.LCOLDB46
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1027-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB117-.LCOLDB46
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1025-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB118-.LCOLDB46
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1018-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB119-.LCOLDB46
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1016-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB120-.LCOLDB46
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1013-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB121-.LCOLDB46
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1016-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB122-.LCOLDB46
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB123-.LCOLDB46
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1034-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB124-.LCOLDB46
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1032-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB125-.LCOLDB46
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1036-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB126-.LCOLDB46
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1025-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB127-.LCOLDB46
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1038-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB128-.LCOLDB46
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1036-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB129-.LCOLDB46
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1022-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB130-.LCOLDB46
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L1032-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB131-.LCOLDB46
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1028-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB132-.LCOLDB46
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1019-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB133-.LCOLDB46
	.uleb128 .LEHE133-.LEHB133
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB134-.LCOLDB46
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L1015-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB135-.LCOLDB46
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L1013-.LCOLDB46
	.uleb128 0
.LLSDACSEC6287:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE46:
	.section	.text.startup
.LHOTE46:
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
	.weak	_ZN2fx6detail12effect_tag_vI4PingEE
	.section	.rodata._ZN2fx6detail12effect_tag_vI4PingEE,"aG",@progbits,_ZN2fx6detail12effect_tag_vI4PingEE,comdat
	.type	_ZN2fx6detail12effect_tag_vI4PingEE, @gnu_unique_object
	.size	_ZN2fx6detail12effect_tag_vI4PingEE, 1
_ZN2fx6detail12effect_tag_vI4PingEE:
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
.LC9:
	.quad	_Z7ping_d1P18_ZL7ping_d1v.Frame.actor
	.align 8
.LC16:
	.quad	_Z7ping_d2P18_ZL7ping_d2v.Frame.actor
	.align 8
.LC18:
	.quad	_Z7ping_d3P18_ZL7ping_d3v.Frame.actor
	.align 8
.LC21:
	.quad	_Z7ping_d4P18_ZL7ping_d4v.Frame.actor
	.align 8
.LC23:
	.quad	_Z7ping_d5P18_ZL7ping_d5v.Frame.actor
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC35:
	.long	0
	.long	1092519040
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC42:
	.quad	8101820080565400930
	.quad	2336927755366655841
	.align 16
.LC43:
	.quad	7306000154088269923
	.quad	7809632574953256048
	.section	.data.rel.ro.local
	.align 8
.LC44:
	.quad	_ZN2fx6detail12effect_tag_vI4PingEE
	.align 8
.LC45:
	.quad	_Z7ping_d8P18_ZL7ping_d8v.Frame.actor
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
