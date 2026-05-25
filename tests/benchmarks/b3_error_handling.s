	.file	"b3_error_handling.cpp"
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
	.type	_ZL7opt_divii, @function
_ZL7opt_divii:
.LFB6284:
	.cfi_startproc
# b3_error_handling.cpp:56: [[gnu::noinline]] static std::optional<int> opt_div(int a, int b) {
	movl	%edi, %eax	# a, a
# b3_error_handling.cpp:57:   if (b == 0) return std::nullopt;
	testl	%esi, %esi	# b
	jne	.L5	#,
# b3_error_handling.cpp:57:   if (b == 0) return std::nullopt;
	movq	$0, -8(%rsp)	#, D.201540
# b3_error_handling.cpp:59: }
	movq	-8(%rsp), %rax	# D.201540,
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# b3_error_handling.cpp:58:   return a / b;
	cltd
# b3_error_handling.cpp:58:   return a / b;
	movb	$1, -4(%rsp)	#, MEM <unsigned char> [(struct optional *)&D.201540 + 4B]
# b3_error_handling.cpp:58:   return a / b;
	idivl	%esi	# b
# b3_error_handling.cpp:58:   return a / b;
	movl	%eax, -8(%rsp)	# _1, MEM <int> [(struct optional *)&D.201540]
# b3_error_handling.cpp:59: }
	movq	-8(%rsp), %rax	# D.201540,
	ret	
	.cfi_endproc
.LFE6284:
	.size	_ZL7opt_divii, .-_ZL7opt_divii
	.section	.text._ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
	.type	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, @function
_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE:
.LFB7816:
	.cfi_startproc
# /usr/include/c++/16.1.1/any:588:     any::_Manager_internal<_Tp>::
	movq	%rdx, %rcx	# __arg, __arg
# /usr/include/c++/16.1.1/any:593:       switch (__which)
	cmpl	$4, %edi	#, __which
	ja	.L7	#,
	leaq	.L10(%rip), %rdx	#, tmp109
	movl	%edi, %edi	# __which, __which
	movslq	(%rdx,%rdi,4), %rax	#, tmp111
	addq	%rdx, %rax	# tmp109, tmp112
	jmp	*%rax	# tmp112
	.section	.rodata._ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"aG",@progbits,_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.align 4
	.align 4
.L10:
	.long	.L14-.L10
	.long	.L13-.L10
	.long	.L12-.L10
	.long	.L7-.L10
	.long	.L9-.L10
	.section	.text._ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,"axG",@progbits,_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE,comdat
	.p2align 4,,10
	.p2align 3
.L9:
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
.L7:
# /usr/include/c++/16.1.1/any:618:     }
	ret	
	.p2align 4,,10
	.p2align 3
.L12:
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
.L14:
# /usr/include/c++/16.1.1/any:592:       auto __ptr = reinterpret_cast<const _Tp*>(&__any->_M_storage._M_buffer);
	addq	$8, %rsi	#, tmp114
	movq	%rsi, (%rcx)	# tmp114, __arg_12(D)->_M_obj
# /usr/include/c++/16.1.1/any:597: 	break;
	ret	
	.p2align 4,,10
	.p2align 3
.L13:
# /usr/include/c++/16.1.1/any:600: 	__arg->_M_typeinfo = &typeid(_Tp);
	leaq	_ZTIx(%rip), %rax	#, tmp120
	movq	%rax, (%rcx)	# tmp120, __arg_12(D)->_M_typeinfo
# /usr/include/c++/16.1.1/any:602: 	break;
	ret	
	.cfi_endproc
.LFE7816:
	.size	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, .-_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"div/0"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4
	.type	_ZL7exc_divii, @function
_ZL7exc_divii:
.LFB6277:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6277
# b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	testl	%esi, %esi	# b
	je	.L19	#,
	movl	%edi, %eax	# a, a
# b3_error_handling.cpp:42:   return a / b;
	cltd
	idivl	%esi	# b
# b3_error_handling.cpp:43: }
	ret	
	.section	.gcc_except_table,"a",@progbits
.LLSDA6277:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6277-.LLSDACSB6277
.LLSDACSB6277:
.LLSDACSE6277:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6277
	.type	_ZL7exc_divii.cold, @function
_ZL7exc_divii.cold:
.LFSB6277:
.L19:
# b3_error_handling.cpp:40: [[gnu::noinline]] static int exc_div(int a, int b) {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	movl	$16, %edi	#,
# b3_error_handling.cpp:40: [[gnu::noinline]] static int exc_div(int a, int b) {
	movq	%rbx, 8(%rsp)	#,
	.cfi_offset 3, -24
# b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	call	__cxa_allocate_exception@PLT	#
# b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	leaq	.LC1(%rip), %rsi	#,
	movq	%rax, %rdi	# _6,
# b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	movq	%rax, %rbx	# _6, _6
.LEHB0:
# b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE0:
# b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%rbx, %rdi	# _6,
	movq	%r14, 16(%rsp)	#,
.LEHB1:
	.cfi_offset 14, -16
	call	__cxa_throw@PLT	#
.L18:
	.cfi_restore 14
	movq	%r14, 16(%rsp)	#,
	.cfi_offset 14, -16
# b3_error_handling.cpp:41:   if (b == 0) throw std::runtime_error("div/0");
	movq	%rbx, %rdi	# _6,
	movq	%rax, %r14	#, tmp115
	call	__cxa_free_exception@PLT	#
	movq	%r14, %rdi	# tmp115,
	call	_Unwind_Resume@PLT	#
.LEHE1:
	.cfi_endproc
.LFE6277:
	.section	.gcc_except_table
.LLSDAC6277:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6277-.LLSDACSBC6277
.LLSDACSBC6277:
	.uleb128 .LEHB0-.LCOLDB2
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L18-.LCOLDB2
	.uleb128 0
	.uleb128 .LEHB1-.LCOLDB2
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC6277:
	.section	.text.unlikely
	.text
	.size	_ZL7exc_divii, .-_ZL7exc_divii
	.section	.text.unlikely
	.size	_ZL7exc_divii.cold, .-_ZL7exc_divii.cold
.LCOLDE2:
	.text
.LHOTE2:
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
	jb	.L24	#,
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
	jb	.L24	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rsi, %rdx	# __intptr, _6
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rax, 8(%r8)	# <retval>, MEM[(void * &)this_15(D) + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rax, %rdx	# __aligned, prephitmp_1
	movq	%rdx, 16(%r8)	# prephitmp_1, MEM[(size_t &)this_15(D) + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rax, %rax	# <retval>
	je	.L24	#,
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
.L24:
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
	.section	.text._ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,"axG",@progbits,_ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,comdat
	.p2align 4
	.weak	_ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.type	_ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, @function
_ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_:
.LFB7251:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7251
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 112
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	8(%rsi), %rdx	# MEM[(const struct basic_string *)_3(D)]._M_string_length, __sz
# ../../effects.hpp:607:       auto &hh =
	movq	16(%rdi), %r13	# MEM[(struct HandlerNode *)_2(D)].real_handler_ptr, hh
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], D.162619
	movq	%rbx, 56(%rsp)	# D.162619, D.204476
	movq	%rsi, %rbx	# D.162619, D.162619
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	32(%rsp), %rbp	#, tmp140
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	(%rsi), %rsi	# MEM[(const struct basic_string *)_3(D)]._M_dataplus._M_p, _7
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rbp, 16(%rsp)	# tmp140, MEM[(struct _Alloc_hider *)&D.204461]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	leaq	1(%rdx), %r12	#, _37
# /usr/include/c++/16.1.1/bits/basic_string.tcc:289:       if (__n > size_type(_S_local_capacity))
	cmpq	$15, %rdx	#, __sz
	ja	.L45	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:454: 	if (__n == 1)
	movq	%rbp, %rdi	# tmp140, _34
	testq	%rdx, %rdx	# __sz
	je	.L46	#,
.L34:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r12, %rdx	# _37,
	call	memcpy@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	16(%rsp), %r12	# MEM[(const struct basic_string *)&D.204461]._M_dataplus._M_p, pretmp_24
.L35:
# ../common.hpp:66:   void handle(Fail, auto r) { r(fallback); }
	movl	0(%r13), %eax	# hh_5->fallback, _8
# ../../effects.hpp:1140:   pa->result_ = std::move(v);
	movl	%eax, 32(%rbx)	# _8, MEM[(struct PerformAwaitable *)_3(D)].result_
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	40(%rbx), %rax	# MEM[(const struct coroutine_handle *)_3(D) + 40B]._M_fr_ptr, _9
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rax, %rdi	# _9,
.LEHB2:
	call	*(%rax)	# MEM[(void (*<T123>) (void *) *)_9]
.LEHE2:
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %r12	# tmp140, pretmp_24
	je	.L32	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	32(%rsp), %rax	# MEM[(struct basic_string *)&D.204461].D.58684._M_allocated_capacity, tmp148
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# pretmp_24,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	leaq	1(%rax), %rsi	#, _14
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L32:
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	56(%rsp), %rax	# D.204476, tmp146
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp146
	jne	.L44	#,
	addq	$72, %rsp	#,
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
	.p2align 4,,10
	.p2align 3
.L46:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movzbl	(%rsi), %eax	# MEM[(const char_type &)_7], MEM[(const char_type &)_7]
	movq	%rbp, %r12	# tmp140, pretmp_24
	movb	%al, 32(%rsp)	# MEM[(const char_type &)_7], MEM[(char_type &)&D.204461 + 16]
	jmp	.L35	#
	.p2align 4,,10
	.p2align 3
.L45:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%r12, %rdi	# _37,
	movq	%rsi, 8(%rsp)	# _7, %sfp
	movq	%rdx, (%rsp)	# __sz, %sfp
.LEHB3:
	call	_Znwm@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	(%rsp), %rdx	# %sfp, __sz
	movq	8(%rsp), %rsi	# %sfp, _7
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 16(%rsp)	# _34, MEM[(struct basic_string *)&D.204461]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rdi	# _34, _34
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	%rdx, 32(%rsp)	# __sz, MEM[(struct basic_string *)&D.204461].D.58684._M_allocated_capacity
	jmp	.L34	#
.L37:
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %r12	# tmp140, pretmp_24
	jne	.L47	#,
.L38:
	movq	56(%rsp), %rax	# D.204476, tmp145
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp145
	je	.L39	#,
.L44:
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	call	__stack_chk_fail@PLT	#
.L42:
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	movq	%rax, %rbx	#, tmp144
	jmp	.L37	#
.L47:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	32(%rsp), %rax	# MEM[(struct basic_string *)&D.204461].D.58684._M_allocated_capacity, tmp149
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# pretmp_24,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	leaq	1(%rax), %rsi	#, _18
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L38	#
.L39:
	movq	%rbx, %rdi	# tmp144,
	call	_Unwind_Resume@PLT	#
.LEHE3:
	.cfi_endproc
.LFE7251:
	.section	.gcc_except_table._ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,"aG",@progbits,_ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,comdat
.LLSDA7251:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7251-.LLSDACSB7251
.LLSDACSB7251:
	.uleb128 .LEHB2-.LFB7251
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L42-.LFB7251
	.uleb128 0
	.uleb128 .LEHB3-.LFB7251
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE7251:
	.section	.text._ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,"axG",@progbits,_ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_,comdat
	.size	_ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_, .-_ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_
	.section	.text._ZN2fx6detail16PromiseAbortBaseD2Ev,"axG",@progbits,_ZN2fx6detail16PromiseAbortBaseD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN2fx6detail16PromiseAbortBaseD2Ev
	.type	_ZN2fx6detail16PromiseAbortBaseD2Ev, @function
_ZN2fx6detail16PromiseAbortBaseD2Ev:
.LFB6325:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6325
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rdi, %rsi	# this, this
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 48(%rdi)	#, MEM[(struct exception_ptr *)this_3(D) + 48B]._M_exception_object
	je	.L49	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	48(%rdi), %rdi	#, _1
	movq	%rsi, 8(%rsp)	# this, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rsi	# %sfp, this
.L49:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	16(%rsi), %rax	# MEM[(const struct any *)this_3(D) + 16B]._M_manager, _6
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _6
	je	.L48	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	addq	$16, %rsi	#, _2
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _6
.L48:
# ../../effects.hpp:144: struct PromiseAbortBase {
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE6325:
	.section	.gcc_except_table._ZN2fx6detail16PromiseAbortBaseD2Ev,"aG",@progbits,_ZN2fx6detail16PromiseAbortBaseD5Ev,comdat
.LLSDA6325:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6325-.LLSDACSB6325
.LLSDACSB6325:
.LLSDACSE6325:
	.section	.text._ZN2fx6detail16PromiseAbortBaseD2Ev,"axG",@progbits,_ZN2fx6detail16PromiseAbortBaseD5Ev,comdat
	.size	_ZN2fx6detail16PromiseAbortBaseD2Ev, .-_ZN2fx6detail16PromiseAbortBaseD2Ev
	.weak	_ZN2fx6detail16PromiseAbortBaseD1Ev
	.set	_ZN2fx6detail16PromiseAbortBaseD1Ev,_ZN2fx6detail16PromiseAbortBaseD2Ev
	.section	.text._ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv,"axG",@progbits,_ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv,comdat
	.align 2
	.p2align 4
	.weak	_ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv
	.type	_ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv, @function
_ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv:
.LFB6870:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 48
# ../../effects.hpp:458:   void unhandled_exception() { exception = std::current_exception(); }
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], this
	movq	%rbx, 24(%rsp)	# this, D.204491
	movq	%rdi, %rbx	# this, this
# ../../effects.hpp:458:   void unhandled_exception() { exception = std::current_exception(); }
	leaq	8(%rsp), %rdi	#, tmp111
	call	_ZSt17current_exceptionv@PLT	#
# /usr/include/c++/16.1.1/bits/exception_ptr.h:161:       : _M_exception_object(__o._M_exception_object)
	movq	8(%rsp), %rdx	# D.158041._M_exception_object, _6
# /usr/include/c++/16.1.1/bits/exception_ptr.h:162:       { __o._M_exception_object = nullptr; }
	movq	$0, 8(%rsp)	#, D.158041._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:282:       _M_exception_object = __other._M_exception_object;
	movq	48(%rbx), %rax	# MEM[(struct exception_ptr &)this_3(D) + 48]._M_exception_object, _7
# /usr/include/c++/16.1.1/bits/exception_ptr.h:283:       __other._M_exception_object = __tmp;
	movq	%rdx, 48(%rbx)	# _6, MEM[(struct exception_ptr &)this_3(D) + 48]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:282:       _M_exception_object = __other._M_exception_object;
	movq	%rax, 16(%rsp)	# _7, D.202822._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	testq	%rax, %rax	# _7
	je	.L55	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	16(%rsp), %rdi	#, tmp105
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 8(%rsp)	#, D.158041._M_exception_object
	je	.L55	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	8(%rsp), %rdi	#, tmp112
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L55:
# ../../effects.hpp:458:   void unhandled_exception() { exception = std::current_exception(); }
	movq	24(%rsp), %rax	# D.204491, tmp109
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	jne	.L63	#,
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
.L63:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6870:
	.size	_ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv, .-_ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4
	.type	_Z7eff_divP19_ZL7eff_divii.Frame.actor, @function
_Z7eff_divP19_ZL7eff_divii.Frame.actor:
.LFB6340:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6340
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 64
# b3_error_handling.cpp:73: }
	movzwl	96(%rdi), %eax	# frame_ptr_29(D)->_Coro_resume_index, _1
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], frame_ptr
	movq	%rbx, 40(%rsp)	# frame_ptr, D.204563
	movq	%rdi, %rbx	# frame_ptr, frame_ptr
# b3_error_handling.cpp:73: }
	testb	$1, %al	#, _1
	je	.L65	#,
# b3_error_handling.cpp:73: }
	cmpw	$5, %ax	#, _1
	jne	.L100	#,
.L66:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	104(%rbx), %rdi	# MEM[(const struct basic_string *)frame_ptr_29(D) + 104B]._M_dataplus._M_p, _80
# /usr/include/c++/16.1.1/bits/basic_string.h:256: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	120(%rbx), %rax	#, _81
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rdi	# _81, _80
	je	.L79	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	120(%rbx), %rax	# MEM[(struct basic_string *)frame_ptr_29(D) + 104B].D.58684._M_allocated_capacity, tmp223
	leaq	1(%rax), %rsi	#, _84
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L79:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	160(%rbx), %rdi	# MEM[(const struct basic_string *)frame_ptr_29(D) + 160B]._M_dataplus._M_p, _75
# /usr/include/c++/16.1.1/bits/basic_string.h:256: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	176(%rbx), %rax	#, _76
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rdi	# _76, _75
	je	.L80	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	176(%rbx), %rax	# MEM[(struct basic_string *)frame_ptr_29(D) + 160B].D.58684._M_allocated_capacity, tmp224
	leaq	1(%rax), %rsi	#, _79
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L80:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	216(%rbx), %rdi	# MEM[(const struct basic_string *)frame_ptr_29(D) + 216B]._M_dataplus._M_p, _70
# /usr/include/c++/16.1.1/bits/basic_string.h:256: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	232(%rbx), %rax	#, _71
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rdi	# _71, _70
	je	.L83	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	232(%rbx), %rax	# MEM[(struct basic_string *)frame_ptr_29(D) + 216B].D.58684._M_allocated_capacity, tmp225
	leaq	1(%rax), %rsi	#, _74
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L67:
.L82:
.L83:
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	subw	$1, 98(%rbx)	#, frame_ptr_29(D)->_Coro_frame_refcount
# b3_error_handling.cpp:73: }
	jne	.L64	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)frame_ptr_29(D) + 64B]._M_exception_object
	je	.L84	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _171
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L84:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)frame_ptr_29(D) + 32B]._M_manager, _174
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _174
	je	.L85	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _173
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _174
.L85:
# b3_error_handling.cpp:73: }
	cmpb	$0, 100(%rbx)	#, frame_ptr_29(D)->_Coro_frame_needs_free
	jne	.L101	#,
.L73:
.L64:
# b3_error_handling.cpp:73: }
	movq	40(%rsp), %rax	# D.204563, tmp217
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp217
	jne	.L99	#,
	addq	$48, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L65:
	.cfi_restore_state
# b3_error_handling.cpp:73: }
	cmpw	$4, %ax	#, _1
	je	.L69	#,
	ja	.L70	#,
	testw	%ax, %ax	# _1
	je	.L71	#,
.L72:
# b3_error_handling.cpp:71:   if (b == 0) co_return perform(Fail{.reason = "div/0"});
	movl	92(%rbx), %ecx	# frame_ptr_29(D)->b, _8
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	movb	$1, 101(%rbx)	#, frame_ptr_29(D)->_Coro_initial_await_resume_called
# b3_error_handling.cpp:71:   if (b == 0) co_return perform(Fail{.reason = "div/0"});
	testl	%ecx, %ecx	# _8
	je	.L102	#,
# b3_error_handling.cpp:72:   co_return a / b;
	movl	88(%rbx), %eax	# frame_ptr_29(D)->a, frame_ptr_29(D)->a
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movb	$1, 84(%rbx)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_29(D) + 84B]
# b3_error_handling.cpp:72:   co_return a / b;
	cltd
	idivl	%ecx	# _8
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movl	%eax, 80(%rbx)	# _18, MEM <int> [(struct promise_type *)frame_ptr_29(D) + 80B]
.L78:
# b3_error_handling.cpp:73: }
	movl	$6, %eax	#,
# b3_error_handling.cpp:73: }
	movq	$0, (%rbx)	#, frame_ptr_29(D)->_Coro_resume_fn
# b3_error_handling.cpp:73: }
	movw	%ax, 96(%rbx)	#, frame_ptr_29(D)->_Coro_resume_index
	jmp	.L64	#
	.p2align 4,,10
	.p2align 3
.L100:
# b3_error_handling.cpp:73: }
	jbe	.L83	#,
	cmpw	$7, %ax	#, _1
	je	.L83	#,
	jmp	.L68	#
	.p2align 4,,10
	.p2align 3
.L71:
# b3_error_handling.cpp:73: }
	movl	$2, %ecx	#,
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	addw	$1, 98(%rbx)	#, frame_ptr_29(D)->_Coro_frame_refcount
	movb	$0, 101(%rbx)	#, frame_ptr_29(D)->_Coro_initial_await_resume_called
# b3_error_handling.cpp:73: }
	movw	%cx, 96(%rbx)	#, frame_ptr_29(D)->_Coro_resume_index
	jmp	.L64	#
	.p2align 4,,10
	.p2align 3
.L69:
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movl	136(%rbx), %eax	# MEM[(type &)frame_ptr_29(D) + 136], MEM[(type &)frame_ptr_29(D) + 136]
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	104(%rbx), %rdi	# MEM[(const struct basic_string *)frame_ptr_29(D) + 104B]._M_dataplus._M_p, _64
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movb	$1, 84(%rbx)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_29(D) + 84B]
	movl	%eax, 80(%rbx)	# MEM[(type &)frame_ptr_29(D) + 136], MEM <int> [(struct promise_type *)frame_ptr_29(D) + 80B]
# /usr/include/c++/16.1.1/bits/basic_string.h:256: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	120(%rbx), %rax	#, _65
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rdi	# _65, _64
	je	.L75	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	120(%rbx), %rax	# MEM[(struct basic_string *)frame_ptr_29(D) + 104B].D.58684._M_allocated_capacity, tmp220
	leaq	1(%rax), %rsi	#, _68
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L75:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	160(%rbx), %rdi	# MEM[(const struct basic_string *)frame_ptr_29(D) + 160B]._M_dataplus._M_p, _50
# /usr/include/c++/16.1.1/bits/basic_string.h:256: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	176(%rbx), %rax	#, _59
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rdi	# _59, _50
	je	.L76	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	176(%rbx), %rax	# MEM[(struct basic_string *)frame_ptr_29(D) + 160B].D.58684._M_allocated_capacity, tmp221
	leaq	1(%rax), %rsi	#, _63
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L76:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	216(%rbx), %rdi	# MEM[(const struct basic_string *)frame_ptr_29(D) + 216B]._M_dataplus._M_p, _42
# /usr/include/c++/16.1.1/bits/basic_string.h:256: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	232(%rbx), %rax	#, _37
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rdi	# _37, _42
	je	.L78	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	232(%rbx), %rax	# MEM[(struct basic_string *)frame_ptr_29(D) + 216B].D.58684._M_allocated_capacity, tmp222
	leaq	1(%rax), %rsi	#, _32
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# b3_error_handling.cpp:71:   if (b == 0) co_return perform(Fail{.reason = "div/0"});
	jmp	.L78	#
	.p2align 4,,10
	.p2align 3
.L70:
# b3_error_handling.cpp:73: }
	cmpw	$6, %ax	#, _1
	je	.L83	#,
	jmp	.L68	#
	.p2align 4,,10
	.p2align 3
.L101:
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	256(%rbx), %rdi	# MEM[(struct memory_resource * *)frame_ptr_29(D) + 256B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L86	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_177->_vptr.memory_resource, mr_177->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp209
	movq	24(%rax), %rax	# MEM[(int (*) () *)_178 + 24B], _179
	cmpq	%rdx, %rax	# tmp209, _179
	je	.L64	#,
	movl	$16, %ecx	#,
	movl	$264, %edx	#,
	movq	%rbx, %rsi	# frame_ptr,
	call	*%rax	# _179
	jmp	.L64	#
	.p2align 4,,10
	.p2align 3
.L102:
	pxor	%xmm0, %xmm0	# tmp215
# /usr/include/c++/16.1.1/bits/basic_string.h:245: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	leaq	232(%rbx), %rdx	#, _116
	leaq	104(%rbx), %rsi	#, tmp169
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	$796289380, 176(%rbx)	#, MEM <char[1:6]> [(void *)_157]
# b3_error_handling.cpp:73: }
	movups	%xmm0, 232(%rbx)	# tmp157, frame_ptr_29(D)->T003_2_3
# /usr/include/c++/16.1.1/bits/basic_string.h:245: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	leaq	120(%rbx), %rcx	#, _143
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movb	$48, 236(%rbx)	#, MEM <char[1:5]> [(void *)_116]
	movzwl	236(%rbx), %eax	# MEM <char[1:6]> [(void *)_116], MEM <char[1:6]> [(void *)_116]
# b3_error_handling.cpp:73: }
	movups	%xmm0, 216(%rbx)	# tmp157, frame_ptr_29(D)->T003_2_3
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movw	%ax, 20(%rsp)	# MEM <char[1:6]> [(void *)_116], MEM <char[1:6]> [(void *)&D.204530 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rdx, 216(%rbx)	# _116, MEM[(struct basic_string *)frame_ptr_29(D) + 216B]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:245: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	leaq	176(%rbx), %rdx	#, _157
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movw	%ax, 180(%rbx)	# MEM <char[1:6]> [(void *)_116], MEM <char[1:6]> [(void *)_157]
	movw	%ax, 124(%rbx)	# MEM <char[1:6]> [(void *)_116], MEM <char[1:6]> [(void *)_143]
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	leaq	16(%rbx), %rax	#, tmp172
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rdx, 160(%rbx)	# _157, MEM[(struct basic_string *)frame_ptr_29(D) + 160B]._M_dataplus._M_p
# b3_error_handling.cpp:73: }
	movl	$4, %edx	#,
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	movq	%rax, 152(%rbx)	# tmp172, MEM[(struct PerformAwaitable *)frame_ptr_29(D) + 104B].abort_base_
# ../../effects.hpp:1123:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	leaq	_ZN2fx6detail12effect_tag_vI4FailEE(%rip), %rax	#, tmp219
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	$796289380, 232(%rbx)	#, MEM <char[1:5]> [(void *)_116]
	movl	$796289380, 16(%rsp)	#, MEM <char[1:6]> [(void *)&D.204530 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 232(%rbx)	#, MEM[(char_type &)frame_ptr_29(D) + 232]
# ../../effects.hpp:1115:   explicit PerformAwaitable(E e) : effect_(std::move(e)) {}
	movl	$0, 192(%rbx)	#, MEM[(struct PerformAwaitable *)frame_ptr_29(D) + 160B].result_
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 104(%rbx)	# _143, MEM[(struct _Alloc_hider *)frame_ptr_29(D) + 104B]._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	$796289380, 120(%rbx)	#, MEM <char[1:6]> [(void *)_143]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$5, 112(%rbx)	#, MEM[(struct basic_string *)frame_ptr_29(D) + 104B]._M_string_length
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 176(%rbx)	#, MEM[(char_type &)frame_ptr_29(D) + 176]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 168(%rbx)	#, MEM[(struct basic_string *)frame_ptr_29(D) + 160B]._M_string_length
# ../../effects.hpp:1113: template <Effectful E> class [[nodiscard]] PerformAwaitable {
	movl	$0, 136(%rbx)	#, MEM[(struct PerformAwaitable *)frame_ptr_29(D) + 104B].result_
# b3_error_handling.cpp:73: }
	movw	%dx, 96(%rbx)	#, frame_ptr_29(D)->_Coro_resume_index
# ../../effects.hpp:1121:     caller_ = caller;
	movq	%rbx, 144(%rbx)	# frame_ptr, MEM[(struct PerformAwaitable *)frame_ptr_29(D) + 104B].caller_._M_fr_ptr
# ../../effects.hpp:1123:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	movq	%rax, 48(%rbx)	# tmp219, MEM[(struct promise_type &)frame_ptr_29(D) + 16].D.148160.D.148150.effect_tag
# b3_error_handling.cpp:71:   if (b == 0) co_return perform(Fail{.reason = "div/0"});
	movq	%rsi, 56(%rbx)	# tmp169, MEM[(struct promise_type &)frame_ptr_29(D) + 16].D.148160.D.148150.payload_ptr
# ../../effects.hpp:1115:   explicit PerformAwaitable(E e) : effect_(std::move(e)) {}
	movups	%xmm0, 200(%rbx)	# tmp168, MEM <vector(2) long unsigned int> [(void *)frame_ptr_29(D) + 200B]
	jmp	.L64	#
	.p2align 4,,10
	.p2align 3
.L86:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	40(%rsp), %rax	# D.204563, tmp216
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp216
	jne	.L99	#,
# b3_error_handling.cpp:73: }
	addq	$48, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	%rbx, %rdi	# frame_ptr,
	movl	$264, %esi	#,
# b3_error_handling.cpp:73: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
.LEHB4:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE4:
.L99:
	.cfi_restore_state
# b3_error_handling.cpp:73: }
	call	__stack_chk_fail@PLT	#
	.section	.gcc_except_table
	.align 4
.LLSDA6340:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6340-.LLSDATTD6340
.LLSDATTD6340:
	.byte	0x1
	.uleb128 .LLSDACSE6340-.LLSDACSB6340
.LLSDACSB6340:
	.uleb128 .LEHB4-.LFB6340
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE6340:
	.align 4
	.long	0

.LLSDATT6340:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6340
	.type	_Z7eff_divP19_ZL7eff_divii.Frame.actor.cold, @function
_Z7eff_divP19_ZL7eff_divii.Frame.actor.cold:
.LFSB6340:
.L68:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -16
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	ud2	
	.cfi_endproc
.LFE6340:
	.section	.gcc_except_table
	.align 4
.LLSDAC6340:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC6340-.LLSDATTDC6340
.LLSDATTDC6340:
	.byte	0x1
	.uleb128 .LLSDACSEC6340-.LLSDACSBC6340
.LLSDACSBC6340:
.LLSDACSEC6340:
	.align 4
	.long	0

.LLSDATTC6340:
	.section	.text.unlikely
	.text
	.size	_Z7eff_divP19_ZL7eff_divii.Frame.actor, .-_Z7eff_divP19_ZL7eff_divii.Frame.actor
	.section	.text.unlikely
	.size	_Z7eff_divP19_ZL7eff_divii.Frame.actor.cold, .-_Z7eff_divP19_ZL7eff_divii.Frame.actor.cold
.LCOLDE3:
	.text
.LHOTE3:
	.p2align 4
	.type	_Z7eff_divP19_ZL7eff_divii.Frame.destroy, @function
_Z7eff_divP19_ZL7eff_divii.Frame.destroy:
.LFB6341:
	.cfi_startproc
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	orw	$1, 96(%rdi)	#, frame_ptr_4(D)->_Coro_resume_index
	jmp	_Z7eff_divP19_ZL7eff_divii.Frame.actor	#
	.cfi_endproc
.LFE6341:
	.size	_Z7eff_divP19_ZL7eff_divii.Frame.destroy, .-_Z7eff_divP19_ZL7eff_divii.Frame.destroy
	.section	.text._ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm,"axG",@progbits,_ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm,comdat
	.p2align 4
	.weak	_ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm
	.type	_ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm, @function
_ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm:
.LFB6872:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6872
	movq	%rdi, %rax	# ptr, ptr
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	(%rdi,%rsi), %rdi	# *_1, mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L105	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_7->_vptr.memory_resource, mr_7->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_9 + 24B], _10
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp107
	cmpq	%rdx, %r8	# tmp107, _10
	jne	.L111	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L105:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	addq	$8, %rsi	#,
	movq	%rax, %rdi	# ptr,
.LEHB5:
	jmp	_ZdlPvm@PLT	#
.LEHE5:
	.p2align 4,,10
	.p2align 3
.L111:
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
.LFE6872:
	.section	.gcc_except_table._ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm,"aG",@progbits,_ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm,comdat
.LLSDA6872:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6872-.LLSDACSB6872
.LLSDACSB6872:
	.uleb128 .LEHB5-.LFB6872
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE6872:
	.section	.text._ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm,"axG",@progbits,_ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm,comdat
	.size	_ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm, .-_ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"fx: unhandled effect -- no matching handler installed"
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4
	.type	_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor, @function
_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor:
.LFB6357:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6357
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 64
# b3_error_handling.cpp:80: }
	movzwl	104(%rdi), %eax	# frame_ptr_30(D)->_Coro_resume_index, _1
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movq	%rbx, 32(%rsp)	#,
	movq	%r15, 48(%rsp)	#,
	.cfi_offset 3, -32
	.cfi_offset 15, -16
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], frame_ptr
	movq	%rbx, 24(%rsp)	# frame_ptr, D.204678
	movq	%rdi, %rbx	# frame_ptr, frame_ptr
# b3_error_handling.cpp:80: }
	testb	$1, %al	#, _1
	je	.L113	#,
# b3_error_handling.cpp:80: }
	cmpw	$5, %ax	#, _1
	jne	.L204	#,
.L114:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	160(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_30(D) + 160B]._M_fr_ptr, _69
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _69
	je	.L148	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _69,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_69 + 8B]
.L148:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	168(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_30(D) + 168B]._M_fr_ptr, _67
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _67
	je	.L152	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _67,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_67 + 8B]
.L115:
.L151:
.L152:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	subw	$1, 106(%rbx)	#, frame_ptr_30(D)->_Coro_frame_refcount
# b3_error_handling.cpp:80: }
	jne	.L112	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)frame_ptr_30(D) + 64B]._M_exception_object
	je	.L153	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _180
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L153:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)frame_ptr_30(D) + 32B]._M_manager, _183
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _183
	je	.L154	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _182
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _183
.L154:
# b3_error_handling.cpp:80: }
	cmpb	$0, 108(%rbx)	#, frame_ptr_30(D)->_Coro_frame_needs_free
	jne	.L205	#,
.L112:
# b3_error_handling.cpp:80: }
	movq	24(%rsp), %rax	# D.204678, tmp281
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp281
	jne	.L203	#,
	movq	32(%rsp), %rbx	#,
	movq	48(%rsp), %r15	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L113:
	.cfi_restore_state
# b3_error_handling.cpp:80: }
	cmpw	$4, %ax	#, _1
	je	.L117	#,
	ja	.L118	#,
	testw	%ax, %ax	# _1
	je	.L119	#,
.L120:
# b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	movq	96(%rbx), %rdx	# frame_ptr_30(D)->pairs, _8
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movb	$1, 109(%rbx)	#, frame_ptr_30(D)->_Coro_initial_await_resume_called
# b3_error_handling.cpp:76:   long long total = 0;
	movq	$0, 112(%rbx)	#, frame_ptr_30(D)->total_1_2
# /usr/include/c++/16.1.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	(%rdx), %rax	# MEM[(const struct Pair * const &)_8], _58
# b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	movq	%rdx, %xmm0	# _8, _175
	movq	%rax, %xmm1	# _58, _58
	punpcklqdq	%xmm1, %xmm0	# _58, _175
	movups	%xmm0, 128(%rbx)	# _175, MEM <vector(2) long unsigned int> [(void *)frame_ptr_30(D) + 128B]
# /usr/include/c++/16.1.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	8(%rdx), %rdx	# MEM[(const struct Pair * const &)_8 + 8], pretmp_11
# b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	movq	%rdx, 144(%rbx)	# pretmp_11, frame_ptr_30(D)->__for_end_2_3._M_current
.L123:
# b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	cmpq	%rax, %rdx	# _58, pretmp_11
	je	.L206	#,
# b3_error_handling.cpp:77:   for (auto [a, b] : pairs)
	movq	(%rax), %rax	# *prephitmp_159, *prephitmp_159
	movq	%r14, 40(%rsp)	#,
	movq	%rax, 120(%rbx)	# *prephitmp_159, frame_ptr_30(D)->_D2_3_0
	movq	%rax, %r15	# *prephitmp_159, *prephitmp_159
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %r9	# current_mr, mr
	.cfi_offset 14, -24
	movq	%r9, %r14	# mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%r9, %r9	# mr
	je	.L124	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%r9), %rax	# mr_117->_vptr.memory_resource, mr_117->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp199
	movq	16(%rax), %rax	# MEM[(int (*) () *)_119 + 16B], _120
	cmpq	%rdx, %rax	# tmp199, _120
	jne	.L125	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%r9), %rdx	# MEM[(size_t &)mr_117 + 16], _132
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$263, %rdx	#, _132
	jbe	.L126	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%r9), %rcx	# MEM[(void * &)mr_117 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-264(%rdx), %rdi	#, _141
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rcx), %rax	#, _137
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rax	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rax, %rsi	# __aligned, __diff_140
	subq	%rcx, %rsi	# __intptr, __diff_140
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rsi, %rdi	# __diff_140, _141
	jb	.L126	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rcx, %rdx	# __intptr, _109
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rax, 8(%r9)	# __p, MEM[(void * &)mr_117 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rax, %rdx	# __aligned, _143
	movq	%rdx, 16(%r9)	# _143, MEM[(size_t &)mr_117 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rax, %rax	# __p
	je	.L126	#,
.L127:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	264(%rax), %rcx	#, tmp204
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	subq	$264, %rdx	#, tmp205
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rcx, 8(%r14)	# tmp204, MEM[(struct monotonic_buffer_resource *)mr_117]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rdx, 16(%r14)	# tmp205, MEM[(struct monotonic_buffer_resource *)mr_117]._M_avail
.L128:
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	movq	.LC7(%rip), %xmm0	#, _149
	leaq	_Z7eff_divP19_ZL7eff_divii.Frame.destroy(%rip), %rdx	#, tmp208
	movb	$1, 100(%rax)	#, MEM[(struct _ZL7eff_divii.Frame *)raw_123]._Coro_frame_needs_free
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	movq	%rax, %rdi	# __p,
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	movq	%rdx, %xmm2	# tmp208, tmp208
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rax), %rdx	#, tmp214
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%r14, 256(%rax)	# mr, MEM[(struct memory_resource * *)raw_123 + 256B]
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	punpcklqdq	%xmm2, %xmm0	# tmp208, _149
	movq	%r15, 88(%rax)	# *prephitmp_159, MEM <vector(2) int> [(int *)raw_123 + 88B]
	movups	%xmm0, (%rax)	# _149, MEM <vector(2) long unsigned int> [(void (*<T17ab7>) (struct _ZL7eff_divii.Frame *) *)raw_123]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp210
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rax)	#, MEM[(struct PromiseAbortBase *)raw_123 + 16B].aborted
	movq	$0, 24(%rax)	#, MEM[(struct PromiseAbortBase *)raw_123 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rax)	#, MEM[(struct any *)raw_123 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 84(%rax)	#, MEM[(struct _Optional_payload_base *)raw_123 + 80B]._M_engaged
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	movl	$65536, 96(%rax)	#, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_123 + 96B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rdx, 72(%rax)	# tmp214, MEM[(struct promise_type *)raw_123 + 16B].D.148160.D.148150.result_ptr
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	movups	%xmm0, 40(%rax)	# tmp210, MEM <vector(2) long unsigned int> [(void *)raw_123 + 40B]
	movups	%xmm0, 56(%rax)	# tmp210, MEM <vector(2) long unsigned int> [(void *)raw_123 + 56B]
# ../../effects.hpp:521:   explicit OwnedHandle(std::coroutine_handle<Promise> h_) noexcept : h(h_) {}
	movq	%rax, 168(%rbx)	# __p, MEM[(struct OwnedHandle *)frame_ptr_30(D) + 168B].h._M_fr_ptr
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	movq	%rax, 8(%rsp)	# __p, %sfp
	call	_Z7eff_divP19_ZL7eff_divii.Frame.actor	#
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	movq	8(%rsp), %rax	# %sfp, __p
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	subw	$1, 98(%rax)	#, MEM[(struct _ZL7eff_divii.Frame *)raw_123]._Coro_frame_refcount
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	je	.L207	#,
.L129:
# /usr/include/c++/16.1.1/bits/move.h:190:       _Tp __old_val = std::move(__obj);
	movq	168(%rbx), %rax	# MEM[(struct coroutine_handle &)frame_ptr_30(D) + 168], __old_val$_M_fr_ptr
# b3_error_handling.cpp:80: }
	movl	$4, %ecx	#,
	movq	40(%rsp), %r14	#,
	.cfi_restore 14
# /usr/include/c++/16.1.1/bits/move.h:191:       __obj = std::forward<_Up>(__new_val);
	movq	$0, 168(%rbx)	#, MEM[(struct coroutine_handle *)frame_ptr_30(D) + 168B]
# b3_error_handling.cpp:80: }
	movw	%cx, 104(%rbx)	#, frame_ptr_30(D)->_Coro_resume_index
# ../../effects.hpp:522:   OwnedHandle(OwnedHandle &&o) noexcept : h(std::exchange(o.h, {})) {}
	movq	%rax, 160(%rbx)	# __old_val$_M_fr_ptr, MEM[(struct OwnedHandle *)frame_ptr_30(D) + 160B]
	jmp	.L121	#
	.p2align 4,,10
	.p2align 3
.L204:
# b3_error_handling.cpp:80: }
	jbe	.L152	#,
	cmpw	$7, %ax	#, _1
	je	.L152	#,
	jmp	.L116	#
	.p2align 4,,10
	.p2align 3
.L117:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	160(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_30(D) + 160B]._M_fr_ptr, __old_val$_M_fr_ptr
.L121:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rax, %rdi	# __old_val$_M_fr_ptr,
.LEHB6:
	call	*(%rax)	# MEM[(void (*<T123>) (void *) *)prephitmp_219]
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	160(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_30(D) + 160B]._M_fr_ptr, _167
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_167]
	je	.L208	#,
	.p2align 4
	.p2align 3
.L141:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:893:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rcx), %rdx	# MEM[(struct promise_type &)_167 + 16].D.148160.D.148150.effect_tag, _169
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L134	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _169, n_174->effect_tag
	je	.L135	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L136:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_172->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L134	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_178->effect_tag, _169
	jne	.L136	#,
.L135:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rcx), %rsi	# MEM[(struct promise_type &)_167 + 16].D.148160.D.148150.payload_ptr, MEM[(struct promise_type &)_167 + 16].D.148160.D.148150.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_46->dispatch
.LEHE6:
# /usr/include/c++/16.1.1/coroutine:242:       bool done() const noexcept { return __builtin_coro_done(_M_fr_ptr); }
	movq	160(%rbx), %rcx	# MEM[(const struct coroutine_handle *)frame_ptr_30(D) + 160B]._M_fr_ptr, _167
# ../../effects.hpp:891:     while (!h.done()) {
	cmpq	$0, (%rcx)	#, MEM[(void * *)_167]
	jne	.L141	#,
.L208:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rcx), %rax	# MEM[(const struct exception_ptr *)_167 + 64B]._M_exception_object, _171
# ../../effects.hpp:896:     if (p.exception)
	testq	%rax, %rax	# _171
	jne	.L209	#,
# ../../effects.hpp:898:     return std::move(*p.result);
	movslq	80(%rcx), %rax	# MEM[(type &)_167 + 80],
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rcx, %rdi	# _167,
# b3_error_handling.cpp:78:     total += co_await eff_div(a, b);
	addq	%rax, 112(%rbx)	# _146, frame_ptr_30(D)->total_1_2
# b3_error_handling.cpp:80: }
	movl	%eax, 152(%rbx)	# _65, frame_ptr_30(D)->T001_3_4
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rcx)	# MEM[(void (*<T123>) (void *) *)_167 + 8B]
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	168(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_30(D) + 168B]._M_fr_ptr, _62
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _62
	je	.L145	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _62,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_62 + 8B]
.L145:
# /usr/include/c++/16.1.1/bits/stl_iterator.h:1103: 	++_M_current;
	movq	136(%rbx), %rax	# MEM[(struct __normal_iterator *)frame_ptr_30(D) + 136B]._M_current, tmp304
# /usr/include/c++/16.1.1/bits/stl_iterator.h:1198:       { return __lhs.base() == __rhs.base(); }
	movq	144(%rbx), %rdx	# MEM[(const struct Pair * const &)frame_ptr_30(D) + 144], pretmp_11
# /usr/include/c++/16.1.1/bits/stl_iterator.h:1103: 	++_M_current;
	addq	$8, %rax	#, _58
	movq	%rax, 136(%rbx)	# _58, MEM[(struct __normal_iterator *)frame_ptr_30(D) + 136B]._M_current
	jmp	.L123	#
.L119:
# b3_error_handling.cpp:80: }
	movl	$2, %esi	#,
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	addw	$1, 106(%rbx)	#, frame_ptr_30(D)->_Coro_frame_refcount
	movb	$0, 109(%rbx)	#, frame_ptr_30(D)->_Coro_initial_await_resume_called
# b3_error_handling.cpp:80: }
	movw	%si, 104(%rbx)	#, frame_ptr_30(D)->_Coro_resume_index
	jmp	.L112	#
.L118:
# b3_error_handling.cpp:80: }
	cmpw	$6, %ax	#, _1
	je	.L152	#,
	jmp	.L116	#
	.p2align 4,,10
	.p2align 3
.L205:
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	184(%rbx), %rdi	# MEM[(struct memory_resource * *)frame_ptr_30(D) + 184B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L155	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_186->_vptr.memory_resource, mr_186->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp254
	movq	24(%rax), %rax	# MEM[(int (*) () *)_187 + 24B], _188
	cmpq	%rdx, %rax	# tmp254, _188
	je	.L112	#,
	movl	$16, %ecx	#,
	movl	$192, %edx	#,
	movq	%rbx, %rsi	# frame_ptr,
	call	*%rax	# _188
	jmp	.L112	#
.L206:
# ../../effects.hpp:723:     void return_value(T v) { result = std::move(v); }
	movq	112(%rbx), %rax	# frame_ptr_30(D)->total_1_2, frame_ptr_30(D)->total_1_2
	movb	$1, 88(%rbx)	#, MEM <unsigned char> [(struct promise_type *)frame_ptr_30(D) + 88B]
	movq	%rax, 80(%rbx)	# frame_ptr_30(D)->total_1_2, MEM <long long int> [(struct promise_type *)frame_ptr_30(D) + 80B]
.L162:
# b3_error_handling.cpp:80: }
	movl	$6, %edx	#,
# b3_error_handling.cpp:80: }
	movq	$0, (%rbx)	#, frame_ptr_30(D)->_Coro_resume_fn
# b3_error_handling.cpp:80: }
	movw	%dx, 104(%rbx)	#, frame_ptr_30(D)->_Coro_resume_index
	jmp	.L112	#
.L125:
	.cfi_offset 14, -24
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movl	$16, %edx	#,
	movl	$264, %esi	#,
	movq	%r9, %rdi	# mr,
.LEHB7:
	call	*%rax	# _120
.LEHE7:
	jmp	.L128	#
.L207:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rax)	#, MEM[(struct exception_ptr *)raw_123 + 64B]._M_exception_object
	je	.L130	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rax), %rdi	#, _154
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, __p
.L130:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)raw_123 + 32B]._M_manager, _157
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _157
	je	.L131	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# __p, %sfp
	leaq	32(%rax), %rsi	#, _156
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _157
	movq	8(%rsp), %rax	# %sfp, __p
.L131:
# b3_error_handling.cpp:70: static auto eff_div(int a, int b) -> Fail::Fx<int> {
	cmpw	$0, 98(%rax)	#, MEM[(struct _ZL7eff_divii.Frame *)raw_123]._Coro_frame_refcount
	jne	.L129	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	256(%rax), %rdi	# MEM[(struct memory_resource * *)raw_123 + 256B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L132	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_160->_vptr.memory_resource, mr_160->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_161 + 24B], _162
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp221
	cmpq	%rdx, %r8	# tmp221, _162
	je	.L129	#,
	movl	$16, %ecx	#,
	movl	$264, %edx	#,
	movq	%rax, %rsi	# __p,
	call	*%r8	# _162
	jmp	.L129	#
.L155:
	.cfi_restore 14
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	24(%rsp), %rax	# D.204678, tmp278
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp278
	jne	.L203	#,
# b3_error_handling.cpp:80: }
	movq	48(%rsp), %r15	#,
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movq	%rbx, %rdi	# frame_ptr,
# b3_error_handling.cpp:80: }
	movq	32(%rsp), %rbx	#,
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$192, %esi	#,
# b3_error_handling.cpp:80: }
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB8:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE8:
.L126:
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -24
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movl	$16, %edx	#,
	movl	$264, %esi	#,
	movq	%r14, %rdi	# mr,
.LEHB9:
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	8(%r14), %rax	# MEM[(struct monotonic_buffer_resource *)mr_117]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%r14), %rdx	# MEM[(struct monotonic_buffer_resource *)mr_117]._M_avail, _143
	jmp	.L127	#
.L124:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$264, %edi	#,
	call	_Znwm@PLT	#
.LEHE9:
	jmp	.L128	#
.L132:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$264, %esi	#,
	movq	%rax, %rdi	# __p,
	call	_ZdlPvm@PLT	#
	jmp	.L129	#
.L209:
	.cfi_restore 14
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	16(%rsp), %rdi	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 16(%rsp)	# _171, MEM[(struct exception_ptr *)&D.204622]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:897:       std::rethrow_exception(p.exception);
	movq	24(%rsp), %rax	# D.204678, tmp277
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp277
	jne	.L203	#,
	leaq	16(%rsp), %rdi	#,
.LEHB10:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE10:
.L203:
	movq	%r14, 40(%rsp)	#,
	.cfi_offset 14, -24
# b3_error_handling.cpp:80: }
	call	__stack_chk_fail@PLT	#
.L166:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movq	40(%rsp), %r14	#,
	.cfi_restore 14
	movq	%rax, %rdi	# tmp274, tmp260
	jmp	.L159	#
.L199:
	jmp	.L200	#
.L169:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	jmp	.L146	#
	.section	.gcc_except_table
	.align 4
.LLSDA6357:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6357-.LLSDATTD6357
.LLSDATTD6357:
	.byte	0x1
	.uleb128 .LLSDACSE6357-.LLSDACSB6357
.LLSDACSB6357:
	.uleb128 .LEHB6-.LFB6357
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L199-.LFB6357
	.uleb128 0x3
	.uleb128 .LEHB7-.LFB6357
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L166-.LFB6357
	.uleb128 0x1
	.uleb128 .LEHB8-.LFB6357
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB6357
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L166-.LFB6357
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB6357
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L169-.LFB6357
	.uleb128 0x3
.LLSDACSE6357:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT6357:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6357
	.type	_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor.cold, @function
_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor.cold:
.LFSB6357:
.L116:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -32
	.cfi_offset 15, -16
	movq	%r14, 40(%rsp)	#,
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	ud2	
.L134:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC5(%rip), %rsi	#,
	movq	%rax, %rdi	# _179,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r15	# _179, _179
.LEHB11:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE11:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	24(%rsp), %rax	# D.204678, tmp276
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp276
	jne	.L202	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r15, %rdi	# _179,
.LEHB12:
	call	__cxa_throw@PLT	#
.LEHE12:
.L122:
.L167:
.L200:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	%rax, %r15	# tmp273, tmp231
.L140:
	movq	160(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_30(D) + 160B]._M_fr_ptr, _72
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _72
	jne	.L210	#,
.L157:
# /usr/include/c++/16.1.1/coroutine:239: 	return bool(_M_fr_ptr);
	movq	168(%rbx), %rax	# MEM[(const struct coroutine_handle *)frame_ptr_30(D) + 168B]._M_fr_ptr, _74
# ../../effects.hpp:534:     if (h)
	testq	%rax, %rax	# _74
	jne	.L211	#,
.L158:
	movq	%r15, %rdi	# tmp231, tmp260
.L159:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	call	__cxa_begin_catch@PLT	#
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	cmpb	$0, 109(%rbx)	#, frame_ptr_30(D)->_Coro_initial_await_resume_called
	jne	.L160	#,
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movq	24(%rsp), %rax	# D.204678, tmp279
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp279
	jne	.L202	#,
.LEHB13:
	call	__cxa_rethrow@PLT	#
.LEHE13:
.L202:
	movq	%r14, 40(%rsp)	#,
	.cfi_remember_state
	.cfi_offset 14, -24
	call	__stack_chk_fail@PLT	#
.L160:
	.cfi_restore_state
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	xorl	%eax, %eax	#
	movw	$0, 104(%rbx)	#, frame_ptr_30(D)->_Coro_resume_index
	leaq	16(%rbx), %rdi	#, _19
	movq	%rax, (%rbx)	#, frame_ptr_30(D)->_Coro_resume_fn
	call	_ZN2fx6detail11PromiseBaseIJ4FailEE19unhandled_exceptionEv	#
.LEHB14:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	call	__cxa_end_catch@PLT	#
.LEHE14:
	jmp	.L162	#
.L170:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r15, %rdi	# _179,
	movq	%rax, 8(%rsp)	# tmp271, %sfp
	call	__cxa_free_exception@PLT	#
	movq	8(%rsp), %r15	# %sfp, tmp231
	jmp	.L140	#
.L146:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 16(%rsp)	#, D.204622._M_exception_object
	je	.L200	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	16(%rsp), %rdi	#,
	movq	%rax, 8(%rsp)	# tmp272, %sfp
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, tmp272
	jmp	.L200	#
.L168:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movq	%rax, %rbx	#, tmp275
	call	__cxa_end_catch@PLT	#
	movq	24(%rsp), %rax	# D.204678, tmp280
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp280
	movq	%r14, 40(%rsp)	#,
	.cfi_offset 14, -24
	jne	.L212	#,
	movq	%rbx, %rdi	# tmp275,
.LEHB15:
	call	_Unwind_Resume@PLT	#
.LEHE15:
.L212:
	call	__stack_chk_fail@PLT	#
.L210:
	.cfi_restore 14
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rdi	# _72,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_72 + 8B]
	jmp	.L157	#
.L211:
	movq	%rax, %rdi	# _74,
	call	*8(%rax)	# MEM[(void (*<T123>) (void *) *)_74 + 8B]
	jmp	.L158	#
	.cfi_endproc
.LFE6357:
	.section	.gcc_except_table
	.align 4
.LLSDAC6357:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC6357-.LLSDATTDC6357
.LLSDATTDC6357:
	.byte	0x1
	.uleb128 .LLSDACSEC6357-.LLSDACSBC6357
.LLSDACSBC6357:
	.uleb128 .LEHB11-.LCOLDB8
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L170-.LCOLDB8
	.uleb128 0x3
	.uleb128 .LEHB12-.LCOLDB8
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L167-.LCOLDB8
	.uleb128 0x3
	.uleb128 .LEHB13-.LCOLDB8
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L168-.LCOLDB8
	.uleb128 0
	.uleb128 .LEHB14-.LCOLDB8
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LCOLDB8
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC6357:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATTC6357:
	.section	.text.unlikely
	.text
	.size	_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor, .-_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor
	.section	.text.unlikely
	.size	_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor.cold, .-_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor.cold
.LCOLDE8:
	.text
.LHOTE8:
	.p2align 4
	.type	_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.destroy, @function
_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.destroy:
.LFB6358:
	.cfi_startproc
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	orw	$1, 104(%rdi)	#, frame_ptr_4(D)->_Coro_resume_index
	jmp	_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor	#
	.cfi_endproc
.LFE6358:
	.size	_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.destroy, .-_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.destroy
	.section	.text.unlikely
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
	.align 2
	.p2align 4
	.type	_ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv, @function
_ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv:
.LFB6365:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6365
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
# b3_error_handling.cpp:100:     sink += eff_sum(pairs).run(FallbackFail{.fallback = -1});
	movq	8(%rdi), %r8	# __closure_6(D)->__pairs, _1
	movq	.LC9(%rip), %xmm1	#, _119
# b3_error_handling.cpp:99:   print_result(bench("  Fail effect", reps, [&] {
	movq	%fs:40, %r12	# MEM[(<address-space-1> long unsigned int *)40B], __closure
	movq	%r12, 104(%rsp)	# __closure, D.204790
	movq	%rdi, %r12	# __closure, __closure
	leaq	48(%rsp), %rbp	#, tmp257
	movq	%rbp, %xmm2	# tmp257, tmp257
	punpcklqdq	%xmm2, %xmm1	# tmp257, _119
	movaps	%xmm1, (%rsp)	# _119, %sfp
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rcx	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rcx, %rcx	# mr
	je	.L215	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rcx), %rax	# mr_50->_vptr.memory_resource, mr_50->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp183
	movq	16(%rax), %rax	# MEM[(int (*) () *)_52 + 16B], _53
	cmpq	%rdx, %rax	# tmp183, _53
	jne	.L216	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rcx), %rax	# MEM[(size_t &)mr_50 + 16], _65
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$191, %rax	#, _65
	jbe	.L217	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rcx), %rdx	# MEM[(void * &)mr_50 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-192(%rax), %rdi	#, _74
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rdx), %rbx	#, _70
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rbx	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rbx, %rsi	# __aligned, __diff_73
	subq	%rdx, %rsi	# __intptr, __diff_73
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rsi, %rdi	# __diff_73, _74
	jb	.L217	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rdx, %rax	# __intptr, _210
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rbx, 8(%rcx)	# __p, MEM[(void * &)mr_50 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rbx, %rax	# __aligned, _76
	movq	%rax, 16(%rcx)	# _76, MEM[(size_t &)mr_50 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rbx, %rbx	# __p
	je	.L217	#,
.L218:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	192(%rbx), %rdx	#, tmp188
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	subq	$192, %rax	#, tmp189
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rdx, 8(%rcx)	# tmp188, MEM[(struct monotonic_buffer_resource *)mr_50]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rax, 16(%rcx)	# tmp189, MEM[(struct monotonic_buffer_resource *)mr_50]._M_avail
.L219:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	leaq	_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.destroy(%rip), %rax	#, tmp180
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rcx, 184(%rbx)	# mr, MEM[(struct memory_resource * *)raw_56 + 184B]
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movq	%rbx, %rdi	# __p,
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movq	.LC10(%rip), %xmm0	#, _215
	movq	%rax, %xmm3	# tmp180, tmp180
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	leaq	80(%rbx), %rax	#, tmp195
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movb	$1, 108(%rbx)	#, MEM[(struct _ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame *)raw_56]._Coro_frame_needs_free
	punpcklqdq	%xmm3, %xmm0	# tmp180, _215
	movq	%r8, 96(%rbx)	# _1, MEM[(struct _ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame *)raw_56].pairs
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_56 + 16B].aborted
	movq	$0, 24(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_56 + 16B].abort_owner
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rbx)	#, MEM[(struct any *)raw_56 + 32B]._M_manager
# /usr/include/c++/16.1.1/optional:135:       _Optional_payload_base() = default;
	movb	$0, 88(%rbx)	#, MEM[(struct _Optional_payload_base *)raw_56 + 80B]._M_engaged
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movl	$65536, 104(%rbx)	#, MEM <vector(2) short unsigned int> [(short unsigned int *)raw_56 + 104B]
# ../../effects.hpp:904:   this->result_ptr = &result; // lets resume retrieve T without knowing Es
	movq	%rax, 72(%rbx)	# tmp195, MEM[(struct promise_type *)raw_56 + 16B].D.149654.D.148150.result_ptr
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movups	%xmm0, (%rbx)	# _215, MEM <vector(2) long unsigned int> [(void (*<T17d9f>) (struct _ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame *) *)raw_56]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp191
	movups	%xmm0, 40(%rbx)	# tmp191, MEM <vector(2) long unsigned int> [(void *)raw_56 + 40B]
	movups	%xmm0, 56(%rbx)	# tmp191, MEM <vector(2) long unsigned int> [(void *)raw_56 + 56B]
.LEHB16:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	call	_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor	#
.LEHE16:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	subw	$1, 106(%rbx)	#, MEM[(struct _ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame *)raw_56]._Coro_frame_refcount
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	je	.L275	#,
.L220:
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	(%rsp), %xmm4	# %sfp, _119
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	leaq	36(%rsp), %rax	#, tmp203
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# b3_error_handling.cpp:100:     sink += eff_sum(pairs).run(FallbackFail{.fallback = -1});
	movl	$-1, 36(%rsp)	#, D.150034.fallback
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	movq	%rax, 64(%rsp)	# tmp203, guard.node.real_handler_ptr
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI4Fail12FallbackFailxxEC4ERS2_PvENUlS5_S5_E_4_FUNES5_S5_(%rip), %rax	#, tmp284
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 88(%rsp)	#, MEM[(struct HandlerNode *)&guard].on_return_any_fn
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	movq	%rax, 72(%rsp)	# tmp284, guard.node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm4, 48(%rsp)	# _119, MEM <vector(2) long unsigned int> [(const void * *)&guard]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.77_26
	movq	%rax, 96(%rsp)	# stack_top.77_26, guard.saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 80(%rsp)	# stack_top.77_26, guard.node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%rbp, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp257, stack_top
.LEHB17:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_56]
	.p2align 4
	.p2align 3
.L224:
# ../../effects.hpp:743:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)raw_56]
	je	.L276	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:745:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)raw_56 + 16].D.149654.D.148150.effect_tag, _102
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L230	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _102, n_109->effect_tag
	je	.L231	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L232:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_22->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L230	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_113->effect_tag, _102
	jne	.L232	#,
.L231:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)raw_56 + 16].D.149654.D.148150.payload_ptr, MEM[(struct promise_type &)raw_56 + 16].D.149654.D.148150.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_11->dispatch
.LEHE17:
# ../../effects.hpp:746:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)raw_56 + 16].D.149654.D.148150.aborted
	je	.L224	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp257, MEM[(struct PromiseAbortBase *)raw_56 + 16B].abort_owner
	je	.L238	#,
# ../../effects.hpp:804:       return std::nullopt;
	xorl	%edx, %edx	# SR.644
.L239:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	96(%rsp), %rax	# guard.saved, guard.saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# guard.saved, stack_top
# b3_error_handling.cpp:100:     sink += eff_sum(pairs).run(FallbackFail{.fallback = -1});
	movq	(%r12), %rax	# __closure_6(D)->__sink, _2
# b3_error_handling.cpp:100:     sink += eff_sum(pairs).run(FallbackFail{.fallback = -1});
	addq	%rdx, (%rax)	# SR.644, *_2
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_56 + 8B]
# b3_error_handling.cpp:101:   }));
	movq	104(%rsp), %rax	# D.204790, tmp274
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp274
	jne	.L277	#,
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
.L217:
	.cfi_restore_state
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movq	%rcx, %rdi	# mr,
	movl	$16, %edx	#,
	movl	$192, %esi	#,
	movq	%r8, 24(%rsp)	# _1, %sfp
	movq	%rcx, 16(%rsp)	# mr, %sfp
.LEHB18:
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
.LEHE18:
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	16(%rsp), %rcx	# %sfp, mr
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	24(%rsp), %r8	# %sfp, _1
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	8(%rcx), %rbx	# MEM[(struct monotonic_buffer_resource *)mr_50]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%rcx), %rax	# MEM[(struct monotonic_buffer_resource *)mr_50]._M_avail, _76
	jmp	.L218	#
.L276:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)raw_56 + 64B]._M_exception_object, _106
# ../../effects.hpp:750:     if (p.exception)
	testq	%rax, %rax	# _106
	jne	.L278	#,
# /usr/include/c++/16.1.1/optional:229: 	    : _M_value(std::forward<_Args>(__args)...)
	movq	80(%rbx), %rdx	# MEM[(long long int &)raw_56 + 80], SR.644
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_56 + 16B].aborted
	je	.L239	#,
# ../../effects.hpp:771:     if (ab && ab->aborted &&
	cmpq	%rbp, 24(%rbx)	# tmp257, MEM[(struct PromiseAbortBase *)raw_56 + 16B].abort_owner
	jne	.L239	#,
.L238:
# /usr/include/c++/16.1.1/any:536:       else if (__any->_M_manager == &any::_Manager<_Up>::_S_manage
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_56 + 32B]._M_manager, _115
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	leaq	_ZNSt3any17_Manager_internalIxE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(%rip), %rdx	#, tmp238
# ../../effects.hpp:773:       ab->aborted = false;
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_56 + 16B].aborted
# /usr/include/c++/16.1.1/any:538: 	  || __any->type() == typeid(_Tp)
	cmpq	%rdx, %rax	# tmp238, _115
	je	.L247	#,
# /usr/include/c++/16.1.1/any:340:       if (!has_value())
	testq	%rax, %rax	# _115
	je	.L254	#,
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	leaq	40(%rsp), %rdx	#, tmp239
# ../../effects.hpp:788:         return std::optional<R>{std::any_cast<R>(std::move(ab->abort_value))};
	leaq	32(%rbx), %rsi	#, _31
# /usr/include/c++/16.1.1/any:343:       _M_manager(_Op_get_type_info, this, &__arg);
	movl	$1, %edi	#,
	call	*%rax	# _115
# /usr/include/c++/16.1.1/any:344:       return *__arg._M_typeinfo;
	movq	40(%rsp), %rax	# MEM[(union _Arg *)_228]._M_typeinfo, _116
.L248:
	movq	8(%rax), %rdi	# MEM[(const char * *)_117 + 8B], _121
	movq	8+_ZTIx(%rip), %rsi	# MEM[(const char * *)&_ZTIx + 8B], _122
# /usr/include/c++/16.1.1/typeinfo:202:     if (__name == __arg.__name)
	cmpq	%rsi, %rdi	# _122, _121
	je	.L247	#,
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	cmpb	$42, (%rdi)	#, *_121
	je	.L249	#,
# /usr/include/c++/16.1.1/typeinfo:105:     { return __name[0] == '*' ? __name + 1 : __name; }
	xorl	%eax, %eax	# tmp258
	cmpb	$42, (%rsi)	#, *_122
	sete	%al	#, tmp258
	addq	%rax, %rsi	# tmp258, _122
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	call	strcmp@PLT	#
# /usr/include/c++/16.1.1/typeinfo:210:     return __name[0] != '*' && __builtin_strcmp (__name, __arg.name()) == 0;
	testl	%eax, %eax	# _129
	jne	.L249	#,
.L247:
# /usr/include/c++/16.1.1/any:516: 	return static_cast<_ValueType>(std::move(*__p));
	movq	40(%rbx), %rdx	# MEM[(type &)raw_56 + 40], SR.644
	jmp	.L239	#
.L275:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_56 + 64B]._M_exception_object
	je	.L221	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _87
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L221:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_56 + 32B]._M_manager, _90
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _90
	je	.L222	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _89
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _90
.L222:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	cmpw	$0, 106(%rbx)	#, MEM[(struct _ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame *)raw_56]._Coro_frame_refcount
	jne	.L220	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	184(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_56 + 184B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L223	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_93->_vptr.memory_resource, mr_93->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp202
	movq	24(%rax), %rax	# MEM[(int (*) () *)_94 + 24B], _95
	cmpq	%rdx, %rax	# tmp202, _95
	je	.L220	#,
	movl	$16, %ecx	#,
	movl	$192, %edx	#,
	movq	%rbx, %rsi	# __p,
	call	*%rax	# _95
	jmp	.L220	#
.L215:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$192, %edi	#,
	movq	%rcx, 24(%rsp)	# mr, %sfp
	movq	%r8, 16(%rsp)	# _1, %sfp
.LEHB19:
	call	_Znwm@PLT	#
	movq	24(%rsp), %rcx	# %sfp, mr
	movq	16(%rsp), %r8	# %sfp, _1
	movq	%rax, %rbx	# __p, __p
	jmp	.L219	#
.L216:
	movq	%r8, 24(%rsp)	# _1, %sfp
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	%rcx, %rdi	# mr,
	movl	$16, %edx	#,
	movl	$192, %esi	#,
	movq	%rcx, 16(%rsp)	# mr, %sfp
	call	*%rax	# _53
.LEHE19:
	movq	16(%rsp), %rcx	# %sfp, mr
	movq	24(%rsp), %r8	# %sfp, _1
	movq	%rax, %rbx	# __p, __p
	jmp	.L219	#
.L223:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$192, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZdlPvm@PLT	#
	jmp	.L220	#
.L254:
# /usr/include/c++/16.1.1/any:341: 	return typeid(void);
	leaq	_ZTIv(%rip), %rax	#, _116
	jmp	.L248	#
.L277:
# b3_error_handling.cpp:101:   }));
	call	__stack_chk_fail@PLT	#
.L278:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	40(%rsp), %rdi	#, tmp286
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 40(%rsp)	# _106, MEM[(struct exception_ptr *)_228]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:751:       std::rethrow_exception(p.exception);
	movq	104(%rsp), %rax	# D.204790, tmp272
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp272
	jne	.L279	#,
	leaq	40(%rsp), %rdi	#, tmp287
.LEHB20:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE20:
.L279:
	call	__stack_chk_fail@PLT	#
.L257:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	movq	%rax, %rbp	#, tmp266
	jmp	.L245	#
.L256:
# ../../effects.hpp:534:     if (h)
	movq	%rax, %rbp	#, tmp263
	jmp	.L225	#
.L270:
	jmp	.L271	#
	.section	.gcc_except_table
.LLSDA6365:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6365-.LLSDACSB6365
.LLSDACSB6365:
	.uleb128 .LEHB16-.LFB6365
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L256-.LFB6365
	.uleb128 0
	.uleb128 .LEHB17-.LFB6365
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L270-.LFB6365
	.uleb128 0
	.uleb128 .LEHB18-.LFB6365
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB6365
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB6365
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L257-.LFB6365
	.uleb128 0
.LLSDACSE6365:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6365
	.type	_ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv.cold, @function
_ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv.cold:
.LFSB6365:
.L249:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movl	$8, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/16.1.1/any:63:   class bad_any_cast : public bad_cast
	leaq	16+_ZTVSt12bad_any_cast(%rip), %rcx	#, tmp289
	movq	%rcx, (%rax)	# tmp289, MEM[(struct bad_any_cast *)_131].D.7902.D.2948._vptr.exception
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	movq	104(%rsp), %rdx	# D.204790, tmp273
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp273
	jne	.L280	#,
	leaq	_ZNSt12bad_any_castD1Ev(%rip), %rdx	#,
	leaq	_ZTISt12bad_any_cast(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp268,
.LEHB21:
	call	__cxa_throw@PLT	#
.LEHE21:
.L230:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC5(%rip), %rsi	#,
	movq	%rax, %rdi	# _114,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _114
.LEHB22:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE22:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	104(%rsp), %rax	# D.204790, tmp271
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp271
	jne	.L281	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _114,
.LEHB23:
	call	__cxa_throw@PLT	#
.LEHE23:
.L225:
# ../../effects.hpp:534:     if (h)
	testq	%rbx, %rbx	# __p
	je	.L226	#,
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_56 + 8B]
.L226:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	subw	$1, 106(%rbx)	#, MEM[(struct _ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame *)raw_56]._Coro_frame_refcount
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	jne	.L227	#,
# ../../effects.hpp:454: template <typename... Es> struct PromiseBase : PromiseAbortBase {
	leaq	16(%rbx), %rdi	#, _48
	call	_ZN2fx6detail16PromiseAbortBaseD2Ev	#
.L227:
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	cmpw	$0, 106(%rbx)	#, MEM[(struct _ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame *)raw_56]._Coro_frame_refcount
	jne	.L228	#,
# b3_error_handling.cpp:75: static auto eff_sum(const std::vector<Pair> &pairs) -> Fail::Fx<long long> {
	movl	$184, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZN2fx6detail11PromiseBaseIJ4FailEEdlEPvm	#
.L228:
	movq	104(%rsp), %rax	# D.204790, tmp270
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp270
	jne	.L282	#,
	movq	%rbp, %rdi	# tmp263,
.LEHB24:
	call	_Unwind_Resume@PLT	#
.LEHE24:
.L281:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	__stack_chk_fail@PLT	#
.L282:
	call	__stack_chk_fail@PLT	#
.L258:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _114,
	movq	%rax, %rbp	#, tmp265
	call	__cxa_free_exception@PLT	#
.L237:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	96(%rsp), %rax	# guard.saved, guard.saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# guard.saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_56 + 8B]
	movq	104(%rsp), %rax	# D.204790, tmp275
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp275
	jne	.L283	#,
	movq	%rbp, %rdi	# tmp227,
.LEHB25:
	call	_Unwind_Resume@PLT	#
.LEHE25:
.L255:
.L271:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp269, tmp227
	jmp	.L237	#
.L283:
	call	__stack_chk_fail@PLT	#
.L245:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 40(%rsp)	#, MEM[(struct exception_ptr *)_228]._M_exception_object
	je	.L237	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	40(%rsp), %rdi	#, tmp288
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	jmp	.L237	#
.L280:
# /usr/include/c++/16.1.1/any:72:     throw bad_any_cast{};
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6365:
	.section	.gcc_except_table
.LLSDAC6365:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6365-.LLSDACSBC6365
.LLSDACSBC6365:
	.uleb128 .LEHB21-.LCOLDB11
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L255-.LCOLDB11
	.uleb128 0
	.uleb128 .LEHB22-.LCOLDB11
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L258-.LCOLDB11
	.uleb128 0
	.uleb128 .LEHB23-.LCOLDB11
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L255-.LCOLDB11
	.uleb128 0
	.uleb128 .LEHB24-.LCOLDB11
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LCOLDB11
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSEC6365:
	.section	.text.unlikely
	.text
	.size	_ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv, .-_ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv
	.section	.text.unlikely
	.size	_ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv.cold, .-_ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv.cold
.LCOLDE11:
	.text
.LHOTE11:
	.section	.rodata.str1.1
.LC12:
	.string	"  "
.LC13:
	.string	"\n"
.LC15:
	.string	" "
.LC16:
	.string	" ns/iter\n"
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4
	.type	_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0, @function
_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0:
.LFB9055:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9055
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# b3_error_handling.cpp:84: static void run_trio(const char *label, const std::vector<Pair> &pairs,
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	xorl	%r14d, %r14d	# i
# b3_error_handling.cpp:84: static void run_trio(const char *label, const std::vector<Pair> &pairs,
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	xorl	%ebp, %ebp	# prephitmp_375
# b3_error_handling.cpp:84: static void run_trio(const char *label, const std::vector<Pair> &pairs,
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# label, label
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# b3_error_handling.cpp:84: static void run_trio(const char *label, const std::vector<Pair> &pairs,
	subq	$152, %rsp	#,
	.cfi_def_cfa_offset 208
# b3_error_handling.cpp:84: static void run_trio(const char *label, const std::vector<Pair> &pairs,
	movq	%fs:40, %r13	# MEM[(<address-space-1> long unsigned int *)40B], pairs
	movq	%r13, 136(%rsp)	# pairs, D.205212
	movq	%rsi, %r13	# pairs, pairs
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC12(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:204: 	: allocator_type(__a), _M_p(__dat) { }
	leaq	64(%rsp), %r15	#, tmp542
.LEHB26:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/char_traits.h:396: 	return __builtin_strlen(__s);
	movq	%rbx, %rdi	# label,
	call	strlen@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movq	%rbx, %rsi	# label,
	leaq	_ZSt4cout(%rip), %rdi	#,
	movq	%rax, %rdx	# tmp555,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$1, %edx	#,
	leaq	.LC13(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE26:
# /usr/include/c++/16.1.1/bits/basic_string.h:204: 	: allocator_type(__a), _M_p(__dat) { }
	movq	%r15, 48(%rsp)	# tmp542, MEM[(struct _Alloc_hider *)_281]._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movabsq	$8390317583687295008, %rax	#, tmp584
# b3_error_handling.cpp:87:   long long sink = 0;
	movq	$0, 24(%rsp)	#, sink
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%rax, 64(%rsp)	# tmp584, MEM <char[1:12]> [(void *)_281 + 16B]
	movl	$1936617321, 72(%rsp)	#, MEM <char[1:12]> [(void *)_281 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 76(%rsp)	#, MEM[(char_type &)_281 + 28]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$12, 56(%rsp)	#, MEM[(struct basic_string *)_281]._M_string_length
	.p2align 4
	.p2align 3
.L287:
# /usr/include/c++/16.1.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	0(%r13), %rbx	# MEM[(const struct Pair * const &)pairs_3(D)], _181
	movq	8(%r13), %r12	# MEM[(const struct Pair * const &)pairs_3(D) + 8], _182
# b3_error_handling.cpp:47:   for (auto [a, b] : pairs) {
	cmpq	%r12, %rbx	# _182, _181
	je	.L285	#,
# b3_error_handling.cpp:46:   long long total = 0;
	xorl	%ebp, %ebp	# total
	.p2align 4
	.p2align 3
.L286:
# b3_error_handling.cpp:48:     try { total += exc_div(a, b); }
	movl	4(%rbx), %esi	# MEM[(int *)_322 + 4B], MEM[(int *)_322 + 4B]
	movl	(%rbx), %edi	# MEM[(int *)_322], MEM[(int *)_322]
.LEHB27:
	call	_ZL7exc_divii	#
.LEHE27:
# b3_error_handling.cpp:48:     try { total += exc_div(a, b); }
	cltq
	addq	%rax, %rbp	# _187, total
.L290:
# b3_error_handling.cpp:47:   for (auto [a, b] : pairs) {
	addq	$8, %rbx	#, ivtmp.728
	cmpq	%rbx, %r12	# ivtmp.728, _182
	jne	.L286	#,
# b3_error_handling.cpp:90:     sink += exc_sum(pairs);
	addq	24(%rsp), %rbp	# sink, prephitmp_375
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	addq	$1, %r14	#, i
# b3_error_handling.cpp:90:     sink += exc_sum(pairs);
	movq	%rbp, 24(%rsp)	# prephitmp_375, sink
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	cmpq	$3, %r14	#, i
	jne	.L287	#,
.L288:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	xorl	%r14d, %r14d	# i
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movq	%rax, 8(%rsp)	#, %sfp
	.p2align 4
	.p2align 3
.L337:
# /usr/include/c++/16.1.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	0(%r13), %rbx	# MEM[(const struct Pair * const &)pairs_3(D)], _194
	movq	8(%r13), %r12	# MEM[(const struct Pair * const &)pairs_3(D) + 8], _195
# b3_error_handling.cpp:47:   for (auto [a, b] : pairs) {
	cmpq	%r12, %rbx	# _195, _194
	je	.L294	#,
# b3_error_handling.cpp:46:   long long total = 0;
	xorl	%ebp, %ebp	# total
	.p2align 4
	.p2align 3
.L292:
# b3_error_handling.cpp:48:     try { total += exc_div(a, b); }
	movl	4(%rbx), %esi	# MEM[(int *)_550 + 4B], MEM[(int *)_550 + 4B]
	movl	(%rbx), %edi	# MEM[(int *)_550], MEM[(int *)_550]
.LEHB28:
	call	_ZL7exc_divii	#
.LEHE28:
# b3_error_handling.cpp:48:     try { total += exc_div(a, b); }
	cltq
	addq	%rax, %rbp	# _200, total
.L296:
# b3_error_handling.cpp:47:   for (auto [a, b] : pairs) {
	addq	$8, %rbx	#, ivtmp.718
	cmpq	%rbx, %r12	# ivtmp.718, _195
	jne	.L292	#,
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	addq	$1, %r14	#, i
# b3_error_handling.cpp:90:     sink += exc_sum(pairs);
	addq	%rbp, 24(%rsp)	# total, sink
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	cmpq	$500, %r14	#, i
	jne	.L337	#,
.L294:
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdx	# MEM[(const struct basic_string *)_281]._M_dataplus._M_p, _208
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	96(%rsp), %rbx	#, tmp547
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	56(%rsp), %r8	# MEM[(const struct basic_string *)_281]._M_string_length, pretmp_534
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rbx, 80(%rsp)	# tmp547, MEM[(struct _Alloc_hider *)_241]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdx	# tmp542, _208
	je	.L357	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rdx, 80(%rsp)	# _208, MEM[(struct basic_string *)_241]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	64(%rsp), %rdx	# MEM[(struct basic_string &)_281].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_281].D.58684._M_allocated_capacity
	movq	%rdx, 96(%rsp)	# MEM[(struct basic_string &)_281].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_241].D.58684._M_allocated_capacity
.L298:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	8(%rsp), %rax	# %sfp, _147
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _148
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%r8, 88(%rsp)	# pretmp_534, MEM[(struct basic_string *)_241]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC12(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _147, _148
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r15, 48(%rsp)	# tmp542, MEM[(struct basic_string *)_281]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 120(%rsp)	# _148, MEM[(struct BenchResult *)_241].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC14(%rip), %xmm0	#, _148
	movq	%xmm0, %r12	# _148, _217
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 64(%rsp)	#, MEM[(char_type &)_281 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 56(%rsp)	#, MEM[(struct basic_string *)_281]._M_string_length
# bench.hpp:44: }
	movq	$500, 112(%rsp)	#, MEM[(struct BenchResult *)_241].iters
.LEHB29:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _218
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp589
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	80(%rsp), %rsi	# MEM[(const struct basic_string *)_241]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp589,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_218 + -24B], MEM[(long int *)_218 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _221->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_218 + -24B], _224
	addq	%rcx, %rdx	# tmp589, _224
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _224->_M_flags, _238
	andb	$79, %al	#, _238
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp360
	movl	%eax, 24(%rdx)	# tmp360, MEM[(_Ios_Fmtflags &)_224 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	88(%rsp), %rdx	# MEM[(const struct basic_string *)_241]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC15(%rip), %rsi	#,
	movq	%rax, %rdi	# _228,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbp	#, _228
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	0(%rbp), %rax	# _228->_vptr.basic_ostream, _229
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%r12, %xmm0	# _217,
	movq	%rbp, %rdi	# _228,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_229 + -24B], MEM[(long int *)_229 + -24B]
	movq	$10, 16(%rbp,%rdx)	#, _232->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_229 + -24B], _235
	addq	%rbp, %rdx	# _228, _235
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _235->_M_flags, _397
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _235->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _397
	orb	$-124, %al	#, tmp369
	movl	%eax, 24(%rdx)	# tmp369, MEM[(_Ios_Fmtflags &)_235 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC16(%rip), %rsi	#,
	movq	%rax, %rdi	# _236,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE29:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(const struct basic_string *)_241]._M_dataplus._M_p, _4
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp547, _4
	je	.L299	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_241].D.58684._M_allocated_capacity, tmp594
	leaq	1(%rax), %rsi	#, _7
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L299:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdi	# MEM[(struct basic_string *)_281]._M_dataplus._M_p, _8
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdi	# tmp542, _8
	je	.L300	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	64(%rsp), %rax	# MEM[(struct basic_string *)_281].D.58684._M_allocated_capacity, tmp595
	leaq	1(%rax), %rsi	#, _11
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L300:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/basic_string.h:204: 	: allocator_type(__a), _M_p(__dat) { }
	movq	%r15, 48(%rsp)	# tmp542, MEM[(struct _Alloc_hider *)_281]._M_p
# b3_error_handling.cpp:95:     sink += opt_sum(pairs);
	movq	24(%rsp), %r11	# sink, prephitmp_382
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movabsq	$8014782689984061472, %rax	#, tmp596
# /usr/include/c++/16.1.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movl	$3, %r10d	#, ivtmp_392
	movq	0(%r13), %rbp	# MEM[(const struct Pair * const &)pairs_3(D)], pretmp_386
	movq	8(%r13), %r9	# MEM[(const struct Pair * const &)pairs_3(D) + 8], pretmp_388
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%rax, 64(%rsp)	# tmp596, MEM <char[1:15]> [(void *)_281 + 16B]
	movabsq	$7809644653626814575, %rax	#, tmp597
	movq	%rax, 71(%rsp)	# tmp597, MEM <char[1:15]> [(void *)_281 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 79(%rsp)	#, MEM[(char_type &)_281 + 31]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$15, 56(%rsp)	#, MEM[(struct basic_string *)_281]._M_string_length
	.p2align 4
	.p2align 3
.L306:
# b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmpq	%r9, %rbp	# pretmp_388, pretmp_386
	je	.L301	#,
	movq	%rbp, %rcx	# pretmp_386, ivtmp.701
# b3_error_handling.cpp:62:   long long total = 0;
	xorl	%r8d, %r8d	# total
	.p2align 4
	.p2align 3
.L305:
# b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	movl	4(%rcx), %esi	# MEM[(int *)_353 + 4B], MEM[(int *)_353 + 4B]
	movl	(%rcx), %edi	# MEM[(int *)_353], MEM[(int *)_353]
	call	_ZL7opt_divii	#
	movq	%rax, %rdx	# tmp564, tmp549
	movq	%rax, 32(%rsp)	# tmp564, MEM[(struct optional *)_144]
	shrq	$32, %rdx	#, tmp549
# /usr/include/c++/16.1.1/optional:1328: 	  if (this->_M_is_engaged())
	testb	%dl, %dl	# tmp549
	je	.L302	#,
# b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	movslq	32(%rsp), %rax	# MEM[(type &)_144], _444
# b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	addq	$8, %rcx	#, ivtmp.701
# b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	addq	%rax, %r8	# _444, total
# b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmpq	%rcx, %r9	# ivtmp.701, pretmp_388
	jne	.L305	#,
.L304:
# b3_error_handling.cpp:95:     sink += opt_sum(pairs);
	addq	%r8, %r11	# total, prephitmp_382
.L301:
	movq	%r11, 24(%rsp)	# prephitmp_382, sink
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %r10	#, ivtmp_392
	jne	.L306	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# b3_error_handling.cpp:95:     sink += opt_sum(pairs);
	movq	24(%rsp), %r11	# sink, prephitmp_296
# /usr/include/c++/16.1.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	0(%r13), %r12	# MEM[(const struct Pair * const &)pairs_3(D)], pretmp_315
	movl	$500, %r10d	#, ivtmp_464
	movq	8(%r13), %r9	# MEM[(const struct Pair * const &)pairs_3(D) + 8], pretmp_314
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movq	%rax, %rbp	#, start
	.p2align 4
	.p2align 3
.L312:
# b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmpq	%r12, %r9	# pretmp_315, pretmp_314
	je	.L307	#,
	movq	%r12, %rcx	# pretmp_315, ivtmp.690
# b3_error_handling.cpp:62:   long long total = 0;
	xorl	%r8d, %r8d	# total
	.p2align 4
	.p2align 3
.L311:
# b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	movl	4(%rcx), %esi	# MEM[(int *)_320 + 4B], MEM[(int *)_320 + 4B]
	movl	(%rcx), %edi	# MEM[(int *)_320], MEM[(int *)_320]
	call	_ZL7opt_divii	#
	movq	%rax, %rdx	# tmp566, tmp551
	movq	%rax, 32(%rsp)	# tmp566, MEM[(struct optional *)_144]
	shrq	$32, %rdx	#, tmp551
# /usr/include/c++/16.1.1/optional:1328: 	  if (this->_M_is_engaged())
	testb	%dl, %dl	# tmp551
	je	.L308	#,
# b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	movslq	32(%rsp), %rax	# MEM[(type &)_144], _188
# b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	addq	$8, %rcx	#, ivtmp.690
# b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	addq	%rax, %r8	# _188, total
# b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmpq	%rcx, %r9	# ivtmp.690, pretmp_314
	jne	.L311	#,
.L310:
# b3_error_handling.cpp:95:     sink += opt_sum(pairs);
	addq	%r8, %r11	# total, prephitmp_296
.L307:
	movq	%r11, 24(%rsp)	# prephitmp_296, sink
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %r10	#, ivtmp_464
	jne	.L312	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdx	# MEM[(const struct basic_string *)_281]._M_dataplus._M_p, _343
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rbx, 80(%rsp)	# tmp547, MEM[(struct _Alloc_hider *)_241]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	56(%rsp), %r8	# MEM[(const struct basic_string *)_281]._M_string_length, pretmp_297
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdx	# tmp542, _343
	je	.L358	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rdx, 80(%rsp)	# _343, MEM[(struct basic_string *)_241]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	64(%rsp), %rdx	# MEM[(struct basic_string &)_281].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_281].D.58684._M_allocated_capacity
	movq	%rdx, 96(%rsp)	# MEM[(struct basic_string &)_281].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_241].D.58684._M_allocated_capacity
.L314:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbp, %rax	# start, _288
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _289
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%r8, 88(%rsp)	# pretmp_297, MEM[(struct basic_string *)_241]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC12(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _288, _289
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r15, 48(%rsp)	# tmp542, MEM[(struct basic_string *)_281]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 120(%rsp)	# _289, MEM[(struct BenchResult *)_241].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC14(%rip), %xmm0	#, _289
	movq	%xmm0, %r12	# _289, _251
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 64(%rsp)	#, MEM[(char_type &)_281 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 56(%rsp)	#, MEM[(struct basic_string *)_281]._M_string_length
# bench.hpp:44: }
	movq	$500, 112(%rsp)	#, MEM[(struct BenchResult *)_241].iters
.LEHB30:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _252
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp603
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	80(%rsp), %rsi	# MEM[(const struct basic_string *)_241]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp603,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_252 + -24B], MEM[(long int *)_252 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _255->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_252 + -24B], _258
	addq	%rcx, %rdx	# tmp603, _258
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _258->_M_flags, _350
	andb	$79, %al	#, _350
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp424
	movl	%eax, 24(%rdx)	# tmp424, MEM[(_Ios_Fmtflags &)_258 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	88(%rsp), %rdx	# MEM[(const struct basic_string *)_241]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC15(%rip), %rsi	#,
	movq	%rax, %rdi	# _262,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbp	#, _262
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	0(%rbp), %rax	# _262->_vptr.basic_ostream, _263
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%r12, %xmm0	# _251,
	movq	%rbp, %rdi	# _262,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_263 + -24B], MEM[(long int *)_263 + -24B]
	movq	$10, 16(%rbp,%rdx)	#, _266->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_263 + -24B], _269
	addq	%rbp, %rdx	# _262, _269
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _269->_M_flags, _342
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _269->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _342
	orb	$-124, %al	#, tmp433
	movl	%eax, 24(%rdx)	# tmp433, MEM[(_Ios_Fmtflags &)_269 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC16(%rip), %rsi	#,
	movq	%rax, %rdi	# _270,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE30:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(const struct basic_string *)_241]._M_dataplus._M_p, _13
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp547, _13
	je	.L315	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_241].D.58684._M_allocated_capacity, tmp608
	leaq	1(%rax), %rsi	#, _16
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L315:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdi	# MEM[(struct basic_string *)_281]._M_dataplus._M_p, _17
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdi	# tmp542, _17
	je	.L316	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	64(%rsp), %rax	# MEM[(struct basic_string *)_281].D.58684._M_allocated_capacity, tmp609
	leaq	1(%rax), %rsi	#, _20
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L316:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# b3_error_handling.cpp:99:   print_result(bench("  Fail effect", reps, [&] {
	leaq	24(%rsp), %rax	#, tmp443
	movq	%r13, 40(%rsp)	# pairs, MEM[(struct ._anon_196 *)_144].__pairs
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$3, %ebp	#, ivtmp_274
# b3_error_handling.cpp:99:   print_result(bench("  Fail effect", reps, [&] {
	movq	%rax, 32(%rsp)	# tmp443, MEM[(struct ._anon_196 *)_144].__sink
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movabsq	$7286943396944814112, %rax	#, tmp610
	movq	%rax, 64(%rsp)	# tmp610, MEM <char[1:13]> [(void *)_281 + 16B]
	movabsq	$8386658421572968556, %rax	#, tmp611
# /usr/include/c++/16.1.1/bits/basic_string.h:204: 	: allocator_type(__a), _M_p(__dat) { }
	movq	%r15, 48(%rsp)	# tmp542, MEM[(struct _Alloc_hider *)_281]._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%rax, 69(%rsp)	# tmp611, MEM <char[1:13]> [(void *)_281 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 77(%rsp)	#, MEM[(char_type &)_281 + 29]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$13, 56(%rsp)	#, MEM[(struct basic_string *)_281]._M_string_length
	.p2align 4
	.p2align 3
.L317:
# bench.hpp:35:     fn();
	leaq	32(%rsp), %rdi	#, tmp612
.LEHB31:
	call	_ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv	#
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %rbp	#, ivtmp_274
	jne	.L317	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$500, %ebp	#, ivtmp_210
	movq	%rax, %r12	#, start
	.p2align 4
	.p2align 3
.L318:
# bench.hpp:39:     fn();
	leaq	32(%rsp), %rdi	#, tmp613
	call	_ZZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEmENKUlvE1_clEv	#
.LEHE31:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %rbp	#, ivtmp_210
	jne	.L318	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdx	# MEM[(const struct basic_string *)_281]._M_dataplus._M_p, _398
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rbx, 80(%rsp)	# tmp547, MEM[(struct _Alloc_hider *)_241]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	56(%rsp), %r8	# MEM[(const struct basic_string *)_281]._M_string_length, pretmp_533
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdx	# tmp542, _398
	je	.L359	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rdx, 80(%rsp)	# _398, MEM[(struct basic_string *)_241]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	64(%rsp), %rdx	# MEM[(struct basic_string &)_281].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_281].D.58684._M_allocated_capacity
	movq	%rdx, 96(%rsp)	# MEM[(struct basic_string &)_281].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_241].D.58684._M_allocated_capacity
.L320:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r12, %rax	# start, _367
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _368
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%r8, 88(%rsp)	# pretmp_533, MEM[(struct basic_string *)_241]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC12(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _367, _368
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r15, 48(%rsp)	# tmp542, MEM[(struct basic_string *)_281]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 120(%rsp)	# _368, MEM[(struct BenchResult *)_241].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC14(%rip), %xmm0	#, _368
	movq	%xmm0, %r12	# _368, _407
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 64(%rsp)	#, MEM[(char_type &)_281 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 56(%rsp)	#, MEM[(struct basic_string *)_281]._M_string_length
# bench.hpp:44: }
	movq	$500, 112(%rsp)	#, MEM[(struct BenchResult *)_241].iters
.LEHB32:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _408
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp617
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	80(%rsp), %rsi	# MEM[(const struct basic_string *)_241]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp617,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_408 + -24B], MEM[(long int *)_408 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _411->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_408 + -24B], _414
	addq	%rcx, %rdx	# tmp617, _414
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _414->_M_flags, _428
	andb	$79, %al	#, _428
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp479
	movl	%eax, 24(%rdx)	# tmp479, MEM[(_Ios_Fmtflags &)_414 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	88(%rsp), %rdx	# MEM[(const struct basic_string *)_241]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC15(%rip), %rsi	#,
	movq	%rax, %rdi	# _418,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbp	#, _418
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	0(%rbp), %rax	# _418->_vptr.basic_ostream, _419
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%r12, %xmm0	# _407,
	movq	%rbp, %rdi	# _418,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_419 + -24B], MEM[(long int *)_419 + -24B]
	movq	$10, 16(%rbp,%rdx)	#, _422->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_419 + -24B], _425
	addq	%rbp, %rdx	# _418, _425
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _425->_M_flags, _207
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _425->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _207
	orb	$-124, %al	#, tmp488
	movl	%eax, 24(%rdx)	# tmp488, MEM[(_Ios_Fmtflags &)_425 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC16(%rip), %rsi	#,
	movq	%rax, %rdi	# _426,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE32:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(const struct basic_string *)_241]._M_dataplus._M_p, _22
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp547, _22
	je	.L321	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_241].D.58684._M_allocated_capacity, tmp622
	leaq	1(%rax), %rsi	#, _25
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L321:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdi	# MEM[(struct basic_string *)_281]._M_dataplus._M_p, _26
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdi	# tmp542, _26
	je	.L322	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	64(%rsp), %rax	# MEM[(struct basic_string *)_281].D.58684._M_allocated_capacity, tmp623
	leaq	1(%rax), %rsi	#, _29
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L322:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC13(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB33:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE33:
# b3_error_handling.cpp:104: }
	movq	136(%rsp), %rax	# D.205212, tmp579
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp579
	jne	.L360	#,
	addq	$152, %rsp	#,
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
.L308:
	.cfi_restore_state
# b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	addq	$8, %rcx	#, ivtmp.690
# b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	subq	$1, %r8	#, total
# b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmpq	%rcx, %r9	# ivtmp.690, pretmp_314
	jne	.L311	#,
	jmp	.L310	#
	.p2align 4,,10
	.p2align 3
.L302:
	addq	$8, %rcx	#, ivtmp.701
# b3_error_handling.cpp:64:     total += opt_div(a, b).value_or(-1);
	subq	$1, %r8	#, total
# b3_error_handling.cpp:63:   for (auto [a, b] : pairs)
	cmpq	%r9, %rcx	# pretmp_388, ivtmp.701
	jne	.L305	#,
	jmp	.L304	#
	.p2align 4,,10
	.p2align 3
.L285:
# b3_error_handling.cpp:90:     sink += exc_sum(pairs);
	movq	%rbp, 24(%rsp)	# prephitmp_375, sink
	jmp	.L288	#
.L357:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	leal	1(%r8), %ecx	#, _212
	movq	%rbx, %rdi	# tmp547, tmp343
	movq	%r15, %rsi	# tmp542, tmp344
	rep movsb	# MEM <char[1:(sizetype) _212]> [(void *)_281 + 16B]
	jmp	.L298	#
.L358:
	leal	1(%r8), %ecx	#, _347
	movq	%rbx, %rdi	# tmp547, tmp407
	movq	%r15, %rsi	# tmp542, tmp408
	rep movsb	# MEM <char[1:(sizetype) _347]> [(void *)_281 + 16B]
	jmp	.L314	#
.L359:
	leal	1(%r8), %ecx	#, _402
	movq	%rbx, %rdi	# tmp547, tmp462
	movq	%r15, %rsi	# tmp542, tmp463
	rep movsb	# MEM <char[1:(sizetype) _402]> [(void *)_281 + 16B]
	jmp	.L320	#
.L360:
# b3_error_handling.cpp:104: }
	call	__stack_chk_fail@PLT	#
.L341:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	#, tmp576
	jmp	.L328	#
.L343:
	movq	%rax, %rbp	#, tmp574
	jmp	.L323	#
.L344:
# b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	jmp	.L289	#
.L345:
	jmp	.L295	#
.L339:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	# tmp578, tmp530
	jmp	.L334	#
.L340:
	movq	%rax, %rbp	#, tmp577
	jmp	.L332	#
	.section	.gcc_except_table
	.align 4
.LLSDA9055:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT9055-.LLSDATTD9055
.LLSDATTD9055:
	.byte	0x1
	.uleb128 .LLSDACSE9055-.LLSDACSB9055
.LLSDACSB9055:
	.uleb128 .LEHB26-.LFB9055
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB9055
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L344-.LFB9055
	.uleb128 0x1
	.uleb128 .LEHB28-.LFB9055
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L345-.LFB9055
	.uleb128 0x1
	.uleb128 .LEHB29-.LFB9055
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L343-.LFB9055
	.uleb128 0
	.uleb128 .LEHB30-.LFB9055
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L341-.LFB9055
	.uleb128 0
	.uleb128 .LEHB31-.LFB9055
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L339-.LFB9055
	.uleb128 0
	.uleb128 .LEHB32-.LFB9055
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L340-.LFB9055
	.uleb128 0
	.uleb128 .LEHB33-.LFB9055
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
.LLSDACSE9055:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT9055:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC9055
	.type	_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0.cold, @function
_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0.cold:
.LFSB9055:
.L328:
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	80(%rsp), %rdi	# MEM[(const struct basic_string *)_241]._M_dataplus._M_p, _39
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp547, _39
	je	.L329	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_241].D.58684._M_allocated_capacity, tmp626
	leaq	1(%rax), %rsi	#, _42
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L329:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdi	# MEM[(struct basic_string *)_281]._M_dataplus._M_p, _43
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdi	# tmp542, _43
	je	.L330	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	64(%rsp), %rax	# MEM[(struct basic_string *)_281].D.58684._M_allocated_capacity, tmp627
	leaq	1(%rax), %rsi	#, _46
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L330:
	movq	136(%rsp), %rax	# D.205212, tmp581
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp581
	jne	.L361	#,
	movq	%rbp, %rdi	# tmp576,
.LEHB34:
	call	_Unwind_Resume@PLT	#
.L323:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# MEM[(const struct basic_string *)_241]._M_dataplus._M_p, _31
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp547, _31
	je	.L325	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_241].D.58684._M_allocated_capacity, tmp624
	leaq	1(%rax), %rsi	#, _34
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L325:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdi	# MEM[(struct basic_string *)_281]._M_dataplus._M_p, _35
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdi	# tmp542, _35
	je	.L326	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	64(%rsp), %rax	# MEM[(struct basic_string *)_281].D.58684._M_allocated_capacity, tmp625
	leaq	1(%rax), %rsi	#, _38
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L326:
	movq	136(%rsp), %rax	# D.205212, tmp580
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp580
	jne	.L362	#,
	movq	%rbp, %rdi	# tmp504,
	call	_Unwind_Resume@PLT	#
.LEHE34:
.L361:
	call	__stack_chk_fail@PLT	#
.L362:
	call	__stack_chk_fail@PLT	#
.L289:
# b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	movq	%rax, %rdi	# tmp557,
# b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	subq	$1, %rbp	#, total
# b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	call	__cxa_begin_catch@PLT	#
.LEHB35:
# b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	call	__cxa_end_catch@PLT	#
	jmp	.L290	#
.L295:
# b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	movq	%rax, %rdi	# tmp560,
# b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	subq	$1, %rbp	#, total
# b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	call	__cxa_begin_catch@PLT	#
# b3_error_handling.cpp:49:     catch (...) { total -= 1; }
	call	__cxa_end_catch@PLT	#
.LEHE35:
	jmp	.L296	#
.L342:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	# tmp575, tmp504
	jmp	.L325	#
.L332:
	movq	80(%rsp), %rdi	# MEM[(const struct basic_string *)_241]._M_dataplus._M_p, _47
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp547, _47
	je	.L334	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# MEM[(struct basic_string *)_241].D.58684._M_allocated_capacity, tmp628
	leaq	1(%rax), %rsi	#, _50
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L334:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdi	# MEM[(struct basic_string *)_281]._M_dataplus._M_p, _51
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdi	# tmp542, _51
	je	.L335	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	64(%rsp), %rax	# MEM[(struct basic_string *)_281].D.58684._M_allocated_capacity, tmp629
	leaq	1(%rax), %rsi	#, _54
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L335:
	movq	136(%rsp), %rax	# D.205212, tmp582
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp582
	jne	.L363	#,
	movq	%rbp, %rdi	# tmp530,
.LEHB36:
	call	_Unwind_Resume@PLT	#
.LEHE36:
.L363:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE9055:
	.section	.gcc_except_table
	.align 4
.LLSDAC9055:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC9055-.LLSDATTDC9055
.LLSDATTDC9055:
	.byte	0x1
	.uleb128 .LLSDACSEC9055-.LLSDACSBC9055
.LLSDACSBC9055:
	.uleb128 .LEHB34-.LCOLDB17
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LCOLDB17
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L342-.LCOLDB17
	.uleb128 0
	.uleb128 .LEHB36-.LCOLDB17
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSEC9055:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATTC9055:
	.section	.text.unlikely
	.text
	.size	_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0, .-_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0
	.section	.text.unlikely
	.size	_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0.cold, .-_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0.cold
.LCOLDE17:
	.text
.LHOTE17:
	.section	.rodata.str1.1
.LC20:
	.string	"\n=== "
.LC21:
	.string	" ===\n"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"  Each iteration sums N division results; errors replaced with -1.\n"
	.align 8
.LC23:
	.string	"  eff_sum co_awaits N eff_div calls inside a single coroutine.\n\n"
	.section	.rodata.str1.1
.LC24:
	.string	"vector::_M_realloc_append"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"0% failure rate (happy path only):"
	.section	.rodata.str1.1
.LC26:
	.string	"10% failure rate (mixed):"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"100% failure rate (all errors):"
	.section	.rodata.str1.1
.LC28:
	.string	"Notes:\n"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"  exceptions: fast on happy path; each throw is expensive.\n"
	.align 8
.LC30:
	.string	"  std::optional: uniform cost regardless of failure rate.\n"
	.align 8
.LC31:
	.string	"  Fail effect: also uniform; overhead is handler stack walk + resume.\n"
	.align 8
.LC32:
	.string	"               propagation is automatic \342\200\224 no manual .value_or() needed.\n"
	.section	.text.unlikely
.LCOLDB37:
	.section	.text.startup,"ax",@progbits
.LHOTB37:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB6389:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6389
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$39, %edi	#,
# b3_error_handling.cpp:108: int main() {
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
	movq	%fs:40, %rbp	# MEM[(<address-space-1> long unsigned int *)40B], tmp499
	movq	%rbp, 312(%rsp)	# tmp499, D.205705
	leaq	224(%rsp), %rbp	#, tmp499
	movl	$3158069, 224(%rsp)	#, MEM <vector(4) char> [(char *)&D.152868 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$3, 216(%rsp)	#, D.152868._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rbp, 208(%rsp)	# tmp499, MEM[(struct _Alloc_hider *)&D.152868]._M_p
.LEHB37:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE37:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC34(%rip), %xmm0	#, tmp507
	movl	$15694, %edx	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 38(%rax)	#, MEM[(char_type &)_388 + 38]
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbx	#, _388
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movw	%dx, 32(%rax)	#, MEM <char[1:34]> [(void *)_388]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	128(%rsp), %r12	#, tmp495
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$77, %edi	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp507, MEM <char[1:34]> [(void *)_388]
	movdqa	.LC35(%rip), %xmm0	#, tmp508
	movl	$808464437, 34(%rax)	#, MEM <unsigned int> [(char * {ref-all})_388 + 34B]
	movups	%xmm0, 16(%rax)	# tmp508, MEM <char[1:34]> [(void *)_388]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 144(%rsp)	# _388, D.152860._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$38, %eax	#, tmp249
	movq	%rax, %xmm0	# tmp249, tmp249
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r12, 112(%rsp)	# tmp495, MEM[(struct basic_string *)&D.152859]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 120(%rsp)	#, MEM[(struct basic_string *)&D.152859]._M_string_length
	punpcklqdq	%xmm0, %xmm0	# tmp248
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 128(%rsp)	#, MEM <unsigned long> [(void *)&D.152859 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movups	%xmm0, 152(%rsp)	# tmp248, MEM <vector(2) long unsigned int> [(void *)&D.152860 + 8B]
.LEHB38:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE38:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqu	(%rbx), %xmm0	# MEM <char[1:38]> [(void *)_388], MEM <char[1:38]> [(void *)_388]
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r13	#, _446
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%rbx, %rdi	# _388,
	movl	$39, %esi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	192(%rsp), %r14	#, tmp497
	leaq	256(%rsp), %r15	#, tmp500
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# MEM <char[1:38]> [(void *)_388], MEM <char[1:38]> [(void *)_446]
	movdqu	16(%rbx), %xmm0	# MEM <char[1:38]> [(void *)_388], MEM <char[1:38]> [(void *)_388]
	movups	%xmm0, 16(%rax)	# MEM <char[1:38]> [(void *)_388], MEM <char[1:38]> [(void *)_446]
	movq	30(%rbx), %rax	# MEM <char[1:38]> [(void *)_388], MEM <char[1:38]> [(void *)_388]
	movdqa	.LC36(%rip), %xmm0	#, tmp509
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	160(%rsp), %rbx	#, tmp496
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movb	$61, 54(%r13)	#, MEM <char[1:17]> [(void *)_425]
	movq	%rax, 30(%r13)	# MEM <char[1:38]> [(void *)_388], MEM <char[1:38]> [(void *)_446]
	movups	%xmm0, 38(%r13)	# tmp509, MEM <char[1:17]> [(void *)_425]
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movzwl	224(%rsp), %eax	# MEM <char[1:3]> [(void *)&D.152868 + 16B], MEM <char[1:3]> [(void *)&D.152868 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rbx, 144(%rsp)	# tmp496, D.152860._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC20(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 152(%rsp)	#, D.152860._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 160(%rsp)	#, MEM <unsigned long> [(void *)&D.152860 + 16B]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movw	%ax, 55(%r13)	# MEM <char[1:3]> [(void *)&D.152868 + 16B], MEM <char[1:3]> [(void *)_551]
	movzbl	226(%rsp), %eax	# MEM <char[1:3]> [(void *)&D.152868 + 16B], MEM <char[1:3]> [(void *)&D.152868 + 16B]
	movb	%al, 57(%r13)	# MEM <char[1:3]> [(void *)&D.152868 + 16B], MEM <char[1:3]> [(void *)_551]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movl	$41, %eax	#,
	movw	%ax, 58(%r13)	#, MEM <unsigned short> [(char_type &)_446 + 58]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r14, 176(%rsp)	# tmp497, D.152867._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 184(%rsp)	#, MEM <unsigned long> [(void *)&D.152867 + 8B]
	movq	$0, 192(%rsp)	#, MEM <unsigned long> [(void *)&D.152867 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r13, 272(%rsp)	# _446, D.152876._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$76, 288(%rsp)	#, D.152876.D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$59, 280(%rsp)	#, D.152876._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r15, 240(%rsp)	# tmp500, D.152875._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 248(%rsp)	#, D.152875._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 256(%rsp)	#, MEM <unsigned long> [(void *)&D.152875 + 16B]
.LEHB39:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/string_view:780:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	movl	$59, %edx	#,
	movq	%r13, %rsi	# _446,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC21(%rip), %rsi	#,
	movq	%rax, %rdi	# _660,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE39:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# D.152876._M_dataplus._M_p, _63
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp273
	cmpq	%rax, %rdi	# tmp273, _63
	je	.L365	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# D.152876.D.58684._M_allocated_capacity, tmp542
	leaq	1(%rax), %rsi	#, _66
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L365:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	240(%rsp), %rdi	# D.152875._M_dataplus._M_p, _59
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdi	# tmp500, _59
	je	.L366	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	256(%rsp), %rax	# D.152875.D.58684._M_allocated_capacity, tmp543
	leaq	1(%rax), %rsi	#, _62
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L366:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	176(%rsp), %rdi	# D.152867._M_dataplus._M_p, _55
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rdi	# tmp497, _55
	je	.L367	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	192(%rsp), %rax	# D.152867.D.58684._M_allocated_capacity, tmp544
	leaq	1(%rax), %rsi	#, _58
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L367:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	144(%rsp), %rdi	# D.152860._M_dataplus._M_p, _51
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp496, _51
	je	.L368	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	160(%rsp), %rax	# D.152860.D.58684._M_allocated_capacity, tmp545
	leaq	1(%rax), %rsi	#, _54
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L368:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	112(%rsp), %rdi	# D.152859._M_dataplus._M_p, _47
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp495, _47
	je	.L369	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	128(%rsp), %rax	# D.152859.D.58684._M_allocated_capacity, tmp546
	leaq	1(%rax), %rsi	#, _50
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L369:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	208(%rsp), %rdi	# D.152868._M_dataplus._M_p, _43
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp499, _43
	je	.L370	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	224(%rsp), %rax	# D.152868.D.58684._M_allocated_capacity, tmp547
	leaq	1(%rax), %rsi	#, _46
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L370:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$67, %edx	#,
	leaq	.LC22(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB40:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	leaq	_ZSt4cout(%rip), %rdi	#,
	movl	$64, %edx	#,
	leaq	.LC23(%rip), %rsi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE40:
# b3_error_handling.cpp:29:   std::vector<Pair> v;
	pxor	%xmm0, %xmm0	# tmp300
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$40000, %edi	#,
# b3_error_handling.cpp:29:   std::vector<Pair> v;
	movq	$0, 32(%rsp)	#, p0
	movaps	%xmm0, 16(%rsp)	# tmp300, p0
.LEHB41:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	40000(%rax), %r13	#, prephitmp_272
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rax, 16(%rsp)	# __new_finish, p0.D.146055._M_impl.D.145349._M_start
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbx	# __new_finish, __new_finish
# b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	xorl	%r12d, %r12d	# i
# /usr/include/c++/16.1.1/bits/vector.tcc:100: 	  this->_M_impl._M_finish = __tmp + __old_size;
	movq	%rax, 24(%rsp)	# __new_finish, p0.D.146055._M_impl.D.145349._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%r13, 32(%rsp)	# prephitmp_272, p0.D.146055._M_impl.D.145349._M_end_of_storage
	jmp	.L377	#
	.p2align 4,,10
	.p2align 3
.L499:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%edx, (%rbx)	# _683, prephitmp_270->a
# /usr/include/c++/16.1.1/bits/vector.tcc:123: 	    ++this->_M_impl._M_finish;
	addq	$8, %rbx	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r14d, -4(%rbx)	# denom, prephitmp_270->b
# /usr/include/c++/16.1.1/bits/vector.tcc:123: 	    ++this->_M_impl._M_finish;
	movq	%rbx, 24(%rsp)	# __new_finish, p0.D.146055._M_impl.D.145349._M_finish
# b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	cmpl	$5000, %r12d	#, i
	je	.L498	#,
.L377:
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	movl	%r12d, %edx	# i, i
	movl	%r12d, %eax	# i, tmp306
	movl	%r12d, %r14d	# i, _680
# b3_error_handling.cpp:33:     v.push_back({i * 2 + 2, denom});
	addl	$1, %r12d	#, i
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	imulq	$613566757, %rdx, %rdx	#, i, tmp304
	shrq	$32, %rdx	#, tmp305
	subl	%edx, %eax	# tmp305, tmp306
	shrl	%eax	# tmp307
	addl	%edx, %eax	# tmp305, tmp308
	shrl	$2, %eax	#, tmp302
	leal	0(,%rax,8), %edx	#, tmp310
	subl	%eax, %edx	# tmp302, tmp311
	subl	%edx, %r14d	# tmp311, _680
# b3_error_handling.cpp:33:     v.push_back({i * 2 + 2, denom});
	leal	(%r12,%r12), %edx	#, _683
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	addl	$1, %r14d	#, denom
# /usr/include/c++/16.1.1/bits/vector.tcc:118: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%r13, %rbx	# prephitmp_272, __new_finish
	jne	.L499	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$1152921504606846975, %rdi	#, tmp551
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	16(%rsp), %rcx	# p0.D.146055._M_impl.D.145349._M_start, _722
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%rcx, %rbx	# _722, _723
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rbx, %rax	# _723, __dif_724
	sarq	$3, %rax	#, __dif_724
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rdi, %rax	# tmp551, __dif_724
	je	.L488	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rax, %rax	# __dif_724
	movl	$1, %r15d	#, tmp531
	movq	%rcx, 8(%rsp)	# _722, %sfp
	cmovne	%rax, %r15	# __dif_724,, _726
	movl	%edx, (%rsp)	# _683, %sfp
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rax, %r15	# __dif_724, __len_727
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$1152921504606846975, %rax	#, tmp532
	cmpq	%rax, %r15	# tmp532, __len_727
	cmova	%rax, %r15	# __len_727,, tmp532, __len_727
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$3, %r15	#, _743
	movq	%r15, %rdi	# _743,
	call	_Znwm@PLT	#
.LEHE41:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	(%rsp), %edx	# %sfp, _683
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%rbx, %rbx	# _723
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r14d, 4(%rax,%rbx)	# denom, _732->b
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbp	#, _744
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	movq	8(%rsp), %rcx	# %sfp, _722
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%edx, (%rax,%rbx)	# _683, _732->a
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	je	.L375	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%rcx, %rsi	# _722,
	movq	%rbx, %rdx	# _723,
	movq	%rax, %rdi	# _744,
	movq	%rcx, (%rsp)	# _722, %sfp
	call	memcpy@PLT	#
	movq	(%rsp), %rcx	# %sfp, _722
.L375:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	8(%rbp,%rbx), %rbx	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%rcx, %rcx	# _722
	je	.L376	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%r13, %rsi	# prephitmp_272, prephitmp_272
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%rcx, %rdi	# _722,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%rcx, %rsi	# _722, prephitmp_272
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L376:
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	0(%rbp,%r15), %r13	#, prephitmp_272
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%rbp, 16(%rsp)	# _744, p0.D.146055._M_impl.D.145349._M_start
# /usr/include/c++/16.1.1/bits/vector.tcc:654:       this->_M_impl._M_finish = __new_finish;
	movq	%rbx, 24(%rsp)	# __new_finish, p0.D.146055._M_impl.D.145349._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	%r13, 32(%rsp)	# prephitmp_272, p0.D.146055._M_impl.D.145349._M_end_of_storage
# b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	cmpl	$5000, %r12d	#, i
	jne	.L377	#,
	.p2align 4
	.p2align 3
.L498:
# b3_error_handling.cpp:29:   std::vector<Pair> v;
	pxor	%xmm0, %xmm0	# tmp342
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$40000, %edi	#,
# b3_error_handling.cpp:29:   std::vector<Pair> v;
	movq	$0, 64(%rsp)	#, p10
	movaps	%xmm0, 48(%rsp)	# tmp342, p10
.LEHB42:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rax, 48(%rsp)	# __new_finish, p10.D.146055._M_impl.D.145349._M_start
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r13	# __new_finish, __new_finish
# b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	xorl	%ebx, %ebx	# i
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	movl	$3435973837, %r12d	#, tmp346
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	40000(%rax), %r15	#, prephitmp_390
# /usr/include/c++/16.1.1/bits/vector.tcc:100: 	  this->_M_impl._M_finish = __tmp + __old_size;
	movq	%rax, 56(%rsp)	# __new_finish, p10.D.146055._M_impl.D.145349._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%r15, 64(%rsp)	# prephitmp_390, p10.D.146055._M_impl.D.145349._M_end_of_storage
	jmp	.L389	#
	.p2align 4,,10
	.p2align 3
.L501:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%edx, 0(%r13)	# _670, prephitmp_396->a
# /usr/include/c++/16.1.1/bits/vector.tcc:123: 	    ++this->_M_impl._M_finish;
	addq	$8, %r13	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%ebp, -4(%r13)	# denom, prephitmp_396->b
# /usr/include/c++/16.1.1/bits/vector.tcc:123: 	    ++this->_M_impl._M_finish;
	movq	%r13, 56(%rsp)	# __new_finish, p10.D.146055._M_impl.D.145349._M_finish
# b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	cmpl	$5000, %ebx	#, i
	je	.L500	#,
.L389:
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	movl	%ebx, %eax	# i, i
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	movl	%ebx, %esi	# i, tmp365
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	movq	%rax, %rbp	# i, tmp345
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	imulq	$613566757, %rax, %rax	#, i, tmp363
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	imulq	%r12, %rbp	# tmp346, tmp345
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	shrq	$32, %rax	#, tmp364
	subl	%eax, %esi	# tmp364, tmp365
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	shrq	$35, %rbp	#, denom
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	shrl	%esi	# tmp366
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	leal	0(%rbp,%rbp,4), %edx	#, tmp350
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	movl	%ebx, %ebp	# i, denom
	addl	%esi, %eax	# tmp366, tmp367
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	addl	%edx, %edx	# tmp351
# b3_error_handling.cpp:32:     int denom = (fail_every > 0 && i % fail_every == 0) ? 0 : (i % 7 + 1);
	shrl	$2, %eax	#, tmp361
	leal	0(,%rax,8), %esi	#, tmp369
	subl	%eax, %esi	# tmp361, tmp370
	movl	%ebx, %eax	# i, _667
	subl	%esi, %eax	# tmp370, _667
	addl	$1, %eax	#, tmp503
	subl	%edx, %ebp	# tmp351, denom
	cmovne	%eax, %ebp	# tmp503,, denom
# b3_error_handling.cpp:33:     v.push_back({i * 2 + 2, denom});
	addl	$1, %ebx	#, i
	leal	(%rbx,%rbx), %edx	#, _670
# /usr/include/c++/16.1.1/bits/vector.tcc:118: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%r13, %r15	# __new_finish, prephitmp_390
	jne	.L501	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	48(%rsp), %r8	# p10.D.146055._M_impl.D.145349._M_start, _776
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%r15, %r13	# prephitmp_390, _777
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$1152921504606846975, %rcx	#, tmp560
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%r8, %r13	# _776, _777
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%r13, %rax	# _777, __dif_778
	sarq	$3, %rax	#, __dif_778
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rcx, %rax	# tmp560, __dif_778
	je	.L489	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rax, %rax	# __dif_778
	movl	$1, %r14d	#, tmp529
	movq	%r8, 8(%rsp)	# _776, %sfp
	cmovne	%rax, %r14	# __dif_778,, _780
	movl	%edx, (%rsp)	# _670, %sfp
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rax, %r14	# __dif_778, __len_781
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$1152921504606846975, %rax	#, tmp530
	cmpq	%rax, %r14	# tmp530, __len_781
	cmova	%rax, %r14	# __len_781,, tmp530, __len_781
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$3, %r14	#, _797
	movq	%r14, %rdi	# _797,
	call	_Znwm@PLT	#
.LEHE42:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	(%rsp), %edx	# %sfp, _670
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%r13, %r13	# _777
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%ebp, 4(%rax,%r13)	# denom, _786->b
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r9	#, _798
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	movq	8(%rsp), %r8	# %sfp, _776
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%edx, (%rax,%r13)	# _670, _786->a
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	je	.L387	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%r8, %rsi	# _776,
	movq	%r13, %rdx	# _777,
	movq	%rax, %rdi	# _798,
	movq	%r8, (%rsp)	# _776, %sfp
	call	memcpy@PLT	#
	movq	(%rsp), %r8	# %sfp, _776
	movq	%rax, %r9	#, _798
.L387:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	8(%r9,%r13), %r13	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r8, %r8	# _776
	je	.L388	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%r15, %rsi	# prephitmp_390, prephitmp_390
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r8, %rdi	# _776,
	movq	%r9, (%rsp)	# _798, %sfp
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r8, %rsi	# _776, prephitmp_390
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	movq	(%rsp), %r9	# %sfp, _798
.L388:
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	(%r9,%r14), %r15	#, prephitmp_390
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r9, 48(%rsp)	# _798, p10.D.146055._M_impl.D.145349._M_start
# /usr/include/c++/16.1.1/bits/vector.tcc:654:       this->_M_impl._M_finish = __new_finish;
	movq	%r13, 56(%rsp)	# __new_finish, p10.D.146055._M_impl.D.145349._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	%r15, 64(%rsp)	# prephitmp_390, p10.D.146055._M_impl.D.145349._M_end_of_storage
# b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	cmpl	$5000, %ebx	#, i
	jne	.L389	#,
	.p2align 4
	.p2align 3
.L500:
# b3_error_handling.cpp:29:   std::vector<Pair> v;
	pxor	%xmm0, %xmm0	# tmp403
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$40000, %edi	#,
# b3_error_handling.cpp:29:   std::vector<Pair> v;
	movq	$0, 96(%rsp)	#, p100
	movaps	%xmm0, 80(%rsp)	# tmp403, p100
.LEHB43:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	40000(%rax), %r12	#, prephitmp_451
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rax, 80(%rsp)	# __new_finish, p100.D.146055._M_impl.D.145349._M_start
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbx	# __new_finish, __new_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movl	$2, %ebp	#, ivtmp.779
# /usr/include/c++/16.1.1/bits/vector.tcc:100: 	  this->_M_impl._M_finish = __tmp + __old_size;
	movq	%rax, 88(%rsp)	# __new_finish, p100.D.146055._M_impl.D.145349._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%r12, 96(%rsp)	# prephitmp_451, p100.D.146055._M_impl.D.145349._M_end_of_storage
	jmp	.L400	#
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L503:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%ebp, (%rbx)	# ivtmp.779, prephitmp_468->a
# /usr/include/c++/16.1.1/bits/vector.tcc:123: 	    ++this->_M_impl._M_finish;
	addq	$8, %rbx	#, __new_finish
# b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	addl	$2, %ebp	#, ivtmp.779
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	$0, -4(%rbx)	#, prephitmp_468->b
# /usr/include/c++/16.1.1/bits/vector.tcc:123: 	    ++this->_M_impl._M_finish;
	movq	%rbx, 88(%rsp)	# __new_finish, p100.D.146055._M_impl.D.145349._M_finish
# b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	cmpl	$10002, %ebp	#, ivtmp.779
	je	.L502	#,
.L400:
# /usr/include/c++/16.1.1/bits/vector.tcc:118: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rbx, %r12	# __new_finish, prephitmp_451
	jne	.L503	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	80(%rsp), %r14	# p100.D.146055._M_impl.D.145349._M_start, _843
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%r12, %rbx	# prephitmp_451, _844
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$1152921504606846975, %rax	#, tmp565
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%r14, %rbx	# _843, _844
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rbx, %rdx	# _844, __dif_845
	sarq	$3, %rdx	#, __dif_845
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rax, %rdx	# tmp565, __dif_845
	je	.L490	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rdx, %rdx	# __dif_845
	movl	$1, %eax	#, tmp527
	cmovne	%rdx, %rax	# __dif_845,, _847
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rdx, %rax	# __dif_845, __len_848
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$1152921504606846975, %rdx	#, tmp528
	cmpq	%rdx, %rax	# tmp528, __len_848
	cmova	%rdx, %rax	# __len_848,, tmp528, __len_848
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	leaq	0(,%rax,8), %r13	#, _864
	movq	%r13, %rdi	# _864,
	call	_Znwm@PLT	#
.LEHE43:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%ebp, (%rax,%rbx)	# ivtmp.779, _853->a
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r15	#, _865
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	$0, 4(%rax,%rbx)	#, _853->b
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%rbx, %rbx	# _844
	je	.L398	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%rbx, %rdx	# _844,
	movq	%r14, %rsi	# _843,
	movq	%rax, %rdi	# _865,
	call	memcpy@PLT	#
.L398:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	8(%r15,%rbx), %rbx	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r14, %r14	# _843
	je	.L399	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%r12, %rsi	# prephitmp_451, prephitmp_451
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r14, %rdi	# _843,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r14, %rsi	# _843, prephitmp_451
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L399:
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	(%r15,%r13), %r12	#, prephitmp_451
# b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	addl	$2, %ebp	#, ivtmp.779
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r15, 80(%rsp)	# _865, p100.D.146055._M_impl.D.145349._M_start
# /usr/include/c++/16.1.1/bits/vector.tcc:654:       this->_M_impl._M_finish = __new_finish;
	movq	%rbx, 88(%rsp)	# __new_finish, p100.D.146055._M_impl.D.145349._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	%r12, 96(%rsp)	# prephitmp_451, p100.D.146055._M_impl.D.145349._M_end_of_storage
# b3_error_handling.cpp:31:   for (int i = 0; i < n; ++i) {
	cmpl	$10002, %ebp	#, ivtmp.779
	jne	.L400	#,
	.p2align 4
	.p2align 3
.L502:
# b3_error_handling.cpp:122:   run_trio("0% failure rate (happy path only):", p0,   REPS);
	leaq	16(%rsp), %rsi	#, tmp425
	leaq	.LC25(%rip), %rdi	#,
.LEHB44:
	call	_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0	#
# b3_error_handling.cpp:123:   run_trio("10% failure rate (mixed):",          p10,  REPS);
	leaq	48(%rsp), %rsi	#, tmp427
	leaq	.LC26(%rip), %rdi	#,
	call	_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0	#
# b3_error_handling.cpp:124:   run_trio("100% failure rate (all errors):",    p100, REPS);
	leaq	80(%rsp), %rsi	#, tmp429
	leaq	.LC27(%rip), %rdi	#,
	call	_ZL8run_trioPKcRKSt6vectorI4PairSaIS2_EEm.constprop.0	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$7, %edx	#,
	leaq	.LC28(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$59, %edx	#,
	leaq	.LC29(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$58, %edx	#,
	leaq	.LC30(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$70, %edx	#,
	leaq	.LC31(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$74, %edx	#,
	leaq	.LC32(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE44:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	80(%rsp), %rdi	# MEM[(struct _Vector_base *)&p100]._M_impl.D.145349._M_start, _76
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _76
	je	.L405	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	96(%rsp), %rsi	# MEM[(struct _Vector_base *)&p100]._M_impl.D.145349._M_end_of_storage, _77
	subq	%rdi, %rsi	# _76, _77
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L405:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	48(%rsp), %rdi	# MEM[(struct _Vector_base *)&p10]._M_impl.D.145349._M_start, _72
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _72
	je	.L406	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	64(%rsp), %rsi	# MEM[(struct _Vector_base *)&p10]._M_impl.D.145349._M_end_of_storage, _73
	subq	%rdi, %rsi	# _72, _73
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L406:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	16(%rsp), %rdi	# MEM[(struct _Vector_base *)&p0]._M_impl.D.145349._M_start, _68
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _68
	je	.L407	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	32(%rsp), %rsi	# MEM[(struct _Vector_base *)&p0]._M_impl.D.145349._M_end_of_storage, _69
	subq	%rdi, %rsi	# _68, _69
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L407:
# b3_error_handling.cpp:133: }
	movq	312(%rsp), %rax	# D.205705, tmp537
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp537
	jne	.L504	#,
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
.L504:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
.L426:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%rax, %rbx	#, tmp525
	jmp	.L419	#
.L486:
	jmp	.L487	#
.L482:
	jmp	.L483	#
.L484:
	jmp	.L485	#
.L431:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %r13	# tmp523, tmp466
	jmp	.L414	#
.L430:
	movq	%rax, %r13	# tmp524, tmp472
	jmp	.L416	#
.L425:
	movq	%rax, %r13	#, tmp522
	jmp	.L408	#
	.section	.gcc_except_table
.LLSDA6389:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6389-.LLSDACSB6389
.LLSDACSB6389:
	.uleb128 .LEHB37-.LFB6389
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L430-.LFB6389
	.uleb128 0
	.uleb128 .LEHB38-.LFB6389
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L431-.LFB6389
	.uleb128 0
	.uleb128 .LEHB39-.LFB6389
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L425-.LFB6389
	.uleb128 0
	.uleb128 .LEHB40-.LFB6389
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB6389
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L484-.LFB6389
	.uleb128 0
	.uleb128 .LEHB42-.LFB6389
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L482-.LFB6389
	.uleb128 0
	.uleb128 .LEHB43-.LFB6389
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L486-.LFB6389
	.uleb128 0
	.uleb128 .LEHB44-.LFB6389
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L426-.LFB6389
	.uleb128 0
.LLSDACSE6389:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6389
	.type	main.cold, @function
main.cold:
.LFSB6389:
.L490:
	.cfi_def_cfa_offset 384
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	movq	312(%rsp), %rax	# D.205705, tmp536
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp536
	jne	.L505	#,
	leaq	.LC24(%rip), %rdi	#,
.LEHB45:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE45:
.L419:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	80(%rsp), %rdi	# MEM[(struct _Vector_base *)&p100]._M_impl.D.145349._M_start, _104
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _104
	je	.L404	#,
.L496:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	96(%rsp), %rsi	# MEM[(struct _Vector_base *)&p100]._M_impl.D.145349._M_end_of_storage, _105
	subq	%rdi, %rsi	# _104, _105
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L404:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	48(%rsp), %rdi	# MEM[(struct _Vector_base *)&p10]._M_impl.D.145349._M_start, _108
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _108
	je	.L393	#,
.L497:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	64(%rsp), %rsi	# MEM[(struct _Vector_base *)&p10]._M_impl.D.145349._M_end_of_storage, _109
	subq	%rdi, %rsi	# _108, _109
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L393:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	16(%rsp), %rdi	# MEM[(struct _Vector_base *)&p0]._M_impl.D.145349._M_start, _112
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _112
	je	.L422	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	32(%rsp), %rsi	# MEM[(struct _Vector_base *)&p0]._M_impl.D.145349._M_end_of_storage, _113
	subq	%rdi, %rsi	# _112, _113
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L422:
	movq	312(%rsp), %rax	# D.205705, tmp539
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp539
	jne	.L506	#,
	movq	%rbx, %rdi	# tmp399,
.LEHB46:
	call	_Unwind_Resume@PLT	#
.LEHE46:
.L505:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	call	__stack_chk_fail@PLT	#
.L429:
.L487:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	80(%rsp), %rdi	# MEM[(struct _Vector_base *)&p100]._M_impl.D.145349._M_start, _809
	movq	%rax, %rbx	#, tmp521
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _809
	jne	.L496	#,
	jmp	.L404	#
.L506:
	call	__stack_chk_fail@PLT	#
.L489:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	movq	312(%rsp), %rax	# D.205705, tmp535
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp535
	jne	.L507	#,
	leaq	.LC24(%rip), %rdi	#,
.LEHB47:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE47:
.L488:
	movq	312(%rsp), %rax	# D.205705, tmp533
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp533
	jne	.L508	#,
	leaq	.LC24(%rip), %rdi	#,
.LEHB48:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE48:
.L427:
.L483:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	48(%rsp), %rdi	# MEM[(struct _Vector_base *)&p10]._M_impl.D.145349._M_start, _673
	movq	%rax, %rbx	#, tmp518
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _673
	jne	.L497	#,
	jmp	.L393	#
.L508:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	call	__stack_chk_fail@PLT	#
.L507:
	call	__stack_chk_fail@PLT	#
.L428:
.L485:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	16(%rsp), %rdi	# MEM[(struct _Vector_base *)&p0]._M_impl.D.145349._M_start, _686
	movq	%rax, %rbx	#, tmp515
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _686
	je	.L380	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	32(%rsp), %rsi	# MEM[(struct _Vector_base *)&p0]._M_impl.D.145349._M_end_of_storage, _687
	subq	%rdi, %rsi	# _686, _687
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L380:
	movq	312(%rsp), %rax	# D.205705, tmp534
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp534
	jne	.L509	#,
	movq	%rbx, %rdi	# tmp515,
.LEHB49:
	call	_Unwind_Resume@PLT	#
.L414:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	144(%rsp), %rdi	# D.152860._M_dataplus._M_p, _91
.L413:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	160(%rsp), %rax	# D.152860.D.58684._M_allocated_capacity, tmp574
	leaq	1(%rax), %rsi	#, _94
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L412:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	112(%rsp), %rdi	# D.152859._M_dataplus._M_p, _95
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp495, _95
	je	.L416	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	128(%rsp), %rax	# D.152859.D.58684._M_allocated_capacity, tmp575
	leaq	1(%rax), %rsi	#, _98
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L416:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	208(%rsp), %rdi	# D.152868._M_dataplus._M_p, _99
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp499, _99
	je	.L417	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	224(%rsp), %rax	# D.152868.D.58684._M_allocated_capacity, tmp576
	leaq	1(%rax), %rsi	#, _102
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L417:
	movq	312(%rsp), %rax	# D.205705, tmp538
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp538
	jne	.L510	#,
	movq	%r13, %rdi	# tmp472,
	call	_Unwind_Resume@PLT	#
.LEHE49:
.L408:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# D.152876._M_dataplus._M_p, _79
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp449
	cmpq	%rax, %rdi	# tmp449, _79
	je	.L409	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# D.152876.D.58684._M_allocated_capacity, tmp571
	leaq	1(%rax), %rsi	#, _82
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L409:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	240(%rsp), %rdi	# D.152875._M_dataplus._M_p, _83
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r15, %rdi	# tmp500, _83
	je	.L410	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	256(%rsp), %rax	# D.152875.D.58684._M_allocated_capacity, tmp572
	leaq	1(%rax), %rsi	#, _86
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L410:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	176(%rsp), %rdi	# D.152867._M_dataplus._M_p, _87
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r14, %rdi	# tmp497, _87
	je	.L411	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	192(%rsp), %rax	# D.152867.D.58684._M_allocated_capacity, tmp573
	leaq	1(%rax), %rsi	#, _90
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L411:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	144(%rsp), %rdi	# D.152860._M_dataplus._M_p, _91
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp496, _91
	je	.L412	#,
	jmp	.L413	#
.L509:
	call	__stack_chk_fail@PLT	#
.L510:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6389:
	.section	.gcc_except_table
.LLSDAC6389:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6389-.LLSDACSBC6389
.LLSDACSBC6389:
	.uleb128 .LEHB45-.LCOLDB37
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L429-.LCOLDB37
	.uleb128 0
	.uleb128 .LEHB46-.LCOLDB37
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LCOLDB37
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L427-.LCOLDB37
	.uleb128 0
	.uleb128 .LEHB48-.LCOLDB37
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L428-.LCOLDB37
	.uleb128 0
	.uleb128 .LEHB49-.LCOLDB37
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
.LLSDACSEC6389:
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
	.weak	_ZN2fx6detail12effect_tag_vI4FailEE
	.section	.rodata._ZN2fx6detail12effect_tag_vI4FailEE,"aG",@progbits,_ZN2fx6detail12effect_tag_vI4FailEE,comdat
	.type	_ZN2fx6detail12effect_tag_vI4FailEE, @gnu_unique_object
	.size	_ZN2fx6detail12effect_tag_vI4FailEE, 1
_ZN2fx6detail12effect_tag_vI4FailEE:
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
.LC7:
	.quad	_Z7eff_divP19_ZL7eff_divii.Frame.actor
	.align 8
.LC9:
	.quad	_ZN2fx6detail12effect_tag_vI4FailEE
	.align 8
.LC10:
	.quad	_Z7eff_sumP42_ZL7eff_sumRKSt6vectorI4PairSaIS0_EE.Frame.actor
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC14:
	.long	0
	.long	1082081280
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC34:
	.quad	8030606864212964194
	.quad	7596557096710578290
	.align 16
.LC35:
	.quad	8386109825613850478
	.quad	2891346640766592869
	.align 16
.LC36:
	.quad	8028074707559998496
	.quad	8318260052593767278
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
