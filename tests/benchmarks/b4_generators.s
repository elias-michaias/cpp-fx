	.file	"b4_generators.cpp"
# GNU C++23 (GCC) version 16.1.1 20260430 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 16.1.1 20260430, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O3 -std=c++23
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
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
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4
	.type	_Z9raw_rangeP20_ZL9raw_rangei.Frame.actor, @function
_Z9raw_rangeP20_ZL9raw_rangei.Frame.actor:
.LFB7001:
	.cfi_startproc
# b4_generators.cpp:55: }
	movzwl	24(%rdi), %eax	# frame_ptr_22(D)->_Coro_resume_index, _1
	testb	$1, %al	#, _1
	je	.L4	#,
# b4_generators.cpp:55: }
	cmpw	$7, %ax	#, _1
	ja	.L20	#,
.L6:
.L14:
.L15:
.L16:
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	subw	$1, 26(%rdi)	#, frame_ptr_22(D)->_Coro_frame_refcount
# b4_generators.cpp:55: }
	jne	.L3	#,
# b4_generators.cpp:55: }
	cmpb	$0, 28(%rdi)	#, frame_ptr_22(D)->_Coro_frame_needs_free
	jne	.L21	#,
.L11:
.L3:
# b4_generators.cpp:55: }
	ret	
	.p2align 4,,10
	.p2align 3
.L4:
# b4_generators.cpp:55: }
	cmpw	$4, %ax	#, _1
	je	.L7	#,
	ja	.L8	#,
	testw	%ax, %ax	# _1
	je	.L9	#,
.L10:
# b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	xorl	%eax, %eax	# _9
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	movb	$1, 29(%rdi)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
# b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	movl	%eax, 32(%rdi)	# _9, frame_ptr_22(D)->i_2_3
# b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	cmpl	%eax, 20(%rdi)	# _9, frame_ptr_22(D)->n
	jle	.L22	#,
.L13:
# b4_generators.cpp:55: }
	movl	$4, %edx	#,
# b4_generators.cpp:37:       current = v;
	movl	%eax, 16(%rdi)	# _9, MEM[(struct promise_type *)frame_ptr_22(D) + 16B].current
# b4_generators.cpp:55: }
	movw	%dx, 24(%rdi)	#, frame_ptr_22(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L21:
# b4_generators.cpp:55: }
	movl	$40, %esi	#,
	jmp	_ZdlPvm@PLT	#
	.p2align 4,,10
	.p2align 3
.L7:
# b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	movl	32(%rdi), %eax	# frame_ptr_22(D)->i_2_3, tmp121
	addl	$1, %eax	#, _9
# b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	movl	%eax, 32(%rdi)	# _9, frame_ptr_22(D)->i_2_3
# b4_generators.cpp:54:   for (int i = 0; i < n; ++i) co_yield i;
	cmpl	%eax, 20(%rdi)	# _9, frame_ptr_22(D)->n
	jg	.L13	#,
.L22:
# b4_generators.cpp:55: }
	movl	$6, %eax	#,
# b4_generators.cpp:55: }
	movq	$0, (%rdi)	#, frame_ptr_22(D)->_Coro_resume_fn
# b4_generators.cpp:55: }
	movw	%ax, 24(%rdi)	#, frame_ptr_22(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L9:
# b4_generators.cpp:55: }
	movl	$2, %ecx	#,
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	addw	$1, 26(%rdi)	#, frame_ptr_22(D)->_Coro_frame_refcount
	movb	$0, 29(%rdi)	#, frame_ptr_22(D)->_Coro_initial_await_resume_called
# b4_generators.cpp:55: }
	movw	%cx, 24(%rdi)	#, frame_ptr_22(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L8:
# b4_generators.cpp:55: }
	cmpw	$6, %ax	#, _1
	je	.L16	#,
	jmp	.L5	#
.L20:
	jmp	.L5	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_Z9raw_rangeP20_ZL9raw_rangei.Frame.actor.cold, @function
_Z9raw_rangeP20_ZL9raw_rangei.Frame.actor.cold:
.LFSB7001:
.L5:
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	ud2	
	.cfi_endproc
.LFE7001:
	.text
	.size	_Z9raw_rangeP20_ZL9raw_rangei.Frame.actor, .-_Z9raw_rangeP20_ZL9raw_rangei.Frame.actor
	.section	.text.unlikely
	.size	_Z9raw_rangeP20_ZL9raw_rangei.Frame.actor.cold, .-_Z9raw_rangeP20_ZL9raw_rangei.Frame.actor.cold
.LCOLDE0:
	.text
.LHOTE0:
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
	.text
	.p2align 4
	.type	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, @function
_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation:
.LFB7955:
	.cfi_startproc
# /usr/include/c++/16.1.1/bits/std_function.h:275: 	switch (__op)
	testl	%edx, %edx	# __op
	je	.L30	#,
	cmpl	$1, %edx	#, __op
	jne	.L35	#,
# /usr/include/c++/16.1.1/bits/std_function.h:283: 	    __dest._M_access<_Functor*>() = _Base::_M_get_pointer(__source);
	movq	%rsi, (%rdi)	# __source, MEM[(struct ._anon_201 * &)__dest_4(D)]
.L33:
# /usr/include/c++/16.1.1/bits/std_function.h:290:       }
	xorl	%eax, %eax	#
	ret	
	.p2align 4,,10
	.p2align 3
.L35:
# /usr/include/c++/16.1.1/bits/std_function.h:188: 	  switch (__op)
	cmpl	$2, %edx	#, __op
	jne	.L33	#,
# /usr/include/c++/16.1.1/bits/std_function.h:157: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	movq	(%rsi), %rax	# MEM[(const struct ._anon_201 &)__source_3(D)], MEM[(const struct ._anon_201 &)__source_3(D)]
	movq	%rax, (%rdi)	# MEM[(const struct ._anon_201 &)__source_3(D)],* __dest
# /usr/include/c++/16.1.1/bits/std_function.h:205: 	      break;
	jmp	.L33	#
	.p2align 4,,10
	.p2align 3
.L30:
# /usr/include/c++/16.1.1/bits/std_function.h:279: 	    __dest._M_access<const type_info*>() = &typeid(_Functor);
	leaq	_ZTIZZ4mainENKUlvE1_clEvEUliE_(%rip), %rax	#, tmp110
	movq	%rax, (%rdi)	# tmp110,* __dest
# /usr/include/c++/16.1.1/bits/std_function.h:290:       }
	xorl	%eax, %eax	#
	ret	
	.cfi_endproc
.LFE7955:
	.size	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .-_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.section	.rodata._ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_.str1.1,"aMS",@progbits,1
.LC1:
	.string	"vector::_M_realloc_append"
	.section	.text._ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_,"axG",@progbits,_ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_,comdat
	.p2align 4
	.weak	_ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_
	.type	_ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_, @function
_ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_:
.LFB8203:
	.cfi_startproc
	movq	16(%rdi), %rax	# MEM[(struct HandlerNode *)_2(D)].real_handler_ptr, MEM[(struct HandlerNode *)_2(D)].real_handler_ptr
	movl	(%rsi), %r9d	# MEM <const int> [(struct PerformAwaitable *)_3(D)], e
	movq	%rsi, %r8	# D.185054, D.185054
	movq	(%rax), %rcx	# MEM[(struct vector & *)hh_4], _7
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	8(%rcx), %rax	# _7->D.164688._M_impl.D.163987._M_finish, _9
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	16(%rcx), %rsi	# _7->D.164688._M_impl.D.163987._M_end_of_storage, _10
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rsi, %rax	# _10, _9
	je	.L37	#,
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	8(%r8), %rdi	# MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr, _14
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r9d, (%rax)	# e, *_9
# /usr/include/c++/16.1.1/bits/stl_vector.h:1413: 	    ++this->_M_impl._M_finish;
	addq	$4, %rax	#, tmp125
	movq	%rax, 8(%rcx)	# tmp125, _7->D.164688._M_impl.D.163987._M_finish
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	jmp	*(%rdi)	# MEM[(void (*<T123>) (void *) *)_14]
	.p2align 4,,10
	.p2align 3
.L37:
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 64
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	(%rcx), %r10	# MEM[(const struct vector *)_7].D.164688._M_impl.D.163987._M_start, _17
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%r10, %rax	# _17, _9
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rax, %rdi	# _18, __dif_19
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rax, %rdx	# _9, _18
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rax	#, tmp127
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sarq	$2, %rdi	#, __dif_19
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rax, %rdi	# tmp127, __dif_19
	je	.L51	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rdi, %rdi	# __dif_19
	movl	$1, %eax	#, tmp144
	movq	%r8, 40(%rsp)	# D.185054, %sfp
	cmovne	%rdi, %rax	# __dif_19,, _21
	movl	%r9d, 36(%rsp)	# e, %sfp
	movq	%rdx, 24(%rsp)	# _18, %sfp
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rdi, %rax	# __dif_19, __len_22
	movq	%r10, 16(%rsp)	# _17, %sfp
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$2305843009213693951, %rdi	#, tmp145
	cmpq	%rdi, %rax	# tmp145, __len_22
	movq	%rsi, 8(%rsp)	# _10, %sfp
	cmova	%rdi, %rax	# __len_22,, tmp145, __len_22
	movq	%rcx, (%rsp)	# _7, %sfp
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	leaq	0(,%rax,4), %rdi	#,
	leaq	0(,%rax,4), %rbx	#, _39
	call	_Znwm@PLT	#
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movq	24(%rsp), %rdx	# %sfp, _18
	movl	36(%rsp), %r9d	# %sfp, e
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	movq	(%rsp), %rcx	# %sfp, _7
	movq	8(%rsp), %rsi	# %sfp, _10
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r11	#, _40
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%rdx, %rdx	# _18
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r9d, (%rax,%rdx)	# e, *_27
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	movq	16(%rsp), %r10	# %sfp, _17
	movq	40(%rsp), %r8	# %sfp, D.185054
	je	.L40	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%r10, %rsi	# _17,
	movq	%rax, %rdi	# _40,
	movq	%r8, 24(%rsp)	# D.185054, %sfp
	movq	%rcx, 16(%rsp)	# _7, %sfp
	movq	%rdx, 8(%rsp)	# _18, %sfp
	movq	%r10, (%rsp)	# _17, %sfp
	call	memcpy@PLT	#
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	16(%rsp), %rcx	# %sfp, _7
	movq	24(%rsp), %r8	# %sfp, D.185054
	movq	8(%rsp), %rdx	# %sfp, _18
	movq	(%rsp), %r10	# %sfp, _17
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%rax, %r11	#, _40
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	16(%rcx), %rsi	# _7->D.164688._M_impl.D.163987._M_end_of_storage, _10
.L40:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	4(%r11,%rdx), %rax	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r10, %r10	# _17
	je	.L41	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r10, %rsi	# _17, _32
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r10, %rdi	# _17,
	movq	%r11, 24(%rsp)	# _40, %sfp
	movq	%r8, 16(%rsp)	# D.185054, %sfp
	movq	%rax, 8(%rsp)	# __new_finish, %sfp
	movq	%rcx, (%rsp)	# _7, %sfp
	call	_ZdlPvm@PLT	#
	movq	24(%rsp), %r11	# %sfp, _40
	movq	16(%rsp), %r8	# %sfp, D.185054
	movq	8(%rsp), %rax	# %sfp, __new_finish
	movq	(%rsp), %rcx	# %sfp, _7
.L41:
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	8(%r8), %rdi	# MEM[(const struct coroutine_handle *)_3(D) + 8B]._M_fr_ptr, _14
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r11, (%rcx)	# _40, _7->D.164688._M_impl.D.163987._M_start
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	addq	%rbx, %r11	# _39, tmp139
# /usr/include/c++/16.1.1/bits/vector.tcc:654:       this->_M_impl._M_finish = __new_finish;
	movq	%rax, 8(%rcx)	# __new_finish, _7->D.164688._M_impl.D.163987._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	%r11, 16(%rcx)	# tmp139, _7->D.164688._M_impl.D.163987._M_end_of_storage
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	(%rdi), %rax	# MEM[(void (*<T123>) (void *) *)_14], MEM[(void (*<T123>) (void *) *)_14]
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	addq	$48, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
# /usr/include/c++/16.1.1/coroutine:142:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	jmp	*%rax	# MEM[(void (*<T123>) (void *) *)_14]
.L51:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	leaq	.LC1(%rip), %rdi	#,
	call	_ZSt20__throw_length_errorPKc@PLT	#
	.cfi_endproc
.LFE8203:
	.size	_ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_, .-_ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4
	.type	_Z8fx_rangeP19_ZL8fx_rangei.Frame.actor, @function
_Z8fx_rangeP19_ZL8fx_rangei.Frame.actor:
.LFB7027:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7027
# b4_generators.cpp:63: }
	movzwl	84(%rdi), %eax	# frame_ptr_19(D)->_Coro_resume_index, _1
	testb	$1, %al	#, _1
	je	.L53	#,
# b4_generators.cpp:63: }
	cmpw	$7, %ax	#, _1
	ja	.L79	#,
.L55:
.L63:
.L64:
.L65:
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	subw	$1, 86(%rdi)	#, frame_ptr_19(D)->_Coro_frame_refcount
# b4_generators.cpp:63: }
	je	.L80	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L53:
# b4_generators.cpp:63: }
	cmpw	$4, %ax	#, _1
	je	.L56	#,
	ja	.L57	#,
	testw	%ax, %ax	# _1
	je	.L58	#,
.L59:
# b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	xorl	%eax, %eax	# _10
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	movb	$1, 89(%rdi)	#, frame_ptr_19(D)->_Coro_initial_await_resume_called
# b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	movl	%eax, 92(%rdi)	# _10, frame_ptr_19(D)->i_2_3
# b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	cmpl	%eax, 80(%rdi)	# _10, frame_ptr_19(D)->n
	jg	.L62	#,
.L82:
# b4_generators.cpp:63: }
	movl	$6, %eax	#,
# b4_generators.cpp:63: }
	movq	$0, (%rdi)	#, frame_ptr_19(D)->_Coro_resume_fn
# b4_generators.cpp:63: }
	movw	%ax, 84(%rdi)	#, frame_ptr_19(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L80:
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_19(D) + 64B]._M_exception_object
	je	.L66	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _42
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L66:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_19(D) + 32B]._M_manager, _45
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _45
	je	.L67	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _44
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _45
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L67:
# b4_generators.cpp:63: }
	cmpb	$0, 88(%rax)	#, frame_ptr_19(D)->_Coro_frame_needs_free
	jne	.L81	#,
.L60:
.L52:
# b4_generators.cpp:63: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L58:
# b4_generators.cpp:63: }
	movl	$2, %ecx	#,
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	addw	$1, 86(%rdi)	#, frame_ptr_19(D)->_Coro_frame_refcount
	movb	$0, 89(%rdi)	#, frame_ptr_19(D)->_Coro_initial_await_resume_called
# b4_generators.cpp:63: }
	movw	%cx, 84(%rdi)	#, frame_ptr_19(D)->_Coro_resume_index
	ret	
	.p2align 4,,10
	.p2align 3
.L56:
# b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	movl	92(%rdi), %eax	# frame_ptr_19(D)->i_2_3, tmp138
	addl	$1, %eax	#, _10
# b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	movl	%eax, 92(%rdi)	# _10, frame_ptr_19(D)->i_2_3
# b4_generators.cpp:60:   for (int i = 0; i < n; ++i)
	cmpl	%eax, 80(%rdi)	# _10, frame_ptr_19(D)->n
	jle	.L82	#,
.L62:
# b4_generators.cpp:63: }
	movl	%eax, 128(%rdi)	# _10, frame_ptr_19(D)->T003_3_4.value
# b4_generators.cpp:63: }
	movl	$4, %edx	#,
# ../../effects.hpp:491:     return a;
	movl	%eax, 104(%rdi)	# _10, MEM <int> [(struct _ZL8fx_rangei.Frame *)frame_ptr_19(D) + 104B]
# /usr/include/c++/16.1.1/coroutine:255: 	  = __builtin_coro_promise (_M_fr_ptr, __alignof(_Promise), false);
	leaq	16(%rdi), %rax	#, tmp123
	movq	%rax, 120(%rdi)	# tmp123, MEM[(struct PerformAwaitable *)frame_ptr_19(D) + 104B].abort_base_
# ../../effects.hpp:1123:     caller.promise().effect_tag = &detail::effect_tag_v<E>;
	leaq	_ZN2fx6detail12effect_tag_vI4EmitIiEEE(%rip), %rax	#, tmp137
	movq	%rax, 48(%rdi)	# tmp137, MEM[(struct promise_type &)frame_ptr_19(D) + 16].D.163369.D.163361.effect_tag
# b4_generators.cpp:61:     perform(Emit<int>{.value = i});
	leaq	104(%rdi), %rax	#, tmp125
# b4_generators.cpp:63: }
	movw	%dx, 84(%rdi)	#, frame_ptr_19(D)->_Coro_resume_index
# ../../effects.hpp:1121:     caller_ = caller;
	movq	%rdi, 112(%rdi)	# frame_ptr, MEM[(struct PerformAwaitable *)frame_ptr_19(D) + 104B].caller_._M_fr_ptr
# b4_generators.cpp:61:     perform(Emit<int>{.value = i});
	movq	%rax, 56(%rdi)	# tmp125, MEM[(struct promise_type &)frame_ptr_19(D) + 16].D.163369.D.163361.payload_ptr
	ret	
	.p2align 4,,10
	.p2align 3
.L57:
# b4_generators.cpp:63: }
	cmpw	$6, %ax	#, _1
	je	.L65	#,
	jmp	.L54	#
	.p2align 4,,10
	.p2align 3
.L81:
	.cfi_def_cfa_offset 32
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_19(D) + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L68	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_48->_vptr.memory_resource, mr_48->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_49 + 24B], _50
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp133
	cmpq	%rdx, %r8	# tmp133, _50
	je	.L52	#,
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*%r8	# _50
	jmp	.L52	#
	.p2align 4,,10
	.p2align 3
.L68:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b4_generators.cpp:63: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB0:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE0:
.L79:
	jmp	.L54	#
	.section	.gcc_except_table,"a",@progbits
.LLSDA7027:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7027-.LLSDACSB7027
.LLSDACSB7027:
	.uleb128 .LEHB0-.LFB7027
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
.LLSDACSE7027:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7027
	.type	_Z8fx_rangeP19_ZL8fx_rangei.Frame.actor.cold, @function
_Z8fx_rangeP19_ZL8fx_rangei.Frame.actor.cold:
.LFSB7027:
.L54:
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	ud2	
	.cfi_endproc
.LFE7027:
	.section	.gcc_except_table
.LLSDAC7027:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7027-.LLSDACSBC7027
.LLSDACSBC7027:
.LLSDACSEC7027:
	.section	.text.unlikely
	.text
	.size	_Z8fx_rangeP19_ZL8fx_rangei.Frame.actor, .-_Z8fx_rangeP19_ZL8fx_rangei.Frame.actor
	.section	.text.unlikely
	.size	_Z8fx_rangeP19_ZL8fx_rangei.Frame.actor.cold, .-_Z8fx_rangeP19_ZL8fx_rangei.Frame.actor.cold
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"fx: unhandled effect -- no matching handler installed"
	.section	.text.unlikely
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4
	.type	_ZZ4mainENKUlvE3_clEv, @function
_ZZ4mainENKUlvE3_clEv:
.LFB7119:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7119
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# b4_generators.cpp:143:       std::vector<int> v;
	pxor	%xmm0, %xmm0	# tmp168
# b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	addq	$-128, %rsp	#,
	.cfi_def_cfa_offset 160
# b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	movq	%fs:40, %rbp	# MEM[(<address-space-1> long unsigned int *)40B], __closure
	movq	%rbp, 120(%rsp)	# __closure, D.219923
	movq	%rdi, %rbp	# __closure, __closure
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$20000, %edi	#,
# b4_generators.cpp:143:       std::vector<int> v;
	movaps	%xmm0, 32(%rsp)	# tmp168, v
	movq	$0, 48(%rsp)	#, v
.LEHB1:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE1:
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rax, 32(%rsp)	# tmp237, v.D.164688._M_impl.D.163987._M_start
# /usr/include/c++/16.1.1/bits/vector.tcc:100: 	  this->_M_impl._M_finish = __tmp + __old_size;
	movq	%rax, 40(%rsp)	# tmp237, v.D.164688._M_impl.D.163987._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	addq	$20000, %rax	#, tmp170
	movq	%rax, 48(%rsp)	# tmp170, v.D.164688._M_impl.D.163987._M_end_of_storage
# ../../effects.hpp:466:     auto *mr = current_mr;
	movq	%fs:_ZN2fx6detail10current_mrE@tpoff, %rcx	# current_mr, mr
# ../../effects.hpp:468:     void *raw = mr ? mr->allocate(total, alignof(std::max_align_t))
	testq	%rcx, %rcx	# mr
	je	.L84	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	(%rcx), %rax	# mr_76->_vptr.memory_resource, mr_76->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource11do_allocateEmm(%rip), %rdx	#, tmp172
	movq	16(%rax), %rax	# MEM[(int (*) () *)_78 + 16B], _79
	cmpq	%rdx, %rax	# tmp172, _79
	jne	.L85	#,
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	movq	16(%rcx), %rax	# MEM[(size_t &)mr_76 + 16], _91
# /usr/include/c++/16.1.1/bits/align.h:62:   if (__space < __size)
	cmpq	$143, %rax	#, _91
	jbe	.L86	#,
# /usr/include/c++/16.1.1/bits/align.h:64:   const auto __intptr = reinterpret_cast<__UINTPTR_TYPE__>(__ptr);
	movq	8(%rcx), %rdx	# MEM[(void * &)mr_76 + 8], __intptr
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	leaq	-144(%rax), %rdi	#, _100
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	leaq	15(%rdx), %rbx	#, _96
# /usr/include/c++/16.1.1/bits/align.h:65:   const auto __aligned = (__intptr - 1u + __align) & -__align;
	andq	$-16, %rbx	#, __aligned
# /usr/include/c++/16.1.1/bits/align.h:66:   const auto __diff = __aligned - __intptr;
	movq	%rbx, %rsi	# __aligned, __diff_99
	subq	%rdx, %rsi	# __intptr, __diff_99
# /usr/include/c++/16.1.1/bits/align.h:67:   if (__diff > (__space - __size))
	cmpq	%rsi, %rdi	# __diff_99, _100
	jb	.L86	#,
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	addq	%rdx, %rax	# __intptr, _38
# /usr/include/c++/16.1.1/bits/align.h:72:       return __ptr = reinterpret_cast<void*>(__aligned);
	movq	%rbx, 8(%rcx)	# __p, MEM[(void * &)mr_76 + 8]
# /usr/include/c++/16.1.1/bits/align.h:71:       __space -= __diff;
	subq	%rbx, %rax	# __aligned, prephitmp_34
	movq	%rax, 16(%rcx)	# prephitmp_34, MEM[(size_t &)mr_76 + 16]
# /usr/include/c++/16.1.1/memory_resource:422:       if (__builtin_expect(__p == nullptr, false))
	testq	%rbx, %rbx	# __p
	je	.L86	#,
.L87:
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	leaq	144(%rbx), %rdx	#, tmp177
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	subq	$144, %rax	#, tmp178
# /usr/include/c++/16.1.1/memory_resource:427:       _M_current_buf = (char*)_M_current_buf + __bytes;
	movq	%rdx, 8(%rcx)	# tmp177, MEM[(struct monotonic_buffer_resource *)mr_76]._M_current_buf
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	%rax, 16(%rcx)	# tmp178, MEM[(struct monotonic_buffer_resource *)mr_76]._M_avail
.L88:
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	movq	.LC5(%rip), %xmm0	#, _146
# ../../effects.hpp:144: struct PromiseAbortBase {
	movb	$0, 16(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_82 + 16B].aborted
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	leaq	_Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy(%rip), %rax	#, tmp184
	leaq	64(%rsp), %r12	#, tmp235
	movq	%rax, %xmm3	# tmp184, tmp184
# ../../effects.hpp:472:         static_cast<std::byte *>(raw) + n) = mr;
	movq	%rcx, 136(%rbx)	# mr, MEM[(struct memory_resource * *)raw_82 + 136B]
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	movabsq	$281474976715656, %rax	#, tmp256
	movq	.LC4(%rip), %xmm1	#, _108
	punpcklqdq	%xmm3, %xmm0	# tmp184, _146
	movq	%rax, 80(%rbx)	# tmp256, MEM <unsigned long> [(void *)raw_82 + 80B]
	movq	%r12, %xmm2	# tmp235, tmp235
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	$0, 24(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_82 + 16B].abort_owner
	punpcklqdq	%xmm2, %xmm1	# tmp235, _108
# /usr/include/c++/16.1.1/any:159:     constexpr any() noexcept : _M_manager(nullptr) { }
	movq	$0, 32(%rbx)	#, MEM[(struct any *)raw_82 + 32B]._M_manager
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	$0, 72(%rbx)	#, MEM[(struct PromiseAbortBase *)raw_82 + 16B].result_ptr
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	movb	$1, 88(%rbx)	#, MEM[(struct _ZL8fx_rangei.Frame *)raw_82]._Coro_frame_needs_free
	movups	%xmm0, (%rbx)	# _146, MEM <vector(2) long unsigned int> [(void (*<T1aaf5>) (struct _ZL8fx_rangei.Frame *) *)raw_82]
# /usr/include/c++/16.1.1/any:91:       constexpr _Storage() : _M_ptr{nullptr} {}
	pxor	%xmm0, %xmm0	# tmp186
	movups	%xmm0, 40(%rbx)	# tmp186, MEM <vector(2) long unsigned int> [(void *)raw_82 + 40B]
	movups	%xmm0, 56(%rbx)	# tmp186, MEM <vector(2) long unsigned int> [(void *)raw_82 + 56B]
	movaps	%xmm1, (%rsp)	# _108, %sfp
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	call	_Z8fx_rangeP19_ZL8fx_rangei.Frame.actor	#
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	subw	$1, 86(%rbx)	#, MEM[(struct _ZL8fx_rangei.Frame *)raw_82]._Coro_frame_refcount
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	je	.L136	#,
.L89:
# b4_generators.cpp:145:       fx_range(N).run(CollectInts{.out = v});
	leaq	32(%rsp), %rax	#, tmp196
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movdqa	(%rsp), %xmm4	# %sfp, _108
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:159: struct HandlerNode {
	movq	$0, 104(%rsp)	#, MEM[(struct HandlerNode *)&guard].on_return_any_fn
# b4_generators.cpp:145:       fx_range(N).run(CollectInts{.out = v});
	movq	%rax, 16(%rsp)	# tmp196, D.166513.out
# ../../effects.hpp:591:     node.real_handler_ptr = static_cast<void *>(&h);
	leaq	16(%rsp), %rax	#, tmp197
	movq	%rax, 80(%rsp)	# tmp197, guard.node.real_handler_ptr
# ../../effects.hpp:605:     node.dispatch = [](void *node_self, void *raw) {
	leaq	_ZZN2fx13ScopedHandlerI4EmitIiE11CollectIntsvvEC4ERS3_PvENUlS6_S6_E_4_FUNES6_S6_(%rip), %rax	#, tmp259
	movq	%rax, 88(%rsp)	# tmp259, guard.node.dispatch
# ../../effects.hpp:590:     node.effect_tag = &detail::effect_tag_v<E>;
	movaps	%xmm4, 64(%rsp)	# _108, MEM <vector(2) long unsigned int> [(const void * *)&guard]
# ../../effects.hpp:662:     saved = detail::stack_top;
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, stack_top.78_124
	movq	%rax, 112(%rsp)	# stack_top.78_124, guard.saved
# ../../effects.hpp:663:     node.prev = saved;
	movq	%rax, 96(%rsp)	# stack_top.78_124, guard.node.prev
# ../../effects.hpp:664:     detail::stack_top = &node;
	movq	%r12, %fs:_ZN2fx6detail9stack_topE@tpoff	# tmp235, stack_top
.LEHB2:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_82]
	.p2align 4
	.p2align 3
.L93:
# ../../effects.hpp:981:     while (!h.done()) {
	cmpq	$0, (%rbx)	#, MEM[(void * *)raw_82]
	je	.L137	#,
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	%fs:_ZN2fx6detail9stack_topE@tpoff, %rax	# stack_top, n
# ../../effects.hpp:983:       detail::dispatch_effect(p.effect_tag, p.payload_ptr);
	movq	48(%rbx), %rdx	# MEM[(struct promise_type &)raw_82 + 16].D.163369.D.163361.effect_tag, _131
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L94	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	%rdx, (%rax)	# _131, n_137->effect_tag
	je	.L95	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L96:
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	movq	32(%rax), %rax	# n_12->prev, n
# ../../effects.hpp:186:   for (auto *n = stack_top; n; n = n->prev) {
	testq	%rax, %rax	# n
	je	.L94	#,
# ../../effects.hpp:187:     if (n->effect_tag == tag) {
	cmpq	(%rax), %rdx	# n_141->effect_tag, _131
	jne	.L96	#,
.L95:
# ../../effects.hpp:188:       n->dispatch(reinterpret_cast<void *>(n), payload_ptr);
	movq	56(%rbx), %rsi	# MEM[(struct promise_type &)raw_82 + 16].D.163369.D.163361.payload_ptr, MEM[(struct promise_type &)raw_82 + 16].D.163369.D.163361.payload_ptr
	movq	%rax, %rdi	# n,
	call	*24(%rax)	# n_42->dispatch
.LEHE2:
# ../../effects.hpp:984:       if (h.promise().aborted)
	cmpb	$0, 16(%rbx)	#, MEM[(struct promise_type &)raw_82 + 16].D.163369.D.163361.aborted
	je	.L93	#,
.L102:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	112(%rsp), %rax	# guard.saved, _143
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# _143, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_82 + 8B]
# b4_generators.cpp:146:       sink += v.back();
	movq	40(%rsp), %rdx	# MEM[(int * const &)&v + 8], MEM[(int * const &)&v + 8]
# b4_generators.cpp:146:       sink += v.back();
	movq	0(%rbp), %rax	# __closure_15(D)->__sink, _1
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	32(%rsp), %rdi	# MEM[(struct _Vector_base *)&v]._M_impl.D.163987._M_start, _20
# b4_generators.cpp:146:       sink += v.back();
	movslq	-4(%rdx), %rdx	# MEM[(value_type &)_23 + 18446744073709551612], _3
	addq	%rdx, (%rax)	# _3, *_1
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _20
	je	.L83	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	48(%rsp), %rsi	# MEM[(struct _Vector_base *)&v]._M_impl.D.163987._M_end_of_storage, _21
	subq	%rdi, %rsi	# _20, _21
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L83:
# b4_generators.cpp:147:     }));
	movq	120(%rsp), %rax	# D.219923, tmp249
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp249
	jne	.L138	#,
	subq	$-128, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.L86:
	.cfi_restore_state
# /usr/include/c++/16.1.1/memory_resource:424: 	  _M_new_buffer(__bytes, __alignment);
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%rcx, %rdi	# mr,
	movq	%rcx, (%rsp)	# mr, %sfp
.LEHB3:
	call	_ZNSt3pmr25monotonic_buffer_resource13_M_new_bufferEmm@PLT	#
.LEHE3:
# /usr/include/c++/16.1.1/memory_resource:425: 	  __p = _M_current_buf;
	movq	(%rsp), %rcx	# %sfp, mr
	movq	8(%rcx), %rbx	# MEM[(struct monotonic_buffer_resource *)mr_76]._M_current_buf, __p
# /usr/include/c++/16.1.1/memory_resource:428:       _M_avail -= __bytes;
	movq	16(%rcx), %rax	# MEM[(struct monotonic_buffer_resource *)mr_76]._M_avail, prephitmp_34
	jmp	.L87	#
.L137:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:199:       { return _M_exception_object; }
	movq	64(%rbx), %rax	# MEM[(const struct exception_ptr *)raw_82 + 64B]._M_exception_object, _135
# ../../effects.hpp:987:     if (h.promise().exception)
	testq	%rax, %rax	# _135
	je	.L102	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	leaq	24(%rsp), %rdi	#, tmp260
# /usr/include/c++/16.1.1/bits/exception_ptr.h:237:     : _M_exception_object(__other._M_exception_object)
	movq	%rax, 24(%rsp)	# _135, MEM[(struct exception_ptr *)&D.219888]._M_exception_object
# /usr/include/c++/16.1.1/bits/exception_ptr.h:248: 	  _M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# ../../effects.hpp:988:       std::rethrow_exception(h.promise().exception);
	movq	120(%rsp), %rax	# D.219923, tmp247
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp247
	jne	.L139	#,
	leaq	24(%rsp), %rdi	#, tmp261
.LEHB4:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE4:
	.p2align 4,,10
	.p2align 3
.L136:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rbx)	#, MEM[(struct exception_ptr *)raw_82 + 64B]._M_exception_object
	je	.L90	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rbx), %rdi	#, _113
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L90:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rbx), %rax	# MEM[(const struct any *)raw_82 + 32B]._M_manager, _116
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rax, %rax	# _116
	je	.L91	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	32(%rbx), %rsi	#, _115
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rax	# _116
.L91:
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	cmpw	$0, 86(%rbx)	#, MEM[(struct _ZL8fx_rangei.Frame *)raw_82]._Coro_frame_refcount
	jne	.L89	#,
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rbx), %rdi	# MEM[(struct memory_resource * *)raw_82 + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L92	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rax	# mr_119->_vptr.memory_resource, mr_119->_vptr.memory_resource
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp195
	movq	24(%rax), %rax	# MEM[(int (*) () *)_120 + 24B], _121
	cmpq	%rdx, %rax	# tmp195, _121
	je	.L89	#,
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rbx, %rsi	# __p,
	call	*%rax	# _121
	jmp	.L89	#
.L84:
# ../../effects.hpp:469:                    : ::operator new(total);
	movl	$144, %edi	#,
	movq	%rcx, (%rsp)	# mr, %sfp
.LEHB5:
	call	_Znwm@PLT	#
.L135:
	movq	(%rsp), %rcx	# %sfp, mr
	movq	%rax, %rbx	# __p, __p
	jmp	.L88	#
.L85:
# /usr/include/c++/16.1.1/bits/memory_resource.h:78:     { return ::operator new(__bytes, do_allocate(__bytes, __alignment)); }
	movq	%rcx, (%rsp)	# mr, %sfp
	movl	$16, %edx	#,
	movl	$144, %esi	#,
	movq	%rcx, %rdi	# mr,
	call	*%rax	# _79
.LEHE5:
	jmp	.L135	#
.L92:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
	movq	%rbx, %rdi	# __p,
	call	_ZdlPvm@PLT	#
	jmp	.L89	#
.L138:
# b4_generators.cpp:147:     }));
	call	__stack_chk_fail@PLT	#
.L139:
# ../../effects.hpp:988:       std::rethrow_exception(h.promise().exception);
	call	__stack_chk_fail@PLT	#
.L116:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	movq	%rax, %rbp	#, tmp242
	jmp	.L107	#
.L114:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%rax, %rbp	# tmp244, tmp223
	jmp	.L109	#
.L131:
	jmp	.L132	#
	.section	.gcc_except_table
.LLSDA7119:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7119-.LLSDACSB7119
.LLSDACSB7119:
	.uleb128 .LEHB1-.LFB7119
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L114-.LFB7119
	.uleb128 0
	.uleb128 .LEHB2-.LFB7119
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L131-.LFB7119
	.uleb128 0
	.uleb128 .LEHB3-.LFB7119
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L114-.LFB7119
	.uleb128 0
	.uleb128 .LEHB4-.LFB7119
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L116-.LFB7119
	.uleb128 0
	.uleb128 .LEHB5-.LFB7119
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L114-.LFB7119
	.uleb128 0
.LLSDACSE7119:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7119
	.type	_ZZ4mainENKUlvE3_clEv.cold, @function
_ZZ4mainENKUlvE3_clEv.cold:
.LFSB7119:
.L94:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movl	$16, %edi	#,
	call	__cxa_allocate_exception@PLT	#
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	leaq	.LC3(%rip), %rsi	#,
	movq	%rax, %rdi	# _142,
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%rax, %r12	#, _142
.LEHB6:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	call	_ZNSt13runtime_errorC1EPKc@PLT	#
.LEHE6:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	120(%rsp), %rax	# D.219923, tmp246
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp246
	jne	.L140	#,
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx	#,
	leaq	_ZTISt13runtime_error(%rip), %rsi	#,
	movq	%r12, %rdi	# _142,
.LEHB7:
	call	__cxa_throw@PLT	#
.LEHE7:
.L140:
	call	__stack_chk_fail@PLT	#
.L107:
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 24(%rsp)	#, D.219888._M_exception_object
	je	.L101	#,
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	leaq	24(%rsp), %rdi	#, tmp262
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	jmp	.L101	#
.L117:
# ../../effects.hpp:193:       "fx: unhandled effect -- no matching handler installed");
	movq	%r12, %rdi	# _142,
	movq	%rax, %rbp	#, tmp241
	call	__cxa_free_exception@PLT	#
.L101:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	112(%rsp), %rax	# guard.saved, guard.saved
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# __p,
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %fs:_ZN2fx6detail9stack_topE@tpoff	# guard.saved, stack_top
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)raw_82 + 8B]
.L109:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	32(%rsp), %rdi	# MEM[(struct _Vector_base *)&v]._M_impl.D.163987._M_start, _29
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _29
	je	.L111	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	48(%rsp), %rsi	# MEM[(struct _Vector_base *)&v]._M_impl.D.163987._M_end_of_storage, _30
	subq	%rdi, %rsi	# _29, _30
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L111:
	movq	120(%rsp), %rax	# D.219923, tmp248
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp248
	jne	.L141	#,
	movq	%rbp, %rdi	# tmp223,
.LEHB8:
	call	_Unwind_Resume@PLT	#
.LEHE8:
.L115:
.L132:
# ../../effects.hpp:666:   ~ScopedHandler() { detail::stack_top = saved; }
	movq	%rax, %rbp	# tmp243, tmp209
	jmp	.L101	#
.L141:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE7119:
	.section	.gcc_except_table
.LLSDAC7119:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7119-.LLSDACSBC7119
.LLSDACSBC7119:
	.uleb128 .LEHB6-.LCOLDB6
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L117-.LCOLDB6
	.uleb128 0
	.uleb128 .LEHB7-.LCOLDB6
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L115-.LCOLDB6
	.uleb128 0
	.uleb128 .LEHB8-.LCOLDB6
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC7119:
	.section	.text.unlikely
	.text
	.size	_ZZ4mainENKUlvE3_clEv, .-_ZZ4mainENKUlvE3_clEv
	.section	.text.unlikely
	.size	_ZZ4mainENKUlvE3_clEv.cold, .-_ZZ4mainENKUlvE3_clEv.cold
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4
	.type	_Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy, @function
_Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy:
.LFB7002:
	.cfi_startproc
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	movzwl	24(%rdi), %eax	# frame_ptr_4(D)->_Coro_resume_index, _2
	orl	$1, %eax	#, _2
	movw	%ax, 24(%rdi)	# _2, frame_ptr_4(D)->_Coro_resume_index
# b4_generators.cpp:55: }
	cmpw	$7, %ax	#, _2
	ja	.L150	#,
.L144:
.L145:
.L146:
.L147:
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	subw	$1, 26(%rdi)	#, frame_ptr_4(D)->_Coro_frame_refcount
# b4_generators.cpp:55: }
	jne	.L152	#,
# b4_generators.cpp:55: }
	cmpb	$0, 28(%rdi)	#, frame_ptr_4(D)->_Coro_frame_needs_free
	jne	.L153	#,
.L148:
# b4_generators.cpp:55: }
	ret	
	.p2align 4,,10
	.p2align 3
.L152:
	ret	
	.p2align 4,,10
	.p2align 3
.L153:
# b4_generators.cpp:55: }
	movl	$40, %esi	#,
	jmp	_ZdlPvm@PLT	#
.L143:
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy.cold, @function
_Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy.cold:
.LFSB7002:
.L150:
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	ud2	
	.cfi_endproc
.LFE7002:
	.text
	.size	_Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy, .-_Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy
	.section	.text.unlikely
	.size	_Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy.cold, .-_Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy.cold
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4
	.type	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi, @function
_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi:
.LFB7951:
	.cfi_startproc
	movq	(%rdi), %rcx	# MEM[(struct vector & *)__functor_2(D)], _7
# /usr/include/c++/16.1.1/bits/invoke.h:63:     { return std::forward<_Fn>(__f)(std::forward<_Args>(__args)...); }
	movl	(%rsi), %r8d	# *__args#0_4(D), _3
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	8(%rcx), %rax	# _7->D.164688._M_impl.D.163987._M_finish, _9
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	16(%rcx), %rsi	# _7->D.164688._M_impl.D.163987._M_end_of_storage, _10
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rsi, %rax	# _10, _9
	je	.L155	#,
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r8d, (%rax)	# _3, *_9
# /usr/include/c++/16.1.1/bits/stl_vector.h:1413: 	    ++this->_M_impl._M_finish;
	addq	$4, %rax	#, tmp121
	movq	%rax, 8(%rcx)	# tmp121, _7->D.164688._M_impl.D.163987._M_finish
	ret	
	.p2align 4,,10
	.p2align 3
.L155:
# /usr/include/c++/16.1.1/bits/std_function.h:293:       _M_invoke(const _Any_data& __functor, _ArgTypes&&... __args)
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 64
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	(%rcx), %r9	# MEM[(const struct vector *)_7].D.164688._M_impl.D.163987._M_start, _14
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%r9, %rax	# _14, _9
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rax, %rdi	# _15, __dif_16
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rax, %rdx	# _9, _15
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rax	#, tmp123
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sarq	$2, %rdi	#, __dif_16
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rax, %rdi	# tmp123, __dif_16
	je	.L166	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rdi, %rdi	# __dif_16
	movl	$1, %eax	#, tmp139
	movq	%rdx, 40(%rsp)	# _15, %sfp
	cmovne	%rdi, %rax	# __dif_16,, _18
	movq	%r9, 32(%rsp)	# _14, %sfp
	movq	%rsi, 24(%rsp)	# _10, %sfp
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rdi, %rax	# __dif_16, __len_19
	movq	%rcx, 16(%rsp)	# _7, %sfp
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$2305843009213693951, %rdi	#, tmp140
	cmpq	%rdi, %rax	# tmp140, __len_19
	movl	%r8d, 8(%rsp)	# _3, %sfp
	cmova	%rdi, %rax	# __len_19,, tmp140, __len_19
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	leaq	0(,%rax,4), %rdi	#,
	leaq	0(,%rax,4), %rbx	#, _36
	call	_Znwm@PLT	#
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movq	40(%rsp), %rdx	# %sfp, _15
	movl	8(%rsp), %r8d	# %sfp, _3
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	movq	16(%rsp), %rcx	# %sfp, _7
	movq	24(%rsp), %rsi	# %sfp, _10
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r10	#, _37
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%rdx, %rdx	# _15
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r8d, (%rax,%rdx)	# _3, *_24
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	movq	32(%rsp), %r9	# %sfp, _14
	je	.L158	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%r9, %rsi	# _14,
	movq	%rax, %rdi	# _37,
	movq	%rcx, 24(%rsp)	# _7, %sfp
	movq	%rdx, 16(%rsp)	# _15, %sfp
	movq	%r9, 8(%rsp)	# _14, %sfp
	call	memcpy@PLT	#
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	24(%rsp), %rcx	# %sfp, _7
	movq	16(%rsp), %rdx	# %sfp, _15
	movq	8(%rsp), %r9	# %sfp, _14
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%rax, %r10	#, _37
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	16(%rcx), %rsi	# _7->D.164688._M_impl.D.163987._M_end_of_storage, _10
.L158:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	4(%r10,%rdx), %rax	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r9, %r9	# _14
	je	.L159	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r9, %rsi	# _14, _29
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r9, %rdi	# _14,
	movq	%r10, 24(%rsp)	# _37, %sfp
	movq	%rax, 16(%rsp)	# __new_finish, %sfp
	movq	%rcx, 8(%rsp)	# _7, %sfp
	call	_ZdlPvm@PLT	#
	movq	24(%rsp), %r10	# %sfp, _37
	movq	16(%rsp), %rax	# %sfp, __new_finish
	movq	8(%rsp), %rcx	# %sfp, _7
.L159:
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r10, (%rcx)	# _37, _7->D.164688._M_impl.D.163987._M_start
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	addq	%rbx, %r10	# _36, tmp135
# /usr/include/c++/16.1.1/bits/vector.tcc:654:       this->_M_impl._M_finish = __new_finish;
	movq	%rax, 8(%rcx)	# __new_finish, _7->D.164688._M_impl.D.163987._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	%r10, 16(%rcx)	# tmp135, _7->D.164688._M_impl.D.163987._M_end_of_storage
# /usr/include/c++/16.1.1/bits/std_function.h:297:       }
	addq	$48, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi.cold, @function
_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi.cold:
.LFSB7951:
.L166:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -16
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	leaq	.LC1(%rip), %rdi	#,
	call	_ZSt20__throw_length_errorPKc@PLT	#
	.cfi_endproc
.LFE7951:
	.text
	.size	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi, .-_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi
	.section	.text.unlikely
	.size	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi.cold, .-_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi.cold
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4
	.type	_Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy, @function
_Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy:
.LFB7028:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7028
	movzwl	84(%rdi), %eax	# frame_ptr_4(D)->_Coro_resume_index, _2
	orl	$1, %eax	#, _2
	movw	%ax, 84(%rdi)	# _2, frame_ptr_4(D)->_Coro_resume_index
# b4_generators.cpp:63: }
	cmpw	$7, %ax	#, _2
	ja	.L178	#,
.L172:
.L173:
.L174:
.L175:
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	subw	$1, 86(%rdi)	#, frame_ptr_4(D)->_Coro_frame_refcount
# b4_generators.cpp:63: }
	je	.L190	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L190:
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax	# frame_ptr, frame_ptr
# /usr/include/c++/16.1.1/bits/exception_ptr.h:256:       if (_M_exception_object)
	cmpq	$0, 64(%rdi)	#, MEM[(struct exception_ptr *)frame_ptr_4(D) + 64B]._M_exception_object
	je	.L179	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	leaq	64(%rdi), %rdi	#, _21
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
# /usr/include/c++/16.1.1/bits/exception_ptr.h:265: 	  _M_release();
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L179:
# /usr/include/c++/16.1.1/any:334:     bool has_value() const noexcept { return _M_manager != nullptr; }
	movq	32(%rax), %rcx	# MEM[(const struct any *)frame_ptr_4(D) + 32B]._M_manager, _24
# /usr/include/c++/16.1.1/any:294:       if (has_value())
	testq	%rcx, %rcx	# _24
	je	.L180	#,
# ../../effects.hpp:144: struct PromiseAbortBase {
	movq	%rax, 8(%rsp)	# frame_ptr, %sfp
	leaq	32(%rax), %rsi	#, _23
# /usr/include/c++/16.1.1/any:296: 	_M_manager(_Op_destroy, this, nullptr);
	xorl	%edx, %edx	#
	movl	$3, %edi	#,
	call	*%rcx	# _24
	movq	8(%rsp), %rax	# %sfp, frame_ptr
.L180:
# b4_generators.cpp:63: }
	cmpb	$0, 88(%rax)	#, frame_ptr_4(D)->_Coro_frame_needs_free
	jne	.L191	#,
.L176:
.L170:
# b4_generators.cpp:63: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L191:
	.cfi_restore_state
# ../../effects.hpp:479:     auto *mr = *reinterpret_cast<std::pmr::memory_resource **>(
	movq	136(%rax), %rdi	# MEM[(struct memory_resource * *)frame_ptr_4(D) + 136B], mr
# ../../effects.hpp:481:     if (mr)
	testq	%rdi, %rdi	# mr
	je	.L181	#,
# /usr/include/c++/16.1.1/bits/memory_resource.h:83:     { return do_deallocate(__p, __bytes, __alignment); }
	movq	(%rdi), %rdx	# mr_27->_vptr.memory_resource, mr_27->_vptr.memory_resource
	movq	24(%rdx), %r8	# MEM[(int (*) () *)_28 + 24B], _29
	leaq	_ZNSt3pmr25monotonic_buffer_resource13do_deallocateEPvmm(%rip), %rdx	#, tmp119
	cmpq	%rdx, %r8	# tmp119, _29
	je	.L170	#,
	movl	$16, %ecx	#,
	movl	$144, %edx	#,
	movq	%rax, %rsi	# frame_ptr,
	call	*%r8	# _29
	jmp	.L170	#
	.p2align 4,,10
	.p2align 3
.L181:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	movl	$144, %esi	#,
	movq	%rax, %rdi	# frame_ptr,
# b4_generators.cpp:63: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
.LEHB9:
# ../../effects.hpp:484:       ::operator delete(ptr, total);
	jmp	_ZdlPvm@PLT	#
.LEHE9:
.L171:
	.section	.gcc_except_table
.LLSDA7028:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7028-.LLSDACSB7028
.LLSDACSB7028:
	.uleb128 .LEHB9-.LFB7028
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE7028:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7028
	.type	_Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy.cold, @function
_Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy.cold:
.LFSB7028:
.L178:
# b4_generators.cpp:59: static auto fx_range(int n) -> Emit<int>::Fx<void> {
	ud2	
	.cfi_endproc
.LFE7028:
	.section	.gcc_except_table
.LLSDAC7028:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7028-.LLSDACSBC7028
.LLSDACSBC7028:
.LLSDACSEC7028:
	.section	.text.unlikely
	.text
	.size	_Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy, .-_Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy
	.section	.text.unlikely
	.size	_Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy.cold, .-_Z8fx_rangeP19_ZL8fx_rangei.Frame.destroy.cold
.LCOLDE9:
	.text
.LHOTE9:
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.str1.1,"aMS",@progbits,1
.LC10:
	.string	"basic_string::_M_create"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
.LFB8348:
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
	je	.L223	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	movabsq	$9223372036854775806, %rsi	#, tmp130
# /usr/include/c++/16.1.1/bits/basic_string.h:1303: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	movq	16(%rdi), %rax	# MEM[(const struct basic_string *)this_17(D)].D.58684._M_allocated_capacity, __sz
# /usr/include/c++/16.1.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmpq	%rbx, %rsi	# __new_capacity, tmp130
	jb	.L194	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	leaq	1(%rbx), %rdi	#, _23
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rbx, %rax	# __new_capacity, __sz
	jnb	.L195	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	addq	%rax, %rax	# _52
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rax, %rbx	# _52, __new_capacity
	jnb	.L195	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	leaq	1(%rax), %rdi	#, _23
# /usr/include/c++/16.1.1/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	movq	%rax, %rbx	# _52, __new_capacity
# /usr/include/c++/16.1.1/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	cmpq	%rax, %rsi	# _52, tmp130
	jnb	.L195	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movabsq	$9223372036854775807, %rdi	#, _23
# /usr/include/c++/16.1.1/bits/basic_string.tcc:159: 	    __capacity = max_size();
	movq	%rsi, %rbx	# tmp130, __new_capacity
	.p2align 4
	.p2align 3
.L195:
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
	je	.L200	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:454: 	if (__n == 1)
	cmpq	$1, %r15	#, __pos
	je	.L224	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r15, %rdx	# __pos,
	movq	%r12, %rsi	# _28,
	movq	%rax, %rdi	# _59,
	movq	%r8, 16(%rsp)	# __len2, %sfp
	movq	%rcx, 8(%rsp)	# __s, %sfp
	call	memcpy@PLT	#
	movq	16(%rsp), %r8	# %sfp, __len2
	movq	8(%rsp), %rcx	# %sfp, __s
.L200:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:399:       if (__s && __len2)
	testq	%rcx, %rcx	# __s
	je	.L202	#,
	testq	%r8, %r8	# __len2
	je	.L202	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:400: 	this->_S_copy(__r + __pos, __s, __len2);
	leaq	(%r14,%r15), %rdi	#, _7
# /usr/include/c++/16.1.1/bits/basic_string.h:454: 	if (__n == 1)
	cmpq	$1, %r8	#, __len2
	je	.L225	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r8, %rdx	# __len2,
	movq	%rcx, %rsi	# __s,
	movq	%r8, 8(%rsp)	# __len2, %sfp
	call	memcpy@PLT	#
	movq	8(%rsp), %r8	# %sfp, __len2
.L202:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:401:       if (__how_much)
	testq	%r13, %r13	# __how_much
	jne	.L226	#,
.L204:
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, (%rsp)	# _28, %sfp
	je	.L206	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	16(%rbp), %rax	# this_17(D)->D.58684._M_allocated_capacity, tmp171
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# _28,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	leaq	1(%rax), %rsi	#, _39
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L206:
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
.L226:
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
	je	.L227	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r13, %rdx	# __how_much,
	call	memcpy@PLT	#
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L204	#
	.p2align 4,,10
	.p2align 3
.L223:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	movabsq	$9223372036854775806, %rax	#, tmp128
	cmpq	%rbx, %rax	# __new_capacity, tmp128
	jb	.L194	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	leaq	-16(%rbx), %rax	#, _58
# /usr/include/c++/16.1.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	leaq	1(%rbx), %rdi	#, _23
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	$13, %rax	#, _58
	ja	.L195	#,
# /usr/include/c++/16.1.1/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	movl	$30, %ebx	#, __new_capacity
# /usr/include/c++/16.1.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movl	$31, %edi	#, _23
	jmp	.L195	#
	.p2align 4,,10
	.p2align 3
.L224:
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movzbl	(%r12), %eax	# MEM[(const char_type &)_28], _31
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	%al, (%r14)	# _31, MEM[(char_type &)_59]
	jmp	.L200	#
	.p2align 4,,10
	.p2align 3
.L225:
	movzbl	(%rcx), %eax	# MEM[(const char_type &)__s_27(D)], MEM[(const char_type &)__s_27(D)]
	movb	%al, (%rdi)	# MEM[(const char_type &)__s_27(D)], MEM[(char_type &)_7]
# /usr/include/c++/16.1.1/bits/basic_string.tcc:401:       if (__how_much)
	testq	%r13, %r13	# __how_much
	je	.L204	#,
	jmp	.L226	#
	.p2align 4,,10
	.p2align 3
.L227:
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movzbl	(%rsi), %eax	# MEM[(const char_type &)_9], _34
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	%al, (%rdi)	# _34, MEM[(char_type &)_11]
	jmp	.L204	#
.L194:
# /usr/include/c++/16.1.1/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	leaq	.LC10(%rip), %rdi	#,
	call	_ZSt20__throw_length_errorPKc@PLT	#
	.cfi_endproc
.LFE8348:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC13:
	.string	"\n=== "
.LC14:
	.string	" ===\n"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"  Each iteration generates N integers and collects them into a vector.\n\n"
	.section	.rodata.str1.1
.LC17:
	.string	"  "
.LC18:
	.string	" "
.LC19:
	.string	" ns/iter\n"
.LC23:
	.string	"\nNotes:\n"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"  raw generator \342\211\210 Emit<int>: both suspend/resume per value.\n"
	.align 8
.LC25:
	.string	"  Emit<int> adds handler-stack walk + resume per yield (zero extra alloc).\n"
	.align 8
.LC26:
	.string	"  The gap vs callback = coroutine overhead.\n"
	.align 8
.LC27:
	.string	"  Emit<int> advantage: producer and consumer are fully decoupled;\n"
	.align 8
.LC28:
	.string	"  handlers are swappable without changing the producer.\n"
	.section	.text.unlikely
.LCOLDB41:
	.section	.text.startup,"ax",@progbits
.LHOTB41:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB7030:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7030
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$37, %edi	#,
# b4_generators.cpp:74: int main() {
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
	subq	$376, %rsp	#,
	.cfi_def_cfa_offset 432
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%fs:40, %rbp	# MEM[(<address-space-1> long unsigned int *)40B], tmp1301
	movq	%rbp, 360(%rsp)	# tmp1301, D.221444
	leaq	256(%rsp), %rbp	#, tmp1301
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 260(%rsp)	#, MEM[(char_type &)&D.164704 + 20]
	movl	$808464434, 256(%rsp)	#, MEM <vector(4) char> [(char *)&D.164704 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$4, 248(%rsp)	#, D.164704._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rbp, 240(%rsp)	# tmp1301, MEM[(struct _Alloc_hider *)&D.164704]._M_p
.LEHB10:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE10:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC30(%rip), %xmm0	#, tmp1338
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 36(%rax)	#, MEM[(char_type &)_542 + 36]
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbx	#, _542
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	160(%rsp), %r12	#, tmp1298
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	$808464437, 32(%rax)	#, MEM <unsigned int> [(char * {ref-all})_542 + 32B]
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$73, %edi	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp1338, MEM <char[1:32]> [(void *)_542]
	movdqa	.LC31(%rip), %xmm0	#, tmp1339
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 176(%rsp)	# _542, D.164696._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, 16(%rax)	# tmp1339, MEM <char[1:32]> [(void *)_542]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$36, %eax	#, tmp650
	movq	%rax, %xmm0	# tmp650, tmp650
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r12, 144(%rsp)	# tmp1298, MEM[(struct basic_string *)&D.164695]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 152(%rsp)	#, MEM[(struct basic_string *)&D.164695]._M_string_length
	punpcklqdq	%xmm0, %xmm0	# tmp649
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 160(%rsp)	#, MEM <unsigned long> [(void *)&D.164695 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movups	%xmm0, 184(%rsp)	# tmp649, MEM <vector(2) long unsigned int> [(void *)&D.164696 + 8B]
.LEHB11:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE11:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqu	(%rbx), %xmm0	# MEM <char[1:36]> [(void *)_542], MEM <char[1:36]> [(void *)_542]
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r14	#, _600
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%rbx, %rdi	# _542,
	movl	$37, %esi	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	224(%rsp), %r13	#, tmp1300
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# MEM <char[1:36]> [(void *)_542], MEM <char[1:36]> [(void *)_600]
	movdqu	16(%rbx), %xmm0	# MEM <char[1:36]> [(void *)_542], MEM <char[1:36]> [(void *)_542]
	movups	%xmm0, 16(%rax)	# MEM <char[1:36]> [(void *)_542], MEM <char[1:36]> [(void *)_600]
	movl	32(%rbx), %eax	# MEM <char[1:36]> [(void *)_542], MEM <char[1:36]> [(void *)_542]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	192(%rsp), %rbx	#, tmp1299
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	$1701978156, 36(%r14)	#, MEM <char[1:7]> [(void *)_579]
	movl	%eax, 32(%r14)	# MEM <char[1:36]> [(void *)_542], MEM <char[1:36]> [(void *)_600]
	movl	$1030975589, 39(%r14)	#, MEM <char[1:7]> [(void *)_579]
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movl	$41, %ecx	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	256(%rsp), %eax	# MEM <unsigned int> [(char * {ref-all})&D.164704 + 16B], MEM <unsigned int> [(char * {ref-all})&D.164704 + 16B]
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movw	%cx, 47(%r14)	#, MEM <unsigned short> [(char_type &)_600 + 47]
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC13(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movl	%eax, 43(%r14)	# MEM <unsigned int> [(char * {ref-all})&D.164704 + 16B], MEM <unsigned int> [(char * {ref-all})_600 + 43B]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	288(%rsp), %rax	#, tmp1469
	movq	%rbx, 176(%rsp)	# tmp1299, D.164696._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 184(%rsp)	#, D.164696._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 192(%rsp)	#, MEM <unsigned long> [(void *)&D.164696 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r13, 208(%rsp)	# tmp1300, D.164703._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 216(%rsp)	#, MEM <unsigned long> [(void *)&D.164703 + 8B]
	movq	$0, 224(%rsp)	#, MEM <unsigned long> [(void *)&D.164703 + 16B]
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%r14, 304(%rsp)	# _600, MEM[(struct basic_string *)_2515]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$72, 320(%rsp)	#, MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$48, 312(%rsp)	#, MEM[(struct basic_string *)_2515]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1469, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$0, 288(%rsp)	#, MEM <unsigned long> [(void *)_2704 + 16B]
.LEHB12:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/string_view:780:     { return __ostream_insert(__os, __str.data(), __str.size()); }
	movl	$48, %edx	#,
	movq	%r14, %rsi	# _600,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC14(%rip), %rsi	#,
	movq	%rax, %rdi	# _777,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE12:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(struct basic_string *)_2515]._M_dataplus._M_p, _109
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1470
	cmpq	%rax, %rdi	# tmp1470, _109
	je	.L229	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1471
	leaq	1(%rax), %rsi	#, _112
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L229:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _105
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1472
	cmpq	%rax, %rdi	# tmp1472, _105
	je	.L230	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1473
	leaq	1(%rax), %rsi	#, _108
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L230:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	208(%rsp), %rdi	# D.164703._M_dataplus._M_p, _101
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r13, %rdi	# tmp1300, _101
	je	.L231	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	224(%rsp), %rax	# D.164703.D.58684._M_allocated_capacity, tmp1474
	leaq	1(%rax), %rsi	#, _104
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L231:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	176(%rsp), %rdi	# D.164696._M_dataplus._M_p, _97
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp1299, _97
	je	.L232	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	192(%rsp), %rax	# D.164696.D.58684._M_allocated_capacity, tmp1475
	leaq	1(%rax), %rsi	#, _100
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L232:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	144(%rsp), %rdi	# D.164695._M_dataplus._M_p, _93
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp1298, _93
	je	.L233	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	160(%rsp), %rax	# D.164695.D.58684._M_allocated_capacity, tmp1476
	leaq	1(%rax), %rsi	#, _96
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L233:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	240(%rsp), %rdi	# D.164704._M_dataplus._M_p, _42
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp1301, _42
	je	.L234	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	256(%rsp), %rax	# D.164704.D.58684._M_allocated_capacity, tmp1477
	leaq	1(%rax), %rsi	#, _92
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L234:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$72, %edx	#,
	leaq	.LC15(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
# b4_generators.cpp:85:     long long sink = 0;
	xorl	%r13d, %r13d	# sink
.LEHB13:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$22, %edi	#,
	call	_Znwm@PLT	#
.LEHE13:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC32(%rip), %xmm0	#, tmp1340
	movabsq	$8101816764853871457, %rcx	#, tmp1478
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$21, 288(%rsp)	#, MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1350, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp1340, MEM <char[1:21]> [(void *)_818]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 21(%rax)	#, MEM[(char_type &)_818 + 21]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%rcx, 13(%rax)	# tmp1478, MEM <char[1:21]> [(void *)_818]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$21, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
	movq	$3, 32(%rsp)	#, %sfp
	.p2align 4
	.p2align 3
.L243:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$20000, %edi	#,
.LEHB14:
	call	_Znwm@PLT	#
.LEHE14:
	movq	%rax, %rcx	# __new_finish, __new_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	20000(%rax), %rbp	#, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rax, %r12	# __new_finish, v$D164688$_M_impl$D163987$_M_start
# b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	xorl	%r15d, %r15d	# i
	jmp	.L241	#
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L610:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r15d, (%rcx)	# i, *v$D164688$_M_impl$D163987$_M_finish_60
# b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	addl	$1, %r15d	#, i
# /usr/include/c++/16.1.1/bits/stl_vector.h:1413: 	    ++this->_M_impl._M_finish;
	addq	$4, %rcx	#, __new_finish
# b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	cmpl	$5000, %r15d	#, i
	je	.L609	#,
.L241:
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rbp, %rcx	# v$D164688$_M_impl$D163987$_M_end_of_storage, __new_finish
	jne	.L610	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rdi	#, tmp1480
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%r12, %rcx	# v$D164688$_M_impl$D163987$_M_start, _871
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rcx, %rax	# _871, __dif_872
	sarq	$2, %rax	#, __dif_872
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rdi, %rax	# tmp1480, __dif_872
	je	.L584	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rax, %rax	# __dif_872
	movl	$1, %ebx	#, tmp1436
	movq	%rcx, 8(%rsp)	# _871, %sfp
	cmovne	%rax, %rbx	# __dif_872,, _874
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rax, %rbx	# __dif_872, __len_875
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$2305843009213693951, %rax	#, tmp1437
	cmpq	%rax, %rbx	# tmp1437, __len_875
	cmova	%rax, %rbx	# __len_875,, tmp1437, __len_875
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$2, %rbx	#, _892
	movq	%rbx, %rdi	# _892,
.LEHB15:
	call	_Znwm@PLT	#
.LEHE15:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movq	8(%rsp), %rcx	# %sfp, _871
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r14	#, _893
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r15d, (%rax,%rcx)	# i, *_880
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%rcx, %rcx	# _871
	je	.L239	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%rcx, %rdx	# _871,
	movq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_start,
	movq	%rax, %rdi	# _893,
	call	memcpy@PLT	#
	movq	8(%rsp), %rcx	# %sfp, _871
.L239:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	4(%r14,%rcx), %rcx	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r12, %r12	# v$D164688$_M_impl$D163987$_M_start
	je	.L240	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%rbp, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# v$D164688$_M_impl$D163987$_M_start,
	movq	%rcx, 8(%rsp)	# __new_finish, %sfp
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	movq	8(%rsp), %rcx	# %sfp, __new_finish
.L240:
# b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	addl	$1, %r15d	#, i
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	(%r14,%rbx), %rbp	#, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r14, %r12	# _893, v$D164688$_M_impl$D163987$_M_start
# b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	cmpl	$5000, %r15d	#, i
	jne	.L241	#,
	.p2align 4
	.p2align 3
.L609:
# b4_generators.cpp:90:       sink += v.back();
	movslq	-4(%rcx), %rax	# MEM[(value_type &)v$D164688$_M_impl$D163987$_M_finish_59 + 18446744073709551612], _834
	addq	%rax, %r13	# _834, sink
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%r12, %r12	# v$D164688$_M_impl$D163987$_M_start
	je	.L242	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%rbp, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# v$D164688$_M_impl$D163987$_M_start,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	subq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L242:
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, 32(%rsp)	#, %sfp
	jne	.L243	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	$2000, 32(%rsp)	#, %sfp
	movq	%rax, 16(%rsp)	#, %sfp
	.p2align 4
	.p2align 3
.L256:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$20000, %edi	#,
.LEHB16:
	call	_Znwm@PLT	#
.LEHE16:
	movq	%rax, %rcx	# __new_finish, __new_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	20000(%rax), %rbp	#, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rax, %r12	# __new_finish, v$D164688$_M_impl$D163987$_M_start
# b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	xorl	%r15d, %r15d	# i
	jmp	.L254	#
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L612:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r15d, (%rcx)	# i, *v$D164688$_M_impl$D163987$_M_finish_24
# b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	addl	$1, %r15d	#, i
# /usr/include/c++/16.1.1/bits/stl_vector.h:1413: 	    ++this->_M_impl._M_finish;
	addq	$4, %rcx	#, __new_finish
# b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	cmpl	$5000, %r15d	#, i
	je	.L611	#,
.L254:
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rbp, %rcx	# v$D164688$_M_impl$D163987$_M_end_of_storage, __new_finish
	jne	.L612	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rdi	#, tmp1486
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%r12, %rcx	# v$D164688$_M_impl$D163987$_M_start, _940
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rcx, %rax	# _940, __dif_941
	sarq	$2, %rax	#, __dif_941
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rdi, %rax	# tmp1486, __dif_941
	je	.L585	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rax, %rax	# __dif_941
	movl	$1, %ebx	#, tmp1434
	movq	%rcx, 8(%rsp)	# _940, %sfp
	cmovne	%rax, %rbx	# __dif_941,, _943
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rax, %rbx	# __dif_941, __len_944
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$2305843009213693951, %rax	#, tmp1435
	cmpq	%rax, %rbx	# tmp1435, __len_944
	cmova	%rax, %rbx	# __len_944,, tmp1435, __len_944
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$2, %rbx	#, _961
	movq	%rbx, %rdi	# _961,
.LEHB17:
	call	_Znwm@PLT	#
.LEHE17:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movq	8(%rsp), %rcx	# %sfp, _940
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r14	#, _962
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r15d, (%rax,%rcx)	# i, *_949
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%rcx, %rcx	# _940
	je	.L252	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%rcx, %rdx	# _940,
	movq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_start,
	movq	%rax, %rdi	# _962,
	call	memcpy@PLT	#
	movq	8(%rsp), %rcx	# %sfp, _940
.L252:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	4(%r14,%rcx), %rcx	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r12, %r12	# v$D164688$_M_impl$D163987$_M_start
	je	.L253	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%rbp, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# v$D164688$_M_impl$D163987$_M_start,
	movq	%rcx, 8(%rsp)	# __new_finish, %sfp
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	movq	8(%rsp), %rcx	# %sfp, __new_finish
.L253:
# b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	addl	$1, %r15d	#, i
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	(%r14,%rbx), %rbp	#, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r14, %r12	# _962, v$D164688$_M_impl$D163987$_M_start
# b4_generators.cpp:89:       for (int i = 0; i < N; ++i) v.push_back(i);
	cmpl	$5000, %r15d	#, i
	jne	.L254	#,
	.p2align 4
	.p2align 3
.L611:
# b4_generators.cpp:90:       sink += v.back();
	movslq	-4(%rcx), %rax	# MEM[(value_type &)v$D164688$_M_impl$D163987$_M_finish_2032 + 18446744073709551612], _903
	addq	%rax, %r13	# _903, sink
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%r12, %r12	# v$D164688$_M_impl$D163987$_M_start
	je	.L255	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%rbp, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# v$D164688$_M_impl$D163987$_M_start,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	subq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L255:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, 32(%rsp)	#, %sfp
	jne	.L256	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	320(%rsp), %rcx	#, tmp1491
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rdi	#, tmp1492
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	280(%rsp), %rdx	# MEM[(const struct basic_string *)_2704]._M_string_length, pretmp_424
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 304(%rsp)	# tmp1491, MEM[(struct _Alloc_hider *)_2515]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rcx	# MEM[(const struct basic_string *)_2704]._M_dataplus._M_p, _964
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp1492, _964
	je	.L613	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 304(%rsp)	# _964, MEM[(struct basic_string *)_2515]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	288(%rsp), %rcx	# MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity
	movq	%rcx, 320(%rsp)	# MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity
.L261:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	16(%rsp), %rax	# %sfp, _787
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _788
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 312(%rsp)	# pretmp_424, MEM[(struct basic_string *)_2515]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC17(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _787, _788
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	288(%rsp), %rax	#, tmp1496
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 344(%rsp)	# _788, MEM[(struct BenchResult *)_2515].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC16(%rip), %xmm0	#, _788
	movq	%xmm0, %rbp	# _788, _973
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1496, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 288(%rsp)	#, MEM[(char_type &)_2704 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
# bench.hpp:44: }
	movq	$2000, 336(%rsp)	#, MEM[(struct BenchResult *)_2515].iters
.LEHB18:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _974
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp1498
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	304(%rsp), %rsi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp1498,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_974 + -24B], MEM[(long int *)_974 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _977->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_974 + -24B], _980
	addq	%rcx, %rdx	# tmp1498, _980
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _980->_M_flags, _994
	andb	$79, %al	#, _994
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp768
	movl	%eax, 24(%rdx)	# tmp768, MEM[(_Ios_Fmtflags &)_980 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	312(%rsp), %rdx	# MEM[(const struct basic_string *)_2515]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rax, %rdi	# _984,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbx	#, _984
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# _984->_vptr.basic_ostream, _985
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbp, %xmm0	# _973,
	movq	%rbx, %rdi	# _984,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_985 + -24B], MEM[(long int *)_985 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _988->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_985 + -24B], _991
	addq	%rbx, %rdx	# _984, _991
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _991->_M_flags, _2977
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _991->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _2977
	orb	$-124, %al	#, tmp777
	movl	%eax, 24(%rdx)	# tmp777, MEM[(_Ios_Fmtflags &)_991 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rax, %rdi	# _992,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE18:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p, _117
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1503
	cmpq	%rax, %rdi	# tmp1503, _117
	je	.L262	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1504
	leaq	1(%rax), %rsi	#, _120
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L262:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _113
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1505
	cmpq	%rax, %rdi	# tmp1505, _113
	je	.L263	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1506
	leaq	1(%rax), %rsi	#, _116
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L263:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$28, %edi	#,
.LEHB19:
	call	_Znwm@PLT	#
.LEHE19:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC33(%rip), %xmm0	#, tmp1341
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$27, 288(%rsp)	#, MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1361, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp1341, MEM <char[1:27]> [(void *)_1040]
	movdqa	.LC34(%rip), %xmm0	#, tmp1342
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 27(%rax)	#, MEM[(char_type &)_1040 + 27]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$27, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
	movq	$3, 16(%rsp)	#, %sfp
# b4_generators.cpp:97:     long long sink = 0;
	movq	$0, 8(%rsp)	#, %sfp
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, 11(%rax)	# tmp1342, MEM <char[1:27]> [(void *)_1040]
	.p2align 4
	.p2align 3
.L276:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$20000, %edi	#,
.LEHB20:
	call	_Znwm@PLT	#
.LEHE20:
	movl	$20000, %edi	#,
	movq	%rax, %rbx	# __new_finish, __new_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	20000(%rax), %r12	#, v$D164688$_M_impl$D163987$_M_end_of_storage
.LEHB21:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE21:
	movq	%rax, 32(%rsp)	#, %sfp
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rbx, %r13	# __new_finish, v$D164688$_M_impl$D163987$_M_start
# b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	xorl	%r15d, %r15d	# i
	jmp	.L270	#
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L615:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r15d, (%rbx)	# i, *v$D164688$_M_impl$D163987$_M_finish_2036
# b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	addl	$1, %r15d	#, i
# /usr/include/c++/16.1.1/bits/stl_vector.h:1413: 	    ++this->_M_impl._M_finish;
	addq	$4, %rbx	#, __new_finish
# b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	cmpl	$5000, %r15d	#, i
	je	.L614	#,
.L270:
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%r12, %rbx	# v$D164688$_M_impl$D163987$_M_end_of_storage, __new_finish
	jne	.L615	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rcx	#, tmp1508
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%r13, %rbx	# v$D164688$_M_impl$D163987$_M_start, _1131
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rbx, %rax	# _1131, __dif_1132
	sarq	$2, %rax	#, __dif_1132
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rcx, %rax	# tmp1508, __dif_1132
	je	.L586	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rax, %rax	# __dif_1132
	movl	$1, %ebp	#, tmp1432
	cmovne	%rax, %rbp	# __dif_1132,, _1134
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rax, %rbp	# __dif_1132, __len_1135
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$2305843009213693951, %rax	#, tmp1433
	cmpq	%rax, %rbp	# tmp1433, __len_1135
	cmova	%rax, %rbp	# __len_1135,, tmp1433, __len_1135
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$2, %rbp	#, _1152
	movq	%rbp, %rdi	# _1152,
.LEHB22:
	call	_Znwm@PLT	#
.LEHE22:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r15d, (%rax,%rbx)	# i, *_1140
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r14	#, _1153
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%rbx, %rbx	# _1131
	je	.L268	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%rbx, %rdx	# _1131,
	movq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_start,
	movq	%rax, %rdi	# _1153,
	call	memcpy@PLT	#
.L268:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	4(%r14,%rbx), %rbx	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r13, %r13	# v$D164688$_M_impl$D163987$_M_start
	je	.L269	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r13, %rdi	# v$D164688$_M_impl$D163987$_M_start,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L269:
# b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	addl	$1, %r15d	#, i
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	(%r14,%rbp), %r12	#, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r14, %r13	# _1153, v$D164688$_M_impl$D163987$_M_start
# b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	cmpl	$5000, %r15d	#, i
	jne	.L270	#,
	.p2align 4
	.p2align 3
.L614:
# b4_generators.cpp:102:       sink += v.back(); // keep reference alive
	movq	32(%rsp), %rdi	# %sfp, _1123
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movl	$20000, %esi	#,
# b4_generators.cpp:102:       sink += v.back(); // keep reference alive
	movslq	-4(%rdi), %rax	# MEM[(value_type &)_1123 + 18446744073709551612], _1092
	addq	%rax, 8(%rsp)	# _1092, %sfp
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%r13, %r13	# v$D164688$_M_impl$D163987$_M_start
	je	.L272	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r13, %rdi	# v$D164688$_M_impl$D163987$_M_start,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	subq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L272:
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, 16(%rsp)	#, %sfp
	jne	.L276	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	$2000, 16(%rsp)	#, %sfp
	movq	%rax, 40(%rsp)	#, %sfp
	.p2align 4
	.p2align 3
.L291:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$20000, %edi	#,
.LEHB23:
	call	_Znwm@PLT	#
.LEHE23:
	movl	$20000, %edi	#,
	movq	%rax, %rbx	# __new_finish, __new_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	20000(%rax), %r12	#, v$D164688$_M_impl$D163987$_M_end_of_storage
.LEHB24:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE24:
	movq	%rax, 32(%rsp)	#, %sfp
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rbx, %r13	# __new_finish, v$D164688$_M_impl$D163987$_M_start
# b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	xorl	%r15d, %r15d	# i
	jmp	.L285	#
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L617:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r15d, (%rbx)	# i, *v$D164688$_M_impl$D163987$_M_finish_2005
# b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	addl	$1, %r15d	#, i
# /usr/include/c++/16.1.1/bits/stl_vector.h:1413: 	    ++this->_M_impl._M_finish;
	addq	$4, %rbx	#, __new_finish
# b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	cmpl	$5000, %r15d	#, i
	je	.L616	#,
.L285:
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%r12, %rbx	# v$D164688$_M_impl$D163987$_M_end_of_storage, __new_finish
	jne	.L617	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rcx	#, tmp1516
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%r13, %rbx	# v$D164688$_M_impl$D163987$_M_start, _1238
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rbx, %rax	# _1238, __dif_1239
	sarq	$2, %rax	#, __dif_1239
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rcx, %rax	# tmp1516, __dif_1239
	je	.L587	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rax, %rax	# __dif_1239
	movl	$1, %ebp	#, tmp1430
	cmovne	%rax, %rbp	# __dif_1239,, _1241
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rax, %rbp	# __dif_1239, __len_1242
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$2305843009213693951, %rax	#, tmp1431
	cmpq	%rax, %rbp	# tmp1431, __len_1242
	cmova	%rax, %rbp	# __len_1242,, tmp1431, __len_1242
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$2, %rbp	#, _1259
	movq	%rbp, %rdi	# _1259,
.LEHB25:
	call	_Znwm@PLT	#
.LEHE25:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r15d, (%rax,%rbx)	# i, *_1247
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r14	#, _1260
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%rbx, %rbx	# _1238
	je	.L283	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%rbx, %rdx	# _1238,
	movq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_start,
	movq	%rax, %rdi	# _1260,
	call	memcpy@PLT	#
.L283:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	4(%r14,%rbx), %rbx	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r13, %r13	# v$D164688$_M_impl$D163987$_M_start
	je	.L284	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r13, %rdi	# v$D164688$_M_impl$D163987$_M_start,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L284:
# b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	addl	$1, %r15d	#, i
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	(%r14,%rbp), %r12	#, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r14, %r13	# _1260, v$D164688$_M_impl$D163987$_M_start
# b4_generators.cpp:101:       for (int i = 0; i < N; ++i) emit_fn(i);
	cmpl	$5000, %r15d	#, i
	jne	.L285	#,
	.p2align 4
	.p2align 3
.L616:
# b4_generators.cpp:102:       sink += v.back(); // keep reference alive
	movq	32(%rsp), %rdi	# %sfp, _1230
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movl	$20000, %esi	#,
# b4_generators.cpp:102:       sink += v.back(); // keep reference alive
	movslq	-4(%rdi), %rax	# MEM[(value_type &)_1230 + 18446744073709551612], _1199
	addq	%rax, 8(%rsp)	# _1199, %sfp
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%r13, %r13	# v$D164688$_M_impl$D163987$_M_start
	je	.L287	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r13, %rdi	# v$D164688$_M_impl$D163987$_M_start,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	subq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L287:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, 16(%rsp)	#, %sfp
	jne	.L291	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	320(%rsp), %rcx	#, tmp1523
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rdi	#, tmp1524
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	280(%rsp), %rdx	# MEM[(const struct basic_string *)_2704]._M_string_length, pretmp_423
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 304(%rsp)	# tmp1523, MEM[(struct _Alloc_hider *)_2515]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rcx	# MEM[(const struct basic_string *)_2704]._M_dataplus._M_p, _1262
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp1524, _1262
	je	.L618	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 304(%rsp)	# _1262, MEM[(struct basic_string *)_2515]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	288(%rsp), %rcx	# MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity
	movq	%rcx, 320(%rsp)	# MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity
.L294:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	40(%rsp), %rax	# %sfp, _1017
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _1018
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 312(%rsp)	# pretmp_423, MEM[(struct basic_string *)_2515]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC17(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _1017, _1018
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	288(%rsp), %rax	#, tmp1528
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 344(%rsp)	# _1018, MEM[(struct BenchResult *)_2515].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC16(%rip), %xmm0	#, _1018
	movq	%xmm0, %rbp	# _1018, _1271
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1528, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 288(%rsp)	#, MEM[(char_type &)_2704 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
# bench.hpp:44: }
	movq	$2000, 336(%rsp)	#, MEM[(struct BenchResult *)_2515].iters
.LEHB26:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _1272
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp1530
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	304(%rsp), %rsi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp1530,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1272 + -24B], MEM[(long int *)_1272 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _1275->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1272 + -24B], _1278
	addq	%rcx, %rdx	# tmp1530, _1278
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1278->_M_flags, _1292
	andb	$79, %al	#, _1292
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp865
	movl	%eax, 24(%rdx)	# tmp865, MEM[(_Ios_Fmtflags &)_1278 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	312(%rsp), %rdx	# MEM[(const struct basic_string *)_2515]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rax, %rdi	# _1282,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbx	#, _1282
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# _1282->_vptr.basic_ostream, _1283
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbp, %xmm0	# _1271,
	movq	%rbx, %rdi	# _1282,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1283 + -24B], MEM[(long int *)_1283 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _1286->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1283 + -24B], _1289
	addq	%rbx, %rdx	# _1282, _1289
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1289->_M_flags, _2931
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _1289->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _2931
	orb	$-124, %al	#, tmp874
	movl	%eax, 24(%rdx)	# tmp874, MEM[(_Ios_Fmtflags &)_1289 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rax, %rdi	# _1290,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE26:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p, _126
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1535
	cmpq	%rax, %rdi	# tmp1535, _126
	je	.L295	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1536
	leaq	1(%rax), %rsi	#, _129
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L295:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _122
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1537
	cmpq	%rax, %rdi	# tmp1537, _122
	je	.L296	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1538
	leaq	1(%rax), %rsi	#, _125
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L296:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$23, %edi	#,
	leaq	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E9_M_invokeERKSt9_Any_dataOi(%rip), %r14	#, tmp1326
.LEHB27:
	call	_Znwm@PLT	#
.LEHE27:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC35(%rip), %xmm0	#, tmp1343
	movq	%r14, %xmm7	# tmp1326, tmp1326
	movq	.LC39(%rip), %xmm6	#, _2062
	movabsq	$7738135660106375523, %rcx	#, tmp1539
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1374, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp1343, MEM <char[1:22]> [(void *)_1338]
	punpcklqdq	%xmm7, %xmm6	# tmp1326, _2062
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$22, 288(%rsp)	#, MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%rcx, 14(%rax)	# tmp1539, MEM <char[1:22]> [(void *)_1338]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 22(%rax)	#, MEM[(char_type &)_1338 + 22]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$22, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
	movq	$3, 64(%rsp)	#, %sfp
# b4_generators.cpp:115:     long long sink = 0;
	movq	$0, 40(%rsp)	#, %sfp
	movaps	%xmm6, 48(%rsp)	# _2062, %sfp
	.p2align 4
	.p2align 3
.L312:
# b4_generators.cpp:117:       std::vector<int> v;
	pxor	%xmm0, %xmm0	# tmp886
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$20000, %edi	#,
# b4_generators.cpp:117:       std::vector<int> v;
	movq	$0, 128(%rsp)	#, MEM[(struct vector *)_2490]
	movaps	%xmm0, 112(%rsp)	# tmp886, MEM[(struct vector *)_2490]
.LEHB28:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE28:
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rax, 112(%rsp)	# tmp1375, MEM[(struct vector *)_2490].D.164688._M_impl.D.163987._M_start
# b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	xorl	%ebx, %ebx	# i
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	movdqa	48(%rsp), %xmm1	# %sfp, _2062
	leaq	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation(%rip), %r13	#, prephitmp_469
# /usr/include/c++/16.1.1/bits/vector.tcc:100: 	  this->_M_impl._M_finish = __tmp + __old_size;
	movq	%rax, 120(%rsp)	# tmp1375, MEM[(struct vector *)_2490].D.164688._M_impl.D.163987._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	addq	$20000, %rax	#, tmp891
	movq	%rax, 128(%rsp)	# tmp891, MEM[(struct vector *)_2490].D.164688._M_impl.D.163987._M_end_of_storage
# /usr/include/c++/16.1.1/bits/std_function.h:157: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	leaq	112(%rsp), %rax	#, tmp1542
# /usr/include/c++/16.1.1/bits/std_function.h:427: 	: _Function_base()
	movq	$0, 312(%rsp)	#, MEM <char[8]> [(struct _Function_base *)_2515 + 8B]
# /usr/include/c++/16.1.1/bits/std_function.h:157: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	movq	%rax, 304(%rsp)	# tmp1542, MEM[(struct ._anon_201 *)_2515]
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	movaps	%xmm1, 320(%rsp)	# _2062, MEM <vector(2) long unsigned int> [(void *)_2515 + 16B]
	.p2align 4
	.p2align 3
.L307:
	movl	%ebx, 104(%rsp)	# i, MEM[(int *)_2729]
# /usr/include/c++/16.1.1/bits/std_function.h:579: 	if (_M_empty())
	testq	%r13, %r13	# prephitmp_469
	je	.L588	#,
	movq	328(%rsp), %rax	# MEM[(struct function *)_2515]._M_invoker, _1430
	cmpq	%r14, %rax	# tmp1326, _1430
	jne	.L299	#,
.L619:
	movq	304(%rsp), %r15	# MEM[(struct vector & *)_2515], _1396
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	8(%r15), %rdx	# _1396->D.164688._M_impl.D.163987._M_finish, _1398
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	16(%r15), %rsi	# _1396->D.164688._M_impl.D.163987._M_end_of_storage, _1399
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rsi, %rdx	# _1399, _1398
	je	.L300	#,
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%ebx, (%rdx)	# i, *_1398
# /usr/include/c++/16.1.1/bits/stl_vector.h:1413: 	    ++this->_M_impl._M_finish;
	addq	$4, %rdx	#, tmp895
# b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	addl	$1, %ebx	#, i
# /usr/include/c++/16.1.1/bits/stl_vector.h:1413: 	    ++this->_M_impl._M_finish;
	movq	%rdx, 8(%r15)	# tmp895, _1396->D.164688._M_impl.D.163987._M_finish
# b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	cmpl	$5000, %ebx	#, i
	je	.L301	#,
	movl	%ebx, 104(%rsp)	# i, MEM[(int *)_2729]
	cmpq	%r14, %rax	# tmp1326, _1430
	je	.L619	#,
.L299:
# /usr/include/c++/16.1.1/bits/std_function.h:581: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	leaq	104(%rsp), %rsi	#, tmp911
	leaq	304(%rsp), %rdi	#, tmp912
.LEHB29:
	call	*%rax	# _1430
.LEHE29:
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	320(%rsp), %r13	# MEM[(struct _Function_base *)_2515]._M_manager, prephitmp_469
.L306:
# b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	addl	$1, %ebx	#, i
# b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	cmpl	$5000, %ebx	#, i
	jne	.L307	#,
.L301:
# b4_generators.cpp:121:       sink += v.back();
	movq	120(%rsp), %rax	# MEM[(int * const &)_2490 + 8], MEM[(int * const &)_2490 + 8]
	movslq	-4(%rax), %rax	# MEM[(value_type &)_1349 + 18446744073709551612], _1353
	addq	%rax, 40(%rsp)	# _1353, %sfp
	testq	%r13, %r13	# prephitmp_469
	je	.L308	#,
	leaq	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation(%rip), %rax	#, tmp1547
	cmpq	%rax, %r13	# tmp1547, prephitmp_469
	jne	.L620	#,
.L308:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	112(%rsp), %rdi	# MEM[(struct _Vector_base *)_2490]._M_impl.D.163987._M_start, _1357
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _1357
	je	.L309	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	128(%rsp), %rsi	# MEM[(struct _Vector_base *)_2490]._M_impl.D.163987._M_end_of_storage, _1358
	subq	%rdi, %rsi	# _1357, _1358
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, 64(%rsp)	#, %sfp
	jne	.L312	#,
.L311:
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# b4_generators.cpp:117:       std::vector<int> v;
	pxor	%xmm6, %xmm6	# tmp935
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	movq	$2000, 80(%rsp)	#, %sfp
	movq	%rax, 88(%rsp)	#, %sfp
# b4_generators.cpp:117:       std::vector<int> v;
	movaps	%xmm6, 64(%rsp)	# tmp935, %sfp
	.p2align 4
	.p2align 3
.L333:
	movdqa	64(%rsp), %xmm2	# %sfp, tmp935
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$20000, %edi	#,
# b4_generators.cpp:117:       std::vector<int> v;
	movq	$0, 128(%rsp)	#, MEM[(struct vector *)_2490]
	movaps	%xmm2, 112(%rsp)	# tmp935, MEM[(struct vector *)_2490]
.LEHB30:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE30:
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rax, 112(%rsp)	# tmp1380, MEM[(struct vector *)_2490].D.164688._M_impl.D.163987._M_start
# b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	xorl	%ebx, %ebx	# i
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	movdqa	48(%rsp), %xmm3	# %sfp, _2062
	leaq	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation(%rip), %r13	#, prephitmp_1926
# /usr/include/c++/16.1.1/bits/vector.tcc:100: 	  this->_M_impl._M_finish = __tmp + __old_size;
	movq	%rax, 120(%rsp)	# tmp1380, MEM[(struct vector *)_2490].D.164688._M_impl.D.163987._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	addq	$20000, %rax	#, tmp937
	movq	%rax, 128(%rsp)	# tmp937, MEM[(struct vector *)_2490].D.164688._M_impl.D.163987._M_end_of_storage
# /usr/include/c++/16.1.1/bits/std_function.h:157: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	leaq	112(%rsp), %rax	#, tmp1558
# /usr/include/c++/16.1.1/bits/std_function.h:427: 	: _Function_base()
	movq	$0, 312(%rsp)	#, MEM <char[8]> [(struct _Function_base *)_2515 + 8B]
# /usr/include/c++/16.1.1/bits/std_function.h:157: 	    ::new (__dest._M_access()) _Functor(std::forward<_Fn>(__f));
	movq	%rax, 304(%rsp)	# tmp1558, MEM[(struct ._anon_201 *)_2515]
# /usr/include/c++/16.1.1/bits/std_function.h:442: 	      _M_manager = &_My_handler::_M_manager;
	movaps	%xmm3, 320(%rsp)	# _2062, MEM <vector(2) long unsigned int> [(void *)_2515 + 16B]
	.p2align 4
	.p2align 3
.L328:
	movl	%ebx, 104(%rsp)	# i, MEM[(int *)_2729]
# /usr/include/c++/16.1.1/bits/std_function.h:579: 	if (_M_empty())
	testq	%r13, %r13	# prephitmp_1926
	je	.L590	#,
	movq	328(%rsp), %rax	# MEM[(struct function *)_2515]._M_invoker, _1430
	cmpq	%r14, %rax	# tmp1326, _1430
	jne	.L320	#,
.L621:
	movq	304(%rsp), %r15	# MEM[(struct vector & *)_2515], _1479
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	8(%r15), %rdx	# _1479->D.164688._M_impl.D.163987._M_finish, _1481
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	16(%r15), %rsi	# _1479->D.164688._M_impl.D.163987._M_end_of_storage, prephitmp_384
# /usr/include/c++/16.1.1/bits/stl_vector.h:1408: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rsi, %rdx	# prephitmp_384, _1481
	je	.L321	#,
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%ebx, (%rdx)	# i, *_1481
# /usr/include/c++/16.1.1/bits/stl_vector.h:1413: 	    ++this->_M_impl._M_finish;
	addq	$4, %rdx	#, tmp941
# b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	addl	$1, %ebx	#, i
# /usr/include/c++/16.1.1/bits/stl_vector.h:1413: 	    ++this->_M_impl._M_finish;
	movq	%rdx, 8(%r15)	# tmp941, _1479->D.164688._M_impl.D.163987._M_finish
# b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	cmpl	$5000, %ebx	#, i
	je	.L322	#,
	movl	%ebx, 104(%rsp)	# i, MEM[(int *)_2729]
	cmpq	%r14, %rax	# tmp1326, _1430
	je	.L621	#,
.L320:
# /usr/include/c++/16.1.1/bits/std_function.h:581: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	leaq	104(%rsp), %rsi	#, tmp957
	leaq	304(%rsp), %rdi	#, tmp958
.LEHB31:
	call	*%rax	# _1430
.LEHE31:
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	320(%rsp), %r13	# MEM[(struct _Function_base *)_2515]._M_manager, prephitmp_1926
.L327:
# b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	addl	$1, %ebx	#, i
# b4_generators.cpp:120:       for (int i = 0; i < N; ++i) emit(i);
	cmpl	$5000, %ebx	#, i
	jne	.L328	#,
.L322:
# b4_generators.cpp:121:       sink += v.back();
	movq	120(%rsp), %rax	# MEM[(int * const &)_2490 + 8], MEM[(int * const &)_2490 + 8]
	movslq	-4(%rax), %rax	# MEM[(value_type &)_1432 + 18446744073709551612], _1436
	addq	%rax, 40(%rsp)	# _1436, %sfp
	testq	%r13, %r13	# prephitmp_1926
	je	.L329	#,
	leaq	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation(%rip), %rax	#, tmp1563
	cmpq	%rax, %r13	# tmp1563, prephitmp_1926
	jne	.L622	#,
.L329:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	112(%rsp), %rdi	# MEM[(struct _Vector_base *)_2490]._M_impl.D.163987._M_start, _1440
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _1440
	je	.L330	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	128(%rsp), %rsi	# MEM[(struct _Vector_base *)_2490]._M_impl.D.163987._M_end_of_storage, _1441
	subq	%rdi, %rsi	# _1440, _1441
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, 80(%rsp)	#, %sfp
	jne	.L333	#,
.L332:
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	320(%rsp), %rcx	#, tmp1572
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rdi	#, tmp1573
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	280(%rsp), %rdx	# MEM[(const struct basic_string *)_2704]._M_string_length, pretmp_459
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 304(%rsp)	# tmp1572, MEM[(struct _Alloc_hider *)_2515]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rcx	# MEM[(const struct basic_string *)_2704]._M_dataplus._M_p, _1512
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp1573, _1512
	je	.L623	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 304(%rsp)	# _1512, MEM[(struct basic_string *)_2515]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	288(%rsp), %rcx	# MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity
	movq	%rcx, 320(%rsp)	# MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity
.L339:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	88(%rsp), %rax	# %sfp, _1315
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _1316
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 312(%rsp)	# pretmp_459, MEM[(struct basic_string *)_2515]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC17(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _1315, _1316
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	288(%rsp), %rax	#, tmp1577
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 344(%rsp)	# _1316, MEM[(struct BenchResult *)_2515].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC16(%rip), %xmm0	#, _1316
	movq	%xmm0, %rbp	# _1316, _1521
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1577, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 288(%rsp)	#, MEM[(char_type &)_2704 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
# bench.hpp:44: }
	movq	$2000, 336(%rsp)	#, MEM[(struct BenchResult *)_2515].iters
.LEHB32:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _1522
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp1579
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	304(%rsp), %rsi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp1579,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1522 + -24B], MEM[(long int *)_1522 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _1525->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1522 + -24B], _1528
	addq	%rcx, %rdx	# tmp1579, _1528
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1528->_M_flags, _1542
	andb	$79, %al	#, _1542
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp1006
	movl	%eax, 24(%rdx)	# tmp1006, MEM[(_Ios_Fmtflags &)_1528 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	312(%rsp), %rdx	# MEM[(const struct basic_string *)_2515]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rax, %rdi	# _1532,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbx	#, _1532
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# _1532->_vptr.basic_ostream, _1533
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbp, %xmm0	# _1521,
	movq	%rbx, %rdi	# _1532,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1533 + -24B], MEM[(long int *)_1533 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _1536->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1533 + -24B], _1539
	addq	%rbx, %rdx	# _1532, _1539
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1539->_M_flags, _2974
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _1539->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _2974
	orb	$-124, %al	#, tmp1015
	movl	%eax, 24(%rdx)	# tmp1015, MEM[(_Ios_Fmtflags &)_1539 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rax, %rdi	# _1540,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE32:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p, _135
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1584
	cmpq	%rax, %rdi	# tmp1584, _135
	je	.L340	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1585
	leaq	1(%rax), %rsi	#, _138
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L340:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _131
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1586
	cmpq	%rax, %rdi	# tmp1586, _131
	je	.L341	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1587
	leaq	1(%rax), %rsi	#, _134
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L341:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$35, %edi	#,
.LEHB33:
	call	_Znwm@PLT	#
.LEHE33:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC36(%rip), %xmm0	#, tmp1344
	movl	$10596, %edx	#,
	movq	.LC40(%rip), %xmm7	#, _1966
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1387, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp1344, MEM <char[1:34]> [(void *)_1588]
	movdqa	.LC37(%rip), %xmm0	#, tmp1345
	movw	%dx, 32(%rax)	#, MEM <char[1:34]> [(void *)_1588]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 34(%rax)	#, MEM[(char_type &)_1588 + 34]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, 16(%rax)	# tmp1345, MEM <char[1:34]> [(void *)_1588]
	leaq	_Z9raw_rangeP20_ZL9raw_rangei.Frame.destroy(%rip), %rax	#, tmp1317
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$3, 40(%rsp)	#, %sfp
	movq	%rax, %xmm6	# tmp1317, tmp1317
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$34, 288(%rsp)	#, MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity
	punpcklqdq	%xmm6, %xmm7	# tmp1317, _1966
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$34, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
# b4_generators.cpp:128:     long long sink = 0;
	movq	$0, 32(%rsp)	#, %sfp
	movaps	%xmm7, 16(%rsp)	# _1966, %sfp
	.p2align 4
	.p2align 3
.L358:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$20000, %edi	#,
.LEHB34:
	call	_Znwm@PLT	#
.LEHE34:
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	movl	$40, %edi	#,
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbp	# __new_finish, __new_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	20000(%rax), %r13	#, v$D164688$_M_impl$D163987$_M_end_of_storage
.LEHB35:
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	call	_Znwm@PLT	#
.LEHE35:
.L342:
.L343:
.L344:
.L345:
.L346:
.L347:
.L348:
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	movdqa	16(%rsp), %xmm4	# %sfp, _1966
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	movq	%rax, %rbx	# _1641, _1641
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rbp, %r14	# __new_finish, v$D164688$_M_impl$D163987$_M_start
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	movups	%xmm4, (%rax)	# _1966, MEM <vector(2) long unsigned int> [(void (*<T1a995>) (struct _ZL9raw_rangei.Frame *) *)_1641]
	movabsq	$21474836485000, %rax	#, tmp1591
	movq	%rax, 16(%rbx)	# tmp1591, MEM <vector(2) int> [(int *)_1641 + 16B]
	movl	$1, %eax	#, tmp1592
	movw	%ax, 28(%rbx)	# tmp1592, MEM <vector(2) unsigned char> [(bool *)_1641 + 28B]
# b4_generators.cpp:55: }
	movl	$65538, %eax	#, tmp1593
	movl	%eax, 24(%rbx)	# tmp1593, MEM <vector(2) short unsigned int> [(short unsigned int *)_1641 + 24B]
.L349:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1641,
.LEHB36:
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)_1641]
# b4_generators.cpp:133:       while (gen.next()) v.push_back(gen.value());
	cmpq	$0, (%rbx)	#, MEM[(void * *)_1641]
	je	.L624	#,
.L356:
# b4_generators.cpp:50:   T value() const { return h.promise().current; }
	movl	16(%rbx), %r15d	# MEM[(struct promise_type &)_1641 + 16].current, _1596
# /usr/include/c++/16.1.1/bits/vector.tcc:118: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rbp, %r13	# __new_finish, v$D164688$_M_impl$D163987$_M_end_of_storage
	je	.L350	#,
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r15d, 0(%rbp)	# _1596, *v$D164688$_M_impl$D163987$_M_finish_2915
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1641,
# /usr/include/c++/16.1.1/bits/vector.tcc:123: 	    ++this->_M_impl._M_finish;
	addq	$4, %rbp	#, __new_finish
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)_1641]
.LEHE36:
# b4_generators.cpp:133:       while (gen.next()) v.push_back(gen.value());
	cmpq	$0, (%rbx)	#, MEM[(void * *)_1641]
	jne	.L356	#,
.L624:
# b4_generators.cpp:134:       sink += v.back();
	movslq	-4(%rbp), %rax	# MEM[(value_type &)v$D164688$_M_impl$D163987$_M_finish_2915 + 18446744073709551612], _1603
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1641,
# b4_generators.cpp:134:       sink += v.back();
	addq	%rax, 32(%rsp)	# _1603, %sfp
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_1641 + 8B]
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%r14, %r14	# v$D164688$_M_impl$D163987$_M_start
	je	.L357	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r14, %rdi	# v$D164688$_M_impl$D163987$_M_start,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	subq	%r14, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L357:
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, 40(%rsp)	#, %sfp
	jne	.L358	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	$2000, 40(%rsp)	#, %sfp
	movq	%rax, 48(%rsp)	#, %sfp
	.p2align 4
	.p2align 3
.L380:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$20000, %edi	#,
.LEHB37:
	call	_Znwm@PLT	#
.LEHE37:
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	movl	$40, %edi	#,
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rbp	# __new_finish, __new_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:101: 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	20000(%rax), %r13	#, v$D164688$_M_impl$D163987$_M_end_of_storage
.LEHB38:
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	call	_Znwm@PLT	#
.LEHE38:
.L364:
.L365:
.L366:
.L367:
.L368:
.L369:
.L370:
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	movdqa	16(%rsp), %xmm5	# %sfp, _1966
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	movq	%rax, %rbx	# _1732, _1732
# /usr/include/c++/16.1.1/bits/vector.tcc:99: 	  this->_M_impl._M_start = __tmp;
	movq	%rbp, %r14	# __new_finish, v$D164688$_M_impl$D163987$_M_start
# b4_generators.cpp:53: static Generator<int> raw_range(int n) {
	movups	%xmm5, (%rax)	# _1966, MEM <vector(2) long unsigned int> [(void (*<T1a995>) (struct _ZL9raw_rangei.Frame *) *)_1732]
	movabsq	$21474836485000, %rax	#, tmp1603
	movq	%rax, 16(%rbx)	# tmp1603, MEM <vector(2) int> [(int *)_1732 + 16B]
	movl	$1, %eax	#, tmp1604
	movw	%ax, 28(%rbx)	# tmp1604, MEM <vector(2) unsigned char> [(bool *)_1732 + 28B]
# b4_generators.cpp:55: }
	movl	$65538, %eax	#, tmp1605
	movl	%eax, 24(%rbx)	# tmp1605, MEM <vector(2) short unsigned int> [(short unsigned int *)_1732 + 24B]
.L371:
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1732,
.LEHB39:
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)_1732]
# b4_generators.cpp:133:       while (gen.next()) v.push_back(gen.value());
	cmpq	$0, (%rbx)	#, MEM[(void * *)_1732]
	je	.L625	#,
.L378:
# b4_generators.cpp:50:   T value() const { return h.promise().current; }
	movl	16(%rbx), %edx	# MEM[(struct promise_type &)_1732 + 16].current, _1687
# /usr/include/c++/16.1.1/bits/vector.tcc:118: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rbp, %r13	# __new_finish, v$D164688$_M_impl$D163987$_M_end_of_storage
	je	.L372	#,
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%edx, 0(%rbp)	# _1687, *v$D164688$_M_impl$D163987$_M_finish_1927
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1732,
# /usr/include/c++/16.1.1/bits/vector.tcc:123: 	    ++this->_M_impl._M_finish;
	addq	$4, %rbp	#, __new_finish
# /usr/include/c++/16.1.1/coroutine:247:       void resume() const { __builtin_coro_resume(_M_fr_ptr); }
	call	*(%rbx)	# MEM[(void (*<T123>) (void *) *)_1732]
.LEHE39:
# b4_generators.cpp:133:       while (gen.next()) v.push_back(gen.value());
	cmpq	$0, (%rbx)	#, MEM[(void * *)_1732]
	jne	.L378	#,
.L625:
# b4_generators.cpp:134:       sink += v.back();
	movslq	-4(%rbp), %rax	# MEM[(value_type &)v$D164688$_M_impl$D163987$_M_finish_1927 + 18446744073709551612], _1694
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rbx, %rdi	# _1732,
# b4_generators.cpp:134:       sink += v.back();
	addq	%rax, 32(%rsp)	# _1694, %sfp
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_1732 + 8B]
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%r14, %r14	# v$D164688$_M_impl$D163987$_M_start
	je	.L379	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r14, %rdi	# v$D164688$_M_impl$D163987$_M_start,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	subq	%r14, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L379:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, 40(%rsp)	#, %sfp
	jne	.L380	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	320(%rsp), %rcx	#, tmp1614
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rdi	#, tmp1615
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	280(%rsp), %rdx	# MEM[(const struct basic_string *)_2704]._M_string_length, pretmp_456
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 304(%rsp)	# tmp1614, MEM[(struct _Alloc_hider *)_2515]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rcx	# MEM[(const struct basic_string *)_2704]._M_dataplus._M_p, _1778
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp1615, _1778
	je	.L626	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 304(%rsp)	# _1778, MEM[(struct basic_string *)_2515]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	288(%rsp), %rcx	# MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity
	movq	%rcx, 320(%rsp)	# MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity
.L386:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	48(%rsp), %rax	# %sfp, _1565
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _1566
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 312(%rsp)	# pretmp_456, MEM[(struct basic_string *)_2515]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC17(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _1565, _1566
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	288(%rsp), %rax	#, tmp1619
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 344(%rsp)	# _1566, MEM[(struct BenchResult *)_2515].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC16(%rip), %xmm0	#, _1566
	movq	%xmm0, %rbp	# _1566, _1787
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1619, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 288(%rsp)	#, MEM[(char_type &)_2704 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
# bench.hpp:44: }
	movq	$2000, 336(%rsp)	#, MEM[(struct BenchResult *)_2515].iters
.LEHB40:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _1788
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp1621
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	304(%rsp), %rsi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp1621,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1788 + -24B], MEM[(long int *)_1788 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _1791->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1788 + -24B], _1794
	addq	%rcx, %rdx	# tmp1621, _1794
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1794->_M_flags, _1808
	andb	$79, %al	#, _1808
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp1118
	movl	%eax, 24(%rdx)	# tmp1118, MEM[(_Ios_Fmtflags &)_1794 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	312(%rsp), %rdx	# MEM[(const struct basic_string *)_2515]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rax, %rdi	# _1798,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbx	#, _1798
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# _1798->_vptr.basic_ostream, _1799
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbp, %xmm0	# _1787,
	movq	%rbx, %rdi	# _1798,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1799 + -24B], MEM[(long int *)_1799 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _1802->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1799 + -24B], _1805
	addq	%rbx, %rdx	# _1798, _1805
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1805->_M_flags, _2965
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _1805->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _2965
	orb	$-124, %al	#, tmp1127
	movl	%eax, 24(%rdx)	# tmp1127, MEM[(_Ios_Fmtflags &)_1805 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rax, %rdi	# _1806,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE40:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p, _144
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1626
	cmpq	%rax, %rdi	# tmp1626, _144
	je	.L387	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1627
	leaq	1(%rax), %rsi	#, _147
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L387:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _140
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1628
	cmpq	%rax, %rdi	# tmp1628, _140
	je	.L388	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1629
	leaq	1(%rax), %rsi	#, _143
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L388:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$22, %edi	#,
# b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	leaq	104(%rsp), %rax	#, tmp1137
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movl	$3, %ebx	#, ivtmp_2235
# b4_generators.cpp:141:     long long sink = 0;
	movq	$0, 104(%rsp)	#, MEM[(long long int *)_2729]
# b4_generators.cpp:142:     print_result(bench("Emit<int> effect (fx)", REPS, [&] {
	movq	%rax, 112(%rsp)	# tmp1137, MEM[(struct ._anon_203 *)_2490].__sink
.LEHB41:
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE41:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movdqa	.LC38(%rip), %xmm0	#, tmp1346
	movabsq	$2988250675289547621, %rcx	#, tmp1630
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	$21, 288(%rsp)	#, MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1402, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movups	%xmm0, (%rax)	# tmp1346, MEM <char[1:21]> [(void *)_1854]
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 21(%rax)	#, MEM[(char_type &)_1854 + 21]
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%rcx, 13(%rax)	# tmp1630, MEM <char[1:21]> [(void *)_1854]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$21, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
	.p2align 4
	.p2align 3
.L389:
# bench.hpp:35:     fn();
	leaq	112(%rsp), %rdi	#, tmp1631
.LEHB42:
	call	_ZZ4mainENKUlvE3_clEv	#
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, %rbx	#, ivtmp_2235
	jne	.L389	#,
# bench.hpp:37:   auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movl	$2000, %ebx	#, ivtmp_2240
	movq	%rax, %rbp	#, start
	.p2align 4
	.p2align 3
.L390:
# bench.hpp:39:     fn();
	leaq	112(%rsp), %rdi	#, tmp1632
	call	_ZZ4mainENKUlvE3_clEv	#
.LEHE42:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, %rbx	#, ivtmp_2240
	jne	.L390	#,
# bench.hpp:40:   auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	320(%rsp), %rcx	#, tmp1633
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rdi	#, tmp1634
# /usr/include/c++/16.1.1/bits/basic_string.h:1189: 	size_type __sz = _M_string_length;
	movq	280(%rsp), %rdx	# MEM[(const struct basic_string *)_2704]._M_string_length, pretmp_454
# /usr/include/c++/16.1.1/bits/basic_string.h:208: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rcx, 304(%rsp)	# tmp1633, MEM[(struct _Alloc_hider *)_2515]._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rcx	# MEM[(const struct basic_string *)_2704]._M_dataplus._M_p, _1862
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rdi, %rcx	# tmp1634, _1862
	je	.L627	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 304(%rsp)	# _1862, MEM[(struct basic_string *)_2515]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/basic_string.h:265:       { _M_allocated_capacity = __capacity; }
	movq	288(%rsp), %rcx	# MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity, MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity
	movq	%rcx, 320(%rsp)	# MEM[(struct basic_string &)_2704].D.58684._M_allocated_capacity, MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity
.L392:
# /usr/include/c++/16.1.1/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbp, %rax	# start, _1831
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	pxor	%xmm0, %xmm0	# _1832
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	%rdx, 312(%rsp)	# pretmp_454, MEM[(struct basic_string *)_2515]._M_string_length
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	.LC17(%rip), %rsi	#,
# /usr/include/c++/16.1.1/bits/chrono.h:205: 	    return _ToDur(static_cast<__to_rep>(__d.count()));
	cvtsi2sdq	%rax, %xmm0	# _1831, _1832
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	leaq	288(%rsp), %rax	#, tmp1637
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %rdi	#,
# bench.hpp:44: }
	movsd	%xmm0, 344(%rsp)	# _1832, MEM[(struct BenchResult *)_2515].total_ns
# bench.hpp:27:   double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
	divsd	.LC16(%rip), %xmm0	#, _1832
	movq	%xmm0, %rbp	# _1832, _1871
# /usr/include/c++/16.1.1/bits/basic_string.h:228:       { _M_dataplus._M_p = __p; }
	movq	%rax, 272(%rsp)	# tmp1637, MEM[(struct basic_string *)_2704]._M_dataplus._M_p
# /usr/include/c++/16.1.1/bits/char_traits.h:355: 	__c1 = __c2;
	movb	$0, 288(%rsp)	#, MEM[(char_type &)_2704 + 16]
# /usr/include/c++/16.1.1/bits/basic_string.h:233:       { _M_string_length = __length; }
	movq	$0, 280(%rsp)	#, MEM[(struct basic_string *)_2704]._M_string_length
# bench.hpp:44: }
	movq	$2000, 336(%rsp)	#, MEM[(struct BenchResult *)_2515].iters
.LEHB43:
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, _1872
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	leaq	_ZSt4cout(%rip), %rcx	#, tmp1639
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	304(%rsp), %rsi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p,
	movq	%rcx, %rdi	# tmp1639,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1872 + -24B], MEM[(long int *)_1872 + -24B]
	movq	$44, 16(%rcx,%rdx)	#, _1875->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1872 + -24B], _1878
	addq	%rcx, %rdx	# tmp1639, _1878
# /usr/include/c++/16.1.1/bits/ios_base.h:87:   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1878->_M_flags, _1892
	andb	$79, %al	#, _1892
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	orl	$32, %eax	#, tmp1169
	movl	%eax, 24(%rdx)	# tmp1169, MEM[(_Ios_Fmtflags &)_1878 + 24]
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	312(%rsp), %rdx	# MEM[(const struct basic_string *)_2515]._M_string_length,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rax, %rdi	# _1882,
# /usr/include/c++/16.1.1/bits/basic_string.h:4427:       return __ostream_insert(__os, __str.data(), __str.size());
	movq	%rax, %rbx	#, _1882
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/16.1.1/iomanip:252:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# _1882->_vptr.basic_ostream, _1883
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	movq	%rbp, %xmm0	# _1871,
	movq	%rbx, %rdi	# _1882,
# /usr/include/c++/16.1.1/bits/ios_base.h:801:       _M_width = __wide;
	movq	-24(%rax), %rdx	# MEM[(long int *)_1883 + -24B], MEM[(long int *)_1883 + -24B]
	movq	$10, 16(%rbx,%rdx)	#, _1886->_M_width
# /usr/include/c++/16.1.1/bits/ostream.h:140: 	__pf(*this);
	movq	-24(%rax), %rdx	# MEM[(long int *)_1883 + -24B], _1889
	addq	%rbx, %rdx	# _1882, _1889
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	24(%rdx), %eax	# _1889->_M_flags, _2963
# /usr/include/c++/16.1.1/bits/ios_base.h:777:       _M_precision = __prec;
	movq	$2, 8(%rdx)	#, _1889->_M_precision
# /usr/include/c++/16.1.1/bits/ios_base.h:92:   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
	andl	$-437, %eax	#, _2963
	orb	$-124, %al	#, tmp1178
	movl	%eax, 24(%rdx)	# tmp1178, MEM[(_Ios_Fmtflags &)_1889 + 24]
# /usr/include/c++/16.1.1/bits/ostream.h:232:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rax, %rdi	# _1890,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE43:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p, _153
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1644
	cmpq	%rax, %rdi	# tmp1644, _153
	je	.L393	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1645
	leaq	1(%rax), %rsi	#, _156
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L393:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _149
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1646
	cmpq	%rax, %rdi	# tmp1646, _149
	je	.L394	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1647
	leaq	1(%rax), %rsi	#, _152
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L394:
# bench.hpp:19:   asm volatile("" : : "r,m"(val) : "memory");
# /usr/include/c++/16.1.1/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$8, %edx	#,
	leaq	.LC23(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
.LEHB44:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$62, %edx	#,
	leaq	.LC24(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$75, %edx	#,
	leaq	.LC25(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$44, %edx	#,
	leaq	.LC26(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$66, %edx	#,
	leaq	.LC27(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
	movl	$56, %edx	#,
	leaq	.LC28(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.LEHE44:
# b4_generators.cpp:159: }
	movq	360(%rsp), %rax	# D.221444, tmp1448
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1448
	jne	.L628	#,
	addq	$376, %rsp	#,
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
	.p2align 4,,10
	.p2align 3
.L321:
	.cfi_restore_state
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rcx	#, tmp1561
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	(%r15), %r10	# MEM[(const struct vector *)_1479].D.164688._M_impl.D.163987._M_start, _1486
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%r10, %rdx	# _1486, _1487
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rdx, %rax	# _1487, __dif_1488
	sarq	$2, %rax	#, __dif_1488
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rcx, %rax	# tmp1561, __dif_1488
	je	.L591	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rax, %rax	# __dif_1488
	movl	$1, %ebp	#, tmp1426
	movq	%rdx, 16(%rsp)	# _1487, %sfp
	cmovne	%rax, %rbp	# __dif_1488,, _1490
	movq	%r10, 32(%rsp)	# _1486, %sfp
	movq	%rsi, 8(%rsp)	# prephitmp_384, %sfp
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rax, %rbp	# __dif_1488, __len_1491
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$2305843009213693951, %rax	#, tmp1427
	cmpq	%rax, %rbp	# tmp1427, __len_1491
	cmova	%rax, %rbp	# __len_1491,, tmp1427, __len_1491
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$2, %rbp	#, _1508
	movq	%rbp, %rdi	# _1508,
.LEHB45:
	call	_Znwm@PLT	#
.LEHE45:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movq	16(%rsp), %rdx	# %sfp, _1487
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	movq	8(%rsp), %rsi	# %sfp, prephitmp_384
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r12	#, _1509
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	movq	32(%rsp), %r10	# %sfp, _1486
	testq	%rdx, %rdx	# _1487
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%ebx, (%rax,%rdx)	# i, *_1496
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	je	.L325	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%r10, %rsi	# _1486,
	movq	%rax, %rdi	# _1509,
	movq	%rdx, 32(%rsp)	# _1487, %sfp
	movq	%r10, 8(%rsp)	# _1486, %sfp
	call	memcpy@PLT	#
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	16(%r15), %rsi	# _1479->D.164688._M_impl.D.163987._M_end_of_storage, prephitmp_384
	movq	32(%rsp), %rdx	# %sfp, _1487
	movq	8(%rsp), %r10	# %sfp, _1486
.L325:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	4(%r12,%rdx), %rax	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r10, %r10	# _1486
	je	.L326	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r10, %rsi	# _1486, _1501
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r10, %rdi	# _1486,
	movq	%rax, 8(%rsp)	# __new_finish, %sfp
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	320(%rsp), %r13	# MEM[(struct _Function_base *)_2515]._M_manager, prephitmp_1926
	movq	8(%rsp), %rax	# %sfp, __new_finish
.L326:
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	(%r12,%rbp), %r8	#, tmp956
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r12, (%r15)	# _1509, _1479->D.164688._M_impl.D.163987._M_start
# /usr/include/c++/16.1.1/bits/vector.tcc:654:       this->_M_impl._M_finish = __new_finish;
	movq	%rax, 8(%r15)	# __new_finish, _1479->D.164688._M_impl.D.163987._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	%r8, 16(%r15)	# tmp956, _1479->D.164688._M_impl.D.163987._M_end_of_storage
	jmp	.L327	#
	.p2align 4,,10
	.p2align 3
.L300:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rcx	#, tmp1545
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	(%r15), %r10	# MEM[(const struct vector *)_1396].D.164688._M_impl.D.163987._M_start, _1403
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%r10, %rdx	# _1403, _1404
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rdx, %rax	# _1404, __dif_1405
	sarq	$2, %rax	#, __dif_1405
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rcx, %rax	# tmp1545, __dif_1405
	je	.L589	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rax, %rax	# __dif_1405
	movl	$1, %ebp	#, tmp1428
	movq	%rdx, 16(%rsp)	# _1404, %sfp
	cmovne	%rax, %rbp	# __dif_1405,, _1407
	movq	%r10, 32(%rsp)	# _1403, %sfp
	movq	%rsi, 8(%rsp)	# _1399, %sfp
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rax, %rbp	# __dif_1405, __len_1408
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$2305843009213693951, %rax	#, tmp1429
	cmpq	%rax, %rbp	# tmp1429, __len_1408
	cmova	%rax, %rbp	# __len_1408,, tmp1429, __len_1408
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$2, %rbp	#, _1425
	movq	%rbp, %rdi	# _1425,
.LEHB46:
	call	_Znwm@PLT	#
.LEHE46:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movq	16(%rsp), %rdx	# %sfp, _1404
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	movq	8(%rsp), %rsi	# %sfp, _1399
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r12	#, _1426
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	movq	32(%rsp), %r10	# %sfp, _1403
	testq	%rdx, %rdx	# _1404
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%ebx, (%rax,%rdx)	# i, *_1413
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	je	.L304	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%r10, %rsi	# _1403,
	movq	%rax, %rdi	# _1426,
	movq	%rdx, 32(%rsp)	# _1404, %sfp
	movq	%r10, 8(%rsp)	# _1403, %sfp
	call	memcpy@PLT	#
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	16(%r15), %rsi	# _1396->D.164688._M_impl.D.163987._M_end_of_storage, _1399
	movq	32(%rsp), %rdx	# %sfp, _1404
	movq	8(%rsp), %r10	# %sfp, _1403
.L304:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	4(%r12,%rdx), %rax	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r10, %r10	# _1403
	je	.L305	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r10, %rsi	# _1403, _1418
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r10, %rdi	# _1403,
	movq	%rax, 8(%rsp)	# __new_finish, %sfp
	call	_ZdlPvm@PLT	#
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	320(%rsp), %r13	# MEM[(struct _Function_base *)_2515]._M_manager, prephitmp_469
	movq	8(%rsp), %rax	# %sfp, __new_finish
.L305:
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	(%r12,%rbp), %r8	#, tmp910
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r12, (%r15)	# _1426, _1396->D.164688._M_impl.D.163987._M_start
# /usr/include/c++/16.1.1/bits/vector.tcc:654:       this->_M_impl._M_finish = __new_finish;
	movq	%rax, 8(%r15)	# __new_finish, _1396->D.164688._M_impl.D.163987._M_finish
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	%r8, 16(%r15)	# tmp910, _1396->D.164688._M_impl.D.163987._M_end_of_storage
	jmp	.L306	#
	.p2align 4,,10
	.p2align 3
.L350:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rcx	#, tmp1596
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%r13, %rbp	# v$D164688$_M_impl$D163987$_M_end_of_storage, _1663
	subq	%r14, %rbp	# v$D164688$_M_impl$D163987$_M_start, _1663
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rbp, %rax	# _1663, __dif_1664
	sarq	$2, %rax	#, __dif_1664
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rcx, %rax	# tmp1596, __dif_1664
	je	.L592	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rax, %rax	# __dif_1664
	movl	$1, %r12d	#, tmp1424
	cmovne	%rax, %r12	# __dif_1664,, _1666
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rax, %r12	# __dif_1664, __len_1667
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$2305843009213693951, %rax	#, tmp1425
	cmpq	%rax, %r12	# tmp1425, __len_1667
	cmova	%rax, %r12	# __len_1667,, tmp1425, __len_1667
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$2, %r12	#, _1684
	movq	%r12, %rdi	# _1684,
.LEHB47:
	call	_Znwm@PLT	#
.LEHE47:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%r15d, (%rax,%rbp)	# _1596, *_1672
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rcx	#, _1685
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%rbp, %rbp	# _1663
	je	.L354	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%rbp, %rdx	# _1663,
	movq	%r14, %rsi	# v$D164688$_M_impl$D163987$_M_start,
	movq	%rax, %rdi	# _1685,
	call	memcpy@PLT	#
	movq	%rax, %rcx	#, _1685
.L354:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	4(%rcx,%rbp), %rbp	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r14, %r14	# v$D164688$_M_impl$D163987$_M_start
	je	.L355	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r14, %rdi	# v$D164688$_M_impl$D163987$_M_start,
	movq	%rcx, 8(%rsp)	# _1685, %sfp
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r14, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	movq	8(%rsp), %rcx	# %sfp, _1685
.L355:
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	(%rcx,%r12), %r13	#, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%rcx, %r14	# _1685, v$D164688$_M_impl$D163987$_M_start
	jmp	.L349	#
	.p2align 4,,10
	.p2align 3
.L372:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rcx	#, tmp1608
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%r13, %rbp	# v$D164688$_M_impl$D163987$_M_end_of_storage, _1754
	subq	%r14, %rbp	# v$D164688$_M_impl$D163987$_M_start, _1754
# /usr/include/c++/16.1.1/bits/stl_vector.h:1109: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rbp, %rax	# _1754, __dif_1755
	sarq	$2, %rax	#, __dif_1755
# /usr/include/c++/16.1.1/bits/stl_vector.h:2194: 	if (max_size() - size() < __n)
	cmpq	%rcx, %rax	# tmp1608, __dif_1755
	je	.L593	#,
# /usr/include/c++/16.1.1/bits/stl_algobase.h:261:       if (__a < __b)
	testq	%rax, %rax	# __dif_1755
	movl	$1, %r12d	#, tmp1422
	movl	%edx, 8(%rsp)	# _1687, %sfp
	cmovne	%rax, %r12	# __dif_1755,, _1757
# /usr/include/c++/16.1.1/bits/stl_vector.h:2197: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rax, %r12	# __dif_1755, __len_1758
# /usr/include/c++/16.1.1/bits/stl_vector.h:2198: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabsq	$2305843009213693951, %rax	#, tmp1423
	cmpq	%rax, %r12	# tmp1423, __len_1758
	cmova	%rax, %r12	# __len_1758,, tmp1423, __len_1758
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$2, %r12	#, _1775
	movq	%r12, %rdi	# _1775,
.LEHB48:
	call	_Znwm@PLT	#
.LEHE48:
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	8(%rsp), %edx	# %sfp, _1687
# /usr/include/c++/16.1.1/bits/new_allocator.h:162: 	  return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %r15	#, _1776
# /usr/include/c++/16.1.1/bits/stl_construct.h:110: 	return ::new(__loc) _Tp(std::forward<_Args>(__args)...);
	movl	%edx, (%rax,%rbp)	# _1687, *_1763
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1382:       if (__count > 0)
	testq	%rbp, %rbp	# _1754
	je	.L376	#,
# /usr/include/c++/16.1.1/bits/stl_uninitialized.h:1394: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	movq	%rbp, %rdx	# _1754,
	movq	%r14, %rsi	# v$D164688$_M_impl$D163987$_M_start,
	movq	%rax, %rdi	# _1776,
	call	memcpy@PLT	#
.L376:
# /usr/include/c++/16.1.1/bits/vector.tcc:610: 	    ++__new_finish;
	leaq	4(%r15,%rbp), %rbp	#, __new_finish
# /usr/include/c++/16.1.1/bits/stl_vector.h:1872: 	  if (_M_storage)
	testq	%r14, %r14	# v$D164688$_M_impl$D163987$_M_start
	je	.L377	#,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r14, %rdi	# v$D164688$_M_impl$D163987$_M_start,
# /usr/include/c++/16.1.1/bits/vector.tcc:648: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	%r14, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L377:
# /usr/include/c++/16.1.1/bits/vector.tcc:655:       this->_M_impl._M_end_of_storage = __new_start + __len;
	leaq	(%r15,%r12), %r13	#, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/vector.tcc:653:       this->_M_impl._M_start = __new_start;
	movq	%r15, %r14	# _1776, v$D164688$_M_impl$D163987$_M_start
	jmp	.L371	#
.L309:
# bench.hpp:34:   for (std::size_t i = 0; i < warmup; ++i)
	subq	$1, 64(%rsp)	#, %sfp
	jne	.L312	#,
	jmp	.L311	#
.L330:
# bench.hpp:38:   for (std::size_t i = 0; i < iters; ++i)
	subq	$1, 80(%rsp)	#, %sfp
	jne	.L333	#,
	jmp	.L332	#
.L622:
# /usr/include/c++/16.1.1/bits/std_function.h:249: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	leaq	304(%rsp), %rsi	#, tmp1564
	movl	$3, %edx	#,
	movq	%rsi, %rdi	# tmp1564, tmp1565
	call	*%r13	# prephitmp_1926
	jmp	.L329	#
.L620:
	leaq	304(%rsp), %rsi	#, tmp1548
	movl	$3, %edx	#,
	movq	%rsi, %rdi	# tmp1548, tmp1549
	call	*%r13	# prephitmp_469
	jmp	.L308	#
.L613:
# /usr/include/c++/16.1.1/bits/char_traits.h:432: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	leal	1(%rdx), %ecx	#, _968
	leaq	320(%rsp), %rdi	#, tmp751
	leaq	288(%rsp), %rsi	#, tmp752
	rep movsb	# MEM <char[1:(sizetype) _968]> [(void *)_2704 + 16B]
	jmp	.L261	#
.L627:
	leal	1(%rdx), %ecx	#, _1866
	leaq	320(%rsp), %rdi	#, tmp1152
	leaq	288(%rsp), %rsi	#, tmp1153
	rep movsb	# MEM <char[1:(sizetype) _1866]> [(void *)_2704 + 16B]
	jmp	.L392	#
.L626:
	leal	1(%rdx), %ecx	#, _1782
	leaq	320(%rsp), %rdi	#, tmp1101
	leaq	288(%rsp), %rsi	#, tmp1102
	rep movsb	# MEM <char[1:(sizetype) _1782]> [(void *)_2704 + 16B]
	jmp	.L386	#
.L623:
	leal	1(%rdx), %ecx	#, _1516
	leaq	320(%rsp), %rdi	#, tmp989
	leaq	288(%rsp), %rsi	#, tmp990
	rep movsb	# MEM <char[1:(sizetype) _1516]> [(void *)_2704 + 16B]
	jmp	.L339	#
.L618:
	leal	1(%rdx), %ecx	#, _1266
	leaq	320(%rsp), %rdi	#, tmp848
	leaq	288(%rsp), %rsi	#, tmp849
	rep movsb	# MEM <char[1:(sizetype) _1266]> [(void *)_2704 + 16B]
	jmp	.L294	#
.L628:
# b4_generators.cpp:159: }
	call	__stack_chk_fail@PLT	#
.L570:
	jmp	.L571	#
.L439:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	#, tmp1417
	jmp	.L422	#
.L438:
	movq	%rax, %rbx	# tmp1418, tmp1286
	jmp	.L424	#
.L437:
	movq	%rax, %rbx	#, tmp1415
	jmp	.L418	#
.L434:
	movq	%rax, %rbp	#, tmp1412
	jmp	.L410	#
.L430:
	movq	%rax, %r14	#, tmp1407
	jmp	.L395	#
.L582:
	jmp	.L583	#
.L455:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%rax, %rbx	# tmp1398, tmp1086
	jmp	.L384	#
.L435:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	#, tmp1414
	jmp	.L414	#
.L574:
	jmp	.L575	#
.L568:
	jmp	.L571	#
.L431:
	movq	%rax, %rbx	# tmp1411, tmp716
	jmp	.L247	#
.L451:
	movq	%rax, %r13	# tmp1408, tmp1219
	jmp	.L401	#
.L450:
	movq	%rax, %r13	# tmp1409, tmp1225
	jmp	.L403	#
.L454:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%rax, %rbx	# tmp1392, tmp1054
	jmp	.L384	#
.L436:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbx	# tmp1416, tmp1059
	jmp	.L363	#
.L580:
	jmp	.L581	#
.L578:
	jmp	.L579	#
.L452:
	movq	%rax, %rbp	# tmp1365, tmp807
	jmp	.L288	#
.L453:
	movq	%rax, %rbp	# tmp1370, tmp833
	jmp	.L288	#
.L572:
	jmp	.L573	#
.L446:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%rax, %rbx	# tmp1383, tmp973
	jmp	.L336	#
.L433:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	# tmp1413, tmp812
	jmp	.L278	#
.L432:
	movq	%rax, %rbx	#, tmp1410
	jmp	.L406	#
.L444:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%rax, %rbx	# tmp1378, tmp927
	jmp	.L336	#
.L576:
	jmp	.L577	#
	.section	.gcc_except_table
.LLSDA7030:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7030-.LLSDACSB7030
.LLSDACSB7030:
	.uleb128 .LEHB10-.LFB7030
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L450-.LFB7030
	.uleb128 0
	.uleb128 .LEHB11-.LFB7030
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L451-.LFB7030
	.uleb128 0
	.uleb128 .LEHB12-.LFB7030
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L430-.LFB7030
	.uleb128 0
	.uleb128 .LEHB13-.LFB7030
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB7030
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L431-.LFB7030
	.uleb128 0
	.uleb128 .LEHB15-.LFB7030
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L568-.LFB7030
	.uleb128 0
	.uleb128 .LEHB16-.LFB7030
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L431-.LFB7030
	.uleb128 0
	.uleb128 .LEHB17-.LFB7030
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L570-.LFB7030
	.uleb128 0
	.uleb128 .LEHB18-.LFB7030
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L432-.LFB7030
	.uleb128 0
	.uleb128 .LEHB19-.LFB7030
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB7030
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L433-.LFB7030
	.uleb128 0
	.uleb128 .LEHB21-.LFB7030
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L452-.LFB7030
	.uleb128 0
	.uleb128 .LEHB22-.LFB7030
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L572-.LFB7030
	.uleb128 0
	.uleb128 .LEHB23-.LFB7030
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L433-.LFB7030
	.uleb128 0
	.uleb128 .LEHB24-.LFB7030
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L453-.LFB7030
	.uleb128 0
	.uleb128 .LEHB25-.LFB7030
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L574-.LFB7030
	.uleb128 0
	.uleb128 .LEHB26-.LFB7030
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L434-.LFB7030
	.uleb128 0
	.uleb128 .LEHB27-.LFB7030
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB7030
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L444-.LFB7030
	.uleb128 0
	.uleb128 .LEHB29-.LFB7030
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L576-.LFB7030
	.uleb128 0
	.uleb128 .LEHB30-.LFB7030
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L446-.LFB7030
	.uleb128 0
	.uleb128 .LEHB31-.LFB7030
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L578-.LFB7030
	.uleb128 0
	.uleb128 .LEHB32-.LFB7030
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L435-.LFB7030
	.uleb128 0
	.uleb128 .LEHB33-.LFB7030
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB7030
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L436-.LFB7030
	.uleb128 0
	.uleb128 .LEHB35-.LFB7030
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L454-.LFB7030
	.uleb128 0
	.uleb128 .LEHB36-.LFB7030
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L580-.LFB7030
	.uleb128 0
	.uleb128 .LEHB37-.LFB7030
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L436-.LFB7030
	.uleb128 0
	.uleb128 .LEHB38-.LFB7030
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L455-.LFB7030
	.uleb128 0
	.uleb128 .LEHB39-.LFB7030
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L582-.LFB7030
	.uleb128 0
	.uleb128 .LEHB40-.LFB7030
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L437-.LFB7030
	.uleb128 0
	.uleb128 .LEHB41-.LFB7030
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB7030
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L438-.LFB7030
	.uleb128 0
	.uleb128 .LEHB43-.LFB7030
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L439-.LFB7030
	.uleb128 0
	.uleb128 .LEHB44-.LFB7030
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB7030
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L578-.LFB7030
	.uleb128 0
	.uleb128 .LEHB46-.LFB7030
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L576-.LFB7030
	.uleb128 0
	.uleb128 .LEHB47-.LFB7030
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L580-.LFB7030
	.uleb128 0
	.uleb128 .LEHB48-.LFB7030
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L582-.LFB7030
	.uleb128 0
.LLSDACSE7030:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7030
	.type	main.cold, @function
main.cold:
.LFSB7030:
	nop	
.L441:
	.cfi_def_cfa_offset 432
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
.L571:
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	movq	%rax, %rbx	#, tmp1357
	testq	%r12, %r12	# v$D164688$_M_impl$D163987$_M_start
	je	.L247	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%rbp, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%r12, %rdi	# v$D164688$_M_impl$D163987$_M_start,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	subq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_start, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L247:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _186
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1657
	cmpq	%rax, %rdi	# tmp1657, _186
	je	.L408	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1658
	leaq	1(%rax), %rsi	#, _189
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L408:
	movq	360(%rsp), %rax	# D.221444, tmp1450
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1450
	jne	.L629	#,
	movq	%rbx, %rdi	# tmp716,
.LEHB49:
	call	_Unwind_Resume@PLT	#
.L422:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p, _214
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1671
	cmpq	%rax, %rdi	# tmp1671, _214
	je	.L424	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1672
	leaq	1(%rax), %rsi	#, _217
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L424:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _218
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1673
	cmpq	%rax, %rdi	# tmp1673, _218
	je	.L425	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1674
	leaq	1(%rax), %rsi	#, _221
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L425:
	movq	360(%rsp), %rax	# D.221444, tmp1454
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1454
	jne	.L630	#,
	movq	%rbx, %rdi	# tmp1286,
	call	_Unwind_Resume@PLT	#
.L418:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p, _206
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1667
	cmpq	%rax, %rdi	# tmp1667, _206
	je	.L363	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1668
	leaq	1(%rax), %rsi	#, _209
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L363:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _210
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1669
	cmpq	%rax, %rdi	# tmp1669, _210
	je	.L420	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1670
	leaq	1(%rax), %rsi	#, _213
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L420:
	movq	360(%rsp), %rax	# D.221444, tmp1453
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1453
	jne	.L631	#,
	movq	%rbx, %rdi	# tmp1059,
	call	_Unwind_Resume@PLT	#
.L629:
	call	__stack_chk_fail@PLT	#
.L630:
	call	__stack_chk_fail@PLT	#
.L410:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p, _190
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1659
	cmpq	%rax, %rdi	# tmp1659, _190
	je	.L278	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1660
	leaq	1(%rax), %rsi	#, _193
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L278:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _194
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1661
	cmpq	%rax, %rdi	# tmp1661, _194
	je	.L412	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1662
	leaq	1(%rax), %rsi	#, _197
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L412:
	movq	360(%rsp), %rax	# D.221444, tmp1451
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1451
	jne	.L632	#,
	movq	%rbp, %rdi	# tmp812,
	call	_Unwind_Resume@PLT	#
.L395:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(struct basic_string *)_2515]._M_dataplus._M_p, _158
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1202
	cmpq	%rax, %rdi	# tmp1202, _158
	je	.L396	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1648
	leaq	1(%rax), %rsi	#, _161
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L396:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _162
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1649
	cmpq	%rax, %rdi	# tmp1649, _162
	je	.L397	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1650
	leaq	1(%rax), %rsi	#, _165
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L397:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	208(%rsp), %rdi	# D.164703._M_dataplus._M_p, _166
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r13, %rdi	# tmp1300, _166
	je	.L398	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	224(%rsp), %rax	# D.164703.D.58684._M_allocated_capacity, tmp1651
	leaq	1(%rax), %rsi	#, _169
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L398:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	176(%rsp), %rdi	# D.164696._M_dataplus._M_p, _170
	movq	%r14, %r13	# tmp1407, tmp1219
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbx, %rdi	# tmp1299, _170
	je	.L399	#,
.L400:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	192(%rsp), %rax	# D.164696.D.58684._M_allocated_capacity, tmp1652
	leaq	1(%rax), %rsi	#, _173
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L399:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	144(%rsp), %rdi	# D.164695._M_dataplus._M_p, _174
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%r12, %rdi	# tmp1298, _174
	jne	.L633	#,
.L403:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	240(%rsp), %rdi	# D.164704._M_dataplus._M_p, _178
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	cmpq	%rbp, %rdi	# tmp1301, _178
	je	.L404	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	256(%rsp), %rax	# D.164704.D.58684._M_allocated_capacity, tmp1654
	leaq	1(%rax), %rsi	#, _181
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L404:
	movq	360(%rsp), %rax	# D.221444, tmp1449
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1449
	jne	.L634	#,
	movq	%r13, %rdi	# tmp1225,
	call	_Unwind_Resume@PLT	#
.LEHE49:
.L632:
	call	__stack_chk_fail@PLT	#
.L449:
.L583:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rbp	#, tmp1397
	movq	%rbx, %rdi	# _1732,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_1732 + 8B]
	movq	%rbp, %rbx	# tmp1397, tmp1086
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	movq	%r14, %rbp	# v$D164688$_M_impl$D163987$_M_start, __new_finish
	testq	%r14, %r14	# v$D164688$_M_impl$D163987$_M_start
	je	.L363	#,
.L384:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%r13, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%rbp, %rdi	# __new_finish,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	subq	%rbp, %rsi	# __new_finish, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L363	#
.L593:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	movq	360(%rsp), %rax	# D.221444, tmp1447
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1447
	jne	.L635	#,
	leaq	.LC1(%rip), %rdi	#,
.LEHB50:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE50:
.L635:
	call	__stack_chk_fail@PLT	#
.L587:
	movq	360(%rsp), %rax	# D.221444, tmp1441
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1441
	jne	.L636	#,
	leaq	.LC1(%rip), %rdi	#,
.LEHB51:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE51:
.L443:
.L575:
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	32(%rsp), %rdi	# %sfp,
	movl	$20000, %esi	#,
	movq	%rax, %rbp	# tmp1419, tmp833
	movq	%r13, %rbx	# v$D164688$_M_impl$D163987$_M_start, __new_finish
	call	_ZdlPvm@PLT	#
.L288:
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rbx, %rbx	# __new_finish
	je	.L278	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	%r12, %rsi	# v$D164688$_M_impl$D163987$_M_end_of_storage, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%rbx, %rdi	# __new_finish,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	subq	%rbx, %rsi	# __new_finish, v$D164688$_M_impl$D163987$_M_end_of_storage
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L278	#
.L636:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	call	__stack_chk_fail@PLT	#
.L585:
	movq	360(%rsp), %rax	# D.221444, tmp1439
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1439
	jne	.L637	#,
	leaq	.LC1(%rip), %rdi	#,
.LEHB52:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE52:
.L637:
	call	__stack_chk_fail@PLT	#
.L584:
	movq	360(%rsp), %rax	# D.221444, tmp1438
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1438
	jne	.L638	#,
	leaq	.LC1(%rip), %rdi	#,
.LEHB53:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE53:
.L638:
	call	__stack_chk_fail@PLT	#
.L631:
	call	__stack_chk_fail@PLT	#
.L440:
	jmp	.L571	#
.L401:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	176(%rsp), %rdi	# D.164696._M_dataplus._M_p, _170
	jmp	.L400	#
.L592:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	movq	360(%rsp), %rax	# D.221444, tmp1446
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1446
	jne	.L639	#,
	leaq	.LC1(%rip), %rdi	#,
.LEHB54:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE54:
.L589:
	movq	360(%rsp), %rax	# D.221444, tmp1443
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1443
	jne	.L640	#,
	leaq	.LC1(%rip), %rdi	#,
.LEHB55:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE55:
.L639:
	call	__stack_chk_fail@PLT	#
.L640:
	call	__stack_chk_fail@PLT	#
.L448:
.L581:
# /usr/include/c++/16.1.1/coroutine:249:       void destroy() const { __builtin_coro_destroy(_M_fr_ptr); }
	movq	%rax, %rbp	#, tmp1391
	movq	%rbx, %rdi	# _1641,
	call	*8(%rbx)	# MEM[(void (*<T123>) (void *) *)_1641 + 8B]
	movq	%rbp, %rbx	# tmp1391, tmp1054
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	movq	%r14, %rbp	# v$D164688$_M_impl$D163987$_M_start, __new_finish
	testq	%r14, %r14	# v$D164688$_M_impl$D163987$_M_start
	je	.L363	#,
	jmp	.L384	#
.L445:
.L577:
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	%rax, %rbx	#, tmp1377
	movq	320(%rsp), %rax	# MEM[(struct _Function_base *)_2515]._M_manager, _1360
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	testq	%rax, %rax	# _1360
	je	.L336	#,
# /usr/include/c++/16.1.1/bits/std_function.h:249: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	leaq	304(%rsp), %rsi	#, tmp1553
	movl	$3, %edx	#,
	movq	%rsi, %rdi	# tmp1553, tmp1554
	call	*%rax	# _1360
.L336:
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	112(%rsp), %rdi	# MEM[(struct _Vector_base *)_2490]._M_impl.D.163987._M_start, _1445
# /usr/include/c++/16.1.1/bits/stl_vector.h:397: 	if (__p)
	testq	%rdi, %rdi	# _1445
	je	.L317	#,
# /usr/include/c++/16.1.1/bits/stl_vector.h:375: 	ptrdiff_t __n = _M_impl._M_end_of_storage - _M_impl._M_start;
	movq	128(%rsp), %rsi	# MEM[(struct _Vector_base *)_2490]._M_impl.D.163987._M_end_of_storage, _1446
	subq	%rdi, %rsi	# _1445, _1446
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L317	#
.L591:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	movq	360(%rsp), %rax	# D.221444, tmp1445
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1445
	jne	.L641	#,
	leaq	.LC1(%rip), %rdi	#,
.LEHB56:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE56:
.L641:
	call	__stack_chk_fail@PLT	#
.L634:
	call	__stack_chk_fail@PLT	#
.L447:
.L579:
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	movq	%rax, %rbx	#, tmp1382
	movq	320(%rsp), %rax	# MEM[(struct _Function_base *)_2515]._M_manager, _1443
# /usr/include/c++/16.1.1/bits/std_function.h:248:       if (_M_manager)
	testq	%rax, %rax	# _1443
	je	.L336	#,
# /usr/include/c++/16.1.1/bits/std_function.h:249: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	leaq	304(%rsp), %rsi	#, tmp1569
	movl	$3, %edx	#,
	movq	%rsi, %rdi	# tmp1569, tmp1570
	call	*%rax	# _1443
	jmp	.L336	#
.L414:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p, _198
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1663
	cmpq	%rax, %rdi	# tmp1663, _198
	je	.L317	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1664
	leaq	1(%rax), %rsi	#, _201
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L317:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	272(%rsp), %rdi	# MEM[(struct basic_string *)_2704]._M_dataplus._M_p, _202
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	288(%rsp), %rax	#, tmp1665
	cmpq	%rax, %rdi	# tmp1665, _202
	je	.L416	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	288(%rsp), %rax	# MEM[(struct basic_string *)_2704].D.58684._M_allocated_capacity, tmp1666
	leaq	1(%rax), %rsi	#, _205
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L416:
	movq	360(%rsp), %rax	# D.221444, tmp1452
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1452
	jne	.L642	#,
	movq	%rbx, %rdi	# tmp933,
.LEHB57:
	call	_Unwind_Resume@PLT	#
.LEHE57:
.L590:
# /usr/include/c++/16.1.1/bits/std_function.h:580: 	  __throw_bad_function_call();
	movq	360(%rsp), %rax	# D.221444, tmp1444
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1444
	jne	.L643	#,
.LEHB58:
	call	_ZSt25__throw_bad_function_callv@PLT	#
.LEHE58:
.L586:
# /usr/include/c++/16.1.1/bits/stl_vector.h:2195: 	  __throw_length_error(__N(__s));
	movq	360(%rsp), %rax	# D.221444, tmp1440
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1440
	jne	.L644	#,
	leaq	.LC1(%rip), %rdi	#,
.LEHB59:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE59:
.L644:
	call	__stack_chk_fail@PLT	#
.L588:
# /usr/include/c++/16.1.1/bits/std_function.h:580: 	  __throw_bad_function_call();
	movq	360(%rsp), %rax	# D.221444, tmp1442
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1442
	jne	.L645	#,
.LEHB60:
	call	_ZSt25__throw_bad_function_callv@PLT	#
.LEHE60:
.L643:
	call	__stack_chk_fail@PLT	#
.L406:
# /usr/include/c++/16.1.1/bits/basic_string.h:238:       { return _M_dataplus._M_p; }
	movq	304(%rsp), %rdi	# MEM[(const struct basic_string *)_2515]._M_dataplus._M_p, _182
# /usr/include/c++/16.1.1/bits/basic_string.h:279: 	if (_M_data() == _M_local_data())
	leaq	320(%rsp), %rax	#, tmp1655
	cmpq	%rax, %rdi	# tmp1655, _182
	je	.L247	#,
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	320(%rsp), %rax	# MEM[(struct basic_string *)_2515].D.58684._M_allocated_capacity, tmp1656
	leaq	1(%rax), %rsi	#, _185
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L247	#
.L645:
# /usr/include/c++/16.1.1/bits/std_function.h:580: 	  __throw_bad_function_call();
	call	__stack_chk_fail@PLT	#
.L442:
.L573:
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	32(%rsp), %rdi	# %sfp,
	movl	$20000, %esi	#,
	movq	%rax, %rbp	# tmp1420, tmp807
	movq	%r13, %rbx	# v$D164688$_M_impl$D163987$_M_start, __new_finish
	call	_ZdlPvm@PLT	#
	jmp	.L288	#
.L633:
# /usr/include/c++/16.1.1/bits/basic_string.h:304:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	160(%rsp), %rax	# D.164695.D.58684._M_allocated_capacity, tmp1653
	leaq	1(%rax), %rsi	#, _177
# /usr/include/c++/16.1.1/bits/new_allocator.h:183: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
	jmp	.L403	#
.L642:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE7030:
	.section	.gcc_except_table
.LLSDAC7030:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7030-.LLSDACSBC7030
.LLSDACSBC7030:
	.uleb128 .LEHB49-.LCOLDB41
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LCOLDB41
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L449-.LCOLDB41
	.uleb128 0
	.uleb128 .LEHB51-.LCOLDB41
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L443-.LCOLDB41
	.uleb128 0
	.uleb128 .LEHB52-.LCOLDB41
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L441-.LCOLDB41
	.uleb128 0
	.uleb128 .LEHB53-.LCOLDB41
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L440-.LCOLDB41
	.uleb128 0
	.uleb128 .LEHB54-.LCOLDB41
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L448-.LCOLDB41
	.uleb128 0
	.uleb128 .LEHB55-.LCOLDB41
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L445-.LCOLDB41
	.uleb128 0
	.uleb128 .LEHB56-.LCOLDB41
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L447-.LCOLDB41
	.uleb128 0
	.uleb128 .LEHB57-.LCOLDB41
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB58-.LCOLDB41
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L447-.LCOLDB41
	.uleb128 0
	.uleb128 .LEHB59-.LCOLDB41
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L442-.LCOLDB41
	.uleb128 0
	.uleb128 .LEHB60-.LCOLDB41
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L445-.LCOLDB41
	.uleb128 0
.LLSDACSEC7030:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE41:
	.section	.text.startup
.LHOTE41:
	.section	.data.rel.ro,"aw"
	.align 8
	.type	_ZTIZZ4mainENKUlvE1_clEvEUliE_, @object
	.size	_ZTIZZ4mainENKUlvE1_clEvEUliE_, 16
_ZTIZZ4mainENKUlvE1_clEvEUliE_:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
# <anonymous>:
	.quad	_ZTSZZ4mainENKUlvE1_clEvEUliE_
	.section	.rodata
	.align 16
	.type	_ZTSZZ4mainENKUlvE1_clEvEUliE_, @object
	.size	_ZTSZZ4mainENKUlvE1_clEvEUliE_, 28
_ZTSZZ4mainENKUlvE1_clEvEUliE_:
	.string	"*ZZ4mainENKUlvE1_clEvEUliE_"
	.weak	_ZN2fx6detail12effect_tag_vI4EmitIiEEE
	.section	.rodata._ZN2fx6detail12effect_tag_vI4EmitIiEEE,"aG",@progbits,_ZN2fx6detail12effect_tag_vI4EmitIiEEE,comdat
	.type	_ZN2fx6detail12effect_tag_vI4EmitIiEEE, @gnu_unique_object
	.size	_ZN2fx6detail12effect_tag_vI4EmitIiEEE, 1
_ZN2fx6detail12effect_tag_vI4EmitIiEEE:
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
.LC4:
	.quad	_ZN2fx6detail12effect_tag_vI4EmitIiEEE
	.align 8
.LC5:
	.quad	_Z8fx_rangeP19_ZL8fx_rangei.Frame.actor
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC16:
	.long	0
	.long	1084178432
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC30:
	.quad	7308890738865615970
	.quad	3395841054370718066
	.align 16
.LC31:
	.quad	8386658447444108064
	.quad	4417512402945208169
	.align 16
.LC32:
	.quad	8079585701755251044
	.quad	7738135659888014197
	.align 16
.LC33:
	.quad	7310575213499737460
	.quad	7161113100310111008
	.align 16
.LC34:
	.quad	2891429035351633004
	.quad	2982620378115632745
	.align 16
.LC35:
	.quad	7959380316721017971
	.quad	7017488303061038179
	.align 16
.LC36:
	.quad	8030603557092155762
	.quad	7306844540448109685
	.align 16
.LC37:
	.quad	2338053702200485230
	.quad	7810765098757088040
	.align 16
.LC38:
	.quad	8389758864209833285
	.quad	8386658421572968510
	.section	.data.rel.ro.local
	.align 8
.LC39:
	.quad	_ZNSt17_Function_handlerIFviEZZ4mainENKUlvE1_clEvEUliE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.align 8
.LC40:
	.quad	_Z9raw_rangeP20_ZL9raw_rangei.Frame.actor
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
