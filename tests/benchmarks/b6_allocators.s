	.file	"b6_allocators.cpp"
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
	.section	.text._ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,"axG",@progbits,_ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,comdat
	.p2align 4
	.weak	_ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.type	_ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, @function
_ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
.LFB7197:
	.cfi_startproc
# ../../effects.hpp:607:       auto &hh =
	movq	16(%rdi), %rdx	# MEM[(struct HandlerNode *)_2(D)].real_handler_ptr, hh
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	8(%rsi), %rdi	# MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr, _7
# b6_allocators.cpp:122:   void handle(Tick, auto resume) { resume(n++); }
	movl	(%rdx), %eax	# hh_4->n, _5
# b6_allocators.cpp:122:   void handle(Tick, auto resume) { resume(n++); }
	leal	1(%rax), %ecx	#, tmp105
	movl	%ecx, (%rdx)	# tmp105, hh_4->n
# ../../effects.hpp:1140:   pa->result_ = std::move(v);
	movl	%eax, 4(%rsi)	# _5, MEM[(struct PerformAwaitable *)_3(D)].result_
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	jmp	*(%rdi)	# MEM[(void (*<T123>) (void *) *)_7]
	.cfi_endproc
.LFE7197:
	.size	_ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, .-_ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.section	.text._ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,"axG",@progbits,_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,comdat
	.p2align 4
	.weak	_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.type	_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, @function
_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
.LFB7243:
	.cfi_startproc
# ../../effects.hpp:607:       auto &hh =
	movq	16(%rdi), %rdx	# MEM[(struct HandlerNode *)_2(D)].real_handler_ptr, hh
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	8(%rsi), %rdi	# MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr, _7
# b6_allocators.cpp:122:   void handle(Tick, auto resume) { resume(n++); }
	movl	(%rdx), %eax	# hh_4->n, _5
# b6_allocators.cpp:122:   void handle(Tick, auto resume) { resume(n++); }
	leal	1(%rax), %ecx	#, tmp105
	movl	%ecx, (%rdx)	# tmp105, hh_4->n
# ../../effects.hpp:1140:   pa->result_ = std::move(v);
	movl	%eax, 4(%rsi)	# _5, MEM[(struct PerformAwaitable *)_3(D)].result_
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	jmp	*(%rdi)	# MEM[(void (*<T123>) (void *) *)_7]
	.cfi_endproc
.LFE7243:
	.size	_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, .-_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.section	.text._ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
	.type	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, @function
_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE:
.LFB7775:
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
	.section	.rodata._ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"aG",@progbits,_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 4
	.align 4
.L8:
	.long	.L12-.L8
	.long	.L11-.L8
	.long	.L10-.L8
	.long	.L5-.L8
	.long	.L7-.L8
	.section	.text._ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.p2align 4,,10
	.p2align 3
.L7:
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
.L5:
# /usr/include/c++/16.1.1/any:618:     }
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
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
	leaq	_ZTIx(%rip), %rax	#, tmp120
	movq	%rax, (%rcx)	# tmp120, __arg_12(D)->_M_typeinfo
# /usr/include/c++/16.1.1/any:602: 	break;
	ret	
	.cfi_endproc
.LFE7775:
	.size	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, .-_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
	.section	.text._ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
	.type	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, @function
_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE:
.LFB7787:
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
.LFE7787:
	.size	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, .-_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
	.section	.text._ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm,"axG",@progbits,_ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm,comdat
	.align 2
	.p2align 4
	.weak	_ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm
	.type	_ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm, @function
_ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm:
.LFB8107:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8107
# b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	leaq	16(%rdi), %rax	#, _7
# b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	cmpq	%rax, %rsi	# _7, ptr
	jb	.L22	#,
# b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	leaq	1072(%rdi), %rax	#, _12
# b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	cmpq	%rax, %rsi	# _12, ptr
	jnb	.L22	#,
# b6_allocators.cpp:101:     b->next = head_;
	movq	1072(%rdi), %rax	# this_5(D)->head_, _2
# b6_allocators.cpp:101:     b->next = head_;
	movq	%rax, (%rsi)	# _2, MEM[(union Block *)ptr_6(D)].next
# b6_allocators.cpp:102:     head_ = b;
	movq	%rsi, 1072(%rdi)	# ptr, this_5(D)->head_
	ret	
	.p2align 4,,10
	.p2align 3
.L22:
# b6_allocators.cpp:94:   void do_deallocate(void *ptr, std::size_t n,
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# b6_allocators.cpp:97:       fallback_->deallocate(ptr, n, align); // came from fallback
	movq	1080(%rdi), %rdi	# this_5(D)->fallback_, _1
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# _1->_vptr.memory_resource, _1->_vptr.memory_resource
	call	*24(%rax)	# MEM[(int (*) () *)_13 + 24B]
# b6_allocators.cpp:103:   }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE8107:
	.section	.gcc_except_table._ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm,"aG",@progbits,_ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm,comdat
.LLSDA8107:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8107-.LLSDACSB8107
.LLSDACSB8107:
.LLSDACSE8107:
	.section	.text._ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm,"axG",@progbits,_ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm,comdat
	.size	_ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm, .-_ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm
	.section	.text._ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE,"axG",@progbits,_ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE,comdat
	.align 2
	.p2align 4
	.weak	_ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE
	.type	_ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE, @function
_ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE:
.LFB8108:
	.cfi_startproc
# b6_allocators.cpp:106:     return this == &o;
	cmpq	%rsi, %rdi	# o, this
	sete	%al	#, _4
# b6_allocators.cpp:107:   }
	ret	
	.cfi_endproc
.LFE8108:
	.size	_ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE, .-_ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE
	.section	.text._ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm,"axG",@progbits,_ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm,comdat
	.align 2
	.p2align 4
	.weak	_ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm
	.type	_ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm, @function
_ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm:
.LFB8110:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8110
# b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	leaq	16(%rdi), %rax	#, _7
# b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	cmpq	%rax, %rsi	# _7, ptr
	jb	.L29	#,
# b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	leaq	2128(%rdi), %rax	#, _12
# b6_allocators.cpp:62:     return ptr >= storage_ && ptr < storage_ + Capacity;
	cmpq	%rax, %rsi	# _12, ptr
	jnb	.L29	#,
# b6_allocators.cpp:101:     b->next = head_;
	movq	2128(%rdi), %rax	# this_5(D)->head_, _2
# b6_allocators.cpp:101:     b->next = head_;
	movq	%rax, (%rsi)	# _2, MEM[(union Block *)ptr_6(D)].next
# b6_allocators.cpp:102:     head_ = b;
	movq	%rsi, 2128(%rdi)	# ptr, this_5(D)->head_
	ret	
	.p2align 4,,10
	.p2align 3
.L29:
# b6_allocators.cpp:94:   void do_deallocate(void *ptr, std::size_t n,
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# b6_allocators.cpp:97:       fallback_->deallocate(ptr, n, align); // came from fallback
	movq	2136(%rdi), %rdi	# this_5(D)->fallback_, _1
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# _1->_vptr.memory_resource, _1->_vptr.memory_resource
	call	*24(%rax)	# MEM[(int (*) () *)_13 + 24B]
# b6_allocators.cpp:103:   }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE8110:
	.section	.gcc_except_table._ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm,"aG",@progbits,_ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm,comdat
.LLSDA8110:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8110-.LLSDACSB8110
.LLSDACSB8110:
.LLSDACSE8110:
	.section	.text._ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm,"axG",@progbits,_ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm,comdat
	.size	_ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm, .-_ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm
	.section	.text._ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE,"axG",@progbits,_ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE,comdat
	.align 2
	.p2align 4
	.weak	_ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE
	.type	_ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE, @function
_ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE:
.LFB8111:
	.cfi_startproc
# b6_allocators.cpp:106:     return this == &o;
	cmpq	%rsi, %rdi	# o, this
	sete	%al	#, _4
# b6_allocators.cpp:107:   }
	ret	
	.cfi_endproc
.LFE8111:
	.size	_ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE, .-_ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE
	.section	.text._ZN12FreeListSlabILm520ELm2EED2Ev,"axG",@progbits,_ZN12FreeListSlabILm520ELm2EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN12FreeListSlabILm520ELm2EED2Ev
	.type	_ZN12FreeListSlabILm520ELm2EED2Ev, @function
_ZN12FreeListSlabILm520ELm2EED2Ev:
.LFB6320:
	.cfi_startproc
# b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	leaq	16+_ZTV12FreeListSlabILm520ELm2EE(%rip), %rax	#, tmp103
	movq	%rax, (%rdi)	# tmp103, this_3(D)->D.150937._vptr.memory_resource
	jmp	_ZNSt3pmr15memory_resourceD2Ev@PLT	#
	.cfi_endproc
.LFE6320:
	.size	_ZN12FreeListSlabILm520ELm2EED2Ev, .-_ZN12FreeListSlabILm520ELm2EED2Ev
	.weak	_ZN12FreeListSlabILm520ELm2EED1Ev
	.set	_ZN12FreeListSlabILm520ELm2EED1Ev,_ZN12FreeListSlabILm520ELm2EED2Ev
	.section	.text._ZN12FreeListSlabILm520ELm2EED0Ev,"axG",@progbits,_ZN12FreeListSlabILm520ELm2EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN12FreeListSlabILm520ELm2EED0Ev
	.type	_ZN12FreeListSlabILm520ELm2EED0Ev, @function
_ZN12FreeListSlabILm520ELm2EED0Ev:
.LFB6322:
	.cfi_startproc
	leaq	16+_ZTV12FreeListSlabILm520ELm2EE(%rip), %rax	#, tmp103
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	movq	%rax, (%rdi)	# tmp103, this_2(D)->D.150937._vptr.memory_resource
	movq	%rdi, 8(%rsp)	# this, %sfp
	call	_ZNSt3pmr15memory_resourceD2Ev@PLT	#
# b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	movq	8(%rsp), %rdi	# %sfp, this
	movl	$1088, %esi	#,
# b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
# b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE6322:
	.size	_ZN12FreeListSlabILm520ELm2EED0Ev, .-_ZN12FreeListSlabILm520ELm2EED0Ev
	.section	.text._ZN12FreeListSlabILm520ELm4EED2Ev,"axG",@progbits,_ZN12FreeListSlabILm520ELm4EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN12FreeListSlabILm520ELm4EED2Ev
	.type	_ZN12FreeListSlabILm520ELm4EED2Ev, @function
_ZN12FreeListSlabILm520ELm4EED2Ev:
.LFB6292:
	.cfi_startproc
# b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	leaq	16+_ZTV12FreeListSlabILm520ELm4EE(%rip), %rax	#, tmp103
	movq	%rax, (%rdi)	# tmp103, this_3(D)->D.149010._vptr.memory_resource
	jmp	_ZNSt3pmr15memory_resourceD2Ev@PLT	#
	.cfi_endproc
.LFE6292:
	.size	_ZN12FreeListSlabILm520ELm4EED2Ev, .-_ZN12FreeListSlabILm520ELm4EED2Ev
	.weak	_ZN12FreeListSlabILm520ELm4EED1Ev
	.set	_ZN12FreeListSlabILm520ELm4EED1Ev,_ZN12FreeListSlabILm520ELm4EED2Ev
	.section	.text._ZN12FreeListSlabILm520ELm4EED0Ev,"axG",@progbits,_ZN12FreeListSlabILm520ELm4EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN12FreeListSlabILm520ELm4EED0Ev
	.type	_ZN12FreeListSlabILm520ELm4EED0Ev, @function
_ZN12FreeListSlabILm520ELm4EED0Ev:
.LFB6294:
	.cfi_startproc
	leaq	16+_ZTV12FreeListSlabILm520ELm4EE(%rip), %rax	#, tmp103
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	movq	%rax, (%rdi)	# tmp103, this_2(D)->D.149010._vptr.memory_resource
	movq	%rdi, 8(%rsp)	# this, %sfp
	call	_ZNSt3pmr15memory_resourceD2Ev@PLT	#
# b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	movq	8(%rsp), %rdi	# %sfp, this
	movl	$2144, %esi	#,
# b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
# b6_allocators.cpp:49: class FreeListSlab : public std::pmr::memory_resource {
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE6294:
	.size	_ZN12FreeListSlabILm520ELm4EED0Ev, .-_ZN12FreeListSlabILm520ELm4EED0Ev
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4
	.type	_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor, @function
_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor:
.LFB6264:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6264
# b6_allocators.cpp:133: }
	movzwl	96(%rdi), %eax	# frame_ptr_23(D)->_Coro_resume_index, _1
	testb	$1, %al	#, _1
	je	.L42	#,
# b6_allocators.cpp:133: }
	cmpw	$7, %ax	#, _1
	ja	.L67	#,
.L44:
.L51:
.L52:
.L53:
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	subw	$1, 98(%rdi)	#, frame_ptr_23(D)->_Coro_frame_refcount
# b6_allocators.cpp:133: }
	je	.L68	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L42:
# b6_allocators.cpp:133: }
	cmpw	$4, %ax	#, _1
	je	.L45	#,
	ja	.L46	#,
	testw	%ax, %ax	# _1
	je	.L47	#,
.L48:
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	movb	$1, 101(%rdi)	#, frame_ptr_23(D)->_Coro_initial_await_resume_called
# b6_allocators.cpp:128:   long long sum = 0;
	movq	$0, 104(%rdi)	#, frame_ptr_23(D)->sum_1_2
# b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	movl	$0, 112(%rdi)	#, frame_ptr_23(D)->i_2_3
.L50:
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	leaq	16(%rdi), %rax	#, tmp125
# b6_allocators.cpp:133: }
	movl	$4, %edx	#,
# ../../effects.hpp:491:     return a;
	movl	$0, 124(%rdi)	#, frame_ptr_23(D)->Aw0_3_4.result_
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	movq	%rax, 136(%rdi)	# tmp125, MEM[(struct PerformAwaitable *)frame_ptr_23(D) + 120B].abort_base_
# ../../effects.hpp:1123:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	leaq	_ZN2fx6detail12effect_tag_vI4TickEE(%rip), %rax	#, tmp141
	movq	%rax, 48(%rdi)	# tmp141, MEM[(struct promise_type &)frame_ptr_23(D) + 16].D.144678.D.143627.effect_tag
# b6_allocators.cpp:130:     sum += perform(Tick{});
	leaq	120(%rdi), %rax	#, tmp127
# b6_allocators.cpp:133: }
	movw	%dx, 96(%rdi)	#, frame_ptr_23(D)->_Coro_resume_index
# ../../effects.hpp:1121:     caller_ = caller;
	movq	%rdi, 128(%rdi)	# frame_ptr, MEM[(struct PerformAwaitable *)frame_ptr_23(D) + 120B].caller_._M_fr_ptr
# b6_allocators.cpp:130:     sum += perform(Tick{});
	movq	%rax, 56(%rdi)	# tmp127, MEM[(struct promise_type &)frame_ptr_23(D) + 16].D.144678.D.143627.payload_ptr
	ret	
	.p2align 4,,10
	.p2align 3
.L68:
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_23(D) + 64B]._M_exception_object
	je	.L54	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _50
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L54:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_23(D) + 32B]._M_manager, _53
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _53
	je	.L55	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _52
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _53
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L55:
# b6_allocators.cpp:133: }
	cmpb	$0, 100(%rax)	#, frame_ptr_23(D)->_Coro_frame_needs_free
	jne	.L69	#,
.L49:
.L41:
# b6_allocators.cpp:133: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L47:
# b6_allocators.cpp:133: }
	movl	$2, %ecx	#,
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	addw	$1, 98(%rdi)	#, frame_ptr_23(D)->_Coro_frame_refcount
	movb	$0, 101(%rdi)	#, frame_ptr_23(D)->_Coro_initial_await_resume_called
# b6_allocators.cpp:133: }
	movw	%cx, 96(%rdi)	#, frame_ptr_23(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L45:
# ../../effects.hpp:1127:   typename E::result_type await_resume() { return std::move(result_); }
	movslq	124(%rdi), %rax	# MEM[(type &)frame_ptr_23(D) + 124],
# b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	movl	112(%rdi), %edx	# frame_ptr_23(D)->i_2_3, tmp142
# b6_allocators.cpp:133: }
	movl	%eax, 116(%rdi)	# _31, frame_ptr_23(D)->T001_3_4
# b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	addl	$1, %edx	#, _14
# b6_allocators.cpp:130:     sum += perform(Tick{});
	addq	104(%rdi), %rax	# frame_ptr_23(D)->sum_1_2, _12
	movq	%rax, 104(%rdi)	# _12, frame_ptr_23(D)->sum_1_2
# b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	movl	%edx, 112(%rdi)	# _14, frame_ptr_23(D)->i_2_3
# b6_allocators.cpp:129:   for (int i = 0; i < BATCH; ++i) {
	cmpl	$4999, %edx	#, _14
	jle	.L50	#,
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movq	%rax, 80(%rdi)	# _12, MEM <long long int> [(struct promise_type *)frame_ptr_23(D) + 80B]
# b6_allocators.cpp:133: }
	movl	$6, %eax	#,
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movb	$1, 88(%rdi)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_23(D) + 88B]
# b6_allocators.cpp:133: }
	movq	$0, (%rdi)	#, frame_ptr_23(D)->_Coro_resume_fn
# b6_allocators.cpp:133: }
	movw	%ax, 96(%rdi)	#, frame_ptr_23(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L46:
# b6_allocators.cpp:133: }
	cmpw	$6, %ax	#, _1
	je	.L53	#,
	jmp	.L43	#
	.p2align 4,,10
	.p2align 3
.L69:
	.cfi_def_cfa_offset 32
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	152(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_23(D) + 152B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L56	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %r8	# mr_56->_vptr.memory_resource, mr_56->_vptr.memory_resource
	movl	$16, %ecx	#,
	movl	$160, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*24(%r8)	# MEM[(int (*) () *)_57 + 24B]
	jmp	.L41	#
	.p2align 4,,10
	.p2align 3
.L56:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$160, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b6_allocators.cpp:133: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB0:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE0:
.L67:
	jmp	.L43	#
	.section	.gcc_except_table,"a",@progbits
.LLSDA6264:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6264-.LLSDACSB6264
.LLSDACSB6264:
	.uleb128 .LEHB0-.LFB6264
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
.LLSDACSE6264:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6264
	.type	_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor.cold, @function
_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor.cold:
.LFSB6264:
.L43:
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	ud2	
	.cfi_endproc
.LFE6264:
	.section	.gcc_except_table
.LLSDAC6264:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6264-.LLSDACSBC6264
.LLSDACSBC6264:
.LLSDACSEC6264:
	.section	.text.unlikely
	.text
	.size	_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor, .-_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor
	.section	.text.unlikely
	.size	_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor.cold, .-_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor.cold
.LCOLDE1:
	.text
.LHOTE1:
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
	.section	.text._ZN12FreeListSlabILm520ELm4EE11do_allocateEmm,"axG",@progbits,_ZN12FreeListSlabILm520ELm4EE11do_allocateEmm,comdat
	.align 2
	.p2align 4
	.weak	_ZN12FreeListSlabILm520ELm4EE11do_allocateEmm
	.type	_ZN12FreeListSlabILm520ELm4EE11do_allocateEmm, @function
_ZN12FreeListSlabILm520ELm4EE11do_allocateEmm:
.LFB8109:
	.cfi_startproc
# b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	cmpq	$520, %rsi	#, n
	ja	.L74	#,
# b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	movq	2128(%rdi), %rax	# this_6(D)->head_, _1
# b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	testq	%rax, %rax	# _1
	je	.L74	#,
# b6_allocators.cpp:90:     head_ = b->next;
	movq	(%rax), %rdx	# _1->next, _2
# b6_allocators.cpp:90:     head_ = b->next;
	movq	%rdx, 2128(%rdi)	# _2, this_6(D)->head_
# b6_allocators.cpp:92:   }
	ret	
	.p2align 4,,10
	.p2align 3
.L74:
	movq	2136(%rdi), %rdi	# MEM[(struct memory_resource * *)this_6(D) + 2136B], _13
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rdi), %rax	# _13->_vptr.memory_resource, _13->_vptr.memory_resource
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	jmp	*16(%rax)	# MEM[(int (*) () *)_15 + 16B]
	.cfi_endproc
.LFE8109:
	.size	_ZN12FreeListSlabILm520ELm4EE11do_allocateEmm, .-_ZN12FreeListSlabILm520ELm4EE11do_allocateEmm
	.section	.text._ZN12FreeListSlabILm520ELm2EE11do_allocateEmm,"axG",@progbits,_ZN12FreeListSlabILm520ELm2EE11do_allocateEmm,comdat
	.align 2
	.p2align 4
	.weak	_ZN12FreeListSlabILm520ELm2EE11do_allocateEmm
	.type	_ZN12FreeListSlabILm520ELm2EE11do_allocateEmm, @function
_ZN12FreeListSlabILm520ELm2EE11do_allocateEmm:
.LFB8106:
	.cfi_startproc
# b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	cmpq	$520, %rsi	#, n
	ja	.L77	#,
# b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	movq	1072(%rdi), %rax	# this_6(D)->head_, _1
# b6_allocators.cpp:87:     if (n > BlockSize || !head_)
	testq	%rax, %rax	# _1
	je	.L77	#,
# b6_allocators.cpp:90:     head_ = b->next;
	movq	(%rax), %rdx	# _1->next, _2
# b6_allocators.cpp:90:     head_ = b->next;
	movq	%rdx, 1072(%rdi)	# _2, this_6(D)->head_
# b6_allocators.cpp:92:   }
	ret	
	.p2align 4,,10
	.p2align 3
.L77:
	movq	1080(%rdi), %rdi	# MEM[(struct memory_resource * *)this_6(D) + 1080B], _13
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rdi), %rax	# _13->_vptr.memory_resource, _13->_vptr.memory_resource
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	jmp	*16(%rax)	# MEM[(int (*) () *)_15 + 16B]
	.cfi_endproc
.LFE8106:
	.size	_ZN12FreeListSlabILm520ELm2EE11do_allocateEmm, .-_ZN12FreeListSlabILm520ELm2EE11do_allocateEmm
	.text
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0:
.LFB9041:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %r13	# __s, __s
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
# /usr/include/c++/16.1.1/bits/basic_string.h:245: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	leaq	16(%rdi), %r12	#, _2
# /usr/include/c++/16.1.1/bits/basic_string.h:730:       basic_string(const _CharT* __s, const _Alloc& __a = _Alloc())
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp	# this, this
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# /usr/include/c++/16.1.1/bits/basic_string.h:204: 	: allocator_type(__a), _M_p(__dat) { }
	movq	%r12, (%rdi)	# _2, MEM[(struct _Alloc_hider *)this_1(D)]._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:396: 	return __builtin_strlen(__s);
	movq	%rsi, %rdi	# __s,
	call	strlen@PLT	#
	movq	%rax, %rbx	#, tmp120
# /usr/include/c++/16.1.1/bits/basic_string.tcc:233: 	if (__dnew > size_type(_S_local_capacity))
	cmpq	$15, %rax	#, tmp120
	ja	.L88	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:454: 	if (__n == 1)
	cmpq	$1, %rax	#, tmp120
	je	.L89	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:426: 	if (__n == 0)
	testq	%rax, %rax	# tmp120
	jne	.L81	#,
.L83:
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movq	0(%rbp), %rax	# MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_1(D)]._M_dataplus._M_p
	movb	$0, (%rax,%rbx)	#, MEM[(char_type &)_18]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rbx, 8(%rbp)	# tmp120, *this_1(D)._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:739:       }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
.L89:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movzbl	0(%r13), %eax	# MEM[(const char_type &)__s_3(D)], MEM[(const char_type &)__s_3(D)]
	movb	%al, 16(%rbp)	# MEM[(const char_type &)__s_3(D)], MEM[(char_type &)this_1(D) + 16]
	jmp	.L83	#
.L88:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	leaq	1(%rax), %rdi	#, _22
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	%rbx, 16(%rbp)	# tmp120, *this_1(D).D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 0(%rbp)	# _2, *this_1(D)._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r12	# _2, _2
.L81:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%rbx, %rdx	# tmp120,
	movq	%r13, %rsi	# __s,
	movq	%r12, %rdi	# _2,
	call	memcpy@PLT	#
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L83	#
	.cfi_endproc
.LFE9041:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0
	.section	.text.unlikely
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.type	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor, @function
_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor:
.LFB6307:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6307
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movzwl	96(%rdi), %eax	# frame_ptr_15(D)->_Coro_resume_index, _1
	testb	$1, %al	#, _1
	je	.L91	#,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpw	$7, %ax	#, _1
	ja	.L115	#,
.L93:
.L99:
.L100:
.L101:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	subw	$1, 98(%rdi)	#, frame_ptr_15(D)->_Coro_frame_refcount
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	je	.L116	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L91:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpw	$4, %ax	#, _1
	je	.L94	#,
	ja	.L95	#,
	testw	%ax, %ax	# _1
	je	.L96	#,
.L97:
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	leaq	16(%rdi), %rax	#, tmp120
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movl	$4, %edx	#,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movb	$1, 101(%rdi)	#, frame_ptr_15(D)->_Coro_initial_await_resume_called
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	movq	%rax, 120(%rdi)	# tmp120, MEM[(struct PerformAwaitable *)frame_ptr_15(D) + 104B].abort_base_
# ../../effects.hpp:1123:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	leaq	_ZN2fx6detail12effect_tag_vI4TickEE(%rip), %rax	#, tmp134
	movq	%rax, 48(%rdi)	# tmp134, MEM[(struct promise_type &)frame_ptr_15(D) + 16].D.150337.D.143627.effect_tag
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	leaq	104(%rdi), %rax	#, tmp122
# ../../effects.hpp:491:     return a;
	movl	$0, 108(%rdi)	#, frame_ptr_15(D)->Aw0_2_3.result_
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movw	%dx, 96(%rdi)	#, frame_ptr_15(D)->_Coro_resume_index
# ../../effects.hpp:1121:     caller_ = caller;
	movq	%rdi, 112(%rdi)	# frame_ptr, MEM[(struct PerformAwaitable *)frame_ptr_15(D) + 104B].caller_._M_fr_ptr
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movq	%rax, 56(%rdi)	# tmp122, MEM[(struct promise_type &)frame_ptr_15(D) + 16].D.150337.D.143627.payload_ptr
	ret	
	.p2align 4,,10
	.p2align 3
.L116:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_15(D) + 64B]._M_exception_object
	je	.L102	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _37
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L102:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_15(D) + 32B]._M_manager, _40
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _40
	je	.L103	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _39
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _40
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L103:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpb	$0, 100(%rax)	#, frame_ptr_15(D)->_Coro_frame_needs_free
	jne	.L117	#,
.L98:
.L90:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L96:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movl	$2, %ecx	#,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	addw	$1, 98(%rdi)	#, frame_ptr_15(D)->_Coro_frame_refcount
	movb	$0, 101(%rdi)	#, frame_ptr_15(D)->_Coro_initial_await_resume_called
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movw	%cx, 96(%rdi)	#, frame_ptr_15(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L94:
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movl	108(%rdi), %eax	# MEM[(type &)frame_ptr_15(D) + 108], MEM[(type &)frame_ptr_15(D) + 108]
	movb	$1, 84(%rdi)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_15(D) + 84B]
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movq	$0, (%rdi)	#, frame_ptr_15(D)->_Coro_resume_fn
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movl	%eax, 80(%rdi)	# MEM[(type &)frame_ptr_15(D) + 108], MEM <int> [(struct promise_type *)frame_ptr_15(D) + 80B]
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movl	$6, %eax	#,
	movw	%ax, 96(%rdi)	#, frame_ptr_15(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L95:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpw	$6, %ax	#, _1
	je	.L101	#,
	jmp	.L92	#
	.p2align 4,,10
	.p2align 3
.L117:
	.cfi_def_cfa_offset 32
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_15(D) + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L104	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %r8	# mr_43->_vptr.memory_resource, mr_43->_vptr.memory_resource
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*24(%r8)	# MEM[(int (*) () *)_44 + 24B]
	jmp	.L90	#
	.p2align 4,,10
	.p2align 3
.L104:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB1:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE1:
.L115:
	jmp	.L92	#
	.section	.gcc_except_table
.LLSDA6307:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6307-.LLSDACSB6307
.LLSDACSB6307:
	.uleb128 .LEHB1-.LFB6307
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE6307:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6307
	.type	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor.cold, @function
_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor.cold:
.LFSB6307:
.L92:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ud2	
	.cfi_endproc
.LFE6307:
	.section	.gcc_except_table
.LLSDAC6307:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6307-.LLSDACSBC6307
.LLSDACSBC6307:
.LLSDACSEC6307:
	.section	.text.unlikely
	.text
	.size	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor, .-_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor
	.section	.text.unlikely
	.size	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor.cold, .-_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor.cold
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.p2align 4
	.type	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy, @function
_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy:
.LFB6308:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6308
	movzwl	96(%rdi), %eax	# frame_ptr_4(D)->_Coro_resume_index, _2
	orl	$1, %eax	#, _2
	movw	%ax, 96(%rdi)	# _2, frame_ptr_4(D)->_Coro_resume_index
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpw	$7, %ax	#, _2
	ja	.L126	#,
.L120:
.L121:
.L122:
.L123:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	subw	$1, 98(%rdi)	#, frame_ptr_4(D)->_Coro_frame_refcount
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	je	.L138	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L138:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_4(D) + 64B]._M_exception_object
	je	.L127	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _18
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L127:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_4(D) + 32B]._M_manager, _21
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _21
	je	.L128	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _20
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _21
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L128:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpb	$0, 100(%rax)	#, frame_ptr_4(D)->_Coro_frame_needs_free
	jne	.L139	#,
.L124:
.L118:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L139:
	.cfi_restore_state
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_4(D) + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L129	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %r8	# mr_24->_vptr.memory_resource, mr_24->_vptr.memory_resource
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*24(%r8)	# MEM[(int (*) () *)_25 + 24B]
	jmp	.L118	#
	.p2align 4,,10
	.p2align 3
.L129:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB2:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE2:
.L119:
	.section	.gcc_except_table
.LLSDA6308:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6308-.LLSDACSB6308
.LLSDACSB6308:
	.uleb128 .LEHB2-.LFB6308
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE6308:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6308
	.type	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy.cold, @function
_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy.cold:
.LFSB6308:
.L126:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	ud2	
	.cfi_endproc
.LFE6308:
	.section	.gcc_except_table
.LLSDAC6308:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6308-.LLSDACSBC6308
.LLSDACSBC6308:
.LLSDACSEC6308:
	.section	.text.unlikely
	.text
	.size	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy, .-_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy
	.section	.text.unlikely
	.size	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy.cold, .-_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy.cold
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4
	.type	_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy, @function
_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy:
.LFB6265:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6265
	movzwl	96(%rdi), %eax	# frame_ptr_4(D)->_Coro_resume_index, _2
	orl	$1, %eax	#, _2
	movw	%ax, 96(%rdi)	# _2, frame_ptr_4(D)->_Coro_resume_index
# b6_allocators.cpp:133: }
	cmpw	$7, %ax	#, _2
	ja	.L148	#,
.L142:
.L143:
.L144:
.L145:
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	subw	$1, 98(%rdi)	#, frame_ptr_4(D)->_Coro_frame_refcount
# b6_allocators.cpp:133: }
	je	.L160	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L160:
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_4(D) + 64B]._M_exception_object
	je	.L149	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _25
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L149:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_4(D) + 32B]._M_manager, _28
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _28
	je	.L150	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _27
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _28
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L150:
# b6_allocators.cpp:133: }
	cmpb	$0, 100(%rax)	#, frame_ptr_4(D)->_Coro_frame_needs_free
	jne	.L161	#,
.L146:
.L140:
# b6_allocators.cpp:133: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L161:
	.cfi_restore_state
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	152(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_4(D) + 152B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L151	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %r8	# mr_31->_vptr.memory_resource, mr_31->_vptr.memory_resource
	movl	$16, %ecx	#,
	movl	$160, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*24(%r8)	# MEM[(int (*) () *)_32 + 24B]
	jmp	.L140	#
	.p2align 4,,10
	.p2align 3
.L151:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$160, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b6_allocators.cpp:133: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB3:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE3:
.L141:
	.section	.gcc_except_table
.LLSDA6265:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6265-.LLSDACSB6265
.LLSDACSB6265:
	.uleb128 .LEHB3-.LFB6265
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE6265:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6265
	.type	_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy.cold, @function
_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy.cold:
.LFSB6265:
.L148:
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	ud2	
	.cfi_endproc
.LFE6265:
	.section	.gcc_except_table
.LLSDAC6265:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6265-.LLSDACSBC6265
.LLSDACSBC6265:
.LLSDACSEC6265:
	.section	.text.unlikely
	.text
	.size	_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy, .-_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy
	.section	.text.unlikely
	.size	_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy.cold, .-_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy.cold
.LCOLDE4:
	.text
.LHOTE4:
	.p2align 4
	.type	_ZL15make_batch_corov, @function
_ZL15make_batch_corov:
.LFB6240:
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
	je	.L163	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rbx), %rax	# mr_50->_vptr.memory_resource, mr_50->_vptr.memory_resource
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$160, %esi	#,
	movq	%rbx, %rdi	# mr,
	call	*16(%rax)	# MEM[(int (*) () *)_52 + 16B]
.L164:
.L165:
.L166:
.L167:
.L168:
.L169:
.L170:
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	movq	.LC7(%rip), %xmm0	#, _7
	leaq	_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.destroy(%rip), %rdx	#, tmp108
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rbx, 152(%rax)	# mr, MEM[(struct memory_resource * *)raw_56 + 152B]
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	movq	%rdx, %xmm1	# tmp108, tmp108
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rax), %rdx	#, tmp116
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	movb	$1, 100(%rax)	#, MEM[(struct _ZL15make_batch_corov.Frame *)raw_56]._Coro_frame_needs_free
	punpcklqdq	%xmm1, %xmm0	# tmp108, _7
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rax)	#, MEM[(struct PromiseAbortBase *)raw_56 + 16B].aborted
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	movups	%xmm0, (%rax)	# _7, MEM <vector(2) long unsigned int> [(void (*<T17379>) (struct _ZL15make_batch_corov.Frame *) *)raw_56]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp113
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	$0, 24(%rax)	#, MEM[(struct PromiseAbortBase *)raw_56 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rax)	#, MEM[(struct any *)raw_56 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 88(%rax)	#, MEM[(struct _Optional_payload_base *)raw_56 + 80B]._M_engaged
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rdx, 72(%rax)	# tmp116, MEM[(struct promise_type *)raw_56 + 16B].D.144678.D.143627.result_ptr
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, 40(%rax)	# tmp113, MEM <vector(2) long unsigned int> [(void *)raw_56 + 40B]
	movups	%xmm0, 56(%rax)	# tmp113, MEM <vector(2) long unsigned int> [(void *)raw_56 + 56B]
# ../../effects.hpp:521:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	movq	%rax, 0(%rbp)	# raw, MEM[(struct OwnedHandle *)_Coro_gro_14(D)].h._M_fr_ptr
# b6_allocators.cpp:127: static auto make_batch_coro() -> Tick::Fx<long long> {
	movb	$0, 101(%rax)	#, MEM[(struct _ZL15make_batch_corov.Frame *)raw_56]._Coro_initial_await_resume_called
# b6_allocators.cpp:133: }
	movl	$65538, 96(%rax)	#, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_56 + 96B]
# b6_allocators.cpp:133: }
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
.L163:
	.cfi_restore_state
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$160, %edi	#,
	call	_Znwm@PLT	#
	jmp	.L170	#
	.cfi_endproc
.LFE6240:
	.size	_ZL15make_batch_corov, .-_ZL15make_batch_corov
	.section	.text.unlikely._ZSt20__throw_bad_any_castv,"axG",@progbits,_ZSt20__throw_bad_any_castv,comdat
	.weak	_ZSt20__throw_bad_any_castv
	.type	_ZSt20__throw_bad_any_castv, @function
_ZSt20__throw_bad_any_castv:
.LFB65:
	.cfi_startproc
	pushq	%rax	#
	.cfi_def_cfa_offset 16
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp105
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	movq	%rcx, (%rax)	# tmp105, MEM[(struct bad_any_cast *)_3].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp103,
	call	__cxa_throw@PLT	#
	.cfi_endproc
.LFE65:
	.size	_ZSt20__throw_bad_any_castv, .-_ZSt20__throw_bad_any_castv
	.section	.rodata._Z12print_resultRK11BenchResult.str1.1,"aMS",@progbits,1
.LC8:
	.string	"  "
.LC9:
	.string	" "
.LC10:
	.string	" ns/iter\n"
	.section	.text._Z12print_resultRK11BenchResult,"axG",@progbits,_Z12print_resultRK11BenchResult,comdat
	.p2align 4
	.weak	_Z12print_resultRK11BenchResult
	.type	_Z12print_resultRK11BenchResult, @function
_Z12print_resultRK11BenchResult:
.LFB6228:
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
	js	.L175	#,
	pxor	%xmm1, %xmm1	# _25
	cvtsi2sdq	%rax, %xmm1	# r_2(D)->iters, _25
.L176:
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movsd	40(%rbx), %xmm0	# r_2(D)->total_ns, r_2(D)->total_ns
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	leaq	.LC8(%rip), %rsi	#,
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
	leaq	.LC9(%rip), %rsi	#,
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
	leaq	.LC10(%rip), %rsi	#,
	movq	%rax, %rdi	# _3,
# bench.hpp:52: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	.p2align 4,,10
	.p2align 3
.L175:
	.cfi_restore_state
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	movq	%rax, %rdx	# r_2(D)->iters, tmp131
	andl	$1, %eax	#, tmp132
	pxor	%xmm1, %xmm1	# tmp130
	shrq	%rdx	# tmp131
	orq	%rax, %rdx	# tmp132, tmp131
	cvtsi2sdq	%rdx, %xmm1	# tmp131, tmp130
	addsd	%xmm1, %xmm1	# tmp130, _25
	jmp	.L176	#
	.cfi_endproc
.LFE6228:
	.size	_Z12print_resultRK11BenchResult, .-_Z12print_resultRK11BenchResult
	.section	.rodata._ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_.str1.8,"aMS",@progbits,1
	.align 8
.LC11:
	.string	"fx: unhandled effect -- no matching handler installed"
	.section	.text._ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_,"axG",@progbits,_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_,comdat
	.align 2
	.p2align 4
	.weak	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_
	.type	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_, @function
_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_:
.LFB6843:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6843
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI4Tick12CountHandlerxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_(%rip), %rax	#, tmp196
# ../../effects.hpp:758:   auto run_push(H &h, Rest &...rest)
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$136, %rsp	#,
	.cfi_def_cfa_offset 160
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	.LC12(%rip), %xmm0	#, _121
# ../../effects.hpp:758:   auto run_push(H &h, Rest &...rest)
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], this
	movq	%rbx, 120(%rsp)	# this, D.203475
	movq	%rdi, %rbx	# this, this
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	leaq	64(%rsp), %rbp	#, tmp178
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%rsi, 80(%rsp)	# h, guard.node.real_handler_ptr
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	%rbp, %xmm1	# tmp178, tmp178
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%rax, 88(%rsp)	# tmp196, guard.node.dispatch
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 104(%rsp)	#, MEM[(struct HandlerNode *)&guard].on_return_any_fn
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	punpcklqdq	%xmm1, %xmm0	# tmp178, _121
	movaps	%xmm0, 64(%rsp)	# _121, MEM <vector(2) long unsigned int> [(const void * *)&guard]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.19_20
	movq	%rax, 112(%rsp)	# stack_top.19_20, guard.saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 96(%rsp)	# stack_top.19_20, guard.node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp178, stack_top
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	(%rbx), %rax	# MEM[(const struct coroutine_handle *)this_11(D)]._M_fr_ptr, _42
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rax, %rdi	# _42,
.LEHB4:
	call	*(%rax)	# MEM[(void (*<T123>) (void *) *)_42]
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	(%rbx), %rcx	# MEM[(const struct coroutine_handle *)this_11(D)]._M_fr_ptr, _47
	.p2align 4
	.p2align 3
.L188:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)prephitmp_118]
	je	.L222	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rcx), %rdx	# MEM[(struct promise_type &)prephitmp_118 + 16].D.144678.D.143627.effect_tag, _46
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	jne	.L184	#,
	jmp	.L180	#
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L182:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_99->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L180	#,
.L184:
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	#* n, _46
	jne	.L182	#,
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rcx), %rsi	# MEM[(struct promise_type &)prephitmp_118 + 16].D.144678.D.143627.payload_ptr, MEM[(struct promise_type &)prephitmp_118 + 16].D.144678.D.143627.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_68->dispatch
.LEHE4:
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	movq	(%rbx), %rcx	# MEM[(const struct coroutine_handle *)this_11(D)]._M_fr_ptr, _47
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rcx)	#, MEM[(struct promise_type &)_47 + 16].D.144678.D.143627.aborted
	je	.L188	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rcx)	# tmp178, MEM[(struct PromiseAbortBase *)_47 + 16B].abort_owner
	je	.L189	#,
# ../../effects.hpp:804:       return std::nullopt;
	pxor	%xmm0, %xmm0	# tmp171
	movaps	%xmm0, 32(%rsp)	# tmp171, MEM[(struct optional *)_107]
.L202:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	112(%rsp), %rax	# guard.saved, guard.saved
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# guard.saved, stack_top
# ../../effects.hpp:815:   }
	movq	32(%rsp), %rax	# MEM[(struct optional *)_107], MEM[(struct optional *)_107]
	movq	40(%rsp), %rdx	# MEM[(struct optional *)_107], MEM[(struct optional *)_107]
	movq	120(%rsp), %rcx	# D.203475, tmp191
	subq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp191
	jne	.L218	#,
	addq	$136, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L222:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rcx), %rax	# MEM[(const struct exception_ptr *)prephitmp_118 + 64B]._M_exception_object, _50
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _50
	jne	.L223	#,
	movq	80(%rcx), %rax	# MEM[(long long int &)prephitmp_118 + 80], MEM[(long long int &)prephitmp_118 + 80]
	movb	$1, 56(%rsp)	#, MEM <unsigned char> [(struct optional *)_10 + 8B]
	movq	%rax, 48(%rsp)	# MEM[(long long int &)prephitmp_118 + 80], MEM <long long int> [(struct optional *)_10]
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rcx)	#, MEM[(struct PromiseAbortBase *)prephitmp_118 + 16B].aborted
	je	.L195	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rcx)	# tmp178, MEM[(struct PromiseAbortBase *)prephitmp_118 + 16B].abort_owner
	je	.L189	#,
.L195:
# ../../effects.hpp:814:       return inner; // R == InnerR, move the optional as-is
	movdqa	48(%rsp), %xmm0	# MEM[(struct optional *)_10], MEM[(struct optional *)_10]
	movaps	%xmm0, 32(%rsp)	# MEM[(struct optional *)_10], MEM[(struct optional *)_107]
	jmp	.L202	#
.L189:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rcx), %rax	# MEM[(const struct any *)_111 + 32B]._M_manager, _59
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp164
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rcx)	#, MEM[(struct PromiseAbortBase *)_111 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp164, _59
	je	.L198	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _59
	je	.L206	#,
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	movq	%rcx, 8(%rsp)	# _47, %sfp
	leaq	32(%rcx), %rsi	#, _3
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	32(%rsp), %rdx	#, tmp165
	movl	$1, %edi	#,
	call	*%rax	# _59
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	32(%rsp), %rax	# MEM[(union _Arg *)_107]._M_typeinfo, _60
	movq	8(%rsp), %rcx	# %sfp, _47
.L199:
	movq	8(%rax), %rdi	# MEM[(const char * *)_61 + 8B], _65
	movq	8+_ZTIx(%rip), %rsi	# MEM[(const char * *)&_ZTIx + 8B], _66
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _66, _65
	je	.L198	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_65
	je	.L200	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	xorl	%eax, %eax	# tmp179
	cmpb	$42, (%rsi)	#, *_66
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	movq	%rcx, 8(%rsp)	# _47, %sfp
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	sete	%al	#, tmp179
	addq	%rax, %rsi	# tmp179, _66
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	movq	8(%rsp), %rcx	# %sfp, _47
	testl	%eax, %eax	# _73
	je	.L198	#,
.L200:
# /usr/include/c++/16.1.1/any:517:       __throw_bad_any_cast();
	movq	120(%rsp), %rax	# D.203475, tmp190
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp190
	jne	.L218	#,
.LEHB5:
	call	_ZSt20__throw_bad_any_castv	#
.LEHE5:
	.p2align 4,,10
	.p2align 3
.L198:
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	movq	40(%rcx), %rax	# MEM[(type &)_111 + 40], MEM[(type &)_111 + 40]
	movb	$1, 40(%rsp)	#, MEM <unsigned char> [(struct optional *)_107 + 8B]
	movq	%rax, 32(%rsp)	# MEM[(type &)_111 + 40], MEM <long long int> [(struct optional *)_107]
	jmp	.L202	#
.L206:
# /usr/include/c++/16.1.1/any:341: 	return typeid(void);
	leaq	_ZTIv(%rip), %rax	#, _60
	jmp	.L199	#
.L180:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# _58,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %rbp	#, _58
.LEHB6:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE6:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	120(%rsp), %rax	# D.203475, tmp188
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp188
	je	.L185	#,
.L218:
# ../../effects.hpp:815:   }
	call	__stack_chk_fail@PLT	#
.L223:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	48(%rsp), %rdi	#, tmp197
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 48(%rsp)	# _50, MEM[(struct exception_ptr *)_10]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	120(%rsp), %rax	# D.203475, tmp189
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp189
	jne	.L218	#,
	leaq	48(%rsp), %rdi	#, tmp198
.LEHB7:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE7:
.L208:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	movq	%rax, %rbx	#, tmp185
	jmp	.L196	#
.L207:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbx	# tmp187, tmp151
	jmp	.L187	#
.L196:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 48(%rsp)	#, MEM[(struct exception_ptr *)_10]._M_exception_object
	je	.L187	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	48(%rsp), %rdi	#, tmp199
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L187:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	112(%rsp), %rax	# guard.saved, guard.saved
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# guard.saved, stack_top
	movq	120(%rsp), %rax	# D.203475, tmp192
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp192
	jne	.L218	#,
	movq	%rbx, %rdi	# tmp151,
.LEHB8:
	call	_Unwind_Resume@PLT	#
.LEHE8:
.L185:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%rbp, %rdi	# _58,
.LEHB9:
	call	__cxa_throw@PLT	#
.LEHE9:
.L209:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %rbx	#, tmp184
.L186:
	movq	%rbp, %rdi	# _58,
	call	__cxa_free_exception@PLT	#
	jmp	.L187	#
	.cfi_endproc
.LFE6843:
	.section	.gcc_except_table._ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_,"aG",@progbits,_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_,comdat
.LLSDA6843:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6843-.LLSDACSB6843
.LLSDACSB6843:
	.uleb128 .LEHB4-.LFB6843
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L207-.LFB6843
	.uleb128 0
	.uleb128 .LEHB5-.LFB6843
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L207-.LFB6843
	.uleb128 0
	.uleb128 .LEHB6-.LFB6843
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L209-.LFB6843
	.uleb128 0
	.uleb128 .LEHB7-.LFB6843
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L208-.LFB6843
	.uleb128 0
	.uleb128 .LEHB8-.LFB6843
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB6843
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L207-.LFB6843
	.uleb128 0
.LLSDACSE6843:
	.section	.text._ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_,"axG",@progbits,_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_,comdat
	.size	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_, .-_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_
	.section	.text._ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_,"axG",@progbits,_ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_,comdat
	.align 2
	.p2align 4
	.weak	_ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_
	.type	_ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_, @function
_ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_:
.LFB6922:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6922
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_(%rip), %rax	#, tmp196
# ../../effects.hpp:758:   auto run_push(H &h, Rest &...rest)
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$104, %rsp	#,
	.cfi_def_cfa_offset 128
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	.LC12(%rip), %xmm0	#, _121
# ../../effects.hpp:758:   auto run_push(H &h, Rest &...rest)
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], this
	movq	%rbx, 88(%rsp)	# this, D.203530
	movq	%rdi, %rbx	# this, this
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	leaq	32(%rsp), %rbp	#, tmp178
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%rsi, 48(%rsp)	# h, guard.node.real_handler_ptr
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movq	%rbp, %xmm1	# tmp178, tmp178
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%rax, 56(%rsp)	# tmp196, guard.node.dispatch
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 72(%rsp)	#, MEM[(struct HandlerNode *)&guard].on_return_any_fn
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	punpcklqdq	%xmm1, %xmm0	# tmp178, _121
	movaps	%xmm0, 32(%rsp)	# _121, MEM <vector(2) long unsigned int> [(const void * *)&guard]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.67_20
	movq	%rax, 80(%rsp)	# stack_top.67_20, guard.saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 64(%rsp)	# stack_top.67_20, guard.node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp178, stack_top
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	(%rbx), %rax	# MEM[(const struct coroutine_handle *)this_11(D)]._M_fr_ptr, _42
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rax, %rdi	# _42,
.LEHB10:
	call	*(%rax)	# MEM[(void (*<T123>) (void *) *)_42]
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	(%rbx), %rcx	# MEM[(const struct coroutine_handle *)this_11(D)]._M_fr_ptr, _47
	.p2align 4
	.p2align 3
.L234:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)prephitmp_118]
	je	.L268	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rcx), %rdx	# MEM[(struct promise_type &)prephitmp_118 + 16].D.150337.D.143627.effect_tag, _46
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	jne	.L230	#,
	jmp	.L226	#
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L228:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_99->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L226	#,
.L230:
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	#* n, _46
	jne	.L228	#,
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rcx), %rsi	# MEM[(struct promise_type &)prephitmp_118 + 16].D.150337.D.143627.payload_ptr, MEM[(struct promise_type &)prephitmp_118 + 16].D.150337.D.143627.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_68->dispatch
.LEHE10:
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	movq	(%rbx), %rcx	# MEM[(const struct coroutine_handle *)this_11(D)]._M_fr_ptr, _47
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rcx)	#, MEM[(struct promise_type &)_47 + 16].D.150337.D.143627.aborted
	je	.L234	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rcx)	# tmp178, MEM[(struct PromiseAbortBase *)_47 + 16B].abort_owner
	je	.L235	#,
# ../../effects.hpp:804:       return std::nullopt;
	movq	$0, 16(%rsp)	#, MEM[(struct optional *)_107]
.L248:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	80(%rsp), %rax	# guard.saved, guard.saved
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# guard.saved, stack_top
# ../../effects.hpp:815:   }
	movq	16(%rsp), %rax	# MEM[(struct optional *)_107], MEM[(struct optional *)_107]
	movq	88(%rsp), %rdx	# D.203530, tmp191
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp191
	jne	.L264	#,
	addq	$104, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L268:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rcx), %rax	# MEM[(const struct exception_ptr *)prephitmp_118 + 64B]._M_exception_object, _50
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _50
	jne	.L269	#,
	movl	80(%rcx), %eax	# MEM[(int &)prephitmp_118 + 80], MEM[(int &)prephitmp_118 + 80]
	movb	$1, 28(%rsp)	#, MEM <unsigned char> [(struct optional *)_10 + 4B]
	movl	%eax, 24(%rsp)	# MEM[(int &)prephitmp_118 + 80], MEM <int> [(struct optional *)_10]
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rcx)	#, MEM[(struct PromiseAbortBase *)prephitmp_118 + 16B].aborted
	je	.L241	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rcx)	# tmp178, MEM[(struct PromiseAbortBase *)prephitmp_118 + 16B].abort_owner
	je	.L235	#,
.L241:
# ../../effects.hpp:814:       return inner; // R == InnerR, move the optional as-is
	movq	24(%rsp), %rax	# MEM[(struct optional *)_10], MEM[(struct optional *)_10]
	movq	%rax, 16(%rsp)	# MEM[(struct optional *)_10], MEM[(struct optional *)_107]
	jmp	.L248	#
.L235:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rcx), %rax	# MEM[(const struct any *)_111 + 32B]._M_manager, _59
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp164
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rcx)	#, MEM[(struct PromiseAbortBase *)_111 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp164, _59
	je	.L244	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _59
	je	.L252	#,
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	movq	%rcx, 8(%rsp)	# _47, %sfp
	leaq	32(%rcx), %rsi	#, _3
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	16(%rsp), %rdx	#, tmp165
	movl	$1, %edi	#,
	call	*%rax	# _59
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	16(%rsp), %rax	# MEM[(union _Arg *)_107]._M_typeinfo, _60
	movq	8(%rsp), %rcx	# %sfp, _47
.L245:
	movq	8(%rax), %rdi	# MEM[(const char * *)_61 + 8B], _65
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _66
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _66, _65
	je	.L244	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_65
	je	.L246	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	xorl	%eax, %eax	# tmp179
	cmpb	$42, (%rsi)	#, *_66
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	movq	%rcx, 8(%rsp)	# _47, %sfp
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	sete	%al	#, tmp179
	addq	%rax, %rsi	# tmp179, _66
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	movq	8(%rsp), %rcx	# %sfp, _47
	testl	%eax, %eax	# _73
	je	.L244	#,
.L246:
# /usr/include/c++/16.1.1/any:517:       __throw_bad_any_cast();
	movq	88(%rsp), %rax	# D.203530, tmp190
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp190
	jne	.L264	#,
.LEHB11:
	call	_ZSt20__throw_bad_any_castv	#
.LEHE11:
	.p2align 4,,10
	.p2align 3
.L244:
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	movl	40(%rcx), %eax	# MEM[(type &)_111 + 40], MEM[(type &)_111 + 40]
	movb	$1, 20(%rsp)	#, MEM <unsigned char> [(struct optional *)_107 + 4B]
	movl	%eax, 16(%rsp)	# MEM[(type &)_111 + 40], MEM <int> [(struct optional *)_107]
	jmp	.L248	#
.L252:
# /usr/include/c++/16.1.1/any:341: 	return typeid(void);
	leaq	_ZTIv(%rip), %rax	#, _60
	jmp	.L245	#
.L226:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# _58,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %rbp	#, _58
.LEHB12:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE12:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	88(%rsp), %rax	# D.203530, tmp188
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp188
	je	.L231	#,
.L264:
# ../../effects.hpp:815:   }
	call	__stack_chk_fail@PLT	#
.L269:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	24(%rsp), %rdi	#, tmp197
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 24(%rsp)	# _50, MEM[(struct exception_ptr *)_10]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	88(%rsp), %rax	# D.203530, tmp189
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp189
	jne	.L264	#,
	leaq	24(%rsp), %rdi	#, tmp198
.LEHB13:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE13:
.L254:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	movq	%rax, %rbx	#, tmp185
	jmp	.L242	#
.L253:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbx	# tmp187, tmp151
	jmp	.L233	#
.L242:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 24(%rsp)	#, MEM[(struct exception_ptr *)_10]._M_exception_object
	je	.L233	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	24(%rsp), %rdi	#, tmp199
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L233:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	80(%rsp), %rax	# guard.saved, guard.saved
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# guard.saved, stack_top
	movq	88(%rsp), %rax	# D.203530, tmp192
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp192
	jne	.L264	#,
	movq	%rbx, %rdi	# tmp151,
.LEHB14:
	call	_Unwind_Resume@PLT	#
.LEHE14:
.L231:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%rbp, %rdi	# _58,
.LEHB15:
	call	__cxa_throw@PLT	#
.LEHE15:
.L255:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %rbx	#, tmp184
.L232:
	movq	%rbp, %rdi	# _58,
	call	__cxa_free_exception@PLT	#
	jmp	.L233	#
	.cfi_endproc
.LFE6922:
	.section	.gcc_except_table._ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_,"aG",@progbits,_ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_,comdat
.LLSDA6922:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6922-.LLSDACSB6922
.LLSDACSB6922:
	.uleb128 .LEHB10-.LFB6922
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L253-.LFB6922
	.uleb128 0
	.uleb128 .LEHB11-.LFB6922
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L253-.LFB6922
	.uleb128 0
	.uleb128 .LEHB12-.LFB6922
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L255-.LFB6922
	.uleb128 0
	.uleb128 .LEHB13-.LFB6922
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L254-.LFB6922
	.uleb128 0
	.uleb128 .LEHB14-.LFB6922
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB6922
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L253-.LFB6922
	.uleb128 0
.LLSDACSE6922:
	.section	.text._ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_,"axG",@progbits,_ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_,comdat
	.size	_ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_, .-_ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.str1.1,"aMS",@progbits,1
.LC13:
	.string	"basic_string::_M_create"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
.LFB7657:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# /usr/include/c++/16.1.1/bits/basic_string.h:256: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	16(%rdi), %rax	#, _26
# /usr/include/c++/16.1.1/bits/basic_string.tcc:388:     basic_string<_CharT, _Traits, _Alloc>::
	movq	%rsi, %r15	# __pos, __pos
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
	movq	%rdi, %rbp	# this, this
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# /usr/include/c++/16.1.1/bits/basic_string.tcc:394:       size_type __new_capacity = length() + __len2 - __len1;
	movq	%r8, %rbx	# __len2, _60
	subq	%rdx, %rbx	# __len1, _60
# /usr/include/c++/16.1.1/bits/basic_string.tcc:388:     basic_string<_CharT, _Traits, _Alloc>::
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	8(%rdi), %r13	# MEM[(const struct basic_string *)this_17(D)]._M_string_length, __sz
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	(%rdi), %r12	# MEM[(const struct basic_string *)this_17(D)]._M_dataplus._M_p, _28
# /usr/include/c++/16.1.1/bits/basic_string.h:256: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	movq	%rax, (%rsp)	# _26, %sfp
# /usr/include/c++/16.1.1/bits/basic_string.tcc:394:       size_type __new_capacity = length() + __len2 - __len1;
	addq	%r13, %rbx	# __sz, __new_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rax	# _28, _26
	je	.L301	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	movabsq	$9223372036854775806, %rsi	#, tmp130
# /usr/include/c++/16.1.1/bits/basic_string.h:1303: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	movq	16(%rdi), %rax	# MEM[(const struct basic_string *)this_17(D)].D.58684._M_allocated_capacity, __sz
# /usr/include/c++/16.1.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmpq	%rbx, %rsi	# __new_capacity, tmp130
	jb	.L272	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	leaq	1(%rbx), %rdi	#, _23
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rbx, %rax	# __new_capacity, __sz
	jnb	.L273	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	addq	%rax, %rax	# _52
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rax, %rbx	# _52, __new_capacity
	jnb	.L273	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	leaq	1(%rax), %rdi	#, _23
# /usr/include/c++/16.1.1/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	movq	%rax, %rbx	# _52, __new_capacity
# /usr/include/c++/16.1.1/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	cmpq	%rax, %rsi	# _52, tmp130
	jnb	.L273	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movabsq	$9223372036854775807, %rdi	#, _23
# /usr/include/c++/16.1.1/bits/basic_string.tcc:159: 	    __capacity = max_size();
	movq	%rsi, %rbx	# tmp130, __new_capacity
	.p2align 4
	.p2align 3
.L273:
	leaq	(%r15,%rdx), %rax	#, _66
	movq	%r8, 16(%rsp)	# __len2, %sfp
	movq	%rcx, 8(%rsp)	# __s, %sfp
# /usr/include/c++/16.1.1/bits/basic_string.tcc:392:       const size_type __how_much = length() - __pos - __len1;
	subq	%rax, %r13	# _66, __how_much
	movq	%rax, 24(%rsp)	# _66, %sfp
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.tcc:397:       if (__pos)
	testq	%r15, %r15	# __pos
	movq	8(%rsp), %rcx	# %sfp, __s
	movq	16(%rsp), %r8	# %sfp, __len2
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r14	#, _59
# /usr/include/c++/16.1.1/bits/basic_string.tcc:397:       if (__pos)
	je	.L278	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:454: 	if (__n == 1)
	cmpq	$1, %r15	#, __pos
	je	.L302	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r15, %rdx	# __pos,
	movq	%r12, %rsi	# _28,
	movq	%rax, %rdi	# _59,
	movq	%r8, 16(%rsp)	# __len2, %sfp
	movq	%rcx, 8(%rsp)	# __s, %sfp
	call	memcpy@PLT	#
	movq	16(%rsp), %r8	# %sfp, __len2
	movq	8(%rsp), %rcx	# %sfp, __s
.L278:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:399:       if (__s && __len2)
	testq	%rcx, %rcx	# __s
	je	.L280	#,
	testq	%r8, %r8	# __len2
	je	.L280	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:400: 	this->_S_copy(__r + __pos, __s, __len2);
	leaq	(%r14,%r15), %rdi	#, _7
# /usr/include/c++/16.1.1/bits/basic_string.h:454: 	if (__n == 1)
	cmpq	$1, %r8	#, __len2
	je	.L303	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r8, %rdx	# __len2,
	movq	%rcx, %rsi	# __s,
	movq	%r8, 8(%rsp)	# __len2, %sfp
	call	memcpy@PLT	#
	movq	8(%rsp), %r8	# %sfp, __len2
.L280:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:401:       if (__how_much)
	testq	%r13, %r13	# __how_much
	jne	.L304	#,
.L282:
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, (%rsp)	# _28, %sfp
	je	.L284	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	16(%rbp), %rax	# this_17(D)->D.58684._M_allocated_capacity, tmp171
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# _28,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	leaq	1(%rax), %rsi	#, _39
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L284:
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r14, 0(%rbp)	# _59, this_17(D)->_M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	%rbx, 16(%rbp)	# __new_capacity, this_17(D)->D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.tcc:408:     }
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
	.p2align 4,,10
	.p2align 3
.L304:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/basic_string.tcc:403: 		      _M_data() + __pos + __len1, __how_much);
	movq	24(%rsp), %rsi	# %sfp, _66
# /usr/include/c++/16.1.1/bits/basic_string.tcc:402: 	this->_S_copy(__r + __pos + __len2,
	leaq	(%r15,%r8), %rdi	#, _10
# /usr/include/c++/16.1.1/bits/basic_string.tcc:402: 	this->_S_copy(__r + __pos + __len2,
	addq	%r14, %rdi	# _59, _11
# /usr/include/c++/16.1.1/bits/basic_string.tcc:403: 		      _M_data() + __pos + __len1, __how_much);
	addq	%r12, %rsi	# _28, _66
# /usr/include/c++/16.1.1/bits/basic_string.h:454: 	if (__n == 1)
	cmpq	$1, %r13	#, __how_much
	je	.L305	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r13, %rdx	# __how_much,
	call	memcpy@PLT	#
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L282	#
	.p2align 4,,10
	.p2align 3
.L301:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	movabsq	$9223372036854775806, %rax	#, tmp128
	cmpq	%rbx, %rax	# __new_capacity, tmp128
	jb	.L272	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	leaq	-16(%rbx), %rax	#, _58
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	leaq	1(%rbx), %rdi	#, _23
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	$13, %rax	#, _58
	ja	.L273	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	movl	$30, %ebx	#, __new_capacity
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movl	$31, %edi	#, _23
	jmp	.L273	#
	.p2align 4,,10
	.p2align 3
.L302:
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movzbl	(%r12), %eax	# MEM[(const char_type &)_28], _31
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	%al, (%r14)	# _31, MEM[(char_type &)_59]
	jmp	.L278	#
	.p2align 4,,10
	.p2align 3
.L303:
	movzbl	(%rcx), %eax	# MEM[(const char_type &)__s_27(D)], MEM[(const char_type &)__s_27(D)]
	movb	%al, (%rdi)	# MEM[(const char_type &)__s_27(D)], MEM[(char_type &)_7]
# /usr/include/c++/16.1.1/bits/basic_string.tcc:401:       if (__how_much)
	testq	%r13, %r13	# __how_much
	je	.L282	#,
	jmp	.L304	#
	.p2align 4,,10
	.p2align 3
.L305:
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movzbl	(%rsi), %eax	# MEM[(const char_type &)_9], _34
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	%al, (%rdi)	# _34, MEM[(char_type &)_11]
	jmp	.L282	#
.L272:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	leaq	.LC13(%rip), %rdi	#,
	call	_ZSt20__throw_length_errorPKc@PLT	#
	.cfi_endproc
.LFE7657:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"\n=== "
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC15:
	.string	"b6 \342\200\224 Coroutine frame allocator strategies"
	.section	.rodata.str1.1
.LC16:
	.string	" ===\n"
.LC17:
	.string	"  Frame estimate     : "
.LC18:
	.string	" bytes\n"
.LC19:
	.string	"  Arena budget       : "
.LC20:
	.string	" KiB\n"
.LC21:
	.string	"  Batch              : "
.LC22:
	.string	" performs (zero-alloc) \303\227 "
.LC23:
	.string	" coroutines\n"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"  Note: per-perform payload allocation eliminated;\n"
	.align 8
.LC25:
	.string	"        only coroutine frame allocation is benchmarked.\n"
	.section	.rodata.str1.1
.LC26:
	.string	"Batch cost (per-coroutine ns)"
.LC27:
	.string	"1. Default new/delete"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"2. Monotonic (heap buf, reset/iter)"
	.align 8
.LC31:
	.string	"3. Monotonic (static buf, reset/iter)"
	.section	.rodata.str1.1
.LC33:
	.string	"4. PMR pool (steady-state)"
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"5. Free-list slab (O(1), no vdispatch)"
	.section	.rodata.str1.1
.LC36:
	.string	"Per-perform cost (\303\267 "
.LC37:
	.string	")"
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"  Per-perform payload alloc: ZERO (stored in coroutine frame)\n"
	.align 8
.LC39:
	.string	"  (Divide per-coroutine ns above by "
	.align 8
.LC40:
	.string	" for residual per-perform overhead.)\n"
	.align 8
.LC41:
	.string	"Single-perform coroutine (worst-case frame amortisation)"
	.section	.rodata.str1.1
.LC42:
	.string	"1s. Default"
.LC45:
	.string	"4s. PMR pool"
.LC46:
	.string	"5s. Free-list slab"
	.section	.text.unlikely
.LCOLDB49:
	.section	.text.startup,"ax",@progbits
.LHOTB49:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB6266:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6266
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC14(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# b6_allocators.cpp:137: int main() {
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
# b6_allocators.cpp:149:   print_result(bench("1. Default new/delete", REPS, [&] {
	movl	$3, %ebp	#, ivtmp_1568
# b6_allocators.cpp:137: int main() {
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$664, %rsp	#,
	.cfi_def_cfa_offset 720
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B],
	movq	%rdx, 648(%rsp)	#, D.204940
	movl	$5, %edx	#,
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	leaq	480(%rsp), %r15	#, tmp1724
.LEHB16:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/string_view:780:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	movl	$43, %edx	#,
	leaq	.LC15(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC16(%rip), %rsi	#,
	movq	%rax, %rdi	# _604,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$23, %edx	#,
	leaq	.LC17(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:179:       { return _M_insert(__n); }
	movl	$512, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSo9_M_insertImEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$7, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rax, %rdi	# _171,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$23, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:179:       { return _M_insert(__n); }
	movl	$64, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSo9_M_insertImEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC20(%rip), %rsi	#,
	movq	%rax, %rdi	# _176,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$23, %edx	#,
	leaq	.LC21(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b6_allocators.cpp:141:   std::cout << "  Batch              : " << BATCH << " performs (zero-alloc) × "
	movl	$5000, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEi@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$26, %edx	#,
	leaq	.LC22(%rip), %rsi	#,
# b6_allocators.cpp:141:   std::cout << "  Batch              : " << BATCH << " performs (zero-alloc) × "
	movq	%rax, %rbx	#, _31
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movq	%rax, %rdi	# _31,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b6_allocators.cpp:142:             << REPS << " coroutines\n";
	movl	$2000, %esi	#,
	movq	%rbx, %rdi	# _31,
	call	_ZNSolsEi@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$12, %edx	#,
	leaq	.LC23(%rip), %rsi	#,
	movq	%rax, %rdi	# _33,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$51, %edx	#,
	leaq	.LC24(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$56, %edx	#,
	leaq	.LC25(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$5, %edx	#,
	leaq	.LC14(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/string_view:780:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	movl	$29, %edx	#,
	leaq	.LC26(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC16(%rip), %rsi	#,
	movq	%rax, %rdi	# _592,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b6_allocators.cpp:149:   print_result(bench("1. Default new/delete", REPS, [&] {
	leaq	.LC27(%rip), %rsi	#,
	leaq	560(%rsp), %rdi	#, tmp1925
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE16:
	.p2align 4
	.p2align 3
.L310:
# b6_allocators.cpp:150:     CountHandler h;
	movl	$0, 480(%rsp)	#, MEM[(struct CountHandler *)_1896]
# b6_allocators.cpp:151:     do_not_optimize(make_batch_coro().run(h));
	leaq	88(%rsp), %rdi	#, tmp1926
.LEHB17:
	call	_ZL15make_batch_corov	#
.LEHE17:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	movq	%r15, %rsi	# tmp1724,
	leaq	88(%rsp), %rdi	#, tmp1927
	movq	88(%rsp), %rbx	# MEM[(struct Fx *)&D.203892], SR.746
.LEHB18:
	call	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE18:
	movq	%rax, 192(%rsp)	# tmp1867, D.203894
	movq	%rdx, 200(%rsp)	# tmp1868, D.203894
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.746
	je	.L307	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.746,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.746_1485 + 8B]
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %rbp	#, ivtmp_1568
	jne	.L310	#,
.L309:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$2000, %r12d	#, ivtmp_1548
	movq	%rax, %rbp	#, start
	.p2align 4
	.p2align 3
.L317:
# b6_allocators.cpp:150:     CountHandler h;
	movl	$0, 480(%rsp)	#, MEM[(struct CountHandler *)_1896]
# b6_allocators.cpp:151:     do_not_optimize(make_batch_coro().run(h));
	leaq	96(%rsp), %rdi	#, tmp1929
.LEHB19:
	call	_ZL15make_batch_corov	#
.LEHE19:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	movq	%r15, %rsi	# tmp1724,
	leaq	96(%rsp), %rdi	#, tmp1930
	movq	96(%rsp), %rbx	# MEM[(struct Fx *)&D.203901], SR.747
.LEHB20:
	call	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE20:
	movq	%rax, 208(%rsp)	# tmp1869, D.203903
	movq	%rdx, 216(%rsp)	# tmp1870, D.203903
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.747
	je	.L314	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.747,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.747_1484 + 8B]
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r12	#, ivtmp_1548
	jne	.L317	#,
.L316:
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	608(%rsp), %rcx	#, tmp1932
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	576(%rsp), %rsi	#, tmp1683
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	568(%rsp), %rdx	# MEM[(const struct basic_string *)_1987]._M_string_length, pretmp_879
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 592(%rsp)	# tmp1932, MEM[(struct _Alloc_hider *)_106]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rcx	# MEM[(const struct basic_string *)_1987]._M_dataplus._M_p, _644
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	movq	%rsi, 24(%rsp)	# tmp1683, %sfp
	cmpq	%rsi, %rcx	# tmp1683, _644
	je	.L849	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 592(%rsp)	# _644, MEM[(struct basic_string *)_106]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	576(%rsp), %rcx	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity
	movq	%rcx, 608(%rsp)	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity
	movq	%rsi, %rcx	# tmp1683, tmp1683
.L321:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbp, %rax	# start, _586
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp731
# b6_allocators.cpp:149:   print_result(bench("1. Default new/delete", REPS, [&] {
	leaq	592(%rsp), %rdi	#, tmp1938
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 600(%rsp)	# pretmp_879, MEM[(struct basic_string *)_106]._M_string_length
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _586, tmp731
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 560(%rsp)	# tmp1683, MEM[(struct basic_string *)_1987]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 576(%rsp)	#, MEM[(char_type &)_1987 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 568(%rsp)	#, MEM[(struct basic_string *)_1987]._M_string_length
# bench.hpp:44: }
	movq	$2000, 624(%rsp)	#, MEM[(struct BenchResult *)_106].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 632(%rsp)	# tmp731, MEM[(struct BenchResult *)_106].total_ns
.LEHB21:
# b6_allocators.cpp:149:   print_result(bench("1. Default new/delete", REPS, [&] {
	call	_Z12print_resultRK11BenchResult	#
.LEHE21:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _97
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp1939
	cmpq	%rax, %rdi	# tmp1939, _97
	je	.L322	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp1940
	leaq	1(%rax), %rsi	#, _71
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L322:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _135
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _135
	je	.L323	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp1942
	leaq	1(%rax), %rsi	#, _119
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L323:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$66056, %edi	#,
.LEHB22:
	call	_Znwm@PLT	#
.LEHE22:
# /usr/include/c++/16.1.1/bits/stl_algobase.h:949: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	xorl	%esi, %esi	#
	movl	$66055, %edx	#,
# /usr/include/c++/16.1.1/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	movb	$0, (%rax)	#, *_659
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:946: 	      ++__first;
	leaq	1(%rax), %rdi	#, __first_662
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r13	# prephitmp_1221, prephitmp_1221
# /usr/include/c++/16.1.1/bits/stl_vector.h:409: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	66056(%rax), %rbx	#, prephitmp_1183
# /usr/include/c++/16.1.1/bits/stl_vector.h:407: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	%rax, 416(%rsp)	# prephitmp_1221, MEM[(struct _Vector_base *)_487]._M_impl.D.147938._M_start
# /usr/include/c++/16.1.1/bits/stl_vector.h:409: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%rbx, 432(%rsp)	# prephitmp_1183, MEM[(struct _Vector_base *)_487]._M_impl.D.147938._M_end_of_storage
# /usr/include/c++/16.1.1/bits/stl_algobase.h:949: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	call	memset@PLT	#
# b6_allocators.cpp:157:     print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
	leaq	.LC28(%rip), %rsi	#,
	leaq	560(%rsp), %rdi	#, tmp1943
# /usr/include/c++/16.1.1/bits/stl_vector.h:2000: 	this->_M_impl._M_finish =
	movq	%rbx, 424(%rsp)	# prephitmp_1183, MEM[(struct vector *)_487].D.148644._M_impl.D.147938._M_finish
.LEHB23:
# b6_allocators.cpp:157:     print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE23:
# b6_allocators.cpp:159:           buf.data(), buf.size(), std::pmr::null_memory_resource()};
	call	_ZNSt3pmr20null_memory_resourceEv@PLT	#
	movl	$3, %r12d	#, ivtmp_1550
# /usr/include/c++/16.1.1/memory_resource:455:       return __buffer_size * _S_growth_factor;
	movabsq	$-9223372036854775808, %r14	#, tmp1722
# b6_allocators.cpp:159:           buf.data(), buf.size(), std::pmr::null_memory_resource()};
	movq	%rax, %rbp	#, _683
	jmp	.L329	#
.L850:
# /usr/include/c++/16.1.1/memory_resource:455:       return __buffer_size * _S_growth_factor;
	cvttss2siq	%xmm0, %rdx	# _690, tmp754
	movq	%rdx, 504(%rsp)	# tmp754, MEM[(struct monotonic_buffer_resource *)_1896]._M_next_bufsiz
.L325:
# /usr/include/c++/16.1.1/memory_resource:363:       _M_upstream(__upstream),
	movq	%rbp, 512(%rsp)	# _683, MEM[(struct monotonic_buffer_resource *)_1896]._M_upstream
# b6_allocators.cpp:162:       do_not_optimize(make_batch_coro().run(h));
	leaq	104(%rsp), %rdi	#, tmp1946
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%r13, 520(%rsp)	# prephitmp_1221, MEM[(struct monotonic_buffer_resource *)_1896]._M_orig_buf
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%rax, 528(%rsp)	# _682, MEM[(struct monotonic_buffer_resource *)_1896]._M_orig_size
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	$0, 536(%rsp)	#, MEM[(struct monotonic_buffer_resource *)_1896]._M_head
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %r13	# current_mr, current_mr.84_692
# ../../effects.hpp:693:     detail::current_mr = mr;
	movq	%r15, %fs:_ZN2fx6detail10current_mrE@tpoff	# tmp1724, current_mr
# b6_allocators.cpp:161:       CountHandler h;
	movl	$0, 352(%rsp)	#, MEM[(struct CountHandler *)_86]
.LEHB24:
# b6_allocators.cpp:162:       do_not_optimize(make_batch_coro().run(h));
	call	_ZL15make_batch_corov	#
.LEHE24:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	leaq	352(%rsp), %rsi	#, tmp1947
	leaq	104(%rsp), %rdi	#, tmp1948
	movq	104(%rsp), %rbx	# MEM[(struct Fx *)&D.203944], SR.748
.LEHB25:
	call	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE25:
	movq	%rax, 224(%rsp)	# tmp1871, D.203946
	movq	%rdx, 232(%rsp)	# tmp1872, D.203946
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.748
	je	.L326	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.748,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.748_869 + 8B]
.L326:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%r13, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_692, current_mr
# b6_allocators.cpp:163:     }));
	movq	%r15, %rdi	# tmp1724,
	call	_ZNSt3pmr25monotonic_buffer_resourceD1Ev@PLT	#
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r12	#, ivtmp_1550
	je	.L328	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:1386:       { return _M_data_ptr(this->_M_impl._M_start); }
	movq	416(%rsp), %r13	# MEM[(struct vector *)_487].D.148644._M_impl.D.147938._M_start, prephitmp_1221
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	424(%rsp), %rbx	# MEM[(struct vector *)_487].D.148644._M_impl.D.147938._M_finish, prephitmp_1183
.L329:
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rbx, %rax	# prephitmp_1183, prephitmp_1183
# /usr/include/c++/16.1.1/memory_resource:453:       if (__builtin_expect(__buffer_size == 0, false))
	movl	$1, %edx	#, tmp1866
# /usr/include/c++/16.1.1/memory_resource:455:       return __buffer_size * _S_growth_factor;
	pxor	%xmm0, %xmm0	# _689
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movq	%r13, 488(%rsp)	# prephitmp_1221, MEM[(struct monotonic_buffer_resource *)_1896]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:453:       if (__builtin_expect(__buffer_size == 0, false))
	subq	%r13, %rax	# prephitmp_1221, prephitmp_1183
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	leaq	16+_ZTVNSt3pmr25monotonic_buffer_resourceE(%rip), %rcx	#, tmp1945
# /usr/include/c++/16.1.1/memory_resource:453:       if (__builtin_expect(__buffer_size == 0, false))
	cmovne	%rax, %rdx	# _682,, _1887
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%rcx, 480(%rsp)	# tmp1945, MEM[(struct monotonic_buffer_resource *)_1896].D.47489._vptr.memory_resource
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movq	%rax, 496(%rsp)	# _682, MEM[(struct monotonic_buffer_resource *)_1896]._M_avail
# /usr/include/c++/16.1.1/memory_resource:455:       return __buffer_size * _S_growth_factor;
	cvtsi2ssq	%rdx, %xmm0	# _1887, _689
	mulss	.LC29(%rip), %xmm0	#, _690
# /usr/include/c++/16.1.1/memory_resource:455:       return __buffer_size * _S_growth_factor;
	comiss	.LC30(%rip), %xmm0	#, _690
	jb	.L850	#,
	subss	.LC30(%rip), %xmm0	#, tmp755
	cvttss2siq	%xmm0, %rdx	# tmp755, tmp757
	movq	%rdx, 504(%rsp)	# tmp757, MEM[(struct monotonic_buffer_resource *)_1896]._M_next_bufsiz
	xorq	%r14, 504(%rsp)	# tmp1722, MEM[(struct monotonic_buffer_resource *)_1896]._M_next_bufsiz
	jmp	.L325	#
.L314:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r12	#, ivtmp_1548
	jne	.L317	#,
	jmp	.L316	#
.L307:
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %rbp	#, ivtmp_1568
	jne	.L310	#,
	jmp	.L309	#
.L328:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$2000, %r12d	#, ivtmp_1607
# /usr/include/c++/16.1.1/memory_resource:455:       return __buffer_size * _S_growth_factor;
	movabsq	$-9223372036854775808, %r14	#, tmp1720
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movq	%rax, 32(%rsp)	#, %sfp
	jmp	.L339	#
.L852:
# /usr/include/c++/16.1.1/memory_resource:455:       return __buffer_size * _S_growth_factor;
	cvttss2siq	%xmm0, %rcx	# _710, tmp784
	movq	%rcx, 504(%rsp)	# tmp784, MEM[(struct monotonic_buffer_resource *)_1896]._M_next_bufsiz
.L335:
# /usr/include/c++/16.1.1/memory_resource:363:       _M_upstream(__upstream),
	movq	%rbp, 512(%rsp)	# _683, MEM[(struct monotonic_buffer_resource *)_1896]._M_upstream
# b6_allocators.cpp:162:       do_not_optimize(make_batch_coro().run(h));
	leaq	112(%rsp), %rdi	#, tmp1951
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%rdx, 520(%rsp)	# _699, MEM[(struct monotonic_buffer_resource *)_1896]._M_orig_buf
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%rax, 528(%rsp)	# _702, MEM[(struct monotonic_buffer_resource *)_1896]._M_orig_size
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	$0, 536(%rsp)	#, MEM[(struct monotonic_buffer_resource *)_1896]._M_head
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %r13	# current_mr, current_mr.84_712
# ../../effects.hpp:693:     detail::current_mr = mr;
	movq	%r15, %fs:_ZN2fx6detail10current_mrE@tpoff	# tmp1724, current_mr
# b6_allocators.cpp:161:       CountHandler h;
	movl	$0, 352(%rsp)	#, MEM[(struct CountHandler *)_86]
.LEHB26:
# b6_allocators.cpp:162:       do_not_optimize(make_batch_coro().run(h));
	call	_ZL15make_batch_corov	#
.LEHE26:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	leaq	352(%rsp), %rsi	#, tmp1952
	leaq	112(%rsp), %rdi	#, tmp1953
	movq	112(%rsp), %rbx	# MEM[(struct Fx *)&D.203960], SR.749
.LEHB27:
	call	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE27:
	movq	%rax, 240(%rsp)	# tmp1873, D.203962
	movq	%rdx, 248(%rsp)	# tmp1874, D.203962
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.749
	je	.L336	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.749,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.749_1465 + 8B]
.L336:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%r13, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_712, current_mr
# b6_allocators.cpp:163:     }));
	movq	%r15, %rdi	# tmp1724,
	call	_ZNSt3pmr25monotonic_buffer_resourceD1Ev@PLT	#
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r12	#, ivtmp_1607
	je	.L851	#,
.L339:
# /usr/include/c++/16.1.1/bits/stl_vector.h:1386:       { return _M_data_ptr(this->_M_impl._M_start); }
	movq	416(%rsp), %rdx	# MEM[(struct vector *)_487].D.148644._M_impl.D.147938._M_start, _699
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	424(%rsp), %rax	# MEM[(struct vector *)_487].D.148644._M_impl.D.147938._M_finish, _702
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	leaq	16+_ZTVNSt3pmr25monotonic_buffer_resourceE(%rip), %rcx	#, tmp1950
# /usr/include/c++/16.1.1/memory_resource:455:       return __buffer_size * _S_growth_factor;
	pxor	%xmm0, %xmm0	# _709
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%rcx, 480(%rsp)	# tmp1950, MEM[(struct monotonic_buffer_resource *)_1896].D.47489._vptr.memory_resource
# /usr/include/c++/16.1.1/memory_resource:453:       if (__builtin_expect(__buffer_size == 0, false))
	movl	$1, %ecx	#, tmp1865
	subq	%rdx, %rax	# _699, _702
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movq	%rdx, 488(%rsp)	# _699, MEM[(struct monotonic_buffer_resource *)_1896]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:453:       if (__builtin_expect(__buffer_size == 0, false))
	cmovne	%rax, %rcx	# _702,, _1902
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movq	%rax, 496(%rsp)	# _702, MEM[(struct monotonic_buffer_resource *)_1896]._M_avail
# /usr/include/c++/16.1.1/memory_resource:455:       return __buffer_size * _S_growth_factor;
	cvtsi2ssq	%rcx, %xmm0	# _1902, _709
	mulss	.LC29(%rip), %xmm0	#, _710
# /usr/include/c++/16.1.1/memory_resource:455:       return __buffer_size * _S_growth_factor;
	comiss	.LC30(%rip), %xmm0	#, _710
	jb	.L852	#,
	subss	.LC30(%rip), %xmm0	#, tmp785
	cvttss2siq	%xmm0, %rcx	# tmp785, tmp787
	movq	%rcx, 504(%rsp)	# tmp787, MEM[(struct monotonic_buffer_resource *)_1896]._M_next_bufsiz
	xorq	%r14, 504(%rsp)	# tmp1720, MEM[(struct monotonic_buffer_resource *)_1896]._M_next_bufsiz
	jmp	.L335	#
.L851:
	movq	.LC47(%rip), %xmm4	#, _403
	leaq	_ZZ4mainE4sbuf(%rip), %r13	#, tmp1681
	movq	%r13, %xmm5	# tmp1681, tmp1681
	punpcklqdq	%xmm5, %xmm4	# tmp1681, _403
	movaps	%xmm4, (%rsp)	# _403, %sfp
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	608(%rsp), %rcx	#, tmp1956
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	movq	24(%rsp), %rsi	# %sfp, tmp1683
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	568(%rsp), %rdx	# MEM[(const struct basic_string *)_1987]._M_string_length, pretmp_880
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 592(%rsp)	# tmp1956, MEM[(struct _Alloc_hider *)_106]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rcx	# MEM[(const struct basic_string *)_1987]._M_dataplus._M_p, _719
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rsi, %rcx	# tmp1683, _719
	je	.L853	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 592(%rsp)	# _719, MEM[(struct basic_string *)_106]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	576(%rsp), %rcx	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity
	movq	%rcx, 608(%rsp)	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity
	movq	%rsi, %rcx	# tmp1683, tmp1683
.L344:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	32(%rsp), %rax	# %sfp, _673
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp826
# b6_allocators.cpp:157:     print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
	leaq	592(%rsp), %rdi	#, tmp1962
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 600(%rsp)	# pretmp_880, MEM[(struct basic_string *)_106]._M_string_length
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _673, tmp826
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 560(%rsp)	# tmp1683, MEM[(struct basic_string *)_1987]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 576(%rsp)	#, MEM[(char_type &)_1987 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 568(%rsp)	#, MEM[(struct basic_string *)_1987]._M_string_length
# bench.hpp:44: }
	movq	$2000, 624(%rsp)	#, MEM[(struct BenchResult *)_106].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 632(%rsp)	# tmp826, MEM[(struct BenchResult *)_106].total_ns
.LEHB28:
# b6_allocators.cpp:157:     print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
	call	_Z12print_resultRK11BenchResult	#
.LEHE28:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _188
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp1963
	cmpq	%rax, %rdi	# tmp1963, _188
	je	.L345	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp1964
	leaq	1(%rax), %rsi	#, _191
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L345:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _64
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _64
	je	.L346	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp1966
	leaq	1(%rax), %rsi	#, _187
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L346:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	416(%rsp), %rdi	# MEM[(struct _Vector_base *)_487]._M_impl.D.147938._M_start, _193
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _193
	je	.L347	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	432(%rsp), %rsi	# MEM[(struct _Vector_base *)_487]._M_impl.D.147938._M_end_of_storage, __n_194
	subq	%rdi, %rsi	# _193, __n_194
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L347:
# b6_allocators.cpp:169:     print_result(bench("3. Monotonic (static buf, reset/iter)", REPS, [&] {
	leaq	.LC31(%rip), %rsi	#,
	leaq	560(%rsp), %rdi	#, tmp1968
	movl	$3, %r12d	#, ivtmp_2011
.LEHB29:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE29:
	.p2align 4
	.p2align 3
.L351:
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movdqa	(%rsp), %xmm4	# %sfp, _403
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movdqa	.LC32(%rip), %xmm5	#, tmp1970
# /usr/include/c++/16.1.1/memory_resource:363:       _M_upstream(__upstream),
	movq	%rbp, 512(%rsp)	# _683, MEM[(struct monotonic_buffer_resource *)_1896]._M_upstream
# b6_allocators.cpp:174:       do_not_optimize(make_batch_coro().run(h));
	leaq	120(%rsp), %rdi	#, tmp1971
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%r13, 520(%rsp)	# tmp1681, MEM[(struct monotonic_buffer_resource *)_1896]._M_orig_buf
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	$66056, 528(%rsp)	#, MEM[(struct monotonic_buffer_resource *)_1896]._M_orig_size
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	$0, 536(%rsp)	#, MEM[(struct monotonic_buffer_resource *)_1896]._M_head
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movaps	%xmm4, 480(%rsp)	# _403, MEM <vector(2) long unsigned int> [(void *)_1896]
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movaps	%xmm5, 496(%rsp)	# tmp1970, MEM <vector(2) long unsigned int> [(long unsigned int *)_1896 + 16B]
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %r14	# current_mr, current_mr.84_736
# ../../effects.hpp:693:     detail::current_mr = mr;
	movq	%r15, %fs:_ZN2fx6detail10current_mrE@tpoff	# tmp1724, current_mr
# b6_allocators.cpp:173:       CountHandler h;
	movl	$0, 416(%rsp)	#, MEM[(struct CountHandler *)_487]
.LEHB30:
# b6_allocators.cpp:174:       do_not_optimize(make_batch_coro().run(h));
	call	_ZL15make_batch_corov	#
.LEHE30:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	leaq	416(%rsp), %rsi	#, tmp1972
	leaq	120(%rsp), %rdi	#, tmp1973
	movq	120(%rsp), %rbx	# MEM[(struct Fx *)&D.203990], SR.750
.LEHB31:
	call	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE31:
	movq	%rax, 256(%rsp)	# tmp1875, D.203992
	movq	%rdx, 264(%rsp)	# tmp1876, D.203992
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.750
	je	.L348	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.750,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.750_1464 + 8B]
.L348:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%r14, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_736, current_mr
# b6_allocators.cpp:175:     }));
	movq	%r15, %rdi	# tmp1724,
	call	_ZNSt3pmr25monotonic_buffer_resourceD1Ev@PLT	#
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r12	#, ivtmp_2011
	jne	.L351	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$2000, %r12d	#, ivtmp_2009
	movq	%rax, 32(%rsp)	#, %sfp
	.p2align 4
	.p2align 3
.L359:
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movdqa	(%rsp), %xmm6	# %sfp, _403
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movdqa	.LC32(%rip), %xmm7	#, tmp1975
# /usr/include/c++/16.1.1/memory_resource:363:       _M_upstream(__upstream),
	movq	%rbp, 512(%rsp)	# _683, MEM[(struct monotonic_buffer_resource *)_1896]._M_upstream
# b6_allocators.cpp:174:       do_not_optimize(make_batch_coro().run(h));
	leaq	128(%rsp), %rdi	#, tmp1976
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%r13, 520(%rsp)	# tmp1681, MEM[(struct monotonic_buffer_resource *)_1896]._M_orig_buf
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	$66056, 528(%rsp)	#, MEM[(struct monotonic_buffer_resource *)_1896]._M_orig_size
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	$0, 536(%rsp)	#, MEM[(struct monotonic_buffer_resource *)_1896]._M_head
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movaps	%xmm6, 480(%rsp)	# _403, MEM <vector(2) long unsigned int> [(void *)_1896]
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movaps	%xmm7, 496(%rsp)	# tmp1975, MEM <vector(2) long unsigned int> [(long unsigned int *)_1896 + 16B]
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %r14	# current_mr, current_mr.84_743
# ../../effects.hpp:693:     detail::current_mr = mr;
	movq	%r15, %fs:_ZN2fx6detail10current_mrE@tpoff	# tmp1724, current_mr
# b6_allocators.cpp:173:       CountHandler h;
	movl	$0, 416(%rsp)	#, MEM[(struct CountHandler *)_487]
.LEHB32:
# b6_allocators.cpp:174:       do_not_optimize(make_batch_coro().run(h));
	call	_ZL15make_batch_corov	#
.LEHE32:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	leaq	416(%rsp), %rsi	#, tmp1977
	leaq	128(%rsp), %rdi	#, tmp1978
	movq	128(%rsp), %rbx	# MEM[(struct Fx *)&D.204002], SR.751
.LEHB33:
	call	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE33:
	movq	%rax, 272(%rsp)	# tmp1877, D.204004
	movq	%rdx, 280(%rsp)	# tmp1878, D.204004
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.751
	je	.L356	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.751,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.751_775 + 8B]
.L356:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%r14, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_743, current_mr
# b6_allocators.cpp:175:     }));
	movq	%r15, %rdi	# tmp1724,
	call	_ZNSt3pmr25monotonic_buffer_resourceD1Ev@PLT	#
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r12	#, ivtmp_2009
	jne	.L359	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	608(%rsp), %rcx	#, tmp1979
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	movq	24(%rsp), %rsi	# %sfp, tmp1683
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	568(%rsp), %rdx	# MEM[(const struct basic_string *)_1987]._M_string_length, pretmp_881
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 592(%rsp)	# tmp1979, MEM[(struct _Alloc_hider *)_106]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rcx	# MEM[(const struct basic_string *)_1987]._M_dataplus._M_p, _750
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rsi, %rcx	# tmp1683, _750
	je	.L854	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 592(%rsp)	# _750, MEM[(struct basic_string *)_106]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	576(%rsp), %rcx	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity
	movq	%rcx, 608(%rsp)	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity
	movq	%rsi, %rcx	# tmp1683, tmp1683
.L364:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	32(%rsp), %rax	# %sfp, _732
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp895
# b6_allocators.cpp:169:     print_result(bench("3. Monotonic (static buf, reset/iter)", REPS, [&] {
	leaq	592(%rsp), %rdi	#, tmp1985
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 600(%rsp)	# pretmp_881, MEM[(struct basic_string *)_106]._M_string_length
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _732, tmp895
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 560(%rsp)	# tmp1683, MEM[(struct basic_string *)_1987]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 576(%rsp)	#, MEM[(char_type &)_1987 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 568(%rsp)	#, MEM[(struct basic_string *)_1987]._M_string_length
# bench.hpp:44: }
	movq	$2000, 624(%rsp)	#, MEM[(struct BenchResult *)_106].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 632(%rsp)	# tmp895, MEM[(struct BenchResult *)_106].total_ns
.LEHB34:
# b6_allocators.cpp:169:     print_result(bench("3. Monotonic (static buf, reset/iter)", REPS, [&] {
	call	_Z12print_resultRK11BenchResult	#
.LEHE34:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _200
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp1986
	cmpq	%rax, %rdi	# tmp1986, _200
	je	.L365	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp1987
	leaq	1(%rax), %rsi	#, _203
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L365:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _196
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _196
	je	.L366	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp1989
	leaq	1(%rax), %rsi	#, _199
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L366:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$66056, %edi	#,
.LEHB35:
	call	_Znwm@PLT	#
.LEHE35:
# /usr/include/c++/16.1.1/bits/stl_algobase.h:949: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	movl	$66055, %edx	#,
	xorl	%esi, %esi	#
# /usr/include/c++/16.1.1/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	movb	$0, (%rax)	#, *_765
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:946: 	      ++__first;
	leaq	1(%rax), %rdi	#, __first_768
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r13	#, _765
# /usr/include/c++/16.1.1/bits/stl_algobase.h:949: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	call	memset@PLT	#
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movdqa	.LC32(%rip), %xmm4	#, tmp1991
# /usr/include/c++/16.1.1/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	movq	%r15, %rdi	# tmp1724,
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	leaq	16+_ZTVNSt3pmr25monotonic_buffer_resourceE(%rip), %rax	#, tmp1990
# /usr/include/c++/16.1.1/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	pxor	%xmm0, %xmm0	# tmp913
# /usr/include/c++/16.1.1/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	leaq	416(%rsp), %rdx	#, tmp1992
	leaq	352(%rsp), %rsi	#, tmp1993
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%rax, 416(%rsp)	# tmp1990, MEM[(struct monotonic_buffer_resource *)_487].D.47489._vptr.memory_resource
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movq	%r13, 424(%rsp)	# _765, MEM[(struct monotonic_buffer_resource *)_487]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:363:       _M_upstream(__upstream),
	movq	%rbp, 448(%rsp)	# _683, MEM[(struct monotonic_buffer_resource *)_487]._M_upstream
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%r13, 456(%rsp)	# _765, MEM[(struct monotonic_buffer_resource *)_487]._M_orig_buf
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	$66056, 464(%rsp)	#, MEM[(struct monotonic_buffer_resource *)_487]._M_orig_size
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	$0, 472(%rsp)	#, MEM[(struct monotonic_buffer_resource *)_487]._M_head
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movaps	%xmm4, 432(%rsp)	# tmp1991, MEM <vector(2) long unsigned int> [(long unsigned int *)_487 + 16B]
# /usr/include/c++/16.1.1/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	movaps	%xmm0, 352(%rsp)	# tmp913, MEM <vector(2) long unsigned int> [(long unsigned int *)_86]
.LEHB36:
# /usr/include/c++/16.1.1/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	call	_ZNSt3pmr28unsynchronized_pool_resourceC1ERKNS_12pool_optionsEPNS_15memory_resourceE@PLT	#
.LEHE36:
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %r14	# current_mr, current_mr.84_216
# b6_allocators.cpp:186:     print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
	leaq	.LC33(%rip), %rsi	#,
# ../../effects.hpp:693:     detail::current_mr = mr;
	movq	%r15, %fs:_ZN2fx6detail10current_mrE@tpoff	# tmp1724, current_mr
# b6_allocators.cpp:186:     print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
	leaq	560(%rsp), %rdi	#, tmp1994
.LEHB37:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE37:
	movl	$3, %r12d	#, ivtmp_1515
	.p2align 4
	.p2align 3
.L370:
# b6_allocators.cpp:151:     do_not_optimize(make_batch_coro().run(h));
	leaq	136(%rsp), %rdi	#, tmp1995
# b6_allocators.cpp:150:     CountHandler h;
	movl	$0, 352(%rsp)	#, MEM[(struct CountHandler *)_86]
.LEHB38:
# b6_allocators.cpp:151:     do_not_optimize(make_batch_coro().run(h));
	call	_ZL15make_batch_corov	#
.LEHE38:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	leaq	352(%rsp), %rsi	#, tmp1996
	leaq	136(%rsp), %rdi	#, tmp1997
	movq	136(%rsp), %rbx	# MEM[(struct Fx *)&D.204042], SR.752
.LEHB39:
	call	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE39:
	movq	%rax, 288(%rsp)	# tmp1879, D.204044
	movq	%rdx, 296(%rsp)	# tmp1880, D.204044
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.752
	je	.L367	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.752,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.752_1448 + 8B]
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r12	#, ivtmp_1515
	jne	.L370	#,
.L369:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$2000, %r12d	#, ivtmp_1547
	movq	%rax, (%rsp)	#, %sfp
	.p2align 4
	.p2align 3
.L377:
# b6_allocators.cpp:151:     do_not_optimize(make_batch_coro().run(h));
	leaq	144(%rsp), %rdi	#, tmp1998
# b6_allocators.cpp:150:     CountHandler h;
	movl	$0, 352(%rsp)	#, MEM[(struct CountHandler *)_86]
.LEHB40:
# b6_allocators.cpp:151:     do_not_optimize(make_batch_coro().run(h));
	call	_ZL15make_batch_corov	#
.LEHE40:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	leaq	352(%rsp), %rsi	#, tmp1999
	leaq	144(%rsp), %rdi	#, tmp2000
	movq	144(%rsp), %rbx	# MEM[(struct Fx *)&D.204051], SR.753
.LEHB41:
	call	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE41:
	movq	%rax, 304(%rsp)	# tmp1881, D.204053
	movq	%rdx, 312(%rsp)	# tmp1882, D.204053
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.753
	je	.L374	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.753,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.753_1447 + 8B]
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r12	#, ivtmp_1547
	jne	.L377	#,
.L376:
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	608(%rsp), %rcx	#, tmp2001
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	movq	24(%rsp), %rsi	# %sfp, tmp1683
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	568(%rsp), %rdx	# MEM[(const struct basic_string *)_1987]._M_string_length, pretmp_883
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 592(%rsp)	# tmp2001, MEM[(struct _Alloc_hider *)_106]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rcx	# MEM[(const struct basic_string *)_1987]._M_dataplus._M_p, _793
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rsi, %rcx	# tmp1683, _793
	je	.L855	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 592(%rsp)	# _793, MEM[(struct basic_string *)_106]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	576(%rsp), %rcx	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity
	movq	%rcx, 608(%rsp)	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity
	movq	%rsi, %rcx	# tmp1683, tmp1683
.L381:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	(%rsp), %rax	# %sfp, _779
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp955
# b6_allocators.cpp:186:     print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
	leaq	592(%rsp), %rdi	#, tmp2007
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 600(%rsp)	# pretmp_883, MEM[(struct basic_string *)_106]._M_string_length
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _779, tmp955
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 560(%rsp)	# tmp1683, MEM[(struct basic_string *)_1987]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 576(%rsp)	#, MEM[(char_type &)_1987 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 568(%rsp)	#, MEM[(struct basic_string *)_1987]._M_string_length
# bench.hpp:44: }
	movq	$2000, 624(%rsp)	#, MEM[(struct BenchResult *)_106].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 632(%rsp)	# tmp955, MEM[(struct BenchResult *)_106].total_ns
.LEHB42:
# b6_allocators.cpp:186:     print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
	call	_Z12print_resultRK11BenchResult	#
.LEHE42:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _221
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2008
	cmpq	%rax, %rdi	# tmp2008, _221
	je	.L382	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2009
	leaq	1(%rax), %rsi	#, _224
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L382:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _217
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _217
	je	.L383	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2011
	leaq	1(%rax), %rsi	#, _220
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L383:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%r14, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_216, current_mr
# b6_allocators.cpp:190:   }
	movq	%r15, %rdi	# tmp1724,
	call	_ZNSt3pmr28unsynchronized_pool_resourceD1Ev@PLT	#
# b6_allocators.cpp:190:   }
	leaq	416(%rsp), %rdi	#, tmp2012
	call	_ZNSt3pmr25monotonic_buffer_resourceD1Ev@PLT	#
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movl	$66056, %esi	#,
	movq	%r13, %rdi	# _765,
	call	_ZdlPvm@PLT	#
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	movzbl	_ZGVZ4mainE4slab(%rip), %eax	#, _3
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	testb	%al, %al	# _3
	je	.L856	#,
.L384:
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rax	# current_mr, current_mr.84_232
# b6_allocators.cpp:197:     print_result(bench("5. Free-list slab (O(1), no vdispatch)", REPS, [&] {
	leaq	.LC34(%rip), %rsi	#,
	leaq	560(%rsp), %rdi	#, tmp2020
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%rax, (%rsp)	# current_mr.84_232, %sfp
# ../../effects.hpp:693:     detail::current_mr = mr;
	leaq	_ZZ4mainE4slab(%rip), %rax	#, tmp2019
	movq	%rax, %fs:_ZN2fx6detail10current_mrE@tpoff	# tmp2019, current_mr
.LEHB43:
# b6_allocators.cpp:197:     print_result(bench("5. Free-list slab (O(1), no vdispatch)", REPS, [&] {
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE43:
	leaq	544+_ZZ4mainE4slab(%rip), %r13	#, tmp1679
	movl	$3, %r12d	#, ivtmp_2238
	leaq	528(%r13), %r14	#, tmp1689
	.p2align 4
	.p2align 3
.L385:
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	leaq	1600+_ZZ4mainE4slab(%rip), %rcx	#, tmp2025
# b6_allocators.cpp:200:       do_not_optimize(make_batch_coro().run(h));
	leaq	152(%rsp), %rdi	#, tmp2028
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	movq	%r13, 16+_ZZ4mainE4slab(%rip)	# tmp1679, slab.storage_[0].next
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	movq	%rcx, 1072+_ZZ4mainE4slab(%rip)	# tmp2025, slab.storage_[2].next
# b6_allocators.cpp:69:     head_ = &storage_[0];
	leaq	16+_ZZ4mainE4slab(%rip), %rcx	#, tmp2027
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	movq	%r14, 544+_ZZ4mainE4slab(%rip)	# tmp1689, slab.storage_[1].next
# b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	movq	$0, 1600+_ZZ4mainE4slab(%rip)	#, slab.storage_[3].next
# b6_allocators.cpp:69:     head_ = &storage_[0];
	movq	%rcx, 2128+_ZZ4mainE4slab(%rip)	# tmp2027, slab.head_
# b6_allocators.cpp:199:       CountHandler h;
	movl	$0, 480(%rsp)	#, MEM[(struct CountHandler *)_1896]
.LEHB44:
# b6_allocators.cpp:200:       do_not_optimize(make_batch_coro().run(h));
	call	_ZL15make_batch_corov	#
.LEHE44:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	movq	%r15, %rsi	# tmp1724,
	leaq	152(%rsp), %rdi	#, tmp2021
	movq	152(%rsp), %rbx	# MEM[(struct Fx *)&D.204079], SR.754
.LEHB45:
	call	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE45:
	movq	%rax, 320(%rsp)	# tmp1883, D.204081
	movq	%rdx, 328(%rsp)	# tmp1884, D.204081
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.754
	je	.L386	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.754,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.754_1439 + 8B]
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r12	#, ivtmp_2238
	jne	.L385	#,
.L388:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$2000, %r12d	#, ivtmp_1974
	movq	%rax, 32(%rsp)	#, %sfp
	.p2align 4
	.p2align 3
.L393:
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	leaq	1600+_ZZ4mainE4slab(%rip), %rcx	#, tmp2033
# b6_allocators.cpp:200:       do_not_optimize(make_batch_coro().run(h));
	leaq	160(%rsp), %rdi	#, tmp2036
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	movq	%r13, 16+_ZZ4mainE4slab(%rip)	# tmp1679, slab.storage_[0].next
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	movq	%rcx, 1072+_ZZ4mainE4slab(%rip)	# tmp2033, slab.storage_[2].next
# b6_allocators.cpp:69:     head_ = &storage_[0];
	leaq	16+_ZZ4mainE4slab(%rip), %rcx	#, tmp2035
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	movq	%r14, 544+_ZZ4mainE4slab(%rip)	# tmp1689, slab.storage_[1].next
# b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	movq	$0, 1600+_ZZ4mainE4slab(%rip)	#, slab.storage_[3].next
# b6_allocators.cpp:69:     head_ = &storage_[0];
	movq	%rcx, 2128+_ZZ4mainE4slab(%rip)	# tmp2035, slab.head_
# b6_allocators.cpp:199:       CountHandler h;
	movl	$0, 480(%rsp)	#, MEM[(struct CountHandler *)_1896]
.LEHB46:
# b6_allocators.cpp:200:       do_not_optimize(make_batch_coro().run(h));
	call	_ZL15make_batch_corov	#
.LEHE46:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	movq	%r15, %rsi	# tmp1724,
	leaq	160(%rsp), %rdi	#, tmp2029
	movq	160(%rsp), %rbx	# MEM[(struct Fx *)&D.204089], SR.755
.LEHB47:
	call	_ZN2fx2FxIxJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIxJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE47:
	movq	%rax, 336(%rsp)	# tmp1885, D.204091
	movq	%rdx, 344(%rsp)	# tmp1886, D.204091
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.755
	je	.L394	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.755,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.755_1438 + 8B]
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r12	#, ivtmp_1974
	jne	.L393	#,
.L396:
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	608(%rsp), %rcx	#, tmp2037
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	movq	24(%rsp), %rsi	# %sfp, tmp1683
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	568(%rsp), %rdx	# MEM[(const struct basic_string *)_1987]._M_string_length, pretmp_884
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 592(%rsp)	# tmp2037, MEM[(struct _Alloc_hider *)_106]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rcx	# MEM[(const struct basic_string *)_1987]._M_dataplus._M_p, _826
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rsi, %rcx	# tmp1683, _826
	je	.L857	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 592(%rsp)	# _826, MEM[(struct basic_string *)_106]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	576(%rsp), %rcx	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity
	movq	%rcx, 608(%rsp)	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity
	movq	%rsi, %rcx	# tmp1683, tmp1683
.L401:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	32(%rsp), %rax	# %sfp, _806
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp1040
# b6_allocators.cpp:197:     print_result(bench("5. Free-list slab (O(1), no vdispatch)", REPS, [&] {
	leaq	592(%rsp), %rdi	#, tmp2043
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 600(%rsp)	# pretmp_884, MEM[(struct basic_string *)_106]._M_string_length
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _806, tmp1040
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 560(%rsp)	# tmp1683, MEM[(struct basic_string *)_1987]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 576(%rsp)	#, MEM[(char_type &)_1987 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 568(%rsp)	#, MEM[(struct basic_string *)_1987]._M_string_length
# bench.hpp:44: }
	movq	$2000, 624(%rsp)	#, MEM[(struct BenchResult *)_106].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 632(%rsp)	# tmp1040, MEM[(struct BenchResult *)_106].total_ns
.LEHB48:
# b6_allocators.cpp:197:     print_result(bench("5. Free-list slab (O(1), no vdispatch)", REPS, [&] {
	call	_Z12print_resultRK11BenchResult	#
.LEHE48:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _237
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2044
	cmpq	%rax, %rdi	# tmp2044, _237
	je	.L402	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2045
	leaq	1(%rax), %rsi	#, _240
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L402:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _233
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _233
	je	.L403	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2047
	leaq	1(%rax), %rsi	#, _236
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L403:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	(%rsp), %rax	# %sfp, current_mr.84_232
# /usr/include/c++/16.1.1/bits/basic_string.tcc:611: 	this->_M_mutate(__pos, __len1, __s, __len2);
	movl	$21, %r8d	#,
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	leaq	.LC36(%rip), %rcx	#,
	leaq	560(%rsp), %rdi	#, tmp2050
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%rax, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_232, current_mr
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	24(%rsp), %rbx	# %sfp, tmp1683
	movl	$808464437, 576(%rsp)	#, MEM <vector(4) char> [(char *)_1987 + 16B]
	movq	%rbx, 560(%rsp)	# tmp1683, MEM[(struct _Alloc_hider *)_1987]._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 580(%rsp)	#, MEM[(char_type &)_1987 + 20]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$4, 568(%rsp)	#, MEM[(struct basic_string *)_1987]._M_string_length
.LEHB49:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:611: 	this->_M_mutate(__pos, __len1, __s, __len2);
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm	#
.LEHE49:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rax	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _936
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 25(%rax)	#, MEM[(char_type &)_936 + 25]
# /usr/include/c++/16.1.1/bits/basic_string.h:778: 	    _M_capacity(__str._M_allocated_capacity);
	movq	576(%rsp), %rdx	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, _946
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 592(%rsp)	# _936, MEM[(struct basic_string *)_106]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	%rdx, 608(%rsp)	# _946, MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$25, 600(%rsp)	#, MEM[(struct basic_string *)_106]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbx, 560(%rsp)	# tmp1683, MEM[(struct basic_string *)_1987]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 576(%rsp)	#, MEM[(char_type &)_1987 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 568(%rsp)	#, MEM[(struct basic_string *)_1987]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.tcc:481:       if (__len <= this->capacity())
	cmpq	$25, %rdx	#, _946
	jbe	.L404	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$41, 25(%rax)	#, MEM[(char_type &)_936 + 25]
.L405:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %r12	# MEM[(struct basic_string *)_106]._M_dataplus._M_p, _957
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	608(%rsp), %rax	#, tmp2053
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC14(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 26(%r12)	#, MEM[(char_type &)_957 + 26]
# /usr/include/c++/16.1.1/bits/basic_string.h:778: 	    _M_capacity(__str._M_allocated_capacity);
	movq	608(%rsp), %rbx	# MEM[(struct basic_string &)_106].D.58684._M_allocated_capacity, _963
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 592(%rsp)	# tmp2053, MEM[(struct basic_string *)_106]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 608(%rsp)	#, MEM[(char_type &)_106 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 600(%rsp)	#, MEM[(struct basic_string *)_106]._M_string_length
.LEHB50:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/string_view:780:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	movl	$26, %edx	#,
	movq	%r12, %rsi	# _957,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC16(%rip), %rsi	#,
	movq	%rax, %rdi	# _969,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE50:
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# _957,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	leaq	1(%rbx), %rsi	#, _256
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(struct basic_string *)_106]._M_dataplus._M_p, _249
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2054
	cmpq	%rax, %rdi	# tmp2054, _249
	je	.L406	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2055
	leaq	1(%rax), %rsi	#, _252
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L406:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _245
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _245
	je	.L407	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2057
	leaq	1(%rax), %rsi	#, _248
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L407:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$62, %edx	#,
	leaq	.LC38(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# b6_allocators.cpp:219:   print_result(bench("1s. Default", SP_REPS, [&] {
	movl	$3, %r13d	#, ivtmp_865
.LEHB51:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$36, %edx	#,
	leaq	.LC39(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b6_allocators.cpp:208:   std::cout << "  (Divide per-coroutine ns above by " << BATCH
	movl	$5000, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movl	$65536, %r14d	#, tmp1717
# b6_allocators.cpp:208:   std::cout << "  (Divide per-coroutine ns above by " << BATCH
	call	_ZNSolsEi@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$37, %edx	#,
	leaq	.LC40(%rip), %rsi	#,
	movq	%rax, %rdi	# _109,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$5, %edx	#,
	leaq	.LC14(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/string_view:780:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	movl	$56, %edx	#,
	leaq	.LC41(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC16(%rip), %rsi	#,
	movq	%rax, %rdi	# _987,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# b6_allocators.cpp:219:   print_result(bench("1s. Default", SP_REPS, [&] {
	leaq	.LC42(%rip), %rsi	#,
	leaq	560(%rsp), %rdi	#, tmp2058
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE51:
	leaq	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.destroy(%rip), %rax	#, tmp1714
	movq	.LC48(%rip), %xmm5	#, _801
	movq	%rax, %xmm1	# tmp1714, tmp1714
	punpcklqdq	%xmm1, %xmm5	# tmp1714, _801
	movaps	%xmm5, (%rsp)	# _801, %sfp
	.p2align 4
	.p2align 3
.L439:
# b6_allocators.cpp:220:     CountHandler h;
	movl	$0, 352(%rsp)	#, MEM[(struct CountHandler *)_86]
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %r12	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%r12, %r12	# mr
	je	.L408	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%r12), %rax	# mr_1019->_vptr.memory_resource, mr_1019->_vptr.memory_resource
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%r12, %rdi	# mr,
.LEHB52:
	call	*16(%rax)	# MEM[(int (*) () *)_1021 + 16B]
.LEHE52:
.L836:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movdqa	(%rsp), %xmm5	# %sfp, _801
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp1096
# ../../effects.hpp:469:                    : ::operator new(total);
	movq	%rax, %rbx	# raw, raw
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movb	$1, 100(%rax)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1025]._Coro_frame_needs_free
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1025 + 16B].aborted
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rax), %rax	#, tmp1100
	movq	%r15, %xmm4	# tmp1724, tmp1724
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movq	%rbx, %rdi	# raw,
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%r12, 56(%rax)	# mr, MEM[(struct memory_resource * *)raw_1025 + 136B]
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	leaq	83(%rsp), %r12	#, tmp1660
	movq	.LC12(%rip), %xmm1	#, _1413
	movups	%xmm5, -80(%rax)	# _801, MEM <vector(2) long unsigned int> [(void (*<T17eb0>) (struct _ZZ4mainENKUlvE4_clEv.Frame *) *)raw_1025]
	movq	%r12, 8(%rax)	# tmp1660, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1025].__closure
	punpcklqdq	%xmm4, %xmm1	# tmp1724, _1413
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	$0, -56(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1025 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, -48(%rax)	#, MEM[(struct any *)raw_1025 + 32B]._M_manager
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, -40(%rax)	# tmp1096, MEM <vector(2) long unsigned int> [(void *)raw_1025 + 40B]
	movups	%xmm0, -24(%rax)	# tmp1096, MEM <vector(2) long unsigned int> [(void *)raw_1025 + 56B]
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 4(%rax)	#, MEM[(struct _Optional_payload_base *)raw_1025 + 80B]._M_engaged
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movl	%r14d, 16(%rax)	# tmp1717, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_1025 + 96B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp1100, MEM[(struct promise_type *)raw_1025 + 16B].D.150337.D.143627.result_ptr
	movaps	%xmm1, 32(%rsp)	# _1413, %sfp
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	call	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor	#
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	subw	$1, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1025]._Coro_frame_refcount
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	je	.L858	#,
.L410:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	32(%rsp), %xmm6	# %sfp, _1413
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	leaq	352(%rsp), %rax	#, tmp2065
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 520(%rsp)	#, MEM[(struct HandlerNode *)_1896].on_return_any_fn
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%rax, 496(%rsp)	# tmp2065, MEM[(struct ScopedHandler *)_1896].node.real_handler_ptr
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_(%rip), %rax	#, tmp2067
	movq	%rax, 504(%rsp)	# tmp2067, MEM[(struct ScopedHandler *)_1896].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm6, 480(%rsp)	# _1413, MEM <vector(2) long unsigned int> [(const void * *)_1896]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.67_1036
	movq	%rax, 528(%rsp)	# stack_top.67_1036, MEM[(struct ScopedHandler *)_1896].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 512(%rsp)	# stack_top.67_1036, MEM[(struct ScopedHandler *)_1896].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%r15, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp1724, stack_top
.LEHB53:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1025]
	.p2align 4
	.p2align 3
.L414:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)raw_1025]
	je	.L859	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)raw_1025 + 16].D.150337.D.143627.effect_tag, _1051
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L415	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _1051, n_1058->effect_tag
	je	.L416	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L417:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_1572->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L860	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_1062->effect_tag, _1051
	jne	.L417	#,
.L416:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)raw_1025 + 16].D.150337.D.143627.payload_ptr, MEM[(struct promise_type &)raw_1025 + 16].D.150337.D.143627.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_1788->dispatch
.LEHE53:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)raw_1025 + 16].D.150337.D.143627.aborted
	je	.L414	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%r15, 24(%rbx)	# tmp1724, MEM[(struct PromiseAbortBase *)raw_1025 + 16B].abort_owner
	je	.L423	#,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	528(%rsp), %rax	# MEM[(struct ScopedHandler *)_1896].saved, MEM[(struct ScopedHandler *)_1896].saved
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1896].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	xorl	%eax, %eax	# tmp1141
.L436:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1025 + 8B]
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r13	#, ivtmp_865
	jne	.L439	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm3, %xmm3	# tmp1713
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movq	$500000, 48(%rsp)	#, %sfp
	movq	%rax, 56(%rsp)	#, %sfp
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movaps	%xmm3, 32(%rsp)	# tmp1713, %sfp
	jmp	.L449	#
	.p2align 4,,10
	.p2align 3
.L448:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	leaq	168(%rsp), %rdi	#, tmp1174
	movq	%r15, %rsi	# tmp1724,
	movq	%rbx, 168(%rsp)	# raw, MEM <void *> [(void *)&D.204279]
.LEHB54:
	call	_ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE54:
	movq	%rax, 184(%rsp)	# tmp1175, D.204281
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1099 + 8B]
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, 48(%rsp)	#, %sfp
	je	.L861	#,
.L449:
# b6_allocators.cpp:220:     CountHandler h;
	movl	$0, 480(%rsp)	#, MEM[(struct CountHandler *)_1896]
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %r13	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%r13, %r13	# mr
	je	.L440	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	0(%r13), %rax	# mr_1093->_vptr.memory_resource, mr_1093->_vptr.memory_resource
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%r13, %rdi	# mr,
.LEHB55:
	call	*16(%rax)	# MEM[(int (*) () *)_1095 + 16B]
.LEHE55:
.L837:
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movdqa	32(%rsp), %xmm2	# %sfp, tmp1713
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movdqa	(%rsp), %xmm7	# %sfp, _801
# ../../effects.hpp:469:                    : ::operator new(total);
	movq	%rax, %rbx	# raw, raw
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%r13, 136(%rax)	# mr, MEM[(struct memory_resource * *)raw_1099 + 136B]
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movb	$1, 100(%rax)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1099]._Coro_frame_needs_free
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rax), %rax	#, tmp1157
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movq	%rbx, %rdi	# raw,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movups	%xmm7, -80(%rax)	# _801, MEM <vector(2) long unsigned int> [(void (*<T17eb0>) (struct _ZZ4mainENKUlvE4_clEv.Frame *) *)raw_1099]
	movq	%r12, 8(%rax)	# tmp1660, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1099].__closure
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, -64(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1099 + 16B].aborted
	movq	$0, -56(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1099 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, -48(%rax)	#, MEM[(struct any *)raw_1099 + 32B]._M_manager
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm2, -40(%rax)	# tmp1713, MEM <vector(2) long unsigned int> [(void *)raw_1099 + 40B]
	movups	%xmm2, -24(%rax)	# tmp1713, MEM <vector(2) long unsigned int> [(void *)raw_1099 + 56B]
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 4(%rax)	#, MEM[(struct _Optional_payload_base *)raw_1099 + 80B]._M_engaged
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movl	%r14d, 16(%rax)	# tmp1717, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_1099 + 96B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp1157, MEM[(struct promise_type *)raw_1099 + 16B].D.150337.D.143627.result_ptr
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	call	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor	#
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	subw	$1, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1099]._Coro_frame_refcount
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	jne	.L448	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_1099 + 64B]._M_exception_object
	je	.L444	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _1101
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L444:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1099 + 32B]._M_manager, _1104
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _1104
	je	.L445	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _1103
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _1104
.L445:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpw	$0, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1099]._Coro_frame_refcount
	jne	.L448	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_1099 + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L447	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_1107->_vptr.memory_resource, mr_1107->_vptr.memory_resource
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# raw,
	call	*24(%rax)	# MEM[(int (*) () *)_1108 + 24B]
	jmp	.L448	#
.L859:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)raw_1025 + 64B]._M_exception_object, _1055
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _1055
	jne	.L862	#,
# /usr/include/c++/16.1.1/optional:229: 	    : _M_value(std::forward<_Args>(__args)...)
	movl	80(%rbx), %eax	# MEM[(int &)raw_1025 + 80], _1056
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1025 + 16B].aborted
	je	.L826	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%r15, 24(%rbx)	# tmp1724, MEM[(struct PromiseAbortBase *)raw_1025 + 16B].abort_owner
	je	.L423	#,
.L826:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	528(%rsp), %rdx	# MEM[(struct ScopedHandler *)_1896].saved, MEM[(struct ScopedHandler *)_1896].saved
	movq	%rdx, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1896].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	jmp	.L436	#
.L858:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_1025 + 64B]._M_exception_object
	je	.L411	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _1027
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L411:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1025 + 32B]._M_manager, _1030
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _1030
	je	.L412	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _1029
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _1030
.L412:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpw	$0, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1025]._Coro_frame_refcount
	jne	.L410	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_1025 + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L413	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_1033->_vptr.memory_resource, mr_1033->_vptr.memory_resource
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# raw,
	call	*24(%rax)	# MEM[(int (*) () *)_1034 + 24B]
	jmp	.L410	#
.L394:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r12	#, ivtmp_1974
	jne	.L393	#,
	jmp	.L396	#
.L386:
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r12	#, ivtmp_2238
	jne	.L385	#,
	jmp	.L388	#
.L374:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r12	#, ivtmp_1547
	jne	.L377	#,
	jmp	.L376	#
.L367:
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r12	#, ivtmp_1515
	jne	.L370	#,
	jmp	.L369	#
.L408:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$144, %edi	#,
.LEHB56:
	call	_Znwm@PLT	#
	jmp	.L836	#
.L440:
	movl	$144, %edi	#,
	call	_Znwm@PLT	#
.LEHE56:
	jmp	.L837	#
.L861:
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	608(%rsp), %rcx	#, tmp2078
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	movq	24(%rsp), %rsi	# %sfp, tmp1683
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	568(%rsp), %rdx	# MEM[(const struct basic_string *)_1987]._M_string_length, pretmp_891
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 592(%rsp)	# tmp2078, MEM[(struct _Alloc_hider *)_106]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rcx	# MEM[(const struct basic_string *)_1987]._M_dataplus._M_p, _1111
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rsi, %rcx	# tmp1683, _1111
	je	.L863	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 592(%rsp)	# _1111, MEM[(struct basic_string *)_106]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	576(%rsp), %rcx	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity
	movq	%rcx, 608(%rsp)	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity
	movq	%rsi, %rcx	# tmp1683, tmp1683
.L453:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	56(%rsp), %rax	# %sfp, _979
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp1198
# b6_allocators.cpp:219:   print_result(bench("1s. Default", SP_REPS, [&] {
	leaq	592(%rsp), %rdi	#, tmp2084
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 600(%rsp)	# pretmp_891, MEM[(struct basic_string *)_106]._M_string_length
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _979, tmp1198
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 560(%rsp)	# tmp1683, MEM[(struct basic_string *)_1987]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 576(%rsp)	#, MEM[(char_type &)_1987 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 568(%rsp)	#, MEM[(struct basic_string *)_1987]._M_string_length
# bench.hpp:44: }
	movq	$500000, 624(%rsp)	#, MEM[(struct BenchResult *)_106].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 632(%rsp)	# tmp1198, MEM[(struct BenchResult *)_106].total_ns
.LEHB57:
# b6_allocators.cpp:219:   print_result(bench("1s. Default", SP_REPS, [&] {
	call	_Z12print_resultRK11BenchResult	#
.LEHE57:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _261
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2085
	cmpq	%rax, %rdi	# tmp2085, _261
	je	.L454	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2086
	leaq	1(%rax), %rsi	#, _264
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L454:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _257
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _257
	je	.L455	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2088
	leaq	1(%rax), %rsi	#, _260
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L455:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$65536, %edi	#,
.LEHB58:
	call	_Znwm@PLT	#
.LEHE58:
# /usr/include/c++/16.1.1/bits/stl_algobase.h:949: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	movl	$65535, %edx	#,
	xorl	%esi, %esi	#
# /usr/include/c++/16.1.1/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	movb	$0, (%rax)	#, *_1126
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:946: 	      ++__first;
	leaq	1(%rax), %rdi	#, __first_1129
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbx	#, _1126
	movq	%rax, 64(%rsp)	# _1126, %sfp
# /usr/include/c++/16.1.1/bits/stl_algobase.h:949: 	__builtin_memset(__first, static_cast<unsigned char>(__val), __len);
	call	memset@PLT	#
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movdqa	.LC44(%rip), %xmm0	#, tmp1215
# /usr/include/c++/16.1.1/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	movq	%r15, %rdi	# tmp1724,
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	leaq	16+_ZTVNSt3pmr25monotonic_buffer_resourceE(%rip), %rax	#, tmp2091
# /usr/include/c++/16.1.1/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	leaq	416(%rsp), %rdx	#, tmp2094
	leaq	352(%rsp), %rsi	#, tmp2095
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%rax, 416(%rsp)	# tmp2091, MEM[(struct monotonic_buffer_resource *)_487].D.47489._vptr.memory_resource
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movaps	%xmm0, 432(%rsp)	# tmp1215, MEM <vector(2) long unsigned int> [(long unsigned int *)_487 + 16B]
# /usr/include/c++/16.1.1/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	pxor	%xmm0, %xmm0	# tmp1216
# /usr/include/c++/16.1.1/memory_resource:361:     : _M_current_buf(__buffer), _M_avail(__buffer_size),
	movq	%rbx, 424(%rsp)	# _1126, MEM[(struct monotonic_buffer_resource *)_487]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:363:       _M_upstream(__upstream),
	movq	%rbp, 448(%rsp)	# _683, MEM[(struct monotonic_buffer_resource *)_487]._M_upstream
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	%rbx, 456(%rsp)	# _1126, MEM[(struct monotonic_buffer_resource *)_487]._M_orig_buf
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	$65536, 464(%rsp)	#, MEM[(struct monotonic_buffer_resource *)_487]._M_orig_size
# /usr/include/c++/16.1.1/memory_resource:364:       _M_orig_buf(__buffer), _M_orig_size(__buffer_size)
	movq	$0, 472(%rsp)	#, MEM[(struct monotonic_buffer_resource *)_487]._M_head
# /usr/include/c++/16.1.1/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	movaps	%xmm0, 352(%rsp)	# tmp1216, MEM <vector(2) long unsigned int> [(long unsigned int *)_86]
.LEHB59:
# /usr/include/c++/16.1.1/memory_resource:275:     : unsynchronized_pool_resource(pool_options(), __upstream)
	call	_ZNSt3pmr28unsynchronized_pool_resourceC1ERKNS_12pool_optionsEPNS_15memory_resourceE@PLT	#
.LEHE59:
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rax	# current_mr, current_mr.84_276
# b6_allocators.cpp:231:     print_result(bench("4s. PMR pool", SP_REPS, [&] {
	leaq	.LC45(%rip), %rsi	#,
	leaq	560(%rsp), %rdi	#, tmp2097
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%rax, 56(%rsp)	# current_mr.84_276, %sfp
# ../../effects.hpp:693:     detail::current_mr = mr;
	movq	%r15, %fs:_ZN2fx6detail10current_mrE@tpoff	# tmp1724, current_mr
.LEHB60:
# b6_allocators.cpp:231:     print_result(bench("4s. PMR pool", SP_REPS, [&] {
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE60:
	leaq	352(%rsp), %rax	#, tmp2099
	movl	$3, %ebp	#, ivtmp_876
	movq	.LC12(%rip), %xmm4	#, _962
	movq	%rax, 32(%rsp)	# tmp2099, %sfp
	movhps	32(%rsp), %xmm4	# %sfp, _962
	movaps	%xmm4, 32(%rsp)	# _962, %sfp
	.p2align 4
	.p2align 3
.L487:
# b6_allocators.cpp:232:       CountHandler h;
	movl	$0, 84(%rsp)	#, MEM[(struct CountHandler *)_470]
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %r13	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%r13, %r13	# mr
	je	.L456	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	0(%r13), %rax	# mr_1158->_vptr.memory_resource, mr_1158->_vptr.memory_resource
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%r13, %rdi	# mr,
.LEHB61:
	call	*16(%rax)	# MEM[(int (*) () *)_1160 + 16B]
.LEHE61:
.L839:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movdqa	(%rsp), %xmm4	# %sfp, _801
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp1229
# ../../effects.hpp:469:                    : ::operator new(total);
	movq	%rax, %rbx	# raw, raw
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movb	$1, 100(%rax)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1164]._Coro_frame_needs_free
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%r13, 136(%rax)	# mr, MEM[(struct memory_resource * *)raw_1164 + 136B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rax), %rax	#, tmp1233
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movq	%rbx, %rdi	# raw,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movups	%xmm4, -80(%rax)	# _801, MEM <vector(2) long unsigned int> [(void (*<T17eb0>) (struct _ZZ4mainENKUlvE4_clEv.Frame *) *)raw_1164]
	movq	%r12, 8(%rax)	# tmp1660, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1164].__closure
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, -64(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1164 + 16B].aborted
	movq	$0, -56(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1164 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, -48(%rax)	#, MEM[(struct any *)raw_1164 + 32B]._M_manager
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, -40(%rax)	# tmp1229, MEM <vector(2) long unsigned int> [(void *)raw_1164 + 40B]
	movups	%xmm0, -24(%rax)	# tmp1229, MEM <vector(2) long unsigned int> [(void *)raw_1164 + 56B]
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 4(%rax)	#, MEM[(struct _Optional_payload_base *)raw_1164 + 80B]._M_engaged
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movl	%r14d, 16(%rax)	# tmp1717, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_1164 + 96B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp1233, MEM[(struct promise_type *)raw_1164 + 16B].D.150337.D.143627.result_ptr
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	call	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor	#
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	subw	$1, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1164]._Coro_frame_refcount
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	je	.L864	#,
.L458:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	32(%rsp), %xmm5	# %sfp, _962
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_(%rip), %rax	#, tmp2104
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	leaq	84(%rsp), %r13	#, tmp1661
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 392(%rsp)	#, MEM[(struct HandlerNode *)_86].on_return_any_fn
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%r13, 368(%rsp)	# tmp1661, MEM[(struct ScopedHandler *)_86].node.real_handler_ptr
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%rax, 376(%rsp)	# tmp2104, MEM[(struct ScopedHandler *)_86].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm5, 352(%rsp)	# _962, MEM <vector(2) long unsigned int> [(const void * *)_86]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.67_1175
	movq	%rax, 400(%rsp)	# stack_top.67_1175, MEM[(struct ScopedHandler *)_86].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 384(%rsp)	# stack_top.67_1175, MEM[(struct ScopedHandler *)_86].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	leaq	352(%rsp), %rax	#, tmp2105
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp2105, stack_top
.LEHB62:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1164]
	.p2align 4
	.p2align 3
.L462:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)raw_1164]
	je	.L865	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)raw_1164 + 16].D.150337.D.143627.effect_tag, _1190
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L463	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _1190, n_1197->effect_tag
	je	.L464	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L465:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_1218->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L866	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_1201->effect_tag, _1190
	jne	.L465	#,
.L464:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)raw_1164 + 16].D.150337.D.143627.payload_ptr, MEM[(struct promise_type &)raw_1164 + 16].D.150337.D.143627.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_1885->dispatch
.LEHE62:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)raw_1164 + 16].D.150337.D.143627.aborted
	je	.L462	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	leaq	352(%rsp), %rax	#, tmp2106
	cmpq	%rax, 24(%rbx)	# tmp2106, MEM[(struct PromiseAbortBase *)raw_1164 + 16B].abort_owner
	je	.L471	#,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	400(%rsp), %rax	# MEM[(struct ScopedHandler *)_86].saved, MEM[(struct ScopedHandler *)_86].saved
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_86].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	xorl	%eax, %eax	# tmp1274
.L484:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1164 + 8B]
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %rbp	#, ivtmp_876
	jne	.L487	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	$500000, 48(%rsp)	#, %sfp
	movq	.LC12(%rip), %xmm5	#, _582
	movq	%rax, 72(%rsp)	#, %sfp
	leaq	352(%rsp), %rax	#, tmp2111
	movq	%rax, 32(%rsp)	# tmp2111, %sfp
	movhps	32(%rsp), %xmm5	# %sfp, _582
	movaps	%xmm5, 32(%rsp)	# _582, %sfp
	.p2align 4
	.p2align 3
.L518:
# b6_allocators.cpp:232:       CountHandler h;
	movl	$0, 84(%rsp)	#, MEM[(struct CountHandler *)_470]
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rbp	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rbp, %rbp	# mr
	je	.L488	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	0(%rbp), %rax	# mr_1232->_vptr.memory_resource, mr_1232->_vptr.memory_resource
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%rbp, %rdi	# mr,
.LEHB63:
	call	*16(%rax)	# MEM[(int (*) () *)_1234 + 16B]
.LEHE63:
.L840:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movdqa	(%rsp), %xmm6	# %sfp, _801
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp1288
# ../../effects.hpp:469:                    : ::operator new(total);
	movq	%rax, %rbx	# raw, raw
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movb	$1, 100(%rax)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1238]._Coro_frame_needs_free
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rbp, 136(%rax)	# mr, MEM[(struct memory_resource * *)raw_1238 + 136B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rax), %rax	#, tmp1292
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movq	%rbx, %rdi	# raw,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movups	%xmm6, -80(%rax)	# _801, MEM <vector(2) long unsigned int> [(void (*<T17eb0>) (struct _ZZ4mainENKUlvE4_clEv.Frame *) *)raw_1238]
	movq	%r12, 8(%rax)	# tmp1660, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1238].__closure
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, -64(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1238 + 16B].aborted
	movq	$0, -56(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1238 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, -48(%rax)	#, MEM[(struct any *)raw_1238 + 32B]._M_manager
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, -40(%rax)	# tmp1288, MEM <vector(2) long unsigned int> [(void *)raw_1238 + 40B]
	movups	%xmm0, -24(%rax)	# tmp1288, MEM <vector(2) long unsigned int> [(void *)raw_1238 + 56B]
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 4(%rax)	#, MEM[(struct _Optional_payload_base *)raw_1238 + 80B]._M_engaged
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movl	%r14d, 16(%rax)	# tmp1717, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_1238 + 96B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp1292, MEM[(struct promise_type *)raw_1238 + 16B].D.150337.D.143627.result_ptr
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	call	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor	#
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	subw	$1, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1238]._Coro_frame_refcount
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	je	.L867	#,
.L490:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	32(%rsp), %xmm7	# %sfp, _582
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_(%rip), %rax	#, tmp2116
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 392(%rsp)	#, MEM[(struct HandlerNode *)_86].on_return_any_fn
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%r13, 368(%rsp)	# tmp1661, MEM[(struct ScopedHandler *)_86].node.real_handler_ptr
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%rax, 376(%rsp)	# tmp2116, MEM[(struct ScopedHandler *)_86].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm7, 352(%rsp)	# _582, MEM <vector(2) long unsigned int> [(const void * *)_86]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.67_1249
	movq	%rax, 400(%rsp)	# stack_top.67_1249, MEM[(struct ScopedHandler *)_86].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 384(%rsp)	# stack_top.67_1249, MEM[(struct ScopedHandler *)_86].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	leaq	352(%rsp), %rax	#, tmp2117
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp2117, stack_top
.LEHB64:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1238]
	.p2align 4
	.p2align 3
.L494:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)raw_1238]
	je	.L868	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)raw_1238 + 16].D.150337.D.143627.effect_tag, _1264
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L495	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _1264, n_1271->effect_tag
	je	.L496	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L497:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_1403->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L869	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_1275->effect_tag, _1264
	jne	.L497	#,
.L496:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)raw_1238 + 16].D.150337.D.143627.payload_ptr, MEM[(struct promise_type &)raw_1238 + 16].D.150337.D.143627.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_852->dispatch
.LEHE64:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)raw_1238 + 16].D.150337.D.143627.aborted
	je	.L494	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	leaq	352(%rsp), %rax	#, tmp2118
	cmpq	%rax, 24(%rbx)	# tmp2118, MEM[(struct PromiseAbortBase *)raw_1238 + 16B].abort_owner
	je	.L503	#,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	400(%rsp), %rax	# MEM[(struct ScopedHandler *)_86].saved, MEM[(struct ScopedHandler *)_86].saved
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_86].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	xorl	%eax, %eax	# tmp1333
.L516:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1238 + 8B]
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, 48(%rsp)	#, %sfp
	jne	.L518	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	608(%rsp), %rcx	#, tmp2123
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	movq	24(%rsp), %rsi	# %sfp, tmp1683
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	568(%rsp), %rdx	# MEM[(const struct basic_string *)_1987]._M_string_length, pretmp_903
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 592(%rsp)	# tmp2123, MEM[(struct _Alloc_hider *)_106]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rcx	# MEM[(const struct basic_string *)_1987]._M_dataplus._M_p, _1294
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rsi, %rcx	# tmp1683, _1294
	je	.L870	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 592(%rsp)	# _1294, MEM[(struct basic_string *)_106]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	576(%rsp), %rcx	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity
	movq	%rcx, 608(%rsp)	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity
	movq	%rsi, %rcx	# tmp1683, tmp1683
.L520:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	72(%rsp), %rax	# %sfp, _1140
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp1356
# b6_allocators.cpp:231:     print_result(bench("4s. PMR pool", SP_REPS, [&] {
	leaq	592(%rsp), %rdi	#, tmp2129
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 600(%rsp)	# pretmp_903, MEM[(struct basic_string *)_106]._M_string_length
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _1140, tmp1356
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 560(%rsp)	# tmp1683, MEM[(struct basic_string *)_1987]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 576(%rsp)	#, MEM[(char_type &)_1987 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 568(%rsp)	#, MEM[(struct basic_string *)_1987]._M_string_length
# bench.hpp:44: }
	movq	$500000, 624(%rsp)	#, MEM[(struct BenchResult *)_106].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 632(%rsp)	# tmp1356, MEM[(struct BenchResult *)_106].total_ns
.LEHB65:
# b6_allocators.cpp:231:     print_result(bench("4s. PMR pool", SP_REPS, [&] {
	call	_Z12print_resultRK11BenchResult	#
.LEHE65:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _281
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2130
	cmpq	%rax, %rdi	# tmp2130, _281
	je	.L521	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2131
	leaq	1(%rax), %rsi	#, _284
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L521:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _277
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _277
	je	.L522	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2133
	leaq	1(%rax), %rsi	#, _280
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L522:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	56(%rsp), %rax	# %sfp, current_mr.84_276
# b6_allocators.cpp:235:   }
	movq	%r15, %rdi	# tmp1724,
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%rax, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_276, current_mr
# b6_allocators.cpp:235:   }
	call	_ZNSt3pmr28unsynchronized_pool_resourceD1Ev@PLT	#
# b6_allocators.cpp:235:   }
	leaq	416(%rsp), %rdi	#, tmp2135
	call	_ZNSt3pmr25monotonic_buffer_resourceD1Ev@PLT	#
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	64(%rsp), %rdi	# %sfp,
	movl	$65536, %esi	#,
	call	_ZdlPvm@PLT	#
# b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	movzbl	_ZGVZ4mainE9mini_slab(%rip), %eax	#, _6
# b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	testb	%al, %al	# _6
	je	.L871	#,
.L523:
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rax	# current_mr, current_mr.84_288
# b6_allocators.cpp:241:     print_result(bench("5s. Free-list slab", SP_REPS, [&] {
	leaq	.LC46(%rip), %rsi	#,
	leaq	560(%rsp), %rdi	#, tmp2141
# ../../effects.hpp:692:       : prev_(detail::current_mr) {
	movq	%rax, 56(%rsp)	# current_mr.84_288, %sfp
# ../../effects.hpp:693:     detail::current_mr = mr;
	leaq	_ZZ4mainE9mini_slab(%rip), %rax	#, tmp2140
	movq	%rax, %fs:_ZN2fx6detail10current_mrE@tpoff	# tmp2140, current_mr
.LEHB66:
# b6_allocators.cpp:241:     print_result(bench("5s. Free-list slab", SP_REPS, [&] {
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0	#
.LEHE66:
	movq	$3, 48(%rsp)	#, %sfp
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm4, %xmm4	# tmp1710
	movaps	%xmm4, 32(%rsp)	# tmp1710, %sfp
	jmp	.L533	#
	.p2align 4,,10
	.p2align 3
.L532:
# ../../effects.hpp:871:     return *std::apply([this](auto &...lhs) { return run_push(lhs...); },
	leaq	176(%rsp), %rdi	#, tmp1414
	movq	%r15, %rsi	# tmp1724,
	movq	%rbx, 176(%rsp)	# raw, MEM <void *> [(void *)_1487]
.LEHB67:
	call	_ZN2fx2FxIiJ4TickEE8run_pushI12CountHandlerJEEESt8optionalINS_6detail15composed_returnIiJT_DpT0_EE4typeEERS8_DpRS9_	#
.LEHE67:
	movq	%rax, 416(%rsp)	# tmp1415, MEM[(struct optional *)_487]
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1329 + 8B]
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, 48(%rsp)	#, %sfp
	je	.L872	#,
.L533:
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	leaq	544+_ZZ4mainE9mini_slab(%rip), %rcx	#, tmp2144
# b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	movq	$0, 544+_ZZ4mainE9mini_slab(%rip)	#, mini_slab.storage_[1].next
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	movq	%rcx, 16+_ZZ4mainE9mini_slab(%rip)	# tmp2144, mini_slab.storage_[0].next
# b6_allocators.cpp:69:     head_ = &storage_[0];
	leaq	16+_ZZ4mainE9mini_slab(%rip), %rcx	#, tmp2146
	movq	%rcx, 1072+_ZZ4mainE9mini_slab(%rip)	# tmp2146, mini_slab.head_
# b6_allocators.cpp:243:       CountHandler h;
	movl	$0, 480(%rsp)	#, MEM[(struct CountHandler *)_1896]
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rbp	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rbp, %rbp	# mr
	je	.L524	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	0(%rbp), %rax	# mr_1323->_vptr.memory_resource, mr_1323->_vptr.memory_resource
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%rbp, %rdi	# mr,
.LEHB68:
	call	*16(%rax)	# MEM[(int (*) () *)_1325 + 16B]
.LEHE68:
.L841:
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movdqa	32(%rsp), %xmm3	# %sfp, tmp1710
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movdqa	(%rsp), %xmm1	# %sfp, _801
# ../../effects.hpp:469:                    : ::operator new(total);
	movq	%rax, %rbx	# raw, raw
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rbp, 136(%rax)	# mr, MEM[(struct memory_resource * *)raw_1329 + 136B]
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movb	$1, 100(%rax)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1329]._Coro_frame_needs_free
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rax), %rax	#, tmp1397
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movq	%rbx, %rdi	# raw,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movups	%xmm1, -80(%rax)	# _801, MEM <vector(2) long unsigned int> [(void (*<T17eb0>) (struct _ZZ4mainENKUlvE4_clEv.Frame *) *)raw_1329]
	movq	%r12, 8(%rax)	# tmp1660, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1329].__closure
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, -64(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1329 + 16B].aborted
	movq	$0, -56(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1329 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, -48(%rax)	#, MEM[(struct any *)raw_1329 + 32B]._M_manager
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm3, -40(%rax)	# tmp1710, MEM <vector(2) long unsigned int> [(void *)raw_1329 + 40B]
	movups	%xmm3, -24(%rax)	# tmp1710, MEM <vector(2) long unsigned int> [(void *)raw_1329 + 56B]
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 4(%rax)	#, MEM[(struct _Optional_payload_base *)raw_1329 + 80B]._M_engaged
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movl	%r14d, 16(%rax)	# tmp1717, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_1329 + 96B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp1397, MEM[(struct promise_type *)raw_1329 + 16B].D.150337.D.143627.result_ptr
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	call	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor	#
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	subw	$1, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1329]._Coro_frame_refcount
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	jne	.L532	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_1329 + 64B]._M_exception_object
	je	.L528	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _1331
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L528:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1329 + 32B]._M_manager, _1334
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _1334
	je	.L529	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _1333
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _1334
.L529:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpw	$0, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1329]._Coro_frame_refcount
	jne	.L532	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_1329 + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L531	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_1337->_vptr.memory_resource, mr_1337->_vptr.memory_resource
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# raw,
	call	*24(%rax)	# MEM[(int (*) () *)_1338 + 24B]
	jmp	.L532	#
.L868:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)raw_1238 + 64B]._M_exception_object, _1268
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _1268
	jne	.L873	#,
# /usr/include/c++/16.1.1/optional:229: 	    : _M_value(std::forward<_Args>(__args)...)
	movl	80(%rbx), %eax	# MEM[(int &)raw_1238 + 80], _1269
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1238 + 16B].aborted
	je	.L824	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	leaq	352(%rsp), %rcx	#, tmp2223
	cmpq	%rcx, 24(%rbx)	# tmp2223, MEM[(struct PromiseAbortBase *)raw_1238 + 16B].abort_owner
	je	.L503	#,
.L824:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	400(%rsp), %rdx	# MEM[(struct ScopedHandler *)_86].saved, MEM[(struct ScopedHandler *)_86].saved
	movq	%rdx, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_86].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	jmp	.L516	#
.L865:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)raw_1164 + 64B]._M_exception_object, _1194
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _1194
	jne	.L874	#,
# /usr/include/c++/16.1.1/optional:229: 	    : _M_value(std::forward<_Args>(__args)...)
	movl	80(%rbx), %eax	# MEM[(int &)raw_1164 + 80], _1195
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1164 + 16B].aborted
	je	.L825	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	leaq	352(%rsp), %rcx	#, tmp2224
	cmpq	%rcx, 24(%rbx)	# tmp2224, MEM[(struct PromiseAbortBase *)raw_1164 + 16B].abort_owner
	je	.L471	#,
.L825:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	400(%rsp), %rdx	# MEM[(struct ScopedHandler *)_86].saved, MEM[(struct ScopedHandler *)_86].saved
	movq	%rdx, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_86].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	jmp	.L484	#
.L864:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_1164 + 64B]._M_exception_object
	je	.L459	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _1166
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L459:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1164 + 32B]._M_manager, _1169
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _1169
	je	.L460	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _1168
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _1169
.L460:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpw	$0, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1164]._Coro_frame_refcount
	jne	.L458	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_1164 + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L461	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_1172->_vptr.memory_resource, mr_1172->_vptr.memory_resource
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# raw,
	call	*24(%rax)	# MEM[(int (*) () *)_1173 + 24B]
	jmp	.L458	#
.L867:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_1238 + 64B]._M_exception_object
	je	.L491	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _1240
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L491:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1238 + 32B]._M_manager, _1243
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _1243
	je	.L492	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _1242
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _1243
.L492:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpw	$0, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1238]._Coro_frame_refcount
	jne	.L490	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_1238 + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L493	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_1246->_vptr.memory_resource, mr_1246->_vptr.memory_resource
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# raw,
	call	*24(%rax)	# MEM[(int (*) () *)_1247 + 24B]
	jmp	.L490	#
.L524:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$144, %edi	#,
.LEHB69:
	call	_Znwm@PLT	#
.LEHE69:
	jmp	.L841	#
.L488:
	movl	$144, %edi	#,
.LEHB70:
	call	_Znwm@PLT	#
	jmp	.L840	#
.L456:
	movl	$144, %edi	#,
	call	_Znwm@PLT	#
.LEHE70:
	jmp	.L839	#
.L872:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%r15, %xmm5	# tmp1724, tmp1724
	movq	.LC12(%rip), %xmm3	#, _724
	movq	$500000, 48(%rsp)	#, %sfp
	movq	%rax, 64(%rsp)	#, %sfp
	punpcklqdq	%xmm5, %xmm3	# tmp1724, _724
	movaps	%xmm3, 32(%rsp)	# _724, %sfp
	.p2align 4
	.p2align 3
.L567:
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	leaq	544+_ZZ4mainE9mini_slab(%rip), %rcx	#, tmp2155
# b6_allocators.cpp:243:       CountHandler h;
	movl	$0, 84(%rsp)	#, MEM[(struct CountHandler *)_470]
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	movq	%rcx, 16+_ZZ4mainE9mini_slab(%rip)	# tmp2155, mini_slab.storage_[0].next
# b6_allocators.cpp:69:     head_ = &storage_[0];
	leaq	16+_ZZ4mainE9mini_slab(%rip), %rcx	#, tmp2157
# b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	movq	$0, 544+_ZZ4mainE9mini_slab(%rip)	#, mini_slab.storage_[1].next
# b6_allocators.cpp:69:     head_ = &storage_[0];
	movq	%rcx, 1072+_ZZ4mainE9mini_slab(%rip)	# tmp2157, mini_slab.head_
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rbp	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rbp, %rbp	# mr
	je	.L537	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	0(%rbp), %rax	# mr_1353->_vptr.memory_resource, mr_1353->_vptr.memory_resource
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%rbp, %rdi	# mr,
.LEHB71:
	call	*16(%rax)	# MEM[(int (*) () *)_1355 + 16B]
.LEHE71:
.L843:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movdqa	(%rsp), %xmm6	# %sfp, _801
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp1434
# ../../effects.hpp:469:                    : ::operator new(total);
	movq	%rax, %rbx	# raw, raw
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movb	$1, 100(%rax)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1359]._Coro_frame_needs_free
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rbp, 136(%rax)	# mr, MEM[(struct memory_resource * *)raw_1359 + 136B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rax), %rax	#, tmp1438
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movq	%rbx, %rdi	# raw,
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movups	%xmm6, -80(%rax)	# _801, MEM <vector(2) long unsigned int> [(void (*<T17eb0>) (struct _ZZ4mainENKUlvE4_clEv.Frame *) *)raw_1359]
	movq	%r12, 8(%rax)	# tmp1660, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1359].__closure
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, -64(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1359 + 16B].aborted
	movq	$0, -56(%rax)	#, MEM[(struct PromiseAbortBase *)raw_1359 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, -48(%rax)	#, MEM[(struct any *)raw_1359 + 32B]._M_manager
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, -40(%rax)	# tmp1434, MEM <vector(2) long unsigned int> [(void *)raw_1359 + 40B]
	movups	%xmm0, -24(%rax)	# tmp1434, MEM <vector(2) long unsigned int> [(void *)raw_1359 + 56B]
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 4(%rax)	#, MEM[(struct _Optional_payload_base *)raw_1359 + 80B]._M_engaged
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	movl	%r14d, 16(%rax)	# tmp1717, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_1359 + 96B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp1438, MEM[(struct promise_type *)raw_1359 + 16B].D.150337.D.143627.result_ptr
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	call	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor	#
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	subw	$1, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1359]._Coro_frame_refcount
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	je	.L875	#,
.L539:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	32(%rsp), %xmm7	# %sfp, _724
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI4Tick12CountHandleriiEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_(%rip), %rax	#, tmp2161
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 520(%rsp)	#, MEM[(struct HandlerNode *)_1896].on_return_any_fn
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%r13, 496(%rsp)	# tmp1661, MEM[(struct ScopedHandler *)_1896].node.real_handler_ptr
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%rax, 504(%rsp)	# tmp2161, MEM[(struct ScopedHandler *)_1896].node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm7, 480(%rsp)	# _724, MEM <vector(2) long unsigned int> [(const void * *)_1896]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.67_1370
	movq	%rax, 528(%rsp)	# stack_top.67_1370, MEM[(struct ScopedHandler *)_1896].saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 512(%rsp)	# stack_top.67_1370, MEM[(struct ScopedHandler *)_1896].node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%r15, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp1724, stack_top
.LEHB72:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1359]
	.p2align 4
	.p2align 3
.L543:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)raw_1359]
	je	.L876	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)raw_1359 + 16].D.150337.D.143627.effect_tag, _1385
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	jne	.L548	#,
	jmp	.L544	#
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L546:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_227->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L877	#,
.L548:
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	#* n, _1385
	jne	.L546	#,
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)raw_1359 + 16].D.150337.D.143627.payload_ptr, MEM[(struct promise_type &)raw_1359 + 16].D.150337.D.143627.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_1292->dispatch
.LEHE72:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)raw_1359 + 16].D.150337.D.143627.aborted
	je	.L543	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%r15, 24(%rbx)	# tmp1724, MEM[(struct PromiseAbortBase *)raw_1359 + 16B].abort_owner
	je	.L552	#,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	528(%rsp), %rax	# MEM[(struct ScopedHandler *)_1896].saved, MEM[(struct ScopedHandler *)_1896].saved
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1896].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	xorl	%eax, %eax	# tmp1479
.L565:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1359 + 8B]
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, 48(%rsp)	#, %sfp
	jne	.L567	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	608(%rsp), %rcx	#, tmp2167
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	movq	24(%rsp), %rsi	# %sfp, tmp1683
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	568(%rsp), %rdx	# MEM[(const struct basic_string *)_1987]._M_string_length, pretmp_918
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 592(%rsp)	# tmp2167, MEM[(struct _Alloc_hider *)_106]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rcx	# MEM[(const struct basic_string *)_1987]._M_dataplus._M_p, _1415
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rsi, %rcx	# tmp1683, _1415
	je	.L878	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 592(%rsp)	# _1415, MEM[(struct basic_string *)_106]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	576(%rsp), %rcx	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity
	movq	%rcx, 608(%rsp)	# MEM[(struct basic_string &)_1987].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity
	movq	%rsi, %rcx	# tmp1683, tmp1683
.L569:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	64(%rsp), %rax	# %sfp, _1307
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# tmp1502
# b6_allocators.cpp:241:     print_result(bench("5s. Free-list slab", SP_REPS, [&] {
	leaq	592(%rsp), %rdi	#, tmp2173
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 600(%rsp)	# pretmp_918, MEM[(struct basic_string *)_106]._M_string_length
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _1307, tmp1502
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 560(%rsp)	# tmp1683, MEM[(struct basic_string *)_1987]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 576(%rsp)	#, MEM[(char_type &)_1987 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 568(%rsp)	#, MEM[(struct basic_string *)_1987]._M_string_length
# bench.hpp:44: }
	movq	$500000, 624(%rsp)	#, MEM[(struct BenchResult *)_106].iters
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	movsd	%xmm0, 632(%rsp)	# tmp1502, MEM[(struct BenchResult *)_106].total_ns
.LEHB73:
# b6_allocators.cpp:241:     print_result(bench("5s. Free-list slab", SP_REPS, [&] {
	call	_Z12print_resultRK11BenchResult	#
.LEHE73:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _293
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2174
	cmpq	%rax, %rdi	# tmp2174, _293
	je	.L570	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2175
	leaq	1(%rax), %rsi	#, _296
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L570:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _289
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _289
	je	.L571	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2177
	leaq	1(%rax), %rsi	#, _292
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L571:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	56(%rsp), %rax	# %sfp, current_mr.84_288
# /usr/include/c++/16.1.1/bits/ostream.h:644:       if (__out.width() != 0)
	leaq	_ZSt4cout(%rip), %rcx	#, tmp2179
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%rax, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_288, current_mr
# /usr/include/c++/16.1.1/bits/ostream.h:644:       if (__out.width() != 0)
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, cout._vptr.basic_ostream
	movb	$10, 480(%rsp)	#, MEM[(char *)_1896]
# /usr/include/c++/16.1.1/bits/ios_base.h:790:     { return _M_width; }
	movq	-24(%rax), %rax	# MEM[(long int *)_1421 + -24B], MEM[(long int *)_1421 + -24B]
# /usr/include/c++/16.1.1/bits/ostream.h:644:       if (__out.width() != 0)
	cmpq	$0, 16(%rcx,%rax)	#, MEM[(const struct ios_base *)_1424]._M_width
	jne	.L879	#,
# /usr/include/c++/16.1.1/bits/ostream.h:646:       __out.put(__c);
	movl	$10, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB74:
	call	_ZNSo3putEc@PLT	#
.LEHE74:
.L573:
# b6_allocators.cpp:250: }
	movq	648(%rsp), %rax	# D.204940, tmp1899
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1899
	jne	.L880	#,
	addq	$664, %rsp	#,
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
.L876:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)raw_1359 + 64B]._M_exception_object, _1389
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _1389
	jne	.L881	#,
# /usr/include/c++/16.1.1/optional:229: 	    : _M_value(std::forward<_Args>(__args)...)
	movl	80(%rbx), %eax	# MEM[(int &)raw_1359 + 80], _1390
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1359 + 16B].aborted
	je	.L823	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%r15, 24(%rbx)	# tmp1724, MEM[(struct PromiseAbortBase *)raw_1359 + 16B].abort_owner
	je	.L552	#,
.L823:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	528(%rsp), %rdx	# MEM[(struct ScopedHandler *)_1896].saved, MEM[(struct ScopedHandler *)_1896].saved
	movq	%rdx, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1896].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	jmp	.L565	#
.L875:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_1359 + 64B]._M_exception_object
	je	.L540	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _1361
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L540:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1359 + 32B]._M_manager, _1364
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _1364
	je	.L541	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _1363
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _1364
.L541:
# b6_allocators.cpp:216:   auto sp_make = []() -> Tick::Fx<int> { co_return perform(Tick{}); };
	cmpw	$0, 98(%rbx)	#, MEM[(struct _ZZ4mainENKUlvE4_clEv.Frame *)raw_1359]._Coro_frame_refcount
	jne	.L539	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_1359 + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L542	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_1367->_vptr.memory_resource, mr_1367->_vptr.memory_resource
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# raw,
	call	*24(%rax)	# MEM[(int (*) () *)_1368 + 24B]
	jmp	.L539	#
.L537:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$144, %edi	#,
.LEHB75:
	call	_Znwm@PLT	#
.LEHE75:
	jmp	.L843	#
.L552:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1359 + 32B]._M_manager, _1398
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp1469
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1359 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp1469, _1398
	je	.L561	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _1398
	je	.L629	#,
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _1375
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	352(%rsp), %rdx	#, tmp2165
	movl	$1, %edi	#,
	call	*%rax	# _1398
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	352(%rsp), %rax	# MEM[(union _Arg *)_86]._M_typeinfo, _1400
.L562:
	movq	8(%rax), %rdi	# MEM[(const char * *)_1400 + 8B], _1404
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _1405
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _1405, _1404
	je	.L561	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_1404
	je	.L563	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_1405
	leaq	1(%rsi), %rax	#, tmp1707
	cmove	%rax, %rsi	# tmp1707,, _1405
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _1412
	jne	.L563	#,
.L561:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	528(%rsp), %rdx	# MEM[(struct ScopedHandler *)_1896].saved, MEM[(struct ScopedHandler *)_1896].saved
# /usr/include/c++/16.1.1/any:516: 	return static_cast<_ValueType>(std::move(*__p));
	movl	40(%rbx), %eax	# MEM[(type &)raw_1359 + 40], _1377
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rdx, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1896].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	jmp	.L565	#
.L503:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1238 + 32B]._M_manager, _1277
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp1323
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1238 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp1323, _1277
	je	.L512	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _1277
	je	.L628	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	176(%rsp), %rdx	#, tmp1324
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _1254
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _1277
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	176(%rsp), %rax	# MEM[(union _Arg *)_1487]._M_typeinfo, _1279
.L513:
	movq	8(%rax), %rdi	# MEM[(const char * *)_1279 + 8B], _1283
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _1284
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _1284, _1283
	je	.L512	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_1283
	je	.L514	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_1284
	leaq	1(%rsi), %rax	#, tmp1703
	cmove	%rax, %rsi	# tmp1703,, _1284
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _1291
	jne	.L514	#,
.L512:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	400(%rsp), %rdx	# MEM[(struct ScopedHandler *)_86].saved, MEM[(struct ScopedHandler *)_86].saved
# /usr/include/c++/16.1.1/any:516: 	return static_cast<_ValueType>(std::move(*__p));
	movl	40(%rbx), %eax	# MEM[(type &)raw_1238 + 40], _1256
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rdx, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_86].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	jmp	.L516	#
.L471:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1164 + 32B]._M_manager, _1203
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp1264
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1164 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp1264, _1203
	je	.L480	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _1203
	je	.L627	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	176(%rsp), %rdx	#, tmp1265
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _1180
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _1203
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	176(%rsp), %rax	# MEM[(union _Arg *)_1487]._M_typeinfo, _1205
.L481:
	movq	8(%rax), %rdi	# MEM[(const char * *)_1205 + 8B], _1209
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _1210
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _1210, _1209
	je	.L480	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_1209
	je	.L482	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_1210
	leaq	1(%rsi), %rax	#, tmp1699
	cmove	%rax, %rsi	# tmp1699,, _1210
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _1217
	jne	.L482	#,
.L480:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	400(%rsp), %rdx	# MEM[(struct ScopedHandler *)_86].saved, MEM[(struct ScopedHandler *)_86].saved
# /usr/include/c++/16.1.1/any:516: 	return static_cast<_ValueType>(std::move(*__p));
	movl	40(%rbx), %eax	# MEM[(type &)raw_1164 + 40], _1182
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rdx, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_86].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	jmp	.L484	#
.L423:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_1025 + 32B]._M_manager, _1064
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp1131
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_1025 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp1131, _1064
	je	.L432	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _1064
	je	.L626	#,
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _1041
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	416(%rsp), %rdx	#, tmp2071
	movl	$1, %edi	#,
	call	*%rax	# _1064
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	416(%rsp), %rax	# MEM[(union _Arg *)_487]._M_typeinfo, _1066
.L433:
	movq	8(%rax), %rdi	# MEM[(const char * *)_1066 + 8B], _1070
	movq	8+_ZTIi(%rip), %rsi	# MEM[(const char * *)&_ZTIi + 8B], _1071
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _1071, _1070
	je	.L432	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_1070
	je	.L434	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	cmpb	$42, (%rsi)	#, *_1071
	leaq	1(%rsi), %rax	#, tmp1695
	cmove	%rax, %rsi	# tmp1695,, _1071
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _1078
	jne	.L434	#,
.L432:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	528(%rsp), %rdx	# MEM[(struct ScopedHandler *)_1896].saved, MEM[(struct ScopedHandler *)_1896].saved
# /usr/include/c++/16.1.1/any:516: 	return static_cast<_ValueType>(std::move(*__p));
	movl	40(%rbx), %eax	# MEM[(type &)raw_1025 + 40], _1043
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rdx, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1896].saved, stack_top
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
	jmp	.L436	#
.L879:
# /usr/include/c++/16.1.1/bits/ostream.h:645: 	return __ostream_insert(__out, &__c, 1);
	movl	$1, %edx	#,
	movq	%r15, %rsi	# tmp1724,
	movq	%rcx, %rdi	# tmp2179,
.LEHB76:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE76:
# /usr/include/c++/16.1.1/bits/ostream.h:645: 	return __ostream_insert(__out, &__c, 1);
	jmp	.L573	#
.L542:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
	movq	%rbx, %rdi	# raw,
	call	_ZdlPvm@PLT	#
	jmp	.L539	#
.L493:
	movl	$144, %esi	#,
	movq	%rbx, %rdi	# raw,
	call	_ZdlPvm@PLT	#
	jmp	.L490	#
.L461:
	movl	$144, %esi	#,
	movq	%rbx, %rdi	# raw,
	call	_ZdlPvm@PLT	#
	jmp	.L458	#
.L531:
	movl	$144, %esi	#,
	movq	%rbx, %rdi	# raw,
	call	_ZdlPvm@PLT	#
	jmp	.L532	#
.L413:
	movl	$144, %esi	#,
	movq	%rbx, %rdi	# raw,
	call	_ZdlPvm@PLT	#
	jmp	.L410	#
.L447:
	movl	$144, %esi	#,
	movq	%rbx, %rdi	# raw,
	call	_ZdlPvm@PLT	#
	jmp	.L448	#
.L404:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:487: 	this->_M_mutate(this->size(), size_type(0), __s, __n);
	movl	$1, %r8d	#,
	leaq	.LC37(%rip), %rcx	#,
	xorl	%edx, %edx	#
	movl	$25, %esi	#,
	leaq	592(%rsp), %rdi	#, tmp2052
.LEHB77:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm	#
.LEHE77:
	jmp	.L405	#
.L871:
# b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	leaq	_ZGVZ4mainE9mini_slab(%rip), %rdi	#,
	call	__cxa_guard_acquire@PLT	#
# b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	testl	%eax, %eax	# _7
	je	.L523	#,
# b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	call	_ZNSt3pmr20get_default_resourceEv@PLT	#
# b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	xorl	%edx, %edx	#
# b6_allocators.cpp:75:       : fallback_(fallback) {
	leaq	16+_ZTV12FreeListSlabILm520ELm2EE(%rip), %rcx	#, tmp2136
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	leaq	_ZN12FreeListSlabILm520ELm2EED1Ev(%rip), %rdi	#,
# b6_allocators.cpp:75:       : fallback_(fallback) {
	movq	%rax, 1080+_ZZ4mainE9mini_slab(%rip)	# _8, mini_slab.fallback_
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	leaq	544+_ZZ4mainE9mini_slab(%rip), %rax	#, tmp2137
	movq	%rax, 16+_ZZ4mainE9mini_slab(%rip)	# tmp2137, mini_slab.storage_[0].next
# b6_allocators.cpp:69:     head_ = &storage_[0];
	subq	$528, %rax	#, tmp2138
# b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	movq	%rdx, 544+_ZZ4mainE9mini_slab(%rip)	#, mini_slab.storage_[1].next
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	leaq	-16(%rax), %rsi	#,
	leaq	__dso_handle(%rip), %rdx	#,
# b6_allocators.cpp:75:       : fallback_(fallback) {
	movq	%rcx, _ZZ4mainE9mini_slab(%rip)	# tmp2136, mini_slab.D.150937._vptr.memory_resource
# b6_allocators.cpp:69:     head_ = &storage_[0];
	movq	%rax, 1072+_ZZ4mainE9mini_slab(%rip)	# tmp2138, mini_slab.head_
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	call	__cxa_atexit@PLT	#
# b6_allocators.cpp:239:     static FreeListSlab<kFrameSlot, 2> mini_slab;
	leaq	_ZGVZ4mainE9mini_slab(%rip), %rdi	#,
	call	__cxa_guard_release@PLT	#
	jmp	.L523	#
.L856:
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	leaq	_ZGVZ4mainE4slab(%rip), %rdi	#,
	call	__cxa_guard_acquire@PLT	#
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	testl	%eax, %eax	# _4
	je	.L384	#,
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	call	_ZNSt3pmr20get_default_resourceEv@PLT	#
# b6_allocators.cpp:75:       : fallback_(fallback) {
	leaq	16+_ZTV12FreeListSlabILm520ELm4EE(%rip), %rcx	#, tmp2013
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	leaq	__dso_handle(%rip), %rdx	#,
# b6_allocators.cpp:75:       : fallback_(fallback) {
	movq	%rax, 2136+_ZZ4mainE4slab(%rip)	# _5, slab.fallback_
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	leaq	544+_ZZ4mainE4slab(%rip), %rax	#, tmp2014
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	leaq	_ZN12FreeListSlabILm520ELm4EED1Ev(%rip), %rdi	#,
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	movq	%rax, 16+_ZZ4mainE4slab(%rip)	# tmp2014, slab.storage_[0].next
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	addq	$528, %rax	#, tmp2015
	movq	%rax, 544+_ZZ4mainE4slab(%rip)	# tmp2015, slab.storage_[1].next
# b6_allocators.cpp:67:       storage_[i].next = &storage_[i + 1];
	addq	$528, %rax	#, tmp2016
	movq	%rax, 1072+_ZZ4mainE4slab(%rip)	# tmp2016, slab.storage_[2].next
# b6_allocators.cpp:69:     head_ = &storage_[0];
	subq	$1584, %rax	#, tmp2017
# b6_allocators.cpp:75:       : fallback_(fallback) {
	movq	%rcx, _ZZ4mainE4slab(%rip)	# tmp2013, slab.D.149010._vptr.memory_resource
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	leaq	-16(%rax), %rsi	#,
# b6_allocators.cpp:68:     storage_[Capacity - 1].next = nullptr;
	xorl	%ecx, %ecx	#
	movq	%rcx, 1600+_ZZ4mainE4slab(%rip)	#, slab.storage_[3].next
# b6_allocators.cpp:69:     head_ = &storage_[0];
	movq	%rax, 2128+_ZZ4mainE4slab(%rip)	# tmp2017, slab.head_
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	call	__cxa_atexit@PLT	#
# b6_allocators.cpp:194:     static FreeListSlab<kFrameSlot, 4> slab;
	leaq	_ZGVZ4mainE4slab(%rip), %rdi	#,
	call	__cxa_guard_release@PLT	#
	jmp	.L384	#
.L863:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	leal	1(%rdx), %ecx	#, _1115
	leaq	608(%rsp), %rdi	#, tmp1191
	rep movsb	# MEM <char[1:(sizetype) _1115]> [(void *)_1987 + 16B]
	movq	24(%rsp), %rcx	# %sfp, tmp1683
	jmp	.L453	#
.L870:
	leal	1(%rdx), %ecx	#, _1298
	leaq	608(%rsp), %rdi	#, tmp1349
	rep movsb	# MEM <char[1:(sizetype) _1298]> [(void *)_1987 + 16B]
	movq	24(%rsp), %rcx	# %sfp, tmp1683
	jmp	.L520	#
.L878:
	leal	1(%rdx), %ecx	#, _1419
	leaq	608(%rsp), %rdi	#, tmp1495
	rep movsb	# MEM <char[1:(sizetype) _1419]> [(void *)_1987 + 16B]
	movq	24(%rsp), %rcx	# %sfp, tmp1683
	jmp	.L569	#
.L849:
	leal	1(%rdx), %ecx	#, _648
	leaq	608(%rsp), %rdi	#, tmp724
	rep movsb	# MEM <char[1:(sizetype) _648]> [(void *)_1987 + 16B]
	movq	24(%rsp), %rcx	# %sfp, tmp1683
	jmp	.L321	#
.L853:
	leal	1(%rdx), %ecx	#, _723
	leaq	608(%rsp), %rdi	#, tmp819
	rep movsb	# MEM <char[1:(sizetype) _723]> [(void *)_1987 + 16B]
	movq	24(%rsp), %rcx	# %sfp, tmp1683
	jmp	.L344	#
.L854:
	leal	1(%rdx), %ecx	#, _754
	leaq	608(%rsp), %rdi	#, tmp888
	rep movsb	# MEM <char[1:(sizetype) _754]> [(void *)_1987 + 16B]
	movq	24(%rsp), %rcx	# %sfp, tmp1683
	jmp	.L364	#
.L855:
	leal	1(%rdx), %ecx	#, _797
	leaq	608(%rsp), %rdi	#, tmp948
	rep movsb	# MEM <char[1:(sizetype) _797]> [(void *)_1987 + 16B]
	movq	24(%rsp), %rcx	# %sfp, tmp1683
	jmp	.L381	#
.L857:
	leal	1(%rdx), %ecx	#, _830
	leaq	608(%rsp), %rdi	#, tmp1033
	rep movsb	# MEM <char[1:(sizetype) _830]> [(void *)_1987 + 16B]
	movq	24(%rsp), %rcx	# %sfp, tmp1683
	jmp	.L401	#
.L629:
# /usr/include/c++/16.1.1/any:341: 	return typeid(void);
	leaq	_ZTIv(%rip), %rax	#, _1400
	jmp	.L562	#
.L628:
	leaq	_ZTIv(%rip), %rax	#, _1279
	jmp	.L513	#
.L627:
	leaq	_ZTIv(%rip), %rax	#, _1205
	jmp	.L481	#
.L626:
	leaq	_ZTIv(%rip), %rax	#, _1066
	jmp	.L433	#
.L880:
# b6_allocators.cpp:250: }
	call	__stack_chk_fail@PLT	#
.L862:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	416(%rsp), %rdi	#, tmp2068
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 416(%rsp)	# _1055, MEM[(struct exception_ptr *)_487]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	648(%rsp), %rax	# D.204940, tmp1888
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1888
	jne	.L882	#,
	leaq	416(%rsp), %rdi	#, tmp2069
.LEHB78:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE78:
.L881:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	352(%rsp), %rdi	#, tmp2162
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 352(%rsp)	# _1389, MEM[(struct exception_ptr *)_86]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	648(%rsp), %rax	# D.204940, tmp1897
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1897
	jne	.L883	#,
	leaq	352(%rsp), %rdi	#, tmp2163
.LEHB79:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE79:
.L882:
	call	__stack_chk_fail@PLT	#
.L874:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	176(%rsp), %rdi	#, tmp2107
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 176(%rsp)	# _1194, MEM[(struct exception_ptr *)_1487]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	648(%rsp), %rax	# D.204940, tmp1891
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1891
	jne	.L884	#,
	leaq	176(%rsp), %rdi	#, tmp2108
.LEHB80:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE80:
.L873:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	176(%rsp), %rdi	#, tmp2119
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 176(%rsp)	# _1268, MEM[(struct exception_ptr *)_1487]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	648(%rsp), %rax	# D.204940, tmp1894
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1894
	jne	.L885	#,
	leaq	176(%rsp), %rdi	#, tmp2120
.LEHB81:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE81:
.L883:
	call	__stack_chk_fail@PLT	#
.L884:
	call	__stack_chk_fail@PLT	#
.L885:
	call	__stack_chk_fail@PLT	#
.L673:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	movq	%rax, %rbp	#, tmp1811
	jmp	.L478	#
.L676:
	movq	%rax, %rbp	#, tmp1819
	jmp	.L510	#
.L669:
	movq	%rax, %rbp	#, tmp1795
	jmp	.L430	#
.L680:
	movq	%rax, %rbp	#, tmp1836
	jmp	.L559	#
.L653:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%rax, %rdi	# tmp1863, tmp1649
	jmp	.L618	#
.L678:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rbp	#, tmp1830
	jmp	.L535	#
.L651:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	# tmp1862, tmp1419
	jmp	.L536	#
.L652:
	movq	%rax, %rbp	#, tmp1861
	jmp	.L615	#
.L649:
	movq	%rax, %rbx	#, tmp1857
	jmp	.L609	#
.L869:
	jmp	.L495	#
.L801:
	jmp	.L802	#
.L866:
	jmp	.L463	#
.L799:
	jmp	.L800	#
.L645:
	movq	%rax, %rbp	# tmp1856, tmp1146
	jmp	.L438	#
.L650:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%rax, %rbx	# tmp1859, tmp1628
	jmp	.L612	#
.L647:
# b6_allocators.cpp:235:   }
	movq	%rax, %rbx	# tmp1860, tmp1633
	jmp	.L613	#
.L646:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	#, tmp1855
	jmp	.L605	#
.L665:
# ../../effects.hpp:534:     if (h)
	movq	%rax, %rbp	#, tmp1778
	jmp	.L378	#
.L634:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	#, tmp1844
	jmp	.L584	#
.L638:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%rax, %rbx	# tmp1847, tmp1567
	jmp	.L591	#
.L635:
# b6_allocators.cpp:190:   }
	movq	%rax, %rbx	# tmp1848, tmp1572
	jmp	.L592	#
.L639:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	# tmp1850, tmp992
	jmp	.L391	#
.L644:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	%rax, %rbp	#, tmp1852
	jmp	.L599	#
.L877:
	jmp	.L544	#
.L648:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	# tmp1858, tmp1279
	jmp	.L486	#
.L860:
	jmp	.L415	#
.L641:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%rax, %rdi	# tmp1851, tmp1588
	jmp	.L597	#
.L662:
	movq	%rax, %rbx	# tmp1771, tmp871
	jmp	.L362	#
.L656:
	movq	%rax, %rbx	# tmp1759, tmp769
	jmp	.L342	#
.L655:
# ../../effects.hpp:534:     if (h)
	movq	%rax, %rbp	#, tmp1753
	jmp	.L318	#
.L654:
	movq	%rax, %rbp	#, tmp1750
	jmp	.L311	#
.L803:
	jmp	.L804	#
.L659:
	movq	%rax, %rbp	#, tmp1762
	jmp	.L340	#
.L640:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	#, tmp1849
	jmp	.L594	#
.L797:
	jmp	.L798	#
.L664:
# ../../effects.hpp:534:     if (h)
	movq	%rax, %rbp	#, tmp1775
	jmp	.L371	#
.L630:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	# tmp1841, tmp702
	leaq	576(%rsp), %rax	#, tmp1683
	movq	%rax, 24(%rsp)	# tmp1683, %sfp
	jmp	.L313	#
.L657:
# ../../effects.hpp:534:     if (h)
	movq	%rax, %rbp	#, tmp1758
	jmp	.L330	#
.L631:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	#, tmp1840
	jmp	.L574	#
.L637:
	movq	%rax, %rbx	#, tmp1845
	jmp	.L588	#
.L666:
# ../../effects.hpp:534:     if (h)
	movq	%rax, %rbp	#, tmp1783
	jmp	.L389	#
.L663:
	movq	%rax, %rbp	#, tmp1770
	jmp	.L360	#
.L667:
	movq	%rax, %rbp	#, tmp1786
	jmp	.L397	#
.L633:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%rax, %rbx	# tmp1843, tmp1541
	jmp	.L581	#
.L660:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%rax, %rbx	# tmp1767, tmp851
	jmp	.L362	#
.L671:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rbp	#, tmp1804
	jmp	.L451	#
.L661:
# ../../effects.hpp:534:     if (h)
	movq	%rax, %rbp	#, tmp1766
	jmp	.L352	#
.L658:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%rax, %rbx	# tmp1763, tmp799
	jmp	.L342	#
.L632:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	#, tmp1842
	jmp	.L578	#
.L636:
	movq	%rax, %rbx	# tmp1846, tmp926
	jmp	.L373	#
.L642:
	movq	%rax, %rbx	# tmp1854, tmp1600
	jmp	.L602	#
.L643:
	movq	%rax, %rbx	# tmp1853, tmp1592
	jmp	.L600	#
	.section	.gcc_except_table
.LLSDA6266:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6266-.LLSDACSB6266
.LLSDACSB6266:
	.uleb128 .LEHB16-.LFB6266
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB6266
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L630-.LFB6266
	.uleb128 0
	.uleb128 .LEHB18-.LFB6266
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L654-.LFB6266
	.uleb128 0
	.uleb128 .LEHB19-.LFB6266
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L630-.LFB6266
	.uleb128 0
	.uleb128 .LEHB20-.LFB6266
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L655-.LFB6266
	.uleb128 0
	.uleb128 .LEHB21-.LFB6266
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L631-.LFB6266
	.uleb128 0
	.uleb128 .LEHB22-.LFB6266
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB6266
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L633-.LFB6266
	.uleb128 0
	.uleb128 .LEHB24-.LFB6266
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L656-.LFB6266
	.uleb128 0
	.uleb128 .LEHB25-.LFB6266
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L657-.LFB6266
	.uleb128 0
	.uleb128 .LEHB26-.LFB6266
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L658-.LFB6266
	.uleb128 0
	.uleb128 .LEHB27-.LFB6266
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L659-.LFB6266
	.uleb128 0
	.uleb128 .LEHB28-.LFB6266
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L632-.LFB6266
	.uleb128 0
	.uleb128 .LEHB29-.LFB6266
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB6266
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L660-.LFB6266
	.uleb128 0
	.uleb128 .LEHB31-.LFB6266
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L661-.LFB6266
	.uleb128 0
	.uleb128 .LEHB32-.LFB6266
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L662-.LFB6266
	.uleb128 0
	.uleb128 .LEHB33-.LFB6266
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L663-.LFB6266
	.uleb128 0
	.uleb128 .LEHB34-.LFB6266
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L634-.LFB6266
	.uleb128 0
	.uleb128 .LEHB35-.LFB6266
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB6266
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L635-.LFB6266
	.uleb128 0
	.uleb128 .LEHB37-.LFB6266
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L638-.LFB6266
	.uleb128 0
	.uleb128 .LEHB38-.LFB6266
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L636-.LFB6266
	.uleb128 0
	.uleb128 .LEHB39-.LFB6266
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L664-.LFB6266
	.uleb128 0
	.uleb128 .LEHB40-.LFB6266
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L636-.LFB6266
	.uleb128 0
	.uleb128 .LEHB41-.LFB6266
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L665-.LFB6266
	.uleb128 0
	.uleb128 .LEHB42-.LFB6266
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L637-.LFB6266
	.uleb128 0
	.uleb128 .LEHB43-.LFB6266
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L641-.LFB6266
	.uleb128 0
	.uleb128 .LEHB44-.LFB6266
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L639-.LFB6266
	.uleb128 0
	.uleb128 .LEHB45-.LFB6266
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L666-.LFB6266
	.uleb128 0
	.uleb128 .LEHB46-.LFB6266
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L639-.LFB6266
	.uleb128 0
	.uleb128 .LEHB47-.LFB6266
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L667-.LFB6266
	.uleb128 0
	.uleb128 .LEHB48-.LFB6266
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L640-.LFB6266
	.uleb128 0
	.uleb128 .LEHB49-.LFB6266
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L642-.LFB6266
	.uleb128 0
	.uleb128 .LEHB50-.LFB6266
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L644-.LFB6266
	.uleb128 0
	.uleb128 .LEHB51-.LFB6266
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB6266
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L645-.LFB6266
	.uleb128 0
	.uleb128 .LEHB53-.LFB6266
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L797-.LFB6266
	.uleb128 0
	.uleb128 .LEHB54-.LFB6266
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L671-.LFB6266
	.uleb128 0
	.uleb128 .LEHB55-.LFB6266
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L645-.LFB6266
	.uleb128 0
	.uleb128 .LEHB56-.LFB6266
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L645-.LFB6266
	.uleb128 0
	.uleb128 .LEHB57-.LFB6266
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L646-.LFB6266
	.uleb128 0
	.uleb128 .LEHB58-.LFB6266
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LFB6266
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L647-.LFB6266
	.uleb128 0
	.uleb128 .LEHB60-.LFB6266
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L650-.LFB6266
	.uleb128 0
	.uleb128 .LEHB61-.LFB6266
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L648-.LFB6266
	.uleb128 0
	.uleb128 .LEHB62-.LFB6266
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L799-.LFB6266
	.uleb128 0
	.uleb128 .LEHB63-.LFB6266
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L648-.LFB6266
	.uleb128 0
	.uleb128 .LEHB64-.LFB6266
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L801-.LFB6266
	.uleb128 0
	.uleb128 .LEHB65-.LFB6266
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L649-.LFB6266
	.uleb128 0
	.uleb128 .LEHB66-.LFB6266
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L653-.LFB6266
	.uleb128 0
	.uleb128 .LEHB67-.LFB6266
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L678-.LFB6266
	.uleb128 0
	.uleb128 .LEHB68-.LFB6266
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L651-.LFB6266
	.uleb128 0
	.uleb128 .LEHB69-.LFB6266
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L651-.LFB6266
	.uleb128 0
	.uleb128 .LEHB70-.LFB6266
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L648-.LFB6266
	.uleb128 0
	.uleb128 .LEHB71-.LFB6266
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L651-.LFB6266
	.uleb128 0
	.uleb128 .LEHB72-.LFB6266
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L803-.LFB6266
	.uleb128 0
	.uleb128 .LEHB73-.LFB6266
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L652-.LFB6266
	.uleb128 0
	.uleb128 .LEHB74-.LFB6266
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB75-.LFB6266
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L651-.LFB6266
	.uleb128 0
	.uleb128 .LEHB76-.LFB6266
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB77-.LFB6266
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L643-.LFB6266
	.uleb128 0
	.uleb128 .LEHB78-.LFB6266
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L669-.LFB6266
	.uleb128 0
	.uleb128 .LEHB79-.LFB6266
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L680-.LFB6266
	.uleb128 0
	.uleb128 .LEHB80-.LFB6266
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L673-.LFB6266
	.uleb128 0
	.uleb128 .LEHB81-.LFB6266
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L676-.LFB6266
	.uleb128 0
.LLSDACSE6266:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6266
	.type	main.cold, @function
main.cold:
.LFSB6266:
.L478:
	.cfi_def_cfa_offset 720
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 176(%rsp)	#, MEM[(struct exception_ptr *)_1487]._M_exception_object
	je	.L470	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	176(%rsp), %rdi	#, tmp2109
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L470:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	400(%rsp), %rax	# MEM[(struct ScopedHandler *)_86].saved, MEM[(struct ScopedHandler *)_86].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_86].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1164 + 8B]
	movq	%rbp, %rbx	# tmp1253, tmp1279
.L486:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _368
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _368
	je	.L612	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2215
	leaq	1(%rax), %rsi	#, _371
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L612:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	56(%rsp), %rax	# %sfp, current_mr.84_276
# b6_allocators.cpp:235:   }
	movq	%r15, %rdi	# tmp1724,
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%rax, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_276, current_mr
# b6_allocators.cpp:235:   }
	call	_ZNSt3pmr28unsynchronized_pool_resourceD1Ev@PLT	#
.L613:
# b6_allocators.cpp:235:   }
	leaq	416(%rsp), %rdi	#, tmp2217
	call	_ZNSt3pmr25monotonic_buffer_resourceD1Ev@PLT	#
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	64(%rsp), %rdi	# %sfp,
	movl	$65536, %esi	#,
	call	_ZdlPvm@PLT	#
	movq	648(%rsp), %rax	# D.204940, tmp1907
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1907
	jne	.L886	#,
	movq	%rbx, %rdi	# tmp1633,
.LEHB82:
	call	_Unwind_Resume@PLT	#
.LEHE82:
.L510:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 176(%rsp)	#, MEM[(struct exception_ptr *)_1487]._M_exception_object
	je	.L502	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	176(%rsp), %rdi	#, tmp2121
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L502:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	400(%rsp), %rax	# MEM[(struct ScopedHandler *)_86].saved, MEM[(struct ScopedHandler *)_86].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_86].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1238 + 8B]
	movq	%rbp, %rbx	# tmp1312, tmp1279
	jmp	.L486	#
.L430:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 416(%rsp)	#, MEM[(struct exception_ptr *)_487]._M_exception_object
	jne	.L887	#,
.L422:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	528(%rsp), %rax	# MEM[(struct ScopedHandler *)_1896].saved, MEM[(struct ScopedHandler *)_1896].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1896].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1025 + 8B]
.L438:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _360
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _360
	je	.L607	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2211
	leaq	1(%rax), %rsi	#, _363
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L607:
	movq	648(%rsp), %rax	# D.204940, tmp1906
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1906
	jne	.L888	#,
	movq	%rbp, %rdi	# tmp1146,
.LEHB83:
	call	_Unwind_Resume@PLT	#
.LEHE83:
.L559:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 352(%rsp)	#, MEM[(struct exception_ptr *)_86]._M_exception_object
	jne	.L889	#,
.L551:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	528(%rsp), %rax	# MEM[(struct ScopedHandler *)_1896].saved, MEM[(struct ScopedHandler *)_1896].saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# MEM[(struct ScopedHandler *)_1896].saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1359 + 8B]
.L536:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _379
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _379
	je	.L617	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2221
	leaq	1(%rax), %rsi	#, _382
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L617:
	movq	%rbp, %rdi	# tmp1419, tmp1649
.L618:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	56(%rsp), %rax	# %sfp, current_mr.84_288
	movq	%rax, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_288, current_mr
	movq	648(%rsp), %rax	# D.204940, tmp1908
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1908
	jne	.L890	#,
.LEHB84:
	call	_Unwind_Resume@PLT	#
.LEHE84:
.L887:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	416(%rsp), %rdi	#, tmp2070
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	jmp	.L422	#
.L889:
	leaq	352(%rsp), %rdi	#, tmp2164
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	jmp	.L551	#
.L888:
	call	__stack_chk_fail@PLT	#
.L890:
	call	__stack_chk_fail@PLT	#
.L886:
	call	__stack_chk_fail@PLT	#
.L535:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1329 + 8B]
	jmp	.L536	#
.L615:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _375
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2218
	cmpq	%rax, %rdi	# tmp2218, _375
	je	.L536	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2219
	leaq	1(%rax), %rsi	#, _378
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L536	#
.L495:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# _1276,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _1276
.LEHB85:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE85:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	648(%rsp), %rax	# D.204940, tmp1893
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1893
	jne	.L891	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _1276,
.LEHB86:
	call	__cxa_throw@PLT	#
.LEHE86:
.L609:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _364
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2212
	cmpq	%rax, %rdi	# tmp2212, _364
	je	.L486	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2213
	leaq	1(%rax), %rsi	#, _367
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L486	#
.L675:
.L802:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1821, tmp1312
	jmp	.L502	#
.L891:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	__stack_chk_fail@PLT	#
.L677:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _1276,
	movq	%rax, %rbp	#, tmp1818
	call	__cxa_free_exception@PLT	#
	jmp	.L502	#
.L463:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# _1202,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _1202
.LEHB87:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE87:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	648(%rsp), %rax	# D.204940, tmp1890
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1890
	jne	.L892	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _1202,
.LEHB88:
	call	__cxa_throw@PLT	#
.LEHE88:
.L605:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _356
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2208
	cmpq	%rax, %rdi	# tmp2208, _356
	je	.L438	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2209
	leaq	1(%rax), %rsi	#, _359
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L438	#
.L378:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.753
	je	.L379	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.753,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.753_1447 + 8B]
.L379:
	movq	%rbp, %rbx	# tmp1778, tmp926
.L373:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _329
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _329
	je	.L591	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2197
	leaq	1(%rax), %rsi	#, _332
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L591:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%r14, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_216, current_mr
# b6_allocators.cpp:190:   }
	movq	%r15, %rdi	# tmp1724,
	call	_ZNSt3pmr28unsynchronized_pool_resourceD1Ev@PLT	#
.L592:
# b6_allocators.cpp:190:   }
	leaq	416(%rsp), %rdi	#, tmp2198
	call	_ZNSt3pmr25monotonic_buffer_resourceD1Ev@PLT	#
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movl	$66056, %esi	#,
	movq	%r13, %rdi	# _765,
	call	_ZdlPvm@PLT	#
	movq	648(%rsp), %rax	# D.204940, tmp1903
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1903
	jne	.L893	#,
	movq	%rbx, %rdi	# tmp1572,
.LEHB89:
	call	_Unwind_Resume@PLT	#
.L584:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _317
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2190
	cmpq	%rax, %rdi	# tmp2190, _317
	je	.L355	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2191
	leaq	1(%rax), %rsi	#, _320
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L355:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _321
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _321
	je	.L586	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2193
	leaq	1(%rax), %rsi	#, _324
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L586:
	movq	648(%rsp), %rax	# D.204940, tmp1902
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1902
	jne	.L894	#,
	movq	%rbx, %rdi	# tmp858,
	call	_Unwind_Resume@PLT	#
.LEHE89:
.L389:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.754
	je	.L391	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.754,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.754_1439 + 8B]
.L391:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _340
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _340
	je	.L596	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2202
	leaq	1(%rax), %rsi	#, _343
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L596:
	movq	%rbp, %rdi	# tmp992, tmp1588
.L597:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	(%rsp), %rax	# %sfp, current_mr.84_232
	movq	%rax, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_232, current_mr
	movq	648(%rsp), %rax	# D.204940, tmp1904
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1904
	jne	.L895	#,
.LEHB90:
	call	_Unwind_Resume@PLT	#
.L893:
	call	__stack_chk_fail@PLT	#
.L895:
	call	__stack_chk_fail@PLT	#
.L599:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	leaq	1(%rbx), %rsi	#, _347
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# _957,
	movq	%rbp, %rbx	# tmp1852, tmp1592
	call	_ZdlPvm@PLT	#
.L600:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(struct basic_string *)_106]._M_dataplus._M_p, _348
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2204
	cmpq	%rax, %rdi	# tmp2204, _348
	je	.L602	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2205
	leaq	1(%rax), %rsi	#, _351
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L602:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _352
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _352
	je	.L603	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2207
	leaq	1(%rax), %rsi	#, _355
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L603:
	movq	648(%rsp), %rax	# D.204940, tmp1905
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1905
	jne	.L896	#,
	movq	%rbx, %rdi	# tmp1600,
	call	_Unwind_Resume@PLT	#
.LEHE90:
.L544:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# _1397,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _1397
.LEHB91:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE91:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	648(%rsp), %rax	# D.204940, tmp1896
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1896
	jne	.L897	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _1397,
.LEHB92:
	call	__cxa_throw@PLT	#
.LEHE92:
.L892:
	call	__stack_chk_fail@PLT	#
.L674:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _1202,
	movq	%rax, %rbp	#, tmp1810
	call	__cxa_free_exception@PLT	#
	jmp	.L470	#
.L894:
	call	__stack_chk_fail@PLT	#
.L672:
.L800:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1813, tmp1253
	jmp	.L470	#
.L897:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	__stack_chk_fail@PLT	#
.L681:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _1397,
	movq	%rax, %rbp	#, tmp1835
	call	__cxa_free_exception@PLT	#
	jmp	.L551	#
.L679:
.L804:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1838, tmp1458
	jmp	.L551	#
.L415:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# _1063,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _1063
.LEHB93:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE93:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	648(%rsp), %rax	# D.204940, tmp1887
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1887
	jne	.L898	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _1063,
.LEHB94:
	call	__cxa_throw@PLT	#
.L434:
# /usr/include/c++/16.1.1/any:517:       __throw_bad_any_cast();
	movq	648(%rsp), %rax	# D.204940, tmp1889
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1889
	jne	.L899	#,
	call	_ZSt20__throw_bad_any_castv	#
.LEHE94:
.L482:
	movq	648(%rsp), %rax	# D.204940, tmp1892
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1892
	jne	.L900	#,
.LEHB95:
	call	_ZSt20__throw_bad_any_castv	#
.LEHE95:
.L899:
	call	__stack_chk_fail@PLT	#
.L900:
	call	__stack_chk_fail@PLT	#
.L668:
.L798:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp1797, tmp1120
	jmp	.L422	#
.L563:
# /usr/include/c++/16.1.1/any:517:       __throw_bad_any_cast();
	movq	648(%rsp), %rax	# D.204940, tmp1898
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1898
	jne	.L901	#,
.LEHB96:
	call	_ZSt20__throw_bad_any_castv	#
.LEHE96:
.L318:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.747
	je	.L319	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.747,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.747_1484 + 8B]
.L319:
	leaq	576(%rsp), %rax	#, tmp1683
	movq	%rax, 24(%rsp)	# tmp1683, %sfp
.L313:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _301
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _301
	je	.L576	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2184
	leaq	1(%rax), %rsi	#, _304
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L576:
	movq	648(%rsp), %rax	# D.204940, tmp1900
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1900
	jne	.L902	#,
	movq	%rbp, %rdi	# tmp702,
.LEHB97:
	call	_Unwind_Resume@PLT	#
.LEHE97:
.L311:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.746
	je	.L312	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.746,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.746_1485 + 8B]
.L312:
	leaq	576(%rsp), %rax	#, tmp1683
	movq	%rax, 24(%rsp)	# tmp1683, %sfp
	jmp	.L313	#
.L898:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	__stack_chk_fail@PLT	#
.L371:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.752
	je	.L372	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.752,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.752_1448 + 8B]
.L372:
	movq	%rbp, %rbx	# tmp1775, tmp926
	jmp	.L373	#
.L670:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _1063,
	movq	%rax, %rbp	#, tmp1794
	call	__cxa_free_exception@PLT	#
	jmp	.L422	#
.L901:
# /usr/include/c++/16.1.1/any:517:       __throw_bad_any_cast();
	call	__stack_chk_fail@PLT	#
.L330:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.748
	je	.L331	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.748,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.748_869 + 8B]
.L331:
	movq	%rbp, %rbx	# tmp1758, tmp769
.L342:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%r13, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_712, current_mr
# b6_allocators.cpp:163:     }));
	movq	%r15, %rdi	# tmp1724,
	call	_ZNSt3pmr25monotonic_buffer_resourceD1Ev@PLT	#
	jmp	.L333	#
.L574:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _297
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2180
	cmpq	%rax, %rdi	# tmp2180, _297
	je	.L313	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2181
	leaq	1(%rax), %rsi	#, _300
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L313	#
.L588:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _325
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2194
	cmpq	%rax, %rdi	# tmp2194, _325
	je	.L373	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2195
	leaq	1(%rax), %rsi	#, _328
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L373	#
.L360:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.751
	je	.L361	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.751,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.751_775 + 8B]
.L361:
	movq	%rbp, %rbx	# tmp1770, tmp871
.L362:
# ../../effects.hpp:695:   ~ScopedAllocator() noexcept { detail::current_mr = prev_; }
	movq	%r14, %fs:_ZN2fx6detail10current_mrE@tpoff	# current_mr.84_743, current_mr
# b6_allocators.cpp:175:     }));
	movq	%r15, %rdi	# tmp1724,
	call	_ZNSt3pmr25monotonic_buffer_resourceD1Ev@PLT	#
	jmp	.L355	#
.L340:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.749
	je	.L341	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.749,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.749_1465 + 8B]
.L341:
	movq	%rbp, %rbx	# tmp1762, tmp799
	jmp	.L342	#
.L397:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.755
	je	.L391	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.755,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.755_1438 + 8B]
	jmp	.L391	#
.L578:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _305
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2185
	cmpq	%rax, %rdi	# tmp2185, _305
	je	.L333	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2186
	leaq	1(%rax), %rsi	#, _308
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L333:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	560(%rsp), %rdi	# MEM[(struct basic_string *)_1987]._M_dataplus._M_p, _309
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	24(%rsp), %rdi	# %sfp, _309
	je	.L581	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	576(%rsp), %rax	# MEM[(struct basic_string *)_1987].D.58684._M_allocated_capacity, tmp2188
	leaq	1(%rax), %rsi	#, _312
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L581:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	416(%rsp), %rdi	# MEM[(struct _Vector_base *)_487]._M_impl.D.147938._M_start, _314
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _314
	je	.L582	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	432(%rsp), %rsi	# MEM[(struct _Vector_base *)_487]._M_impl.D.147938._M_end_of_storage, __n_315
	subq	%rdi, %rsi	# _314, __n_315
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L582:
	movq	648(%rsp), %rax	# D.204940, tmp1901
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1901
	jne	.L903	#,
	movq	%rbx, %rdi	# tmp1541,
.LEHB98:
	call	_Unwind_Resume@PLT	#
.LEHE98:
.L903:
	call	__stack_chk_fail@PLT	#
.L451:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# raw,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_1099 + 8B]
	jmp	.L438	#
.L352:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# SR.750
	je	.L353	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# SR.750,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)SR.750_1464 + 8B]
.L353:
	movq	%rbp, %rbx	# tmp1766, tmp851
	jmp	.L362	#
.L902:
	call	__stack_chk_fail@PLT	#
.L514:
# /usr/include/c++/16.1.1/any:517:       __throw_bad_any_cast();
	movq	648(%rsp), %rax	# D.204940, tmp1895
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1895
	jne	.L904	#,
.LEHB99:
	call	_ZSt20__throw_bad_any_castv	#
.LEHE99:
.L904:
	call	__stack_chk_fail@PLT	#
.L896:
	call	__stack_chk_fail@PLT	#
.L594:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	592(%rsp), %rdi	# MEM[(const struct basic_string *)_106]._M_dataplus._M_p, _336
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	608(%rsp), %rax	#, tmp2199
	cmpq	%rax, %rdi	# tmp2199, _336
	je	.L391	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	608(%rsp), %rax	# MEM[(struct basic_string *)_106].D.58684._M_allocated_capacity, tmp2200
	leaq	1(%rax), %rsi	#, _339
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L391	#
	.cfi_endproc
.LFE6266:
	.section	.gcc_except_table
.LLSDAC6266:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6266-.LLSDACSBC6266
.LLSDACSBC6266:
	.uleb128 .LEHB82-.LCOLDB49
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LCOLDB49
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB84-.LCOLDB49
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB85-.LCOLDB49
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L677-.LCOLDB49
	.uleb128 0
	.uleb128 .LEHB86-.LCOLDB49
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L675-.LCOLDB49
	.uleb128 0
	.uleb128 .LEHB87-.LCOLDB49
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L674-.LCOLDB49
	.uleb128 0
	.uleb128 .LEHB88-.LCOLDB49
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L672-.LCOLDB49
	.uleb128 0
	.uleb128 .LEHB89-.LCOLDB49
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB90-.LCOLDB49
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LCOLDB49
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L681-.LCOLDB49
	.uleb128 0
	.uleb128 .LEHB92-.LCOLDB49
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L679-.LCOLDB49
	.uleb128 0
	.uleb128 .LEHB93-.LCOLDB49
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L670-.LCOLDB49
	.uleb128 0
	.uleb128 .LEHB94-.LCOLDB49
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L668-.LCOLDB49
	.uleb128 0
	.uleb128 .LEHB95-.LCOLDB49
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L672-.LCOLDB49
	.uleb128 0
	.uleb128 .LEHB96-.LCOLDB49
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L679-.LCOLDB49
	.uleb128 0
	.uleb128 .LEHB97-.LCOLDB49
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB98-.LCOLDB49
	.uleb128 .LEHE98-.LEHB98
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB99-.LCOLDB49
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L675-.LCOLDB49
	.uleb128 0
.LLSDACSEC6266:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE49:
	.section	.text.startup
.LHOTE49:
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
	.weak	_ZTS12FreeListSlabILm520ELm4EE
	.section	.rodata._ZTS12FreeListSlabILm520ELm4EE,"aG",@progbits,_ZTS12FreeListSlabILm520ELm4EE,comdat
	.align 16
	.type	_ZTS12FreeListSlabILm520ELm4EE, @object
	.size	_ZTS12FreeListSlabILm520ELm4EE, 27
_ZTS12FreeListSlabILm520ELm4EE:
	.string	"12FreeListSlabILm520ELm4EE"
	.weak	_ZTI12FreeListSlabILm520ELm4EE
	.section	.data.rel.ro._ZTI12FreeListSlabILm520ELm4EE,"awG",@progbits,_ZTI12FreeListSlabILm520ELm4EE,comdat
	.align 8
	.type	_ZTI12FreeListSlabILm520ELm4EE, @object
	.size	_ZTI12FreeListSlabILm520ELm4EE, 24
_ZTI12FreeListSlabILm520ELm4EE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTS12FreeListSlabILm520ELm4EE
# <anonymous>:
	.quad	_ZTINSt3pmr15memory_resourceE
	.weak	_ZTS12FreeListSlabILm520ELm2EE
	.section	.rodata._ZTS12FreeListSlabILm520ELm2EE,"aG",@progbits,_ZTS12FreeListSlabILm520ELm2EE,comdat
	.align 16
	.type	_ZTS12FreeListSlabILm520ELm2EE, @object
	.size	_ZTS12FreeListSlabILm520ELm2EE, 27
_ZTS12FreeListSlabILm520ELm2EE:
	.string	"12FreeListSlabILm520ELm2EE"
	.weak	_ZTI12FreeListSlabILm520ELm2EE
	.section	.data.rel.ro._ZTI12FreeListSlabILm520ELm2EE,"awG",@progbits,_ZTI12FreeListSlabILm520ELm2EE,comdat
	.align 8
	.type	_ZTI12FreeListSlabILm520ELm2EE, @object
	.size	_ZTI12FreeListSlabILm520ELm2EE, 24
_ZTI12FreeListSlabILm520ELm2EE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTS12FreeListSlabILm520ELm2EE
# <anonymous>:
	.quad	_ZTINSt3pmr15memory_resourceE
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
	.weak	_ZTV12FreeListSlabILm520ELm4EE
	.section	.data.rel.ro.local._ZTV12FreeListSlabILm520ELm4EE,"awG",@progbits,_ZTV12FreeListSlabILm520ELm4EE,comdat
	.align 8
	.type	_ZTV12FreeListSlabILm520ELm4EE, @object
	.size	_ZTV12FreeListSlabILm520ELm4EE, 56
_ZTV12FreeListSlabILm520ELm4EE:
	.quad	0
	.quad	_ZTI12FreeListSlabILm520ELm4EE
	.quad	_ZN12FreeListSlabILm520ELm4EED1Ev
	.quad	_ZN12FreeListSlabILm520ELm4EED0Ev
	.quad	_ZN12FreeListSlabILm520ELm4EE11do_allocateEmm
	.quad	_ZN12FreeListSlabILm520ELm4EE13do_deallocateEPvmm
	.quad	_ZNK12FreeListSlabILm520ELm4EE11do_is_equalERKNSt3pmr15memory_resourceE
	.weak	_ZTV12FreeListSlabILm520ELm2EE
	.section	.data.rel.ro.local._ZTV12FreeListSlabILm520ELm2EE,"awG",@progbits,_ZTV12FreeListSlabILm520ELm2EE,comdat
	.align 8
	.type	_ZTV12FreeListSlabILm520ELm2EE, @object
	.size	_ZTV12FreeListSlabILm520ELm2EE, 56
_ZTV12FreeListSlabILm520ELm2EE:
	.quad	0
	.quad	_ZTI12FreeListSlabILm520ELm2EE
	.quad	_ZN12FreeListSlabILm520ELm2EED1Ev
	.quad	_ZN12FreeListSlabILm520ELm2EED0Ev
	.quad	_ZN12FreeListSlabILm520ELm2EE11do_allocateEmm
	.quad	_ZN12FreeListSlabILm520ELm2EE13do_deallocateEPvmm
	.quad	_ZNK12FreeListSlabILm520ELm2EE11do_is_equalERKNSt3pmr15memory_resourceE
	.weak	_ZN2fx6detail12effect_tag_vI4TickEE
	.section	.rodata._ZN2fx6detail12effect_tag_vI4TickEE,"aG",@progbits,_ZN2fx6detail12effect_tag_vI4TickEE,comdat
	.type	_ZN2fx6detail12effect_tag_vI4TickEE, @gnu_unique_object
	.size	_ZN2fx6detail12effect_tag_vI4TickEE, 1
_ZN2fx6detail12effect_tag_vI4TickEE:
	.zero	1
	.local	_ZGVZ4mainE9mini_slab
	.comm	_ZGVZ4mainE9mini_slab,8,8
	.local	_ZZ4mainE9mini_slab
	.comm	_ZZ4mainE9mini_slab,1088,32
	.local	_ZGVZ4mainE4slab
	.comm	_ZGVZ4mainE4slab,8,8
	.local	_ZZ4mainE4slab
	.comm	_ZZ4mainE4slab,2144,32
	.local	_ZZ4mainE4sbuf
	.comm	_ZZ4mainE4sbuf,66056,32
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
.LC7:
	.quad	_Z15make_batch_coroP27_ZL15make_batch_corov.Frame.actor
	.align 8
.LC12:
	.quad	_ZN2fx6detail12effect_tag_vI4TickEE
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC29:
	.long	1069547520
	.align 4
.LC30:
	.long	1593835520
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC32:
	.quad	66056
	.quad	99084
	.align 16
.LC44:
	.quad	65536
	.quad	98304
	.section	.data.rel.ro,"aw"
	.align 8
.LC47:
	.quad	_ZTVNSt3pmr25monotonic_buffer_resourceE+16
	.section	.data.rel.ro.local
	.align 8
.LC48:
	.quad	_ZZ4mainENUlvE4_clEPZ4mainENS_27_ZZ4mainENKUlvE4_clEv.FrameE.actor
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.globl	__gxx_personality_v0
	.ident	"GCC: (GNU) 16.1.1 20260430"
	.section	.note.GNU-stack,"",@progbits
