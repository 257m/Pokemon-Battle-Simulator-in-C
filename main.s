	.text
	.file	"main.c"
	.globl	stratt                          # -- Begin function stratt
	.p2align	4, 0x90
	.type	stratt,@function
stratt:                                 # @stratt
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	callq	strlen@PLT
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	strlen@PLT
	leaq	(%r15,%rax), %rdi
	addq	$1, %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	strcpy@PLT
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcat@PLT
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	stratt, .Lfunc_end0-stratt
	.cfi_endproc
                                        # -- End function
	.globl	str_delete_char                 # -- Begin function str_delete_char
	.p2align	4, 0x90
	.type	str_delete_char,@function
str_delete_char:                        # @str_delete_char
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	strlen@PLT
	subl	%ebp, %eax
	addb	$2, %al
	movsbl	%al, %eax
	cmpl	%ebp, %eax
	jle	.LBB1_8
# %bb.1:
	movslq	%ebp, %r9
	cltq
	movq	%rax, %r10
	subq	%r9, %r10
	cmpq	$8, %r10
	jae	.LBB1_3
# %bb.2:
	movq	%r9, %rdi
	jmp	.LBB1_18
.LBB1_3:
	cmpq	$32, %r10
	jae	.LBB1_9
# %bb.4:
	xorl	%edx, %edx
	jmp	.LBB1_5
.LBB1_9:
	movq	%r10, %rdx
	andq	$-32, %rdx
	leaq	-32(%rdx), %rsi
	movq	%rsi, %r8
	shrq	$5, %r8
	addq	$1, %r8
	testq	%rsi, %rsi
	je	.LBB1_10
# %bb.11:
	leaq	(%r9,%rbx), %rdi
	addq	$49, %rdi
	movq	%r8, %rsi
	andq	$-2, %rsi
	negq	%rsi
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi,%rbp), %xmm0
	movups	-32(%rdi,%rbp), %xmm1
	movups	-16(%rdi,%rbp), %xmm2
	movups	(%rdi,%rbp), %xmm3
	movups	%xmm0, -49(%rdi,%rbp)
	movups	%xmm1, -33(%rdi,%rbp)
	movups	%xmm2, -17(%rdi,%rbp)
	movups	%xmm3, -1(%rdi,%rbp)
	addq	$64, %rbp
	addq	$2, %rsi
	jne	.LBB1_12
# %bb.13:
	testb	$1, %r8b
	je	.LBB1_15
.LBB1_14:
	addq	%r9, %rbp
	movups	1(%rbx,%rbp), %xmm0
	movups	17(%rbx,%rbp), %xmm1
	movups	%xmm0, (%rbx,%rbp)
	movups	%xmm1, 16(%rbx,%rbp)
.LBB1_15:
	cmpq	%rdx, %r10
	je	.LBB1_8
# %bb.16:
	testb	$24, %r10b
	je	.LBB1_17
.LBB1_5:
	movq	%r10, %rsi
	andq	$-8, %rsi
	leaq	(%rsi,%r9), %rdi
	leaq	(%r9,%rbx), %rbp
	addq	$1, %rbp
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbp,%rdx), %rcx
	movq	%rcx, -1(%rbp,%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB1_6
# %bb.7:
	cmpq	%rsi, %r10
	jne	.LBB1_18
	jmp	.LBB1_8
.LBB1_10:
	xorl	%ebp, %ebp
	testb	$1, %r8b
	jne	.LBB1_14
	jmp	.LBB1_15
.LBB1_17:
	addq	%r9, %rdx
	movq	%rdx, %rdi
	.p2align	4, 0x90
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	movzbl	1(%rbx,%rdi), %ecx
	movb	%cl, (%rbx,%rdi)
	leaq	1(%rdi), %rcx
	movq	%rcx, %rdi
	cmpq	%rax, %rcx
	jl	.LBB1_18
.LBB1_8:
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	str_delete_char, .Lfunc_end1-str_delete_char
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function statboostmult
.LCPI2_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI2_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	statboostmult
	.p2align	4, 0x90
	.type	statboostmult,@function
statboostmult:                          # @statboostmult
	.cfi_startproc
# %bb.0:
	movsbl	%dil, %eax
	testb	%dil, %dil
	js	.LBB2_2
# %bb.1:
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI2_0(%rip), %xmm0
	addsd	.LCPI2_1(%rip), %xmm0
	retq
.LBB2_2:
	negl	%eax
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI2_0(%rip), %xmm1
	movsd	.LCPI2_1(%rip), %xmm0           # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
	retq
.Lfunc_end2:
	.size	statboostmult, .Lfunc_end2-statboostmult
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function ppboostmult
.LCPI3_0:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI3_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	ppboostmult
	.p2align	4, 0x90
	.type	ppboostmult,@function
ppboostmult:                            # @ppboostmult
	.cfi_startproc
# %bb.0:
	cvtsi2sd	%edi, %xmm0
	mulsd	.LCPI3_0(%rip), %xmm0
	addsd	.LCPI3_1(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end3:
	.size	ppboostmult, .Lfunc_end3-ppboostmult
	.cfi_endproc
                                        # -- End function
	.globl	map                             # -- Begin function map
	.p2align	4, 0x90
	.type	map,@function
map:                                    # @map
	.cfi_startproc
# %bb.0:
	testl	%edx, %edx
	movl	$2147483647, %eax               # imm = 0x7FFFFFFF
	cmovnel	%edx, %eax
	movl	%edi, %ecx
	cvtsi2sd	%rcx, %xmm0
	cvtsi2sd	%rax, %xmm1
	movl	%esi, %eax
	cvtsi2sd	%rax, %xmm2
	divsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end4:
	.size	map, .Lfunc_end4-map
	.cfi_endproc
                                        # -- End function
	.globl	map2                            # -- Begin function map2
	.p2align	4, 0x90
	.type	map2,@function
map2:                                   # @map2
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	testl	%edx, %edx
	movl	$2147483647, %ebp               # imm = 0x7FFFFFFF
	cmovnel	%edx, %ebp
	movl	%ebp, %eax
	xorl	%edx, %edx
	divl	%esi
	subl	%edx, %ebp
	cmpl	%edi, %ebp
	jae	.LBB5_3
	.p2align	4, 0x90
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	%eax, %ebp
	jb	.LBB5_1
# %bb.2:
	movl	%eax, %edi
.LBB5_3:
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%edx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	map2, .Lfunc_end5-map2
	.cfi_endproc
                                        # -- End function
	.globl	power2                          # -- Begin function power2
	.p2align	4, 0x90
	.type	power2,@function
power2:                                 # @power2
	.cfi_startproc
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	testb	%dil, %dil
	js	.LBB6_1
# %bb.2:
	je	.LBB6_3
# %bb.4:
	testl	%edi, %edi
	movl	$1, %eax
	cmovlel	%eax, %edi
	leal	-1(%rdi), %edx
	movl	%edi, %ecx
	andl	$7, %ecx
	cmpl	$7, %edx
	jb	.LBB6_7
# %bb.5:
	andl	$-8, %edi
	negl	%edi
	movl	$1, %eax
	.p2align	4, 0x90
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	addl	$8, %edi
	jne	.LBB6_6
.LBB6_7:
	testl	%ecx, %ecx
	je	.LBB6_9
	.p2align	4, 0x90
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	addl	%eax, %eax
	addl	$-1, %ecx
	jne	.LBB6_8
.LBB6_9:
	retq
.LBB6_1:
	xorl	%eax, %eax
	retq
.LBB6_3:
	movl	$1, %eax
	retq
.Lfunc_end6:
	.size	power2, .Lfunc_end6-power2
	.cfi_endproc
                                        # -- End function
	.globl	tt                              # -- Begin function tt
	.p2align	4, 0x90
	.type	tt,@function
tt:                                     # @tt
	.cfi_startproc
# %bb.0:
	testl	%edi, %edi
	jne	.LBB7_2
# %bb.1:
	movaps	%xmm1, %xmm0
.LBB7_2:
	retq
.Lfunc_end7:
	.size	tt, .Lfunc_end7-tt
	.cfi_endproc
                                        # -- End function
	.globl	tt2                             # -- Begin function tt2
	.p2align	4, 0x90
	.type	tt2,@function
tt2:                                    # @tt2
	.cfi_startproc
# %bb.0:
	testl	%edi, %edi
	jne	.LBB8_2
# %bb.1:
	movaps	%xmm1, %xmm0
.LBB8_2:
	movsd	%xmm0, (%rsi)
	retq
.Lfunc_end8:
	.size	tt2, .Lfunc_end8-tt2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function never0
.LCPI9_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	never0
	.p2align	4, 0x90
	.type	never0,@function
never0:                                 # @never0
	.cfi_startproc
# %bb.0:
	movsd	.LCPI9_0(%rip), %xmm2           # xmm2 = mem[0],zero
	maxsd	%xmm0, %xmm2
	xorpd	%xmm1, %xmm1
	cmpltsd	%xmm0, %xmm1
	andpd	%xmm1, %xmm2
	andnpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	retq
.Lfunc_end9:
	.size	never0, .Lfunc_end9-never0
	.cfi_endproc
                                        # -- End function
	.globl	PROTECTF                        # -- Begin function PROTECTF
	.p2align	4, 0x90
	.type	PROTECTF,@function
PROTECTF:                               # @PROTECTF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end10:
	.size	PROTECTF, .Lfunc_end10-PROTECTF
	.cfi_endproc
                                        # -- End function
	.globl	LEECH_SEEDF                     # -- Begin function LEECH_SEEDF
	.p2align	4, 0x90
	.type	LEECH_SEEDF,@function
LEECH_SEEDF:                            # @LEECH_SEEDF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end11:
	.size	LEECH_SEEDF, .Lfunc_end11-LEECH_SEEDF
	.cfi_endproc
                                        # -- End function
	.globl	PERISH_SONGF                    # -- Begin function PERISH_SONGF
	.p2align	4, 0x90
	.type	PERISH_SONGF,@function
PERISH_SONGF:                           # @PERISH_SONGF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end12:
	.size	PERISH_SONGF, .Lfunc_end12-PERISH_SONGF
	.cfi_endproc
                                        # -- End function
	.globl	CONFUSIONF                      # -- Begin function CONFUSIONF
	.p2align	4, 0x90
	.type	CONFUSIONF,@function
CONFUSIONF:                             # @CONFUSIONF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end13:
	.size	CONFUSIONF, .Lfunc_end13-CONFUSIONF
	.cfi_endproc
                                        # -- End function
	.globl	ACTIVATE_EFFECTS                # -- Begin function ACTIVATE_EFFECTS
	.p2align	4, 0x90
	.type	ACTIVATE_EFFECTS,@function
ACTIVATE_EFFECTS:                       # @ACTIVATE_EFFECTS
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	Parties@GOTPCREL(%rip), %r14
	movq	88(%r14), %rax
	movsbl	%dil, %ebx
	movzbl	%sil, %ebp
	testb	$1, %al
	jne	.LBB14_1
# %bb.2:
	testb	$2, %al
	jne	.LBB14_3
.LBB14_4:
	testb	$4, %al
	jne	.LBB14_5
.LBB14_6:
	testb	$8, %al
	jne	.LBB14_8
.LBB14_7:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB14_1:
	.cfi_def_cfa_offset 32
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movl	%ebx, %edi
	movl	%ebp, %esi
	callq	*(%rax)
	movq	88(%r14), %rax
	testb	$2, %al
	je	.LBB14_4
.LBB14_3:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movl	%ebx, %edi
	movl	%ebp, %esi
	callq	*8(%rax)
	movq	88(%r14), %rax
	testb	$4, %al
	je	.LBB14_6
.LBB14_5:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movl	%ebx, %edi
	movl	%ebp, %esi
	callq	*16(%rax)
	movq	88(%r14), %rax
	testb	$8, %al
	je	.LBB14_7
.LBB14_8:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movl	%ebx, %edi
	movl	%ebp, %esi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmpq	*%rax                           # TAILCALL
.Lfunc_end14:
	.size	ACTIVATE_EFFECTS, .Lfunc_end14-ACTIVATE_EFFECTS
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function CLEAR_EFFECTS
.LCPI15_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI15_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI15_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI15_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI15_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI15_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI15_6:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.text
	.globl	CLEAR_EFFECTS
	.p2align	4, 0x90
	.type	CLEAR_EFFECTS,@function
CLEAR_EFFECTS:                          # @CLEAR_EFFECTS
	.cfi_startproc
# %bb.0:
	movq	Parties@GOTPCREL(%rip), %rax
	movapd	.LCPI15_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	88(%rax), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI15_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI15_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI15_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI15_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI15_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI15_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm2              # xmm2 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm0, %xmm1                    # xmm1 = xmm0[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm1, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	andnpd	%xmm1, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB15_1
# %bb.2:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 88(%rax)
	movlpd	96(%rax), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI15_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	.p2align	4, 0x90
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm5
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	andnpd	%xmm2, %xmm5
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB15_3
# %bb.4:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 96(%rax)
	retq
.Lfunc_end15:
	.size	CLEAR_EFFECTS, .Lfunc_end15-CLEAR_EFFECTS
	.cfi_endproc
                                        # -- End function
	.globl	CLEAR_EFFECT_COUNTERS           # -- Begin function CLEAR_EFFECT_COUNTERS
	.p2align	4, 0x90
	.type	CLEAR_EFFECT_COUNTERS,@function
CLEAR_EFFECT_COUNTERS:                  # @CLEAR_EFFECT_COUNTERS
	.cfi_startproc
# %bb.0:
	xorps	%xmm0, %xmm0
	movq	Parties@GOTPCREL(%rip), %rax
	movups	%xmm0, 216(%rax)
	movups	%xmm0, 200(%rax)
	movups	%xmm0, 184(%rax)
	movups	%xmm0, 168(%rax)
	movups	%xmm0, 152(%rax)
	movups	%xmm0, 136(%rax)
	movups	%xmm0, 120(%rax)
	movups	%xmm0, 104(%rax)
	retq
.Lfunc_end16:
	.size	CLEAR_EFFECT_COUNTERS, .Lfunc_end16-CLEAR_EFFECT_COUNTERS
	.cfi_endproc
                                        # -- End function
	.globl	Boost                           # -- Begin function Boost
	.p2align	4, 0x90
	.type	Boost,@function
Boost:                                  # @Boost
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	addb	(%rdx,%rax), %sil
	movb	%sil, (%rdx,%rax)
	movb	$6, %cl
	cmpb	$6, %sil
	jg	.LBB17_2
# %bb.1:
	movb	$-6, %cl
	cmpb	$-7, %sil
	jg	.LBB17_3
.LBB17_2:
	movb	%cl, (%rdx,%rax)
.LBB17_3:
	retq
.Lfunc_end17:
	.size	Boost, .Lfunc_end17-Boost
	.cfi_endproc
                                        # -- End function
	.globl	Boostandprint                   # -- Begin function Boostandprint
	.p2align	4, 0x90
	.type	Boostandprint,@function
Boostandprint:                          # @Boostandprint
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	testb	%sil, %sil
	je	.LBB18_10
# %bb.1:
	movzbl	%dil, %r8d
	movsbl	(%rdx,%r8), %edi
	cmpl	$6, %edi
	jl	.LBB18_4
# %bb.2:
	movb	$6, (%rdx,%r8)
	movzbl	%cl, %ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	subq	%rcx, %rax
	subq	%rcx, %rax
	addq	EOPTEXT@GOTPCREL(%rip), %rax
	movzwl	60(%rdx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str(%rip), %rsi
	jmp	.LBB18_3
.LBB18_10:
	retq
.LBB18_4:
	cmpb	$-6, %dil
	jg	.LBB18_6
# %bb.5:
	movb	$-6, (%rdx,%r8)
	movzbl	%cl, %ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	subq	%rcx, %rax
	subq	%rcx, %rax
	addq	EOPTEXT@GOTPCREL(%rip), %rax
	movzwl	60(%rdx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str.1(%rip), %rsi
.LBB18_3:
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	jmp	__printf_chk@PLT                # TAILCALL
.LBB18_6:
	movl	%esi, %eax
	addl	%edi, %esi
	testb	%al, %al
	jle	.LBB18_9
# %bb.7:
	leal	-6(%rsi), %r9d
	cmpl	$6, %esi
	movzbl	%al, %eax
	movzbl	%r9b, %esi
	cmovlel	%eax, %esi
	movsbl	%sil, %r9d
	addb	%r9b, %dil
	movb	%dil, (%rdx,%r8)
	movzbl	%cl, %ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	subq	%rcx, %rax
	subq	%rcx, %rax
	addq	EOPTEXT@GOTPCREL(%rip), %rax
	movzwl	60(%rdx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str.2(%rip), %rsi
	jmp	.LBB18_8
.LBB18_9:
	leal	6(%rsi), %r9d
	cmpl	$-6, %esi
	movzbl	%al, %eax
	movzbl	%r9b, %esi
	cmovgel	%eax, %esi
	movsbl	%sil, %r9d
	addb	%r9b, %dil
	movb	%dil, (%rdx,%r8)
	movzbl	%cl, %ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	subq	%rcx, %rax
	subq	%rcx, %rax
	addq	EOPTEXT@GOTPCREL(%rip), %rax
	movzwl	60(%rdx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	negl	%r9d
	leaq	.L.str.3(%rip), %rsi
.LBB18_8:
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end18:
	.size	Boostandprint, .Lfunc_end18-Boostandprint
	.cfi_endproc
                                        # -- End function
	.globl	ResetBoosts                     # -- Begin function ResetBoosts
	.p2align	4, 0x90
	.type	ResetBoosts,@function
ResetBoosts:                            # @ResetBoosts
	.cfi_startproc
# %bb.0:
	movb	$0, (%rdi)
	retq
.Lfunc_end19:
	.size	ResetBoosts, .Lfunc_end19-ResetBoosts
	.cfi_endproc
                                        # -- End function
	.globl	StatusImmunity                  # -- Begin function StatusImmunity
	.p2align	4, 0x90
	.type	StatusImmunity,@function
StatusImmunity:                         # @StatusImmunity
	.cfi_startproc
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	leal	-2(%rdi), %eax
	cmpb	$2, %al
	jae	.LBB20_6
# %bb.1:
	movl	%esi, %eax
	xorb	$1, %al
	movzbl	%al, %eax
	imulq	$240, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rax,8), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	xorl	%eax, %eax
	cmpw	$8, %dx
	je	.LBB20_5
# %bb.2:
	cmpw	$17, %dx
	je	.LBB20_5
# %bb.3:
	shrl	$5, %ecx
	andl	$31, %ecx
	xorl	%eax, %eax
	cmpw	$8, %cx
	je	.LBB20_5
# %bb.4:
	cmpw	$17, %cx
	je	.LBB20_5
	jmp	.LBB20_9
.LBB20_6:
	cmpb	$1, %dil
	jne	.LBB20_9
# %bb.7:
	movl	%esi, %eax
	xorb	$1, %al
	movzbl	%al, %eax
	imulq	$240, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rax,8), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	xorl	%eax, %eax
	cmpw	$2, %dx
	je	.LBB20_5
# %bb.8:
	andl	$992, %ecx                      # imm = 0x3E0
	cmpw	$64, %cx
	je	.LBB20_5
.LBB20_9:
	movzbl	%sil, %eax
	imulq	$240, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %r8
	movq	48(%r8,%rax), %rax
	movzbl	(%rax), %r9d
	movq	%r9, %rax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rdx
	testb	$8, 31(%rdx,%rax)
	je	.LBB20_12
# %bb.10:
	movl	%esi, %eax
	xorb	$1, %al
	movzbl	%al, %eax
	imulq	$240, %rax, %rax
	movq	(%r8,%rax), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rdx
	movzwl	22(%rdx,%rax,8), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	xorl	%eax, %eax
	cmpw	$5, %dx
	je	.LBB20_5
# %bb.11:
	andl	$992, %ecx                      # imm = 0x3E0
	movzwl	%cx, %ecx
	cmpl	$160, %ecx
	je	.LBB20_5
.LBB20_12:
	cmpb	$6, %dil
	je	.LBB20_16
# %bb.13:
	cmpb	$4, %dil
	jne	.LBB20_18
# %bb.14:
	xorb	$1, %sil
	movzbl	%sil, %eax
	imulq	$240, %rax, %rax
	movq	(%r8,%rax), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rax,8), %edx
	movl	%edx, %esi
	andl	$31, %esi
	cmpw	$4, %si
	je	.LBB20_15
# %bb.19:
	shrl	$5, %edx
	andl	$31, %edx
	cmpw	$4, %dx
	jne	.LBB20_21
.LBB20_15:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.LBB20_16:
	xorb	$1, %sil
	movzbl	%sil, %eax
	imulq	$240, %rax, %rax
	movq	(%r8,%rax), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rax,8), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	xorl	%eax, %eax
	cmpw	$6, %dx
	je	.LBB20_5
# %bb.17:
	andl	$992, %ecx                      # imm = 0x3E0
	movzwl	%cx, %ecx
	cmpl	$192, %ecx
	je	.LBB20_5
.LBB20_18:
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	retq
.LBB20_21:
	cmpb	$11, %r9b
	jne	.LBB20_18
# %bb.22:
	xorl	%eax, %eax
	cmpw	$9, %si
	je	.LBB20_5
# %bb.23:
	cmpw	$9, %dx
	jne	.LBB20_18
.LBB20_5:
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end20:
	.size	StatusImmunity, .Lfunc_end20-StatusImmunity
	.cfi_endproc
                                        # -- End function
	.globl	Nothingf                        # -- Begin function Nothingf
	.p2align	4, 0x90
	.type	Nothingf,@function
Nothingf:                               # @Nothingf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end21:
	.size	Nothingf, .Lfunc_end21-Nothingf
	.cfi_endproc
                                        # -- End function
	.globl	Strugglef                       # -- Begin function Strugglef
	.p2align	4, 0x90
	.type	Strugglef,@function
Strugglef:                              # @Strugglef
	.cfi_startproc
# %bb.0:
	movl	%esi, %eax
	imulq	$240, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rsi
	movq	48(%rsi,%rax), %rdx
	movb	1(%rdx), %cl
	andb	$-64, %cl
	orb	$1, %cl
	movb	%cl, 1(%rdx)
	cmpb	$2, %dil
	jne	.LBB22_2
# %bb.1:
	movq	(%rsi), %rcx
	movl	20(%rcx), %ecx
	shrl	$2, %ecx
	movq	(%rsi,%rax), %rax
	subl	%ecx, 16(%rax)
.LBB22_2:
	retq
.Lfunc_end22:
	.size	Strugglef, .Lfunc_end22-Strugglef
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function StatMod
.LCPI23_0:
	.quad	0x4059000000000000              # double 100
.LCPI23_1:
	.quad	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	StatMod
	.p2align	4, 0x90
	.type	StatMod,@function
StatMod:                                # @StatMod
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $edx killed $edx def $rdx
	movl	%esi, %eax
	imulq	$240, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %r10
	movq	48(%r10,%rax), %rbp
	movzbl	(%rbp), %ebp
	leal	(%rdx,%rdx,4), %r15d
	shlq	$5, %rbp
	movq	MoveList@GOTPCREL(%rip), %rdx
	addq	%rbp, %rdx
	cmpb	$0, 25(%r15,%rdx)
	movl	%esi, %ebx
	jns	.LBB23_2
# %bb.1:
	movl	%esi, %ebx
	xorb	$1, %bl
	movzbl	%bl, %edx
	imulq	$240, %rdx, %rdx
	cmpb	$0, 233(%r10,%rdx)
	js	.LBB23_22
.LBB23_2:
	cmpb	$2, %dil
	jne	.LBB23_22
# %bb.3:
	movl	%esi, %edx
	xorb	$1, %dl
	movzbl	%dl, %edx
	imulq	$240, %rdx, %rdx
	testb	$1, 88(%r10,%rdx)
	je	.LBB23_6
# %bb.4:
	cmpb	%sil, %bl
	je	.LBB23_6
# %bb.5:
	movq	MoveList@GOTPCREL(%rip), %rdx
	movb	31(%rdx,%rbp), %dl
	andb	$2, %dl
	jne	.LBB23_22
.LBB23_6:
	movsd	72(%r10,%rax), %xmm0            # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movzbl	%bl, %r14d
	jne	.LBB23_7
	jnp	.LBB23_8
.LBB23_7:
	movl	233(%r10,%rax), %r9d
	andl	$31, %r9d
	imulq	$240, %r14, %rdi
	movq	(%r10,%rdi), %rdi
	movzwl	60(%rdi), %edi
	andl	$1023, %edi                     # imm = 0x3FF
	leaq	(%rdi,%rdi,2), %r8
	movq	POKEMONDEX@GOTPCREL(%rip), %rdi
	movzwl	22(%rdi,%r8,8), %edi
	movl	%edi, %edx
	andl	$31, %edx
	imulq	$84, %r9, %rcx
	addq	TypeChart@GOTPCREL(%rip), %rcx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	shrq	$3, %rdi
	andl	$124, %edi
	mulss	(%rdi,%rcx), %xmm0
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.LBB23_10
.LBB23_8:
	cmpb	%sil, %bl
	je	.LBB23_10
# %bb.9:
	movq	MoveList@GOTPCREL(%rip), %rcx
	movb	31(%rcx,%rbp), %cl
	andb	$4, %cl
	jne	.LBB23_22
.LBB23_10:
	leaq	(%r10,%rax), %r12
	addq	$48, %r12
	leaq	4(%r15), %rbp
	callq	rand@PLT
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	movq	%rax, %rcx
	shlq	$5, %rcx
	addq	MoveList@GOTPCREL(%rip), %rcx
	movb	21(%rbp,%rcx), %cl
	andb	$127, %cl
	movzbl	%cl, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	divsd	.LCPI23_0(%rip), %xmm1
	mulsd	.LCPI23_1(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_22
# %bb.11:
	imulq	$240, %r14, %r13
	addq	Parties@GOTPCREL(%rip), %r13
	movl	%r15d, %ecx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	$1, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	leal	1(%r15), %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	xorl	%ebx, %ebx
	movq	MoveList@GOTPCREL(%rip), %rbp
	.p2align	4, 0x90
.LBB23_12:                              # =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movl	%ebx, %ecx
	shrl	%ecx
	addl	%r15d, %ecx
	shlq	$5, %rax
	addq	%rbp, %rax
	movzbl	21(%rcx,%rax), %eax
	movl	%eax, %ecx
	testb	$1, %bl
	jne	.LBB23_14
# %bb.13:                               #   in Loop: Header=BB23_12 Depth=1
	shrl	$4, %ecx
	andl	$7, %ecx
	movl	%ecx, %esi
	negl	%esi
	testb	%al, %al
	cmovnsl	%ecx, %esi
	jmp	.LBB23_15
	.p2align	4, 0x90
.LBB23_14:                              #   in Loop: Header=BB23_12 Depth=1
	andl	$7, %ecx
	movl	%ecx, %esi
	negl	%esi
	testb	$8, %al
	cmovel	%ecx, %esi
.LBB23_15:                              #   in Loop: Header=BB23_12 Depth=1
	movq	(%r13), %rdx
	testl	%esi, %esi
	jns	.LBB23_19
# %bb.16:                               #   in Loop: Header=BB23_12 Depth=1
	movzbl	45(%rdx), %eax
	leaq	-5(%rax), %rcx
	cmpq	$2, %rcx
	ja	.LBB23_19
# %bb.17:                               #   in Loop: Header=BB23_12 Depth=1
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	addq	AbilityList@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movzbl	17(%rcx,%rax), %ecx
	btl	%ebx, %ecx
	jae	.LBB23_19
# %bb.18:                               #   in Loop: Header=BB23_12 Depth=1
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movzbl	17(%rcx,%rax), %eax
	testl	%eax, 4(%rsp)                   # 4-byte Folded Reload
	jne	.LBB23_20
	.p2align	4, 0x90
.LBB23_19:                              #   in Loop: Header=BB23_12 Depth=1
	movzbl	%bl, %edi
	movl	%r14d, %ecx
	callq	Boostandprint@PLT
.LBB23_20:                              #   in Loop: Header=BB23_12 Depth=1
	cmpl	$7, %ebx
	je	.LBB23_22
# %bb.21:                               #   in Loop: Header=BB23_12 Depth=1
	addl	$1, %ebx
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	jmp	.LBB23_12
.LBB23_22:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end23:
	.size	StatMod, .Lfunc_end23-StatMod
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function StatusInfliction
.LCPI24_0:
	.quad	0x41dfffffffc00000              # double 2147483647
.LCPI24_1:
	.quad	0x4059000000000000              # double 100
	.text
	.globl	StatusInfliction
	.p2align	4, 0x90
	.type	StatusInfliction,@function
StatusInfliction:                       # @StatusInfliction
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%cl
	cmpb	$2, %dil
	jne	.LBB24_18
# %bb.1:
	movl	%esi, %edx
	xorb	$1, %dl
	movzbl	%dl, %edx
	imulq	$240, %rdx, %rbp
	movq	Parties@GOTPCREL(%rip), %r13
	cmpb	$0, 233(%r13,%rbp)
	js	.LBB24_18
# %bb.2:
	testb	$1, 88(%r13,%rbp)
	movzbl	%sil, %r15d
	je	.LBB24_4
# %bb.3:
	imulq	$240, %r15, %rdx
	movq	48(%r13,%rdx), %rdx
	movzbl	(%rdx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rsi
	testb	$2, 31(%rsi,%rdx)
	jne	.LBB24_18
.LBB24_4:
	movq	%r13, %rdx
	addq	%rbp, %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	imulq	$240, %r15, %rbx
	movsd	72(%r13,%rbx), %xmm0            # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB24_5
	jnp	.LBB24_6
.LBB24_5:
	movl	233(%r13,%rbx), %edx
	andl	$31, %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rsi
	movl	17(%rsi,%rdx), %edx
	shrl	$10, %edx
	andl	$31, %edx
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	(%rsi), %rsi
	movzwl	60(%rsi), %esi
	andl	$1023, %esi                     # imm = 0x3FF
	leaq	(%rsi,%rsi,2), %rsi
	movq	POKEMONDEX@GOTPCREL(%rip), %rdi
	movzwl	22(%rdi,%rsi,8), %esi
	movl	%esi, %edi
	andl	$31, %edi
	imulq	$84, %rdx, %rdx
	addq	TypeChart@GOTPCREL(%rip), %rdx
	movss	(%rdx,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	shrq	$3, %rsi
	andl	$124, %esi
	mulss	(%rsi,%rdx), %xmm0
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.LBB24_7
.LBB24_6:
	movq	48(%r13,%rbx), %rdx
	movzbl	(%rdx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rsi
	testb	$4, 31(%rsi,%rdx)
	jne	.LBB24_18
.LBB24_7:
	movb	%cl, %al
	leal	(%rax,%rax,4), %r14d
	callq	rand@PLT
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movq	48(%r13,%rbx), %rax
	movzbl	(%rax), %r12d
	movzbl	%r14b, %eax
	shlq	$5, %r12
	movq	MoveList@GOTPCREL(%rip), %rcx
	addq	%r12, %rcx
	movzbl	22(%rax,%rcx), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	mulsd	.LCPI24_0(%rip), %xmm1
	divsd	.LCPI24_1(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB24_18
# %bb.8:
	movb	21(%rax,%rcx), %bl
	movzbl	%bl, %r14d
	movl	%r14d, %edi
	movl	%r15d, %esi
	callq	StatusImmunity@PLT
	testb	%al, %al
	jne	.LBB24_10
# %bb.9:
	movq	MoveList@GOTPCREL(%rip), %rax
	testb	$4, 31(%rax,%r12)
	jne	.LBB24_18
.LBB24_10:
	cmpb	$6, %bl
	ja	.LBB24_13
# %bb.11:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movzwl	53(%rax), %edx
	movzbl	55(%rax), %ecx
	shll	$16, %ecx
	orl	%edx, %ecx
	testl	$3840, %ecx                     # imm = 0xF00
	je	.LBB24_12
.LBB24_13:
	cmpb	$8, %bl
	je	.LBB24_17
# %bb.14:
	cmpb	$7, %bl
	jne	.LBB24_18
# %bb.15:
	leaq	88(,%rbp), %rax
	addq	%r13, %rax
	orb	$8, (%rax)
	cmpb	$0, 107(%r13,%rbp)
	jne	.LBB24_18
# %bb.16:
	leaq	107(,%rbp), %rbx
	addq	%r13, %rbx
	callq	rand@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$252, %ecx
	subl	%ecx, %eax
	addb	$2, %al
	movb	%al, (%rbx)
	jmp	.LBB24_18
.LBB24_17:
	leaq	233(,%rbp), %rax
	addq	%r13, %rax
	orb	$16, 1(%rax)
	jmp	.LBB24_18
.LBB24_12:
	shll	$8, %r14d
	movl	%ecx, %edx
	andl	$16773375, %edx                 # imm = 0xFFF0FF
	orl	%r14d, %edx
	shrl	$16, %ecx
	movb	%cl, 55(%rax)
	movw	%dx, 53(%rax)
.LBB24_18:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end24:
	.size	StatusInfliction, .Lfunc_end24-StatusInfliction
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function ProtectingMove
.LCPI25_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI25_1:
	.quad	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	ProtectingMove
	.p2align	4, 0x90
	.type	ProtectingMove,@function
ProtectingMove:                         # @ProtectingMove
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%esi, %ebx
	cmpb	$5, %dil
	je	.LBB25_6
# %bb.1:
	cmpb	$1, %dil
	jne	.LBB25_7
# %bb.2:
	callq	rand@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movzbl	%bl, %eax
	imulq	$240, %rax, %r12
	movq	Parties@GOTPCREL(%rip), %r15
	leaq	(%r15,%r12), %r14
	addq	$104, %r14
	movsbl	104(%r15,%r12), %edi
	movsd	.LCPI25_0(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	ldexp@PLT
	movsd	.LCPI25_1(%rip), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	.LCPI25_0(%rip), %xmm1
	ucomisd	(%rsp), %xmm1                   # 8-byte Folded Reload
	jbe	.LBB25_5
# %bb.3:
	movq	First@GOTPCREL(%rip), %rax
	xorb	$1, %bl
	cmpb	%bl, (%rax)
	jne	.LBB25_5
# %bb.4:
	orb	$1, 88(%r15,%r12)
	movzbl	%bl, %eax
	imulq	$240, %rax, %rax
	orb	$1, 234(%r15,%rax)
	addb	$1, (%r14)
	jmp	.LBB25_7
.LBB25_6:
	movzbl	%bl, %eax
	imulq	$240, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	andb	$-2, 88(%rcx,%rax)
.LBB25_7:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB25_5:
	.cfi_def_cfa_offset 48
	movb	$0, (%r14)
	leaq	.L.str.4(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end25:
	.size	ProtectingMove, .Lfunc_end25-ProtectingMove
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function RoarFunc
.LCPI26_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI26_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI26_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI26_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI26_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI26_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI26_6:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.text
	.globl	RoarFunc
	.p2align	4, 0x90
	.type	RoarFunc,@function
RoarFunc:                               # @RoarFunc
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpb	$2, %dil
	jne	.LBB26_11
# %bb.1:
	movl	%esi, %eax
	xorb	$1, %al
	movzbl	%al, %eax
	imulq	$240, %rax, %rbx
	movq	Parties@GOTPCREL(%rip), %r14
	cmpb	$0, 233(%r14,%rbx)
	js	.LBB26_11
# %bb.2:
	testb	$1, 88(%r14,%rbx)
	je	.LBB26_4
# %bb.3:
	movzbl	%sil, %eax
	imulq	$240, %rax, %rax
	movq	48(%r14,%rax), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rcx
	testb	$2, 31(%rcx,%rax)
	jne	.LBB26_11
.LBB26_4:
	callq	rand@PLT
	movq	8(%r14,%rbx), %rcx
	movq	16(%r14,%rbx), %rdx
	xorl	%esi, %esi
	cmpl	$0, 16(%rcx)
	setg	%sil
	xorl	%ecx, %ecx
	cmpl	$0, 16(%rdx)
	setg	%cl
	addl	%esi, %ecx
	movq	24(%r14,%rbx), %rdx
	xorl	%esi, %esi
	cmpl	$0, 16(%rdx)
	setg	%sil
	addl	%ecx, %esi
	movq	32(%r14,%rbx), %rcx
	xorl	%edx, %edx
	cmpl	$0, 16(%rcx)
	setg	%dl
	addl	%esi, %edx
	movq	40(%r14,%rbx), %rcx
	xorl	%esi, %esi
	cmpl	$0, 16(%rcx)
	setg	%sil
	addl	%edx, %esi
	cltd
	idivl	%esi
	addb	$1, %dl
	movq	Parties@GOTPCREL(%rip), %rax
	addq	%rbx, %rax
	.p2align	4, 0x90
.LBB26_5:                               # =>This Inner Loop Header: Depth=1
	movzbl	%dl, %ecx
	movq	(%rax,%rcx,8), %rsi
	movl	%ecx, %edx
	addb	$1, %dl
	cmpl	$0, 16(%rsi)
	jle	.LBB26_5
# %bb.6:
	leaq	(%rax,%rcx,8), %rax
	movq	(%r14,%rbx), %rcx
	movb	$0, (%rcx)
	movapd	.LCPI26_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	88(%r14), %xmm7                 # xmm7 = mem[0],xmm7[1]
	leaq	(%r14,%rbx), %rcx
	movdqa	.LCPI26_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %edx
	movdqa	.LCPI26_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI26_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI26_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI26_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI26_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB26_7:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm2              # xmm2 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm0, %xmm1                    # xmm1 = xmm0[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm1, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	andnpd	%xmm1, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rdx
	jne	.LBB26_7
# %bb.8:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 88(%r14)
	movlpd	96(%r14), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI26_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %edx
	.p2align	4, 0x90
.LBB26_9:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm5
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	andnpd	%xmm2, %xmm5
	paddq	%xmm4, %xmm6
	addq	$-8, %rdx
	jne	.LBB26_9
# %bb.10:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 96(%r14)
	movq	(%rcx), %rdx
	movq	(%rax), %rsi
	movq	%rsi, (%rcx)
	movq	%rdx, (%rax)
	movq	(%rcx), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.5(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.LBB26_11:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end26:
	.size	RoarFunc, .Lfunc_end26-RoarFunc
	.cfi_endproc
                                        # -- End function
	.globl	Switch                          # -- Begin function Switch
	.p2align	4, 0x90
	.type	Switch,@function
Switch:                                 # @Switch
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	imulq	$240, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %r8
	leaq	(%r8,%rax), %rdx
	movq	(%r8,%rax), %rdi
	movl	%esi, %esi
	movq	(%rdx,%rsi,8), %rcx
	movq	%rcx, (%r8,%rax)
	movq	%rdi, (%rdx,%rsi,8)
	retq
.Lfunc_end27:
	.size	Switch, .Lfunc_end27-Switch
	.cfi_endproc
                                        # -- End function
	.globl	Hp_Draining_Move                # -- Begin function Hp_Draining_Move
	.p2align	4, 0x90
	.type	Hp_Draining_Move,@function
Hp_Draining_Move:                       # @Hp_Draining_Move
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%cl
	cmpb	$2, %dil
	jne	.LBB28_7
# %bb.1:
	movb	%cl, %al
	leal	(%rax,%rax,4), %edx
	movzbl	%sil, %r15d
	imulq	$240, %r15, %rbx
	movq	Parties@GOTPCREL(%rip), %r12
	movl	56(%r12,%rbx), %r9d
	movq	(%r12,%rbx), %rax
	movq	48(%r12,%rbx), %rsi
	movzbl	(%rsi), %esi
	movzbl	%dl, %edx
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movzbl	21(%rdx,%rsi), %edi
	imull	%r9d, %edi
	movslq	%edi, %rdi
	imulq	$1374389535, %rdi, %rdi         # imm = 0x51EB851F
	movq	%rdi, %rcx
	shrq	$63, %rcx
	sarq	$37, %rdi
	addl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmpb	$0, 22(%rdx,%rsi)
	cmovnsl	%edi, %ecx
	movl	16(%rax), %edx
	movl	20(%rax), %esi
	leal	(%rcx,%rdx), %edi
	movl	%esi, %r8d
	subl	%edx, %r8d
	cmpl	%esi, %edi
	cmovbel	%ecx, %r8d
	movl	%r8d, %ecx
	addl	%edx, %ecx
	cmovsl	%edx, %r8d
	leaq	(%r12,%rbx), %r13
	addl	%r8d, %edx
	movl	%edx, 16(%rax)
	testl	%r8d, %r8d
	jle	.LBB28_2
# %bb.8:
	movq	%r15, %rbx
	shlq	$4, %rbx
	subq	%r15, %rbx
	subq	%r15, %rbx
	addq	EOPTEXT@GOTPCREL(%rip), %rbx
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %r14
	leaq	(%r14,%rax,8), %rcx
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r14,%rcx,8), %rcx
	movl	16(%rax), %r8d
	movl	20(%rax), %r9d
	leaq	.L.str.7(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.LBB28_2:
	.cfi_def_cfa_offset 64
	js	.LBB28_3
# %bb.5:
	testl	%r9d, %r9d
	jle	.LBB28_7
# %bb.6:
	cmpl	%esi, %edx
	jne	.LBB28_7
# %bb.9:
	movq	%r15, %rdx
	shlq	$4, %rdx
	subq	%r15, %rdx
	subq	%r15, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.LBB28_3:
	.cfi_def_cfa_offset 64
	movq	%r15, %r14
	shlq	$4, %r14
	subq	%r15, %r14
	subq	%r15, %r14
	addq	EOPTEXT@GOTPCREL(%rip), %r14
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rbp
	leaq	(,%rax,8), %rcx
	addq	%rbp, %rcx
	negl	%r8d
	leaq	.L.str.8(%rip), %rsi
	movl	$1, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(,%rcx,8), %rcx
	addq	%rbp, %rcx
	movl	16(%rax), %r8d
	movl	20(%rax), %r9d
	leaq	.L.str.7(%rip), %rsi
	movl	$1, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	cmpl	$0, 16(%rax)
	jg	.LBB28_7
# %bb.4:
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.9(%rip), %rsi
	movl	$1, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	%r15d, %edi
	callq	SwitchIn@PLT
	orb	$-128, 233(%r12,%rbx)
.LBB28_7:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end28:
	.size	Hp_Draining_Move, .Lfunc_end28-Hp_Draining_Move
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function SwitchIn
.LCPI29_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI29_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI29_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI29_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI29_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI29_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI29_6:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.text
	.globl	SwitchIn
	.p2align	4, 0x90
	.type	SwitchIn,@function
SwitchIn:                               # @SwitchIn
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %ebx
	movq	%fs:40, %rax
	movq	%rax, 16(%rsp)
	movb	$0, 15(%rsp)
	callq	CheckIfAllDead@PLT
	testl	%eax, %eax
	je	.LBB29_60
# %bb.1:
	movzbl	%bl, %eax
	movq	%rax, (%rsp)                    # 8-byte Spill
	imulq	$240, %rax, %r15
	movq	Parties@GOTPCREL(%rip), %r13
	leaq	(%r15,%r13), %r14
	addq	$233, %r14
	movq	x@GOTPCREL(%rip), %rbx
	leaq	15(%rsp), %r12
	.p2align	4, 0x90
.LBB29_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_5 Depth 2
	movl	$1, %edi
	leaq	.L.str.55(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.40(%rip), %rdi
	callq	system@PLT
	testb	$1, 2(%r14)
	jne	.LBB29_4
# %bb.3:                                #   in Loop: Header=BB29_2 Depth=1
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	jmp	.LBB29_7
	.p2align	4, 0x90
.LBB29_4:                               #   in Loop: Header=BB29_2 Depth=1
	callq	rand@PLT
	movq	-225(%r14), %rcx
	xorl	%edx, %edx
	cmpl	$0, 16(%rcx)
	setg	%dl
	movq	-217(%r14), %rcx
	xorl	%esi, %esi
	cmpl	$0, 16(%rcx)
	setg	%sil
	addl	%edx, %esi
	movq	-209(%r14), %rcx
	xorl	%edx, %edx
	cmpl	$0, 16(%rcx)
	setg	%dl
	addl	%esi, %edx
	movq	-201(%r14), %rcx
	xorl	%esi, %esi
	cmpl	$0, 16(%rcx)
	setg	%sil
	addl	%edx, %esi
	movq	%r14, %rbp
	movq	-193(%r14), %rcx
	xorl	%edi, %edi
	cmpl	$0, 16(%rcx)
	setg	%dil
	addl	%esi, %edi
	cltd
	idivl	%edi
                                        # kill: def $edx killed $edx def $rdx
	addb	$49, %dl
	.p2align	4, 0x90
.LBB29_5:                               #   Parent Loop BB29_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rdx), %eax
	movzbl	%al, %eax
	leaq	(%r15,%r13), %rcx
	movq	(%rcx,%rax,8), %rax
	addb	$1, %dl
	cmpl	$0, 16(%rax)
	jle	.LBB29_5
# %bb.6:                                #   in Loop: Header=BB29_2 Depth=1
	movb	%dl, 15(%rsp)
	movq	%r12, %rbx
	movq	%r12, %rdi
	callq	strlen@PLT
	leaq	2(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %r14
	movw	$80, (%rax)
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	strcat@PLT
	movl	$32, %edx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__strcpy_chk@PLT
	movl	$1, %edi
	leaq	.L.str.57(%rip), %rsi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	%rbp, %r14
.LBB29_7:                               #   in Loop: Header=BB29_2 Depth=1
	leaq	.L.str.39(%rip), %rdi
	callq	system@PLT
	movl	$1, %edi
	leaq	.L.str.44(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.43(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB29_11
# %bb.8:                                #   in Loop: Header=BB29_2 Depth=1
	movq	-225(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbp
	shlq	$3, %rbp
	addq	POKEMONDEX@GOTPCREL(%rip), %rbp
	movq	%rbp, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%rbx)
	movl	$2125684, 7(%rbx)               # imm = 0x206F74
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	strcat@PLT
	movq	x@GOTPCREL(%rip), %rdi
	movq	%rbx, %rsi
	movq	x@GOTPCREL(%rip), %rbx
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB29_11
# %bb.9:                                #   in Loop: Header=BB29_2 Depth=1
	movq	-225(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB29_11
# %bb.10:                               #   in Loop: Header=BB29_2 Depth=1
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB29_11
# %bb.19:                               #   in Loop: Header=BB29_2 Depth=1
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB29_23
# %bb.20:                               #   in Loop: Header=BB29_2 Depth=1
	movq	-217(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	POKEMONDEX@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%rbp)
	movl	$2125684, 7(%rbp)               # imm = 0x206F74
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	x@GOTPCREL(%rip), %rbx
	callq	strcat@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB29_23
# %bb.21:                               #   in Loop: Header=BB29_2 Depth=1
	movq	-217(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB29_23
# %bb.22:                               #   in Loop: Header=BB29_2 Depth=1
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB29_23
# %bb.29:                               #   in Loop: Header=BB29_2 Depth=1
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB29_33
# %bb.30:                               #   in Loop: Header=BB29_2 Depth=1
	movq	-209(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	POKEMONDEX@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%rbp)
	movl	$2125684, 7(%rbp)               # imm = 0x206F74
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	x@GOTPCREL(%rip), %rbx
	callq	strcat@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB29_33
# %bb.31:                               #   in Loop: Header=BB29_2 Depth=1
	movq	-209(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB29_33
# %bb.32:                               #   in Loop: Header=BB29_2 Depth=1
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB29_33
# %bb.39:                               #   in Loop: Header=BB29_2 Depth=1
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB29_43
# %bb.40:                               #   in Loop: Header=BB29_2 Depth=1
	movq	-201(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	POKEMONDEX@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%rbp)
	movl	$2125684, 7(%rbp)               # imm = 0x206F74
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	x@GOTPCREL(%rip), %rbx
	callq	strcat@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB29_43
# %bb.41:                               #   in Loop: Header=BB29_2 Depth=1
	movq	-201(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB29_43
# %bb.42:                               #   in Loop: Header=BB29_2 Depth=1
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB29_43
# %bb.49:                               #   in Loop: Header=BB29_2 Depth=1
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB29_53
# %bb.50:                               #   in Loop: Header=BB29_2 Depth=1
	movq	-193(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	POKEMONDEX@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%rbp)
	movl	$2125684, 7(%rbp)               # imm = 0x206F74
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	x@GOTPCREL(%rip), %rbx
	callq	strcat@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB29_53
# %bb.51:                               #   in Loop: Header=BB29_2 Depth=1
	movq	-193(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB29_53
# %bb.52:                               #   in Loop: Header=BB29_2 Depth=1
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB29_53
# %bb.62:                               #   in Loop: Header=BB29_2 Depth=1
	movq	(%rbx), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%rbx), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB29_65
# %bb.63:                               #   in Loop: Header=BB29_2 Depth=1
	movl	(%rbx), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%rbx), %ecx
	orl	%eax, %ecx
	je	.LBB29_65
# %bb.64:                               #   in Loop: Header=BB29_2 Depth=1
	movl	(%rbx), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%rbx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB29_65
# %bb.66:                               #   in Loop: Header=BB29_2 Depth=1
	movl	$1, %edi
	leaq	.L.str.74(%rip), %rsi
	jmp	.LBB29_18
	.p2align	4, 0x90
.LBB29_11:                              #   in Loop: Header=BB29_2 Depth=1
	movq	-225(%r14), %rax
	cmpl	$0, 16(%rax)
	jg	.LBB29_12
.LBB29_17:                              #   in Loop: Header=BB29_2 Depth=1
	movl	$1, %edi
	leaq	.L.str.62(%rip), %rsi
.LBB29_18:                              #   in Loop: Header=BB29_2 Depth=1
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.37(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.38(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.39(%rip), %rdi
	callq	system@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	getc@PLT
	leaq	.L.str.40(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.41(%rip), %rdi
	callq	system@PLT
	movl	$1, %edi
	leaq	.L.str.42(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.43(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB29_2
.LBB29_23:                              #   in Loop: Header=BB29_2 Depth=1
	movq	-217(%r14), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB29_17
	jmp	.LBB29_24
.LBB29_33:                              #   in Loop: Header=BB29_2 Depth=1
	movq	-209(%r14), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB29_17
	jmp	.LBB29_34
.LBB29_43:                              #   in Loop: Header=BB29_2 Depth=1
	movq	-201(%r14), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB29_17
	jmp	.LBB29_44
.LBB29_53:                              #   in Loop: Header=BB29_2 Depth=1
	movq	-193(%r14), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB29_17
	jmp	.LBB29_54
.LBB29_65:                              #   in Loop: Header=BB29_2 Depth=1
	movq	(%rsp), %rdi                    # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	callq	displayparty@PLT
	jmp	.LBB29_2
.LBB29_12:
	movq	(%r13,%r15), %rax
	movb	$0, (%rax)
	movapd	.LCPI29_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	88(%r13), %xmm7                 # xmm7 = mem[0],xmm7[1]
	leaq	(%r13,%r15), %rax
	movdqa	.LCPI29_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI29_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI29_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI29_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI29_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI29_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB29_13:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm2              # xmm2 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm0, %xmm1                    # xmm1 = xmm0[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm1, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	andnpd	%xmm1, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB29_13
# %bb.14:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 88(%r13)
	movlpd	96(%r13), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI29_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	.p2align	4, 0x90
.LBB29_15:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm5
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	andnpd	%xmm2, %xmm5
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB29_15
# %bb.16:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 96(%r13)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 104(%r13)
	movdqu	%xmm0, 120(%r13)
	movdqu	%xmm0, 136(%r13)
	movdqu	%xmm0, 152(%r13)
	movdqu	%xmm0, 168(%r13)
	movdqu	%xmm0, 184(%r13)
	movdqu	%xmm0, 200(%r13)
	movdqu	%xmm0, 216(%r13)
	movq	(%rax), %rdx
	movq	-225(%r14), %rcx
	movq	%rcx, (%rax)
	movq	%rdx, -225(%r14)
.LBB29_59:
	movzwl	60(%rcx), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.61(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.40(%rip), %rdi
	callq	system@PLT
.LBB29_60:
	movq	%fs:40, %rax
	cmpq	16(%rsp), %rax
	jne	.LBB29_67
# %bb.61:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB29_24:
	.cfi_def_cfa_offset 80
	movq	(%r13,%r15), %rax
	movb	$0, (%rax)
	movapd	.LCPI29_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	88(%r13), %xmm7                 # xmm7 = mem[0],xmm7[1]
	leaq	(%r13,%r15), %rax
	movdqa	.LCPI29_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI29_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI29_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI29_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI29_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI29_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB29_25:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm2              # xmm2 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm0, %xmm1                    # xmm1 = xmm0[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm1, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	andnpd	%xmm1, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB29_25
# %bb.26:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 88(%r13)
	movlpd	96(%r13), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI29_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	.p2align	4, 0x90
.LBB29_27:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm5
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	andnpd	%xmm2, %xmm5
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB29_27
# %bb.28:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 96(%r13)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 104(%r13)
	movdqu	%xmm0, 120(%r13)
	movdqu	%xmm0, 136(%r13)
	movdqu	%xmm0, 152(%r13)
	movdqu	%xmm0, 168(%r13)
	movdqu	%xmm0, 184(%r13)
	movdqu	%xmm0, 200(%r13)
	movdqu	%xmm0, 216(%r13)
	movq	(%rax), %rdx
	movq	-217(%r14), %rcx
	movq	%rcx, (%rax)
	movq	%rdx, -217(%r14)
	jmp	.LBB29_59
.LBB29_34:
	movq	(%r13,%r15), %rax
	movb	$0, (%rax)
	movapd	.LCPI29_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	88(%r13), %xmm7                 # xmm7 = mem[0],xmm7[1]
	leaq	(%r13,%r15), %rax
	movdqa	.LCPI29_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI29_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI29_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI29_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI29_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI29_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB29_35:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm2              # xmm2 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm0, %xmm1                    # xmm1 = xmm0[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm1, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	andnpd	%xmm1, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB29_35
# %bb.36:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 88(%r13)
	movlpd	96(%r13), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI29_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	.p2align	4, 0x90
.LBB29_37:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm5
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	andnpd	%xmm2, %xmm5
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB29_37
# %bb.38:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 96(%r13)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 104(%r13)
	movdqu	%xmm0, 120(%r13)
	movdqu	%xmm0, 136(%r13)
	movdqu	%xmm0, 152(%r13)
	movdqu	%xmm0, 168(%r13)
	movdqu	%xmm0, 184(%r13)
	movdqu	%xmm0, 200(%r13)
	movdqu	%xmm0, 216(%r13)
	movq	(%rax), %rdx
	movq	-209(%r14), %rcx
	movq	%rcx, (%rax)
	movq	%rdx, -209(%r14)
	jmp	.LBB29_59
.LBB29_44:
	movq	(%r13,%r15), %rax
	movb	$0, (%rax)
	movapd	.LCPI29_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	88(%r13), %xmm7                 # xmm7 = mem[0],xmm7[1]
	leaq	(%r13,%r15), %rax
	movdqa	.LCPI29_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI29_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI29_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI29_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI29_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI29_6(%rip), %xmm4          # xmm4 = [8,8]
.LBB29_45:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm2              # xmm2 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm0, %xmm1                    # xmm1 = xmm0[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm1, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	andnpd	%xmm1, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB29_45
# %bb.46:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 88(%r13)
	movlpd	96(%r13), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI29_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
.LBB29_47:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm5
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	andnpd	%xmm2, %xmm5
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB29_47
# %bb.48:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 96(%r13)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 104(%r13)
	movdqu	%xmm0, 120(%r13)
	movdqu	%xmm0, 136(%r13)
	movdqu	%xmm0, 152(%r13)
	movdqu	%xmm0, 168(%r13)
	movdqu	%xmm0, 184(%r13)
	movdqu	%xmm0, 200(%r13)
	movdqu	%xmm0, 216(%r13)
	movq	(%rax), %rdx
	movq	-201(%r14), %rcx
	movq	%rcx, (%rax)
	movq	%rdx, -201(%r14)
	jmp	.LBB29_59
.LBB29_54:
	movq	(%r13,%r15), %rax
	movb	$0, (%rax)
	movapd	.LCPI29_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	88(%r13), %xmm7                 # xmm7 = mem[0],xmm7[1]
	leaq	(%r13,%r15), %rax
	movdqa	.LCPI29_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI29_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI29_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI29_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI29_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI29_6(%rip), %xmm4          # xmm4 = [8,8]
.LBB29_55:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm2              # xmm2 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm0, %xmm1                    # xmm1 = xmm0[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm1, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	andnpd	%xmm1, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB29_55
# %bb.56:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 88(%r13)
	movlpd	96(%r13), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI29_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
.LBB29_57:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm5
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	andnpd	%xmm2, %xmm5
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB29_57
# %bb.58:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 96(%r13)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 104(%r13)
	movdqu	%xmm0, 120(%r13)
	movdqu	%xmm0, 136(%r13)
	movdqu	%xmm0, 152(%r13)
	movdqu	%xmm0, 168(%r13)
	movdqu	%xmm0, 184(%r13)
	movdqu	%xmm0, 200(%r13)
	movdqu	%xmm0, 216(%r13)
	movq	(%rax), %rdx
	movq	-193(%r14), %rcx
	movq	%rcx, (%rax)
	movq	%rdx, -193(%r14)
	jmp	.LBB29_59
.LBB29_67:
	callq	__stack_chk_fail@PLT
.Lfunc_end29:
	.size	SwitchIn, .Lfunc_end29-SwitchIn
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function EdgeCase
.LCPI30_0:
	.quad	0x4059000000000000              # double 100
.LCPI30_1:
	.quad	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	EdgeCase
	.p2align	4, 0x90
	.type	EdgeCase,@function
EdgeCase:                               # @EdgeCase
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpb	$2, %dil
	jne	.LBB30_6
# %bb.1:
	movl	%esi, %eax
	imulq	$240, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	48(%rcx,%rax), %rdi
	cmpb	$50, (%rdi)
	jne	.LBB30_6
# %bb.2:
	leaq	(%rcx,%rax), %r15
	addq	$48, %r15
	movzbl	%dl, %eax
	leaq	(%rax,%rax,4), %rbx
	xorb	$1, %sil
	movzbl	%sil, %r14d
	imulq	$240, %r14, %r12
	addq	Parties@GOTPCREL(%rip), %r12
	xorl	%ebp, %ebp
	movq	MoveList@GOTPCREL(%rip), %r13
	jmp	.LBB30_3
	.p2align	4, 0x90
.LBB30_5:                               #   in Loop: Header=BB30_3 Depth=1
	addl	$1, %ebp
	cmpl	$8, %ebp
	je	.LBB30_6
.LBB30_3:                               # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movq	(%r15), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	addq	%r13, %rax
	movzbl	21(%rbx,%rax), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	.LCPI30_0(%rip), %xmm1
	mulsd	.LCPI30_1(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_5
# %bb.4:                                #   in Loop: Header=BB30_3 Depth=1
	movq	(%r12), %rdx
	movzbl	%bpl, %edi
	movl	$-12, %esi
	movl	%r14d, %ecx
	callq	Boostandprint@PLT
	jmp	.LBB30_5
.LBB30_6:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end30:
	.size	EdgeCase, .Lfunc_end30-EdgeCase
	.cfi_endproc
                                        # -- End function
	.globl	NoAbilityf                      # -- Begin function NoAbilityf
	.p2align	4, 0x90
	.type	NoAbilityf,@function
NoAbilityf:                             # @NoAbilityf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end31:
	.size	NoAbilityf, .Lfunc_end31-NoAbilityf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function TypeBasedBoost
.LCPI32_0:
	.quad	0x3ff8000000000000              # double 1.5
	.text
	.globl	TypeBasedBoost
	.p2align	4, 0x90
	.type	TypeBasedBoost,@function
TypeBasedBoost:                         # @TypeBasedBoost
	.cfi_startproc
# %bb.0:
	cmpb	$1, %dil
	jne	.LBB32_4
# %bb.1:
	movzbl	%sil, %eax
	imulq	$240, %rax, %r10
	movq	Parties@GOTPCREL(%rip), %r8
	movq	(%r8,%r10), %rax
	movq	48(%r8,%r10), %rsi
	movzbl	45(%rax), %edx
	leaq	(%rdx,%rdx,8), %rdi
	leaq	(%rdx,%rdi,2), %rdx
	movq	AbilityList@GOTPCREL(%rip), %r9
	movzbl	17(%r9,%rdx), %edi
	movzbl	(%rsi), %esi
	shlq	$5, %rsi
	movq	MoveList@GOTPCREL(%rip), %rcx
	movl	17(%rcx,%rsi), %ecx
	shrl	$10, %ecx
	andl	$31, %ecx
	cmpl	%edi, %ecx
	jne	.LBB32_4
# %bb.2:
	movl	16(%rax), %ecx
	movl	20(%rax), %eax
	movzbl	18(%r9,%rdx), %esi
	xorl	%edx, %edx
	divl	%esi
	cmpl	%eax, %ecx
	ja	.LBB32_4
# %bb.3:
	movsd	72(%r8,%r10), %xmm0             # xmm0 = mem[0],zero
	mulsd	.LCPI32_0(%rip), %xmm0
	movsd	%xmm0, 72(%r8,%r10)
.LBB32_4:
	retq
.Lfunc_end32:
	.size	TypeBasedBoost, .Lfunc_end32-TypeBasedBoost
	.cfi_endproc
                                        # -- End function
	.globl	StatDecreaseImmunity            # -- Begin function StatDecreaseImmunity
	.p2align	4, 0x90
	.type	StatDecreaseImmunity,@function
StatDecreaseImmunity:                   # @StatDecreaseImmunity
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end33:
	.size	StatDecreaseImmunity, .Lfunc_end33-StatDecreaseImmunity
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function TypeChange
.LCPI34_0:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI34_1:
	.quad	0x4034000000000000              # double 20
.LCPI34_2:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	TypeChange
	.p2align	4, 0x90
	.type	TypeChange,@function
TypeChange:                             # @TypeChange
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpb	$2, %dil
	jne	.LBB34_8
# %bb.1:
	movzbl	%sil, %eax
	imulq	$240, %rax, %r14
	movq	Parties@GOTPCREL(%rip), %r8
	movl	233(%r8,%r14), %ecx
	movl	%ecx, %eax
	andl	$31, %eax
	movq	(%r8,%r14), %r10
	movzbl	45(%r10), %edx
	leaq	(%rdx,%rdx,8), %rdi
	leaq	(%rdx,%rdi,2), %rdx
	movq	AbilityList@GOTPCREL(%rip), %r11
	movzbl	17(%r11,%rdx), %edi
	movl	%edi, %ebx
	shrl	$3, %ebx
	cmpl	%ebx, %eax
	jne	.LBB34_8
# %bb.2:
	movb	18(%r11,%rdx), %r9b
	movzbl	%r9b, %edx
	testb	$32, %dl
	jne	.LBB34_3
# %bb.6:
	leaq	(%r8,%r14), %rax
	addq	$233, %rax
	shrl	$6, %edx
	andl	$7, %edi
	andl	$-32, %ecx
	leal	(%rcx,%rdi,4), %ecx
	orl	%edx, %ecx
	movl	%ecx, (%rax)
	movzbl	45(%r10), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movb	18(%r11,%rax), %r9b
	movsd	72(%r8,%r14), %xmm0             # xmm0 = mem[0],zero
	jmp	.LBB34_7
.LBB34_3:
	shll	$2, %edi
	andl	$28, %edi
	movq	%rdx, %rax
	shrq	$6, %rax
	orq	%rdi, %rax
	xorb	$1, %sil
	movzbl	%sil, %ecx
	imulq	$240, %rcx, %rcx
	movq	(%r8,%rcx), %rcx
	movzwl	60(%rcx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	movq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movzwl	22(%rsi,%rcx,8), %ecx
	movl	%ecx, %ebx
	andl	$31, %ebx
	imulq	$84, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rbx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	shrq	$3, %rcx
	andl	$124, %ecx
	mulss	(%rcx,%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	72(%r8,%r14), %xmm0
	movsd	%xmm0, 72(%r8,%r14)
	movzwl	60(%r10), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movzwl	22(%rsi,%rax,8), %ecx
	movl	%ecx, %eax
	andl	$31, %eax
	shrb	$6, %dl
	orb	%dil, %dl
	movzbl	%dl, %edx
	cmpw	%dx, %ax
	je	.LBB34_5
# %bb.4:
	shrl	$5, %ecx
	andl	$31, %ecx
	cmpw	%dx, %cx
	jne	.LBB34_7
.LBB34_5:
	leaq	(%r8,%r14), %rax
	addq	$72, %rax
	mulsd	.LCPI34_0(%rip), %xmm0
	movsd	%xmm0, (%rax)
.LBB34_7:
	andb	$31, %r9b
	movzbl	%r9b, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	.LCPI34_1(%rip), %xmm1
	addsd	.LCPI34_2(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%r8,%r14)
.LBB34_8:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	TypeChange, .Lfunc_end34-TypeChange
	.cfi_endproc
                                        # -- End function
	.globl	TypeImmunity                    # -- Begin function TypeImmunity
	.p2align	4, 0x90
	.type	TypeImmunity,@function
TypeImmunity:                           # @TypeImmunity
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpb	$-4, %dil
	jne	.LBB35_7
# %bb.1:
	movzbl	%sil, %r8d
	xorb	$1, %sil
	movzbl	%sil, %eax
	imulq	$240, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %r10
	movl	233(%r10,%rax), %edx
	andl	$31, %edx
	imulq	$240, %r8, %rcx
	movq	(%r10,%rcx), %rbx
	movzbl	45(%rbx), %esi
	leaq	(%rsi,%rsi,8), %rdi
	leaq	(%rsi,%rdi,2), %rdi
	movq	AbilityList@GOTPCREL(%rip), %r9
	movzbl	17(%r9,%rdi), %ecx
	shrl	$3, %ecx
	cmpl	%ecx, %edx
	jne	.LBB35_7
# %bb.2:
	movq	48(%r10,%rax), %rcx
	movzbl	(%rcx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %r11
	testl	$98304, 17(%r11,%rdx)           # imm = 0x18000
	je	.LBB35_7
# %bb.3:
	testb	$4, 31(%r11,%rdx)
	je	.LBB35_7
# %bb.4:
	movq	$0, 72(%r10,%rax)
	movl	$11392, %eax                    # imm = 0x2C80
	btq	%rsi, %rax
	jb	.LBB35_5
# %bb.8:
	movl	$49476, %eax                    # imm = 0xC144
	btq	%rsi, %rax
	jae	.LBB35_7
# %bb.9:
	movzbl	18(%r9,%rdi), %ecx
	movl	%ecx, %eax
	andb	$15, %al
	cmpb	$13, %sil
	je	.LBB35_11
# %bb.10:
	cmpb	$11, %sil
	jne	.LBB35_12
.LBB35_11:
	negb	%al
.LBB35_12:
	movl	%ecx, %ebx
	shrb	$5, %bl
	shrl	$4, %ecx
	andl	$1, %ecx
	xorl	%r8d, %ecx
	imulq	$240, %rcx, %rdx
	movq	(%r10,%rdx), %rdx
	movsbl	%al, %esi
	movzbl	%bl, %edi
                                        # kill: def $ecx killed $ecx killed $rcx
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	Boostandprint@PLT               # TAILCALL
.LBB35_5:
	.cfi_def_cfa_offset 16
	movl	16(%rbx), %eax
	movl	20(%rbx), %edx
	movzbl	18(%r9,%rdi), %esi
	leal	(%rsi,%rsi,4), %ecx
	leal	(%rsi,%rcx,8), %ecx
	shrl	$12, %ecx
	imull	%edx, %ecx
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB35_13
# %bb.6:
	movl	%edx, 16(%rbx)
.LBB35_7:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB35_13:
	.cfi_def_cfa_offset 16
	imull	%edx, %esi
	imulq	$1374389535, %rsi, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	leal	(%rcx,%rax), %esi
	movl	%edx, %edi
	subl	%eax, %edi
	cmpl	%edx, %esi
	cmovbel	%ecx, %edi
	addl	%eax, %edi
	movl	%edi, 16(%rbx)
	movq	%r8, %rdx
	shlq	$4, %rdx
	subq	%r8, %rdx
	subq	%r8, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movzwl	60(%rbx), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end35:
	.size	TypeImmunity, .Lfunc_end35-TypeImmunity
	.cfi_endproc
                                        # -- End function
	.globl	NoItemf                         # -- Begin function NoItemf
	.p2align	4, 0x90
	.type	NoItemf,@function
NoItemf:                                # @NoItemf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end36:
	.size	NoItemf, .Lfunc_end36-NoItemf
	.cfi_endproc
                                        # -- End function
	.globl	Leftoversf                      # -- Begin function Leftoversf
	.p2align	4, 0x90
	.type	Leftoversf,@function
Leftoversf:                             # @Leftoversf
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpb	$5, %dil
	jne	.LBB37_3
# %bb.1:
	movzbl	%sil, %eax
	imulq	$240, %rax, %rdx
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	(%rbx,%rdx), %rax
	movzwl	53(%rax), %ecx
	testb	$1, %cl
	je	.LBB37_3
# %bb.2:
	movl	16(%rax), %r8d
	movl	20(%rax), %edi
	movl	%edi, %esi
	subl	%r8d, %esi
	jbe	.LBB37_3
# %bb.4:
	addq	%rdx, %rbx
	movl	%edi, %edx
	shrl	$4, %edx
	leal	(%rdx,%r8), %ecx
	cmpl	%edi, %ecx
	cmoval	%esi, %edx
	addl	%r8d, %edx
	movl	%edx, 16(%rax)
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %r14
	leaq	(%r14,%rax,8), %rdx
	leaq	.L.str.14(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r14,%rcx,8), %rdx
	movl	16(%rax), %ecx
	movl	20(%rax), %r8d
	leaq	.L.str.15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.LBB37_3:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end37:
	.size	Leftoversf, .Lfunc_end37-Leftoversf
	.cfi_endproc
                                        # -- End function
	.globl	Focus_Sashf                     # -- Begin function Focus_Sashf
	.p2align	4, 0x90
	.type	Focus_Sashf,@function
Focus_Sashf:                            # @Focus_Sashf
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpb	$-1, %dil
	je	.LBB38_1
.LBB38_7:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB38_1:
	.cfi_def_cfa_offset 16
	movzbl	%sil, %eax
	imulq	$240, %rax, %rbx
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rbx), %rax
	movzwl	53(%rax), %edx
	testb	$1, %dl
	je	.LBB38_7
# %bb.2:
	movl	16(%rax), %edx
	cmpl	20(%rax), %edx
	jne	.LBB38_7
# %bb.3:
	xorb	$1, %sil
	movzbl	%sil, %esi
	imulq	$240, %rsi, %rsi
	cmpl	%edx, 56(%rcx,%rsi)
	jb	.LBB38_7
# %bb.4:
	testb	$1, 88(%rcx,%rbx)
	je	.LBB38_6
# %bb.5:
	movq	48(%rcx,%rsi), %rdi
	movzbl	(%rdi), %r8d
	shlq	$5, %r8
	movq	MoveList@GOTPCREL(%rip), %rdi
	testb	$2, 31(%rdi,%r8)
	jne	.LBB38_7
.LBB38_6:
	addq	%rcx, %rbx
	addq	%rsi, %rcx
	addq	$56, %rcx
	addl	$-1, %edx
	movl	%edx, (%rcx)
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
	movzwl	53(%rax), %ecx
	movzbl	55(%rax), %edx
	movb	%dl, 55(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$-2, %edx
	movw	%dx, 53(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end38:
	.size	Focus_Sashf, .Lfunc_end38-Focus_Sashf
	.cfi_endproc
                                        # -- End function
	.globl	Berries                         # -- Begin function Berries
	.p2align	4, 0x90
	.type	Berries,@function
Berries:                                # @Berries
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpb	$3, %dil
	je	.LBB39_2
# %bb.1:
	cmpb	$-3, %dil
	jne	.LBB39_4
.LBB39_2:
	movzbl	%sil, %r14d
	imulq	$240, %r14, %rcx
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	(%rbx,%rcx), %rsi
	movzwl	53(%rsi), %eax
	testb	$1, %al
	je	.LBB39_4
# %bb.3:
	movl	16(%rsi), %r9d
	movl	20(%rsi), %eax
	movzbl	44(%rsi), %edx
	leaq	(%rdx,%rdx,8), %rdi
	leaq	(%rdx,%rdi,2), %r8
	movq	ItemList@GOTPCREL(%rip), %r15
	movzbl	18(%r15,%r8), %edi
	andl	$15, %edi
	xorl	%edx, %edx
	divl	%edi
	cmpl	%eax, %r9d
	jbe	.LBB39_5
.LBB39_4:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB39_5:
	.cfi_def_cfa_offset 32
	movq	%r14, %rdx
	shlq	$4, %rdx
	subq	%r14, %rdx
	subq	%r14, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	addq	%rcx, %rbx
	movzwl	60(%rsi), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	addq	%r15, %r8
	leaq	.L.str.17(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
	movzwl	53(%rax), %ecx
	movzbl	55(%rax), %edx
	movb	%dl, 55(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$-2, %edx
	movw	%dx, 53(%rax)
	movq	(%rbx), %rdx
	movzbl	44(%rdx), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movsbl	17(%r15,%rax), %esi
	movl	%esi, %eax
	shrb	$4, %al
	andl	$15, %esi
	movzbl	%al, %edi
	movl	%r14d, %ecx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	Boostandprint@PLT               # TAILCALL
.Lfunc_end39:
	.size	Berries, .Lfunc_end39-Berries
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function displaymember
.LCPI40_0:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI40_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	displaymember
	.p2align	4, 0x90
	.type	displaymember,@function
displaymember:                          # @displaymember
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movl	%edi, %ebx
	leal	1(%rbx), %edx
	leaq	.L.str.18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	%ebp, %eax
	imulq	$240, %rax, %r12
	addq	Parties@GOTPCREL(%rip), %r12
	movl	%ebx, %r15d
	movq	(%r12,%r15,8), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movzwl	53(%rax), %edx
	shrl	%edx
	andl	$127, %edx
	leaq	.L.str.20(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movl	16(%rax), %edx
	movl	20(%rax), %ecx
	leaq	.L.str.21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movl	24(%rax), %edx
	leaq	.L.str.22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movl	28(%rax), %edx
	leaq	.L.str.23(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movl	32(%rax), %edx
	leaq	.L.str.24(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movl	36(%rax), %edx
	leaq	.L.str.25(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movl	40(%rax), %edx
	leaq	.L.str.26(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movzwl	53(%rax), %ecx
	movzbl	55(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	shrl	$12, %eax
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	%rax, %rcx
	movq	NATURE_LIST@GOTPCREL(%rip), %rax
	leaq	(%rax,%rcx), %rdx
	addq	$20, %rdx
	leaq	.L.str.27(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movzbl	8(%rax), %esi
	shlq	$5, %rsi
	movq	MoveList@GOTPCREL(%rip), %r14
	leaq	(%r14,%rsi), %rdx
	movzbl	9(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	17(%r14,%rsi), %esi
	shrl	$7, %esi
	andl	$7, %esi
	leal	(%rsi,%rsi,4), %esi
	addl	$5, %esi
	cvtsi2ss	%esi, %xmm0
	shrb	$6, %al
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI40_0(%rip), %xmm1
	addsd	.LCPI40_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.28(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movzbl	10(%rax), %ecx
	shlq	$5, %rcx
	leaq	(%r14,%rcx), %rdx
	movl	17(%r14,%rcx), %ecx
	shrl	$7, %ecx
	andl	$7, %ecx
	leal	(%rcx,%rcx,4), %ecx
	addl	$5, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	11(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI40_0(%rip), %xmm1
	addsd	.LCPI40_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.29(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movzbl	12(%rax), %ecx
	shlq	$5, %rcx
	leaq	(%r14,%rcx), %rdx
	movl	17(%r14,%rcx), %ecx
	shrl	$7, %ecx
	andl	$7, %ecx
	leal	(%rcx,%rcx,4), %ecx
	addl	$5, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	13(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI40_0(%rip), %xmm1
	addsd	.LCPI40_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.30(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movzbl	14(%rax), %ecx
	shlq	$5, %rcx
	leaq	(%r14,%rcx), %rdx
	movl	17(%r14,%rcx), %ecx
	shrl	$7, %ecx
	andl	$7, %ecx
	leal	(%rcx,%rcx,4), %ecx
	addl	$5, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	15(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI40_0(%rip), %xmm1
	addsd	.LCPI40_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.31(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movzbl	44(%rax), %ecx
	leaq	(%rcx,%rcx,8), %rdx
	leaq	(%rcx,%rdx,2), %rdx
	addq	ItemList@GOTPCREL(%rip), %rdx
	movzwl	53(%rax), %eax
	andl	$1, %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rax,%rcx,2), %rcx
	addq	Itemtext@GOTPCREL(%rip), %rcx
	leaq	.L.str.32(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movzbl	45(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rdx
	addq	AbilityList@GOTPCREL(%rip), %rdx
	leaq	.L.str.33(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movzbl	54(%rax), %eax
	andl	$15, %eax
	leaq	(%rax,%rax,2), %rdx
	shlq	$2, %rdx
	addq	Statusnames@GOTPCREL(%rip), %rdx
	leaq	.L.str.34(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r12,%r15,8), %rax
	movzbl	55(%rax), %edx
	shrl	%edx
	andl	$31, %edx
	movl	56(%rax), %ebx
	movl	%ebx, %ecx
	andl	$31, %ecx
	movl	%ebx, %r8d
	shrl	$5, %r8d
	andl	$31, %r8d
	movl	%ebx, %r9d
	shrl	$10, %r9d
	andl	$31, %r9d
	movl	%ebx, %ebp
	shrl	$15, %ebp
	andl	$31, %ebp
	shrl	$20, %ebx
	andl	$31, %ebx
	leaq	.L.str.35(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	__printf_chk@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	(%r12,%r15,8), %rax
	movzbl	46(%rax), %edx
	movzbl	47(%rax), %ecx
	movzbl	48(%rax), %r8d
	movzbl	49(%rax), %r9d
	movzbl	50(%rax), %ebp
	movzbl	51(%rax), %ebx
	leaq	.L.str.36(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	__printf_chk@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	leaq	.L.str.37(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.38(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.39(%rip), %rdi
	callq	system@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	getc@PLT
	leaq	.L.str.40(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.41(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.42(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.43(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.44(%rip), %r14
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.45(%rip), %rbx
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end40:
	.size	displaymember, .Lfunc_end40-displaymember
	.cfi_endproc
                                        # -- End function
	.globl	displayparty                    # -- Begin function displayparty
	.p2align	4, 0x90
	.type	displayparty,@function
displayparty:                           # @displayparty
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %r14d
	movl	%edi, %eax
	imulq	$240, %rax, %rbp
	movq	Parties@GOTPCREL(%rip), %r15
	movq	(%r15,%rbp), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	movq	POKEMONDEX@GOTPCREL(%rip), %r12
	leaq	(%r12,%rcx,8), %rcx
	movzwl	53(%rax), %r8d
	shrl	%r8d
	andl	$127, %r8d
	movl	16(%rax), %r9d
	movl	20(%rax), %eax
	movl	%eax, (%rsp)
	leaq	.L.str.46(%rip), %rbx
	movl	$1, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15,%rbp), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r12,%rcx,8), %rcx
	movzwl	53(%rax), %r8d
	shrl	%r8d
	andl	$127, %r8d
	movl	16(%rax), %r9d
	movl	20(%rax), %eax
	movl	%eax, (%rsp)
	movl	$1, %edi
	movq	%rbx, %rsi
	movl	$2, %edx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15,%rbp), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r12,%rcx,8), %rcx
	movzwl	53(%rax), %r8d
	shrl	%r8d
	andl	$127, %r8d
	movl	16(%rax), %r9d
	movl	20(%rax), %eax
	movl	%eax, (%rsp)
	movl	$1, %edi
	movq	%rbx, %rsi
	movl	$3, %edx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15,%rbp), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r12,%rcx,8), %rcx
	movzwl	53(%rax), %r8d
	shrl	%r8d
	andl	$127, %r8d
	movl	16(%rax), %r9d
	movl	20(%rax), %eax
	movl	%eax, (%rsp)
	movl	$1, %edi
	movq	%rbx, %rsi
	movl	$4, %edx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15,%rbp), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r12,%rcx,8), %rcx
	movzwl	53(%rax), %r8d
	shrl	%r8d
	andl	$127, %r8d
	movl	16(%rax), %r9d
	movl	20(%rax), %eax
	movl	%eax, (%rsp)
	movl	$1, %edi
	movq	%rbx, %rsi
	movl	$5, %edx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15,%rbp), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r12,%rcx,8), %rcx
	movzwl	53(%rax), %r8d
	shrl	%r8d
	andl	$127, %r8d
	movl	16(%rax), %r9d
	movl	20(%rax), %eax
	movl	%eax, (%rsp)
	movl	$1, %edi
	movq	%rbx, %rsi
	movl	$6, %edx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.47(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %r15
	movq	%r15, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	%r15, %rdi
	callq	strcspn@PLT
	movb	$0, (%r15,%rax)
	leaq	.L.str.44(%rip), %rbp
	movl	$1, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.45(%rip), %rbx
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movzbl	1(%r15), %edi
	leal	-49(%rdi), %eax
	cmpb	$5, %al
	ja	.LBB41_1
# %bb.2:
	addl	$-49, %edi
	movzbl	%r14b, %esi
                                        # kill: def $edi killed $edi killed $rdi
	callq	displaymember@PLT
	leaq	.L.str.48(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.LBB41_1:
	.cfi_def_cfa_offset 64
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end41:
	.size	displayparty, .Lfunc_end41-displayparty
	.cfi_endproc
                                        # -- End function
	.globl	CheckIfAllDead                  # -- Begin function CheckIfAllDead
	.p2align	4, 0x90
	.type	CheckIfAllDead,@function
CheckIfAllDead:                         # @CheckIfAllDead
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edi, %eax
	imulq	$240, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %r15
	movq	(%r15,%rax), %rcx
	movl	$1, %ebx
	cmpl	$0, 16(%rcx)
	jg	.LBB42_8
# %bb.1:
	movq	8(%r15,%rax), %rcx
	cmpl	$0, 16(%rcx)
	jg	.LBB42_8
# %bb.2:
	movq	16(%r15,%rax), %rcx
	cmpl	$0, 16(%rcx)
	jg	.LBB42_8
# %bb.3:
	movq	24(%r15,%rax), %rcx
	cmpl	$0, 16(%rcx)
	jg	.LBB42_8
# %bb.4:
	movq	32(%r15,%rax), %rcx
	cmpl	$0, 16(%rcx)
	jg	.LBB42_8
# %bb.5:
	movq	40(%r15,%rax), %rax
	cmpl	$0, 16(%rax)
	jg	.LBB42_8
# %bb.6:
	leaq	.L.str.49(%rip), %rax
	leaq	.L.str.50(%rip), %rsi
	testb	%dil, %dil
	cmovneq	%rax, %rsi
	xorl	%ebx, %ebx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	xorl	%edx, %edx
	cmpl	$0, 16(%rax)
	setg	%dl
	xorl	%eax, %eax
	cmpl	$0, 16(%rcx)
	setg	%al
	addl	%edx, %eax
	movq	16(%r15), %rcx
	xorl	%edx, %edx
	cmpl	$0, 16(%rcx)
	setg	%dl
	addl	%eax, %edx
	movq	24(%r15), %rax
	xorl	%ecx, %ecx
	cmpl	$0, 16(%rax)
	setg	%cl
	addl	%edx, %ecx
	movq	32(%r15), %rax
	xorl	%esi, %esi
	cmpl	$0, 16(%rax)
	setg	%sil
	addl	%ecx, %esi
	movq	40(%r15), %rax
	xorl	%edx, %edx
	cmpl	$0, 16(%rax)
	setg	%dl
	addl	%esi, %edx
	movq	240(%r15), %rax
	xorl	%ecx, %ecx
	cmpl	$0, 16(%rax)
	setg	%cl
	movq	248(%r15), %rax
	xorl	%esi, %esi
	cmpl	$0, 16(%rax)
	setg	%sil
	addl	%ecx, %esi
	movq	256(%r15), %rax
	xorl	%ecx, %ecx
	cmpl	$0, 16(%rax)
	setg	%cl
	addl	%esi, %ecx
	movq	264(%r15), %rax
	xorl	%esi, %esi
	cmpl	$0, 16(%rax)
	setg	%sil
	addl	%ecx, %esi
	movq	272(%r15), %rax
	xorl	%edi, %edi
	cmpl	$0, 16(%rax)
	setg	%dil
	addl	%esi, %edi
	movq	280(%r15), %rax
	xorl	%ecx, %ecx
	cmpl	$0, 16(%rax)
	setg	%cl
	addl	%edi, %ecx
	leaq	.L.str.51(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	seed@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	leaq	.L.str.52(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.53(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	%r14, %rdi
	callq	strcspn@PLT
	movb	$0, (%r14,%rax)
	cmpw	$121, (%r14)
	jne	.LBB42_9
# %bb.7:
	movq	StatCalc@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	BattleMode@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	(%r15), %r8
	movl	20(%r8), %eax
	movl	%eax, 16(%r8)
	movq	8(%r15), %r9
	movl	20(%r9), %eax
	movl	%eax, 16(%r9)
	movq	16(%r15), %r10
	movl	20(%r10), %eax
	movl	%eax, 16(%r10)
	movq	24(%r15), %r11
	movl	20(%r11), %eax
	movl	%eax, 16(%r11)
	movq	32(%r15), %rdi
	movl	20(%rdi), %eax
	movl	%eax, 16(%rdi)
	movq	40(%r15), %rax
	movl	20(%rax), %ecx
	movl	%ecx, 16(%rax)
	movq	240(%r15), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movq	248(%r15), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movq	256(%r15), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movq	264(%r15), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movq	272(%r15), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movq	280(%r15), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	andb	$-16, 54(%r8)
	andb	$-16, 54(%r9)
	andb	$-16, 54(%r10)
	andb	$-16, 54(%r11)
	andb	$-16, 54(%rdi)
	andb	$-16, 54(%rax)
	movq	240(%r15), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773375, %esi                 # imm = 0xFFF0FF
	movw	%si, 53(%rcx)
	movq	248(%r15), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773375, %esi                 # imm = 0xFFF0FF
	movw	%si, 53(%rcx)
	movq	256(%r15), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773375, %esi                 # imm = 0xFFF0FF
	movw	%si, 53(%rcx)
	movq	264(%r15), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773375, %esi                 # imm = 0xFFF0FF
	movw	%si, 53(%rcx)
	movq	272(%r15), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773375, %esi                 # imm = 0xFFF0FF
	movw	%si, 53(%rcx)
	movq	280(%r15), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773375, %esi                 # imm = 0xFFF0FF
	movw	%si, 53(%rcx)
	orb	$1, 53(%r8)
	orb	$1, 53(%r9)
	orb	$1, 53(%r10)
	orb	$1, 53(%r11)
	orb	$1, 53(%rdi)
	orb	$1, 53(%rax)
	movq	240(%r15), %rax
	movzwl	53(%rax), %ecx
	movzbl	55(%rax), %edx
	movb	%dl, 55(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$1, %edx
	movw	%dx, 53(%rax)
	movq	248(%r15), %rax
	movzwl	53(%rax), %ecx
	movzbl	55(%rax), %edx
	movb	%dl, 55(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$1, %edx
	movw	%dx, 53(%rax)
	movq	256(%r15), %rax
	movzwl	53(%rax), %ecx
	movzbl	55(%rax), %edx
	movb	%dl, 55(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$1, %edx
	movw	%dx, 53(%rax)
	movq	264(%r15), %rax
	movzwl	53(%rax), %ecx
	movzbl	55(%rax), %edx
	movb	%dl, 55(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$1, %edx
	movw	%dx, 53(%rax)
	movq	272(%r15), %rax
	movzwl	53(%rax), %ecx
	movzbl	55(%rax), %edx
	movb	%dl, 55(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$1, %edx
	movw	%dx, 53(%rax)
	movq	TurnCounter@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
.LBB42_8:
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB42_9:
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi
	callq	exit@PLT
.Lfunc_end42:
	.size	CheckIfAllDead, .Lfunc_end42-CheckIfAllDead
	.cfi_endproc
                                        # -- End function
	.globl	display_move                    # -- Begin function display_move
	.p2align	4, 0x90
	.type	display_move,@function
display_move:                           # @display_move
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %edi
	imulq	$240, %rdi, %rax
	movq	Parties@GOTPCREL(%rip), %rsi
	leaq	(%rsi,%rax), %rcx
	leaq	(%rsi,%rax), %rbx
	addq	$233, %rbx
	movl	233(%rsi,%rax), %edx
	testb	$64, %dl
	jne	.LBB43_1
# %bb.4:
	testl	$16384, %edx                    # imm = 0x4000
	jne	.LBB43_13
# %bb.5:
	movq	%rdi, %rdx
	shlq	$4, %rdx
	subq	%rdi, %rdx
	subq	%rdi, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movq	(%rcx), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.77(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	(%rbx), %eax
	testl	$4096, %eax                     # imm = 0x1000
	jne	.LBB43_6
# %bb.7:
	testl	$512, %eax                      # imm = 0x200
	jne	.LBB43_8
# %bb.9:
	testl	$1024, %eax                     # imm = 0x400
	jne	.LBB43_10
# %bb.11:
	testl	$2048, %eax                     # imm = 0x800
	je	.LBB43_13
# %bb.12:
	leaq	.L.str.81(%rip), %rsi
	jmp	.LBB43_3
.LBB43_1:
	movq	%rdi, %rdx
	shlq	$4, %rdx
	subq	%rdi, %rdx
	subq	%rdi, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movq	(%rcx), %rcx
	movzwl	60(%rcx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movq	48(%rsi,%rax), %rax
	movzbl	(%rax), %r8d
	shlq	$5, %r8
	addq	MoveList@GOTPCREL(%rip), %r8
	leaq	.L.str.75(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	testb	$32, (%rbx)
	jne	.LBB43_13
# %bb.2:
	leaq	.L.str.76(%rip), %rsi
	jmp	.LBB43_3
.LBB43_13:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB43_6:
	.cfi_def_cfa_offset 16
	leaq	.L.str.78(%rip), %rsi
	jmp	.LBB43_3
.LBB43_8:
	leaq	.L.str.79(%rip), %rsi
	jmp	.LBB43_3
.LBB43_10:
	leaq	.L.str.80(%rip), %rsi
.LBB43_3:
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end43:
	.size	display_move, .Lfunc_end43-display_move
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function move_result
.LCPI44_0:
	.long	0x40000000                      # float 2
.LCPI44_1:
	.long	0x3f000000                      # float 0.5
	.text
	.globl	move_result
	.p2align	4, 0x90
	.type	move_result,@function
move_result:                            # @move_result
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	%edi, %eax
	imulq	$240, %rax, %rbx
	movq	Parties@GOTPCREL(%rip), %r14
	movl	233(%r14,%rbx), %eax
	andl	$96, %eax
	cmpl	$96, %eax
	jne	.LBB44_18
# %bb.1:
	movq	48(%r14,%rbx), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rcx
	testl	$98304, 17(%rcx,%rax)           # imm = 0x18000
	je	.LBB44_18
# %bb.2:
	movl	56(%r14,%rbx), %edx
	testl	%edx, %edx
	jle	.LBB44_13
# %bb.3:
	leaq	(%r14,%rbx), %r12
	addq	$233, %r12
	leaq	.L.str.82(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	(%r12), %eax
	andl	$31, %eax
	movl	%ebp, %ecx
	xorb	$1, %cl
	movzbl	%cl, %r15d
	imulq	$240, %r15, %rcx
	movq	(%r14,%rcx), %rcx
	movzwl	60(%rcx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rdx
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rdx,8), %ecx
	movl	%ecx, %esi
	andl	$31, %esi
	imulq	$84, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	shrq	$3, %rcx
	andl	$124, %ecx
	mulss	(%rcx,%rax), %xmm0
	ucomiss	.LCPI44_0(%rip), %xmm0
	jae	.LBB44_4
# %bb.5:
	movss	.LCPI44_1(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB44_10
# %bb.6:
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	.LBB44_7
# %bb.8:
	leaq	.L.str.85(%rip), %rsi
	jmp	.LBB44_9
.LBB44_13:
	movl	%ebp, %eax
	xorb	$1, %al
	movzbl	%al, %r15d
	imulq	$240, %r15, %rcx
	leaq	(%r14,%rcx), %rax
	testb	$1, 88(%r14,%rcx)
	jne	.LBB44_14
# %bb.15:
	testb	%bpl, %bpl
	movl	$28, %ecx
	movl	$42, %edx
	cmovneq	%rcx, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movq	(%rax), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.88(%rip), %rsi
	jmp	.LBB44_16
.LBB44_4:
	leaq	.L.str.83(%rip), %rsi
.LBB44_9:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB44_10:
	testb	$32, 1(%r12)
	je	.LBB44_17
.LBB44_11:
	leaq	(%r14,%rbx), %rax
	addq	$56, %rax
	cmpl	$0, (%rax)
	jle	.LBB44_17
# %bb.12:
	leaq	.L.str.86(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB44_17
.LBB44_14:
	movq	%r15, %rdx
	shlq	$4, %rdx
	subq	%r15, %rdx
	subq	%r15, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movq	(%rax), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.87(%rip), %rsi
.LBB44_16:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB44_17:
	movq	%r15, %rdx
	shlq	$4, %rdx
	subq	%r15, %rdx
	subq	%r15, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	imulq	$240, %r15, %rax
	movq	(%r14,%rax), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movl	16(%rax), %r8d
	movl	20(%rax), %r9d
	leaq	.L.str.7(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB44_18:
	xorb	$1, %bpl
	movzbl	%bpl, %ebx
	imulq	$240, %rbx, %rbp
	movq	(%r14,%rbp), %rax
	cmpl	$0, 16(%rax)
	jg	.LBB44_20
# %bb.19:
	movq	%rbx, %rdx
	shlq	$4, %rdx
	subq	%rbx, %rdx
	subq	%rbx, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	%ebx, %edi
	callq	SwitchIn@PLT
	orb	$-128, 233(%r14,%rbp)
.LBB44_20:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB44_7:
	.cfi_def_cfa_offset 48
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.84(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	testb	$32, 1(%r12)
	jne	.LBB44_11
	jmp	.LBB44_17
.Lfunc_end44:
	.size	move_result, .Lfunc_end44-move_result
	.cfi_endproc
                                        # -- End function
	.globl	UDBOG                           # -- Begin function UDBOG
	.p2align	4, 0x90
	.type	UDBOG,@function
UDBOG:                                  # @UDBOG
	.cfi_startproc
# %bb.0:
	movl	(%rdi), %ecx
	movl	%ecx, %eax
	subl	(%rsi), %eax
	js	.LBB45_1
# %bb.2:
	movl	%eax, (%rdi)
	retq
.LBB45_1:
	movl	%ecx, (%rsi)
	movl	(%rdi), %eax
	subl	%ecx, %eax
	movl	%eax, (%rdi)
	retq
.Lfunc_end45:
	.size	UDBOG, .Lfunc_end45-UDBOG
	.cfi_endproc
                                        # -- End function
	.globl	UDBOG2                          # -- Begin function UDBOG2
	.p2align	4, 0x90
	.type	UDBOG2,@function
UDBOG2:                                 # @UDBOG2
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	(%rdi), %eax
	xorl	%ecx, %ecx
	subl	%esi, %eax
	cmovsl	%ecx, %eax
	movl	%eax, (%rdi)
	movl	%edx, %ebx
	imulq	$240, %rbx, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	leaq	(%rcx,%rax), %r14
	movq	(%rcx,%rax), %rax
	movb	54(%rax), %cl
	andb	$15, %cl
	addb	$-1, %cl
	cmpb	$6, %cl
	ja	.LBB46_7
# %bb.1:
	movzbl	%cl, %ecx
	leaq	.LJTI46_0(%rip), %rdx
	movslq	(%rdx,%rcx,4), %rcx
	addq	%rdx, %rcx
	jmpq	*%rcx
.LBB46_2:
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.89(%rip), %rsi
	jmp	.LBB46_3
.LBB46_4:
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.90(%rip), %rsi
	jmp	.LBB46_3
.LBB46_5:
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.91(%rip), %rsi
.LBB46_3:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB46_7
.LBB46_6:
	leaq	.L.str.92(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB46_7:
	movq	%rbx, %rdx
	shlq	$4, %rdx
	subq	%rbx, %rdx
	subq	%rbx, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movq	(%r14), %rax
	movzwl	60(%rax), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movl	16(%rax), %r8d
	movl	20(%rax), %r9d
	leaq	.L.str.93(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end46:
	.size	UDBOG2, .Lfunc_end46-UDBOG2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI46_0:
	.long	.LBB46_2-.LJTI46_0
	.long	.LBB46_4-.LJTI46_0
	.long	.LBB46_5-.LJTI46_0
	.long	.LBB46_7-.LJTI46_0
	.long	.LBB46_7-.LJTI46_0
	.long	.LBB46_7-.LJTI46_0
	.long	.LBB46_6-.LJTI46_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function ExecuteMove
.LCPI47_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI47_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI47_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI47_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI47_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI47_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI47_6:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI47_7:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI47_8:
	.quad	0x3ff0000000000000              # double 1
.LCPI47_9:
	.quad	0x4059000000000000              # double 100
.LCPI47_10:
	.quad	0x41dfffffffc00000              # double 2147483647
.LCPI47_11:
	.quad	0x4044000000000000              # double 40
.LCPI47_12:
	.quad	0x4049000000000000              # double 50
.LCPI47_13:
	.quad	0x4000000000000000              # double 2
.LCPI47_14:
	.quad	0x3ff8000000000000              # double 1.5
	.text
	.globl	ExecuteMove
	.p2align	4, 0x90
	.type	ExecuteMove,@function
ExecuteMove:                            # @ExecuteMove
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %r15d
	imulq	$240, %r15, %r12
	movq	Parties@GOTPCREL(%rip), %rbp
	movl	233(%rbp,%r12), %eax
	testb	%al, %al
	js	.LBB47_4
# %bb.1:
	leaq	(%r12,%rbp), %r14
	testw	%ax, %ax
	js	.LBB47_5
# %bb.2:
	movl	%edi, %r13d
	callq	rand@PLT
	movq	48(%rbp,%r12), %rcx
	movzbl	(%rcx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rsi
	movl	17(%rsi,%rdx), %edx
	andl	$127, %edx
	movq	(%r14), %rsi
	movsbl	5(%rsi), %esi
	cvtsi2sd	%esi, %xmm1
	movl	%r13d, %ebx
	xorb	$1, %bl
	movzbl	%bl, %esi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	imulq	$240, %rsi, %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	(%rbp,%rsi), %rsi
	movsbl	6(%rsi), %esi
	testl	%esi, %esi
	js	.LBB47_12
# %bb.3:
	cvtsi2sd	%esi, %xmm0
	mulsd	.LCPI47_7(%rip), %xmm0
	addsd	.LCPI47_8(%rip), %xmm0
	jmp	.LBB47_13
.LBB47_4:
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB47_5:
	.cfi_def_cfa_offset 112
	movq	(%r14), %rax
	movzwl	53(%rax), %ecx
	andl	$3840, %ecx                     # imm = 0xF00
	cmpl	$1280, %ecx                     # imm = 0x500
	jne	.LBB47_7
# %bb.6:
	movb	$0, 52(%rax)
.LBB47_7:
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.98(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movb	$0, (%rax)
	movapd	.LCPI47_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	88(%rbp), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI47_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
	movdqa	.LCPI47_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI47_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI47_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI47_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI47_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm2              # xmm2 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm0, %xmm1                    # xmm1 = xmm0[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm1, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	andnpd	%xmm1, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rax
	jne	.LBB47_8
# %bb.9:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 88(%rbp)
	movlpd	96(%rbp), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI47_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
	.p2align	4, 0x90
.LBB47_10:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm5
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	andnpd	%xmm2, %xmm5
	paddq	%xmm4, %xmm6
	addq	$-8, %rax
	jne	.LBB47_10
# %bb.11:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 96(%rbp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 104(%rbp)
	movdqu	%xmm0, 120(%rbp)
	movdqu	%xmm0, 136(%rbp)
	movdqu	%xmm0, 152(%rbp)
	movdqu	%xmm0, 168(%rbp)
	movdqu	%xmm0, 184(%rbp)
	movdqu	%xmm0, 200(%rbp)
	movdqu	%xmm0, 216(%rbp)
	movzbl	232(%rbp,%r12), %eax
	movq	(%rbp,%r12), %rcx
	movq	(%r14,%rax,8), %rdx
	movq	%rdx, (%rbp,%r12)
	movq	%rcx, (%r14,%rax,8)
	movq	(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.61(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB47_115
.LBB47_12:
	negl	%esi
	cvtsi2sd	%esi, %xmm2
	mulsd	.LCPI47_7(%rip), %xmm2
	movsd	.LCPI47_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm0
.LBB47_13:
	movq	MoveList@GOTPCREL(%rip), %rbx
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	leaq	(%r12,%rbp), %rdi
	addq	$233, %rdi
	cvttsd2si	%xmm1, %eax
	testb	%al, %al
	js	.LBB47_15
# %bb.14:
	movsbl	%al, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI47_7(%rip), %xmm1
	addsd	.LCPI47_8(%rip), %xmm1
	jmp	.LBB47_16
.LBB47_15:
	movsbl	%al, %eax
	negl	%eax
	cvtsi2sd	%eax, %xmm3
	mulsd	.LCPI47_7(%rip), %xmm3
	movsd	.LCPI47_8(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm3
	divsd	%xmm3, %xmm1
.LBB47_16:
	mulsd	%xmm2, %xmm1
	divsd	.LCPI47_9(%rip), %xmm1
	mulsd	.LCPI47_10(%rip), %xmm1
	movq	Parties@GOTPCREL(%rip), %rax
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	addq	%rax, %r12
	addq	$48, %r12
	xorl	%edx, %edx
	ucomisd	%xmm0, %xmm1
	seta	%dl
	movl	(%rdi), %eax
	shll	$5, %edx
	movl	%eax, %esi
	andl	$-33, %esi
	orl	%edx, %esi
	movl	%esi, (%rdi)
	movzbl	(%rcx), %ecx
	shlq	$5, %rcx
	movl	17(%rbx,%rcx), %ecx
	andl	$127, %ecx
	cmpl	$101, %ecx
	jb	.LBB47_18
# %bb.17:
	orl	$32, %eax
	movl	%eax, (%rdi)
.LBB47_18:
	movq	%rdi, (%rsp)                    # 8-byte Spill
	callq	rand@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	15(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	movq	(%r14), %rcx
	movq	(%r12), %rdx
	movzbl	(%rdx), %esi
	shlq	$5, %rsi
	movb	31(%rbx,%rsi), %bl
	shrb	$4, %bl
	andb	$1, %bl
	addb	7(%rcx), %bl
	testb	%bl, %bl
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	js	.LBB47_25
# %bb.19:
	je	.LBB47_26
# %bb.20:
	movsbl	%bl, %ebx
	testl	%ebx, %ebx
	movl	$1, %esi
	cmovlel	%esi, %ebx
	leal	-1(%rbx), %ebp
	movl	%ebx, %edi
	andl	$7, %edi
	cmpl	$7, %ebp
	jb	.LBB47_23
# %bb.21:
	andl	$-8, %ebx
	negl	%ebx
	movl	$1, %esi
	.p2align	4, 0x90
.LBB47_22:                              # =>This Inner Loop Header: Depth=1
	shll	$8, %esi
	addl	$8, %ebx
	jne	.LBB47_22
.LBB47_23:
	testl	%edi, %edi
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	(%rsp), %rbp                    # 8-byte Reload
	je	.LBB47_28
	.p2align	4, 0x90
.LBB47_24:                              # =>This Inner Loop Header: Depth=1
	addl	%esi, %esi
	addl	$-1, %edi
	jne	.LBB47_24
	jmp	.LBB47_28
.LBB47_25:
	xorl	%esi, %esi
	jmp	.LBB47_27
.LBB47_26:
	movl	$1, %esi
.LBB47_27:
	movq	(%rsp), %rbp                    # 8-byte Reload
.LBB47_28:
	xorl	%edi, %edi
	cmpl	%esi, %eax
	setb	%dil
	shll	$13, %edi
	movl	$-8193, %eax                    # imm = 0xDFFF
	andl	(%rbp), %eax
	orl	%edi, %eax
	movl	%eax, (%rbp)
	movb	54(%rcx), %bl
	andb	$15, %bl
	addb	$-1, %bl
	cmpb	$5, %bl
	ja	.LBB47_49
# %bb.29:
	movzbl	%bl, %esi
	leaq	.LJTI47_0(%rip), %rdi
	movslq	(%rdi,%rsi,4), %rsi
	addq	%rdi, %rsi
	jmpq	*%rsi
.LBB47_30:
	movzbl	(%rdx), %eax
	shlq	$5, %rax
	movl	$98304, %ecx                    # imm = 0x18000
	movq	MoveList@GOTPCREL(%rip), %rdx
	andl	17(%rdx,%rax), %ecx
	cmpl	$32768, %ecx                    # imm = 0x8000
	jne	.LBB47_49
# %bb.31:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movsd	72(%rax,%rcx), %xmm0            # xmm0 = mem[0],zero
	mulsd	.LCPI47_7(%rip), %xmm0
	movsd	%xmm0, 72(%rax,%rcx)
	jmp	.LBB47_49
.LBB47_32:
	callq	rand@PLT
	movq	(%rsp), %rbp                    # 8-byte Reload
	xorl	%edx, %edx
	testb	$3, %al
	sete	%dl
	movl	$-513, %ecx                     # imm = 0xFDFF
	andl	(%rbp), %ecx
	shll	$9, %edx
	orl	%edx, %ecx
	movl	%ecx, (%rbp)
	testb	$3, %al
	jne	.LBB47_49
	jmp	.LBB47_39
.LBB47_33:
	movb	52(%rcx), %cl
	testb	%cl, %cl
	je	.LBB47_44
# %bb.34:
	cmpb	$4, %cl
	jae	.LBB47_35
# %bb.41:
	callq	rand@PLT
	cmpl	$2147483647, %eax               # imm = 0x7FFFFFFF
	jb	.LBB47_43
	.p2align	4, 0x90
.LBB47_42:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	ja	.LBB47_42
.LBB47_43:
	imull	$-1431655765, %eax, %ecx        # imm = 0xAAAAAAAB
	movq	(%rsp), %rbp                    # 8-byte Reload
	movl	(%rbp), %eax
	cmpl	$1431655765, %ecx               # imm = 0x55555555
	jbe	.LBB47_35
.LBB47_44:
	andl	$-1089, %eax                    # imm = 0xFBBF
	orl	$1024, %eax                     # imm = 0x400
	jmp	.LBB47_45
.LBB47_36:
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	jb	.LBB47_38
	.p2align	4, 0x90
.LBB47_37:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483645, %eax               # imm = 0x7FFFFFFD
	ja	.LBB47_37
.LBB47_38:
	movl	%eax, %ecx
	movl	$3435973837, %edx               # imm = 0xCCCCCCCD
	imulq	%rcx, %rdx
	shrq	$34, %rdx
	leal	(%rdx,%rdx,4), %edx
	xorl	%esi, %esi
	cmpl	%edx, %eax
	setne	%sil
	movl	$-2049, %ecx                    # imm = 0xF7FF
	movq	(%rsp), %rbp                    # 8-byte Reload
	andl	(%rbp), %ecx
	shll	$11, %esi
	orl	%esi, %ecx
	movl	%ecx, (%rbp)
	cmpl	%edx, %eax
	je	.LBB47_40
.LBB47_39:
	andl	$-65, %ecx
	movl	%ecx, (%rbp)
	jmp	.LBB47_49
.LBB47_35:
	andl	$-1025, %eax                    # imm = 0xFBFF
.LBB47_45:
	movl	%eax, (%rbp)
	movq	(%r14), %rcx
	testl	$1024, %eax                     # imm = 0x400
	jne	.LBB47_48
# %bb.46:
	movb	$0, 52(%rcx)
	andb	$-16, 54(%rcx)
	movq	%r15, %rdx
	shlq	$4, %rdx
	subq	%r15, %rdx
	subq	%r15, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movq	(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.94(%rip), %rsi
	jmp	.LBB47_47
.LBB47_48:
	addb	$1, 52(%rcx)
	jmp	.LBB47_49
.LBB47_40:
	movq	(%r14), %rax
	movzwl	53(%rax), %ecx
	movzbl	55(%rax), %edx
	movb	%dl, 55(%rax)
	movl	%edx, %esi
	shll	$16, %esi
	orl	%ecx, %esi
	andl	$16773375, %esi                 # imm = 0xFFF0FF
	movq	%r15, %rdx
	shlq	$4, %rdx
	subq	%r15, %rdx
	subq	%r15, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movw	%si, 53(%rax)
	movq	(%r14), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.95(%rip), %rsi
.LBB47_47:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rsp), %rbp                    # 8-byte Reload
.LBB47_49:
	movl	(%rbp), %eax
	testl	$4096, %eax                     # imm = 0x1000
	je	.LBB47_51
# %bb.50:
	andl	$-65, %eax
	movl	%eax, (%rbp)
.LBB47_51:
	movq	MoveList@GOTPCREL(%rip), %rbx
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	testb	$8, 88(%rcx,%rdx)
	movzbl	%r13b, %r13d
	je	.LBB47_65
# %bb.52:
	andl	$64, %eax
	je	.LBB47_65
# %bb.53:
	movq	%r15, %rbx
	shlq	$4, %rbx
	subq	%r15, %rbx
	subq	%r15, %rbx
	addq	EOPTEXT@GOTPCREL(%rip), %rbx
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movq	(%rbp), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.96(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Parties@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	cmpb	$0, 107(%rax,%rcx)
	jle	.LBB47_57
# %bb.54:
	leaq	(%rax,%rcx), %rbx
	addq	$107, %rbx
	callq	rand@PLT
	testb	$1, %al
	je	.LBB47_63
# %bb.55:
	movl	$-16449, %eax                   # imm = 0xBFBF
	movq	(%rsp), %rcx                    # 8-byte Reload
	andl	(%rcx), %eax
	orl	$16384, %eax                    # imm = 0x4000
	movl	%eax, (%rcx)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	movzwl	53(%rax), %ecx
	andl	$254, %ecx
	imull	$205, %ecx, %ecx
	shrl	$10, %ecx
	addb	$2, %cl
	movzbl	%cl, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	movl	24(%rax), %ecx
	cvtsi2sd	%rcx, %xmm1
	movsbl	(%rax), %ecx
	testl	%ecx, %ecx
	js	.LBB47_58
# %bb.56:
	cvtsi2sd	%ecx, %xmm3
	mulsd	.LCPI47_7(%rip), %xmm3
	addsd	.LCPI47_8(%rip), %xmm3
	jmp	.LBB47_59
.LBB47_57:
	addq	%rcx, %rax
	addq	$88, %rax
	andb	$-9, (%rax)
	movq	(%rbp), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.97(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB47_64
.LBB47_58:
	negl	%ecx
	cvtsi2sd	%ecx, %xmm2
	mulsd	.LCPI47_7(%rip), %xmm2
	movsd	.LCPI47_8(%rip), %xmm3          # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm3
.LBB47_59:
	mulsd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	leaq	16(%rax), %r15
	mulsd	.LCPI47_11(%rip), %xmm3
	movl	28(%rax), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rcx, %xmm0
	movsbl	1(%rax), %eax
	testl	%eax, %eax
	js	.LBB47_61
# %bb.60:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI47_7(%rip), %xmm1
	addsd	.LCPI47_8(%rip), %xmm1
	jmp	.LBB47_62
.LBB47_61:
	negl	%eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	mulsd	.LCPI47_7(%rip), %xmm2
	movsd	.LCPI47_8(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm1
.LBB47_62:
	mulsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm3
	divsd	.LCPI47_12(%rip), %xmm3
	addsd	.LCPI47_13(%rip), %xmm3
	movsd	%xmm3, 24(%rsp)                 # 8-byte Spill
	callq	rand@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	15(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$-16, %ecx
	negl	%ecx
	addl	%ecx, %eax
	addl	$85, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	24(%rsp), %xmm0                 # 8-byte Folded Reload
	divsd	.LCPI47_9(%rip), %xmm0
	cvttsd2si	%xmm0, %esi
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	UDBOG2@PLT
.LBB47_63:
	addb	$-1, (%rbx)
.LBB47_64:
	movq	MoveList@GOTPCREL(%rip), %rbx
.LBB47_65:
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbx,%rax), %eax
	shrl	$23, %eax
	andl	$248, %eax
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rbp
	movl	$3, %edi
	movl	%r13d, %esi
	xorl	%edx, %edx
	callq	*(%rbp,%rax)
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbx,%rax), %eax
	shrl	$18, %eax
	andl	$248, %eax
	movl	$3, %edi
	movl	%r13d, %esi
	movl	$1, %edx
	callq	*(%rbp,%rax)
	movl	%r13d, %edi
	callq	display_move@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	cmpl	$0, 16(%rax)
	movq	(%rsp), %rbp                    # 8-byte Reload
	jle	.LBB47_115
# %bb.66:
	movl	(%rbp), %ecx
	andl	$96, %ecx
	cmpl	$96, %ecx
	jne	.LBB47_115
# %bb.67:
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rcx,%rdx), %r15
	movq	(%r12), %rcx
	movzbl	(%rcx), %ecx
	shlq	$5, %rcx
	movl	17(%rbx,%rcx), %ecx
	shrl	$15, %ecx
	andl	$3, %ecx
	cmpl	$2, %ecx
	je	.LBB47_73
# %bb.68:
	cmpl	$1, %ecx
	je	.LBB47_71
# %bb.69:
	testl	%ecx, %ecx
	jne	.LBB47_115
# %bb.70:
	movzbl	45(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	%r15, %rbp
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, %r15
	movq	AbilityList@GOTPCREL(%rip), %rbx
	movzbl	16(%rbx,%rax), %eax
	movq	ABILITY_FUNC_LIST@GOTPCREL(%rip), %r14
	movl	$2, %edi
	movl	%r13d, %esi
	callq	*(%r14,%rax,8)
	movq	(%rbp), %rax
	movzbl	45(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%rbx,%rax), %eax
	movl	$-4, %edi
	movq	%r12, %rbp
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%r14,%rax,8)
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r15,%rax), %eax
	shrl	$23, %eax
	andl	$248, %eax
	movl	$1, %edi
	movl	%r13d, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rbx
	callq	*(%rbx,%rax)
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r15,%rax), %eax
	shrl	$18, %eax
	andl	$248, %eax
	movl	$1, %edi
	movl	%r13d, %esi
	movl	$1, %edx
	callq	*(%rbx,%rax)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	ItemList@GOTPCREL(%rip), %r12
	movzbl	16(%r12,%rax), %eax
	movq	ITEM_FUNC_LIST@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	movl	%r13d, %esi
	callq	*(%rbx,%rax,8)
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	(%r14), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%r12,%rax), %eax
	movl	$-1, %edi
	movq	32(%rsp), %r12                  # 8-byte Reload
	movl	%r12d, %esi
	callq	*(%rbx,%rax,8)
	movq	(%rbp), %rax
	movb	1(%rax), %cl
	leal	-1(%rcx), %edx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 1(%rax)
	movl	%r13d, %edi
	callq	move_result@PLT
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r15,%rax), %eax
	shrl	$23, %eax
	andl	$248, %eax
	movl	$2, %edi
	movl	%r13d, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rbx
	callq	*(%rbx,%rax)
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r15,%rax), %eax
	shrl	$18, %eax
	andl	$248, %eax
	movl	$2, %edi
	movl	%r13d, %esi
	movl	$1, %edx
	callq	*(%rbx,%rax)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rbx
	movzbl	16(%rbx,%rax), %eax
	movl	$3, %edi
	movl	%r13d, %esi
	movq	ITEM_FUNC_LIST@GOTPCREL(%rip), %rbp
	callq	*(%rbp,%rax,8)
	movq	(%r14), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%rbx,%rax), %eax
	movl	$-3, %edi
	movl	%r12d, %esi
	callq	*(%rbp,%rax,8)
	jmp	.LBB47_115
.LBB47_71:
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movzbl	45(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	AbilityList@GOTPCREL(%rip), %rbx
	movzbl	16(%rbx,%rax), %eax
	movq	ABILITY_FUNC_LIST@GOTPCREL(%rip), %r14
	movl	$2, %edi
	movl	%r13d, %esi
	callq	*(%r14,%rax,8)
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	(%r15), %rax
	movzbl	45(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%rbx,%rax), %eax
	movl	$-4, %edi
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%r14,%rax,8)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %r8
	movzwl	53(%r8), %eax
	andl	$254, %eax
	imull	$205, %eax, %esi
	shrl	$10, %esi
	addb	$2, %sil
	movl	(%rbp), %eax
	testl	$8192, %eax                     # imm = 0x2000
	sete	%cl
	movsbl	(%r8), %ebx
	testl	%ebx, %ebx
	setns	%dl
	orb	%cl, %dl
	movzbl	%sil, %esi
	movl	24(%r8), %edi
	testl	%ebx, %ebx
	js	.LBB47_75
# %bb.72:
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LCPI47_7(%rip), %xmm0
	addsd	.LCPI47_8(%rip), %xmm0
	jmp	.LBB47_76
.LBB47_73:
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movzbl	45(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	AbilityList@GOTPCREL(%rip), %rbx
	movzbl	16(%rbx,%rax), %eax
	movq	ABILITY_FUNC_LIST@GOTPCREL(%rip), %r14
	movl	$2, %edi
	movl	%r13d, %esi
	callq	*(%r14,%rax,8)
	movq	(%r15), %rax
	movzbl	45(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%rbx,%rax), %eax
	movl	$-4, %edi
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%r14,%rax,8)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %r8
	movzwl	53(%r8), %eax
	andl	$254, %eax
	imull	$205, %eax, %esi
	shrl	$10, %esi
	addb	$2, %sil
	movl	(%rbp), %eax
	testl	$8192, %eax                     # imm = 0x2000
	sete	%cl
	movsbl	2(%r8), %ebx
	testl	%ebx, %ebx
	setns	%dl
	orb	%cl, %dl
	movzbl	%sil, %esi
	movl	32(%r8), %edi
	testl	%ebx, %ebx
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	js	.LBB47_92
# %bb.74:
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LCPI47_7(%rip), %xmm0
	addsd	.LCPI47_8(%rip), %xmm0
	jmp	.LBB47_93
.LBB47_75:
	negl	%ebx
	cvtsi2sd	%ebx, %xmm1
	mulsd	.LCPI47_7(%rip), %xmm1
	movsd	.LCPI47_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB47_76:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	16(%rsp), %r15                  # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	cvtsi2sd	%rdi, %xmm2
	testl	$8192, %eax                     # imm = 0x2000
	sete	%bl
	testb	%dl, %dl
	jne	.LBB47_78
# %bb.77:
	movsd	.LCPI47_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB47_78:
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	shlq	$5, %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx), %r9
	movsbl	1(%r9), %edi
	testl	%edi, %edi
	setle	%dl
	orb	%dl, %bl
	movq	MoveList@GOTPCREL(%rip), %rdx
	movzbl	16(%rdx,%rcx), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	movl	28(%r9), %esi
	testl	%edi, %edi
	js	.LBB47_80
# %bb.79:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edi, %xmm2
	mulsd	.LCPI47_7(%rip), %xmm2
	addsd	.LCPI47_8(%rip), %xmm2
	jmp	.LBB47_81
.LBB47_80:
	negl	%edi
	cvtsi2sd	%edi, %xmm3
	mulsd	.LCPI47_7(%rip), %xmm3
	movsd	.LCPI47_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB47_81:
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rsi, %xmm1
	movsd	.LCPI47_8(%rip), %xmm3          # xmm3 = mem[0],zero
	testb	%bl, %bl
	jne	.LBB47_83
# %bb.82:
	movapd	%xmm3, %xmm2
.LBB47_83:
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	divsd	.LCPI47_12(%rip), %xmm0
	addsd	.LCPI47_13(%rip), %xmm0
	andl	$31, %eax
	movzwl	60(%r8), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rdx
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rdx,8), %edx
	andl	$31, %edx
	movsd	.LCPI47_14(%rip), %xmm1         # xmm1 = mem[0],zero
	cmpl	%edx, %eax
	movq	MoveList@GOTPCREL(%rip), %r14
	je	.LBB47_85
# %bb.84:
	movapd	%xmm3, %xmm1
.LBB47_85:
	movq	Parties@GOTPCREL(%rip), %rbp
	movsd	%xmm1, 64(%rbp,%r15)
	mulsd	%xmm1, %xmm0
	movzwl	60(%r9), %edx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	movzwl	22(%rcx,%rdx,8), %ecx
	movl	%ecx, %edx
	imulq	$84, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	andl	$31, %edx
	movss	(%rax,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	shrq	$3, %rcx
	andl	$124, %ecx
	mulss	(%rcx,%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)                 # 8-byte Spill
	callq	rand@PLT
	movsd	.LCPI47_8(%rip), %xmm2          # xmm2 = mem[0],zero
                                        # kill: def $eax killed $eax def $rax
	leal	15(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$-16, %ecx
	negl	%ecx
	addl	%ecx, %eax
	addl	$85, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	divsd	.LCPI47_9(%rip), %xmm0
	mulsd	72(%rbp,%r15), %xmm0
	movq	(%rsp), %rax                    # 8-byte Reload
	testl	$8192, (%rax)                   # imm = 0x2000
	movapd	%xmm2, %xmm1
	je	.LBB47_87
# %bb.86:
	movsd	.LCPI47_14(%rip), %xmm1         # xmm1 = mem[0],zero
.LBB47_87:
	mulsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm2
	cvttsd2si	%xmm1, %eax
	movl	$1, %ecx
	movl	%eax, %edx
	cmoval	%ecx, %edx
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	cmovbel	%eax, %edx
	movq	Parties@GOTPCREL(%rip), %rbp
	leaq	56(%rbp,%r15), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movl	%edx, 56(%rbp,%r15)
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r14,%rax), %eax
	shrl	$23, %eax
	andl	$248, %eax
	movl	$1, %edi
	movl	%r13d, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rbx
	callq	*(%rbx,%rax)
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r14,%rax), %eax
	shrl	$18, %eax
	andl	$248, %eax
	movl	$1, %edi
	movl	%r13d, %esi
	xorl	%edx, %edx
	callq	*(%rbx,%rax)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	ItemList@GOTPCREL(%rip), %r14
	movzbl	16(%r14,%rax), %eax
	movq	ITEM_FUNC_LIST@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	movl	%r13d, %esi
	callq	*(%rbx,%rax,8)
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	(%r15), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%r14,%rax), %eax
	movl	$-1, %edi
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%rbx,%rax,8)
	movq	48(%rsp), %rax                  # 8-byte Reload
	testb	$1, 88(%rbp,%rax)
	je	.LBB47_89
# %bb.88:
	movq	(%r12), %rax
	movzbl	(%rax), %ecx
	shlq	$5, %rcx
	movq	MoveList@GOTPCREL(%rip), %rdx
	testb	$2, 31(%rdx,%rcx)
	jne	.LBB47_110
.LBB47_89:
	movq	(%r15), %rax
	movl	16(%rax), %edx
	movl	%edx, %ecx
	movq	(%rsp), %rsi                    # 8-byte Reload
	subl	(%rsi), %ecx
	jns	.LBB47_91
# %bb.90:
	movl	%edx, (%rsi)
	movl	16(%rax), %ecx
	subl	%edx, %ecx
.LBB47_91:
	movl	%ecx, 16(%rax)
	movq	(%r12), %rax
	jmp	.LBB47_111
.LBB47_92:
	negl	%ebx
	cvtsi2sd	%ebx, %xmm1
	mulsd	.LCPI47_7(%rip), %xmm1
	movsd	.LCPI47_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB47_93:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	16(%rsp), %r15                  # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	cvtsi2sd	%rdi, %xmm2
	testl	$8192, %eax                     # imm = 0x2000
	sete	%bl
	testb	%dl, %dl
	jne	.LBB47_95
# %bb.94:
	movsd	.LCPI47_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB47_95:
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	shlq	$5, %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx), %r9
	movsbl	3(%r9), %edi
	testl	%edi, %edi
	setle	%dl
	orb	%dl, %bl
	movq	MoveList@GOTPCREL(%rip), %rdx
	movzbl	16(%rdx,%rcx), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	movl	36(%r9), %esi
	testl	%edi, %edi
	js	.LBB47_97
# %bb.96:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edi, %xmm2
	mulsd	.LCPI47_7(%rip), %xmm2
	addsd	.LCPI47_8(%rip), %xmm2
	jmp	.LBB47_98
.LBB47_97:
	negl	%edi
	cvtsi2sd	%edi, %xmm3
	mulsd	.LCPI47_7(%rip), %xmm3
	movsd	.LCPI47_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB47_98:
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rsi, %xmm1
	movsd	.LCPI47_8(%rip), %xmm3          # xmm3 = mem[0],zero
	testb	%bl, %bl
	jne	.LBB47_100
# %bb.99:
	movapd	%xmm3, %xmm2
.LBB47_100:
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	divsd	.LCPI47_12(%rip), %xmm0
	addsd	.LCPI47_13(%rip), %xmm0
	andl	$31, %eax
	movzwl	60(%r8), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rdx
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rdx,8), %edx
	andl	$31, %edx
	movsd	.LCPI47_14(%rip), %xmm1         # xmm1 = mem[0],zero
	cmpl	%edx, %eax
	movq	MoveList@GOTPCREL(%rip), %rbx
	je	.LBB47_102
# %bb.101:
	movapd	%xmm3, %xmm1
.LBB47_102:
	movq	Parties@GOTPCREL(%rip), %rbp
	movsd	%xmm1, 64(%rbp,%r15)
	mulsd	%xmm1, %xmm0
	movzwl	60(%r9), %edx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	movzwl	22(%rcx,%rdx,8), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	imulq	$84, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	shrq	$3, %rcx
	andl	$124, %ecx
	movss	(%rcx,%rax), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	callq	rand@PLT
	movsd	.LCPI47_8(%rip), %xmm2          # xmm2 = mem[0],zero
                                        # kill: def $eax killed $eax def $rax
	leal	15(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$-16, %ecx
	negl	%ecx
	addl	%ecx, %eax
	addl	$85, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	divsd	.LCPI47_9(%rip), %xmm0
	mulsd	72(%rbp,%r15), %xmm0
	movq	(%rsp), %rax                    # 8-byte Reload
	testl	$8192, (%rax)                   # imm = 0x2000
	movapd	%xmm2, %xmm1
	je	.LBB47_104
# %bb.103:
	movsd	.LCPI47_14(%rip), %xmm1         # xmm1 = mem[0],zero
.LBB47_104:
	mulsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm2
	cvttsd2si	%xmm1, %eax
	movl	$1, %ecx
	movl	%eax, %edx
	cmoval	%ecx, %edx
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	cmovbel	%eax, %edx
	leaq	56(%rbp,%r15), %r14
	movl	%edx, 56(%rbp,%r15)
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbx,%rax), %eax
	shrl	$23, %eax
	andl	$248, %eax
	movl	$1, %edi
	movl	%r13d, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rcx
	movq	%rbx, %rbp
	movq	%rcx, %rbx
	callq	*(%rcx,%rax)
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbp,%rax), %eax
	shrl	$18, %eax
	andl	$248, %eax
	movl	$1, %edi
	movl	%r13d, %esi
	movl	$1, %edx
	callq	*(%rbx,%rax)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rbp
	movzbl	16(%rbp,%rax), %eax
	movq	ITEM_FUNC_LIST@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	movl	%r13d, %esi
	callq	*(%rbx,%rax,8)
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	(%r15), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%rbp,%rax), %eax
	movl	$-1, %edi
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%rbx,%rax,8)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	Parties@GOTPCREL(%rip), %rcx
	testb	$1, 88(%rcx,%rax)
	je	.LBB47_106
# %bb.105:
	movq	(%r12), %rax
	movzbl	(%rax), %ecx
	shlq	$5, %rcx
	movq	MoveList@GOTPCREL(%rip), %rdx
	testb	$2, 31(%rdx,%rcx)
	jne	.LBB47_112
.LBB47_106:
	movq	(%r15), %rax
	movl	16(%rax), %edx
	movl	%edx, %ecx
	subl	(%r14), %ecx
	jns	.LBB47_108
# %bb.107:
	movl	%edx, (%r14)
	movl	16(%rax), %ecx
	subl	%edx, %ecx
.LBB47_108:
	movl	%ecx, 16(%rax)
	movq	(%r12), %rax
	jmp	.LBB47_113
.LBB47_110:
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	$0, (%rcx)
.LBB47_111:
	movb	1(%rax), %cl
	leal	-1(%rcx), %edx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 1(%rax)
	movl	%r13d, %edi
	callq	move_result@PLT
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rbp
	movl	17(%rbp,%rax), %eax
	shrl	$23, %eax
	andl	$248, %eax
	movl	$2, %edi
	movl	%r13d, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rbx
	callq	*(%rbx,%rax)
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbp,%rax), %eax
	shrl	$18, %eax
	andl	$248, %eax
	movl	$2, %edi
	movl	%r13d, %esi
	movl	$1, %edx
	callq	*(%rbx,%rax)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rbp
	movzbl	16(%rbp,%rax), %eax
	movl	$3, %edi
	movl	%r13d, %esi
	movq	ITEM_FUNC_LIST@GOTPCREL(%rip), %rbx
	callq	*(%rbx,%rax,8)
	movq	(%r15), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%rbp,%rax), %eax
	jmp	.LBB47_114
.LBB47_112:
	movl	$0, (%r14)
.LBB47_113:
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rbx
	movq	ItemList@GOTPCREL(%rip), %r14
	movb	1(%rax), %cl
	leal	-1(%rcx), %edx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 1(%rax)
	movl	%r13d, %edi
	callq	move_result@PLT
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rbp
	movl	17(%rbp,%rax), %eax
	shrl	$23, %eax
	andl	$248, %eax
	movl	$2, %edi
	movl	%r13d, %esi
	xorl	%edx, %edx
	callq	*(%rbx,%rax)
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbp,%rax), %eax
	shrl	$18, %eax
	andl	$248, %eax
	movl	$2, %edi
	movl	%r13d, %esi
	movl	$1, %edx
	callq	*(%rbx,%rax)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%r14,%rax), %eax
	movl	$3, %edi
	movl	%r13d, %esi
	movq	ITEM_FUNC_LIST@GOTPCREL(%rip), %rbx
	callq	*(%rbx,%rax,8)
	movq	(%r15), %rax
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%r14,%rax), %eax
.LBB47_114:
	movl	$-3, %edi
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%rbx,%rax,8)
.LBB47_115:
	leaq	.L.str.48(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end47:
	.size	ExecuteMove, .Lfunc_end47-ExecuteMove
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI47_0:
	.long	.LBB47_30-.LJTI47_0
	.long	.LBB47_49-.LJTI47_0
	.long	.LBB47_49-.LJTI47_0
	.long	.LBB47_32-.LJTI47_0
	.long	.LBB47_33-.LJTI47_0
	.long	.LBB47_36-.LJTI47_0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function endturn
.LCPI48_0:
	.quad	0x3fb0000000000000              # double 0.0625
.LCPI48_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	endturn
	.p2align	4, 0x90
	.type	endturn,@function
endturn:                                # @endturn
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %r15d
	movl	%edi, %eax
	imulq	$240, %rax, %rbx
	movq	Parties@GOTPCREL(%rip), %rbp
	movq	48(%rbp,%rbx), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %r14
	movl	17(%r14,%rax), %eax
	shrl	$23, %eax
	andl	$248, %eax
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %r12
	movl	$5, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	*(%r12,%rax)
	movq	48(%rbp,%rbx), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r14,%rax), %eax
	shrl	$18, %eax
	andl	$248, %eax
	movl	$5, %edi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	*(%r12,%rax)
	movq	48(%rbp,%rbx), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r14,%rax), %eax
	movl	%eax, %ecx
	andl	$469762048, %ecx                # imm = 0x1C000000
	cmpl	$268435456, %ecx                # imm = 0x10000000
	je	.LBB48_3
# %bb.1:
	andl	$65011712, %eax                 # imm = 0x3E00000
	cmpl	$56623104, %eax                 # imm = 0x3600000
	je	.LBB48_3
# %bb.2:
	movb	$0, 104(%rbp,%rbx)
.LBB48_3:
	leaq	(%rbx,%rbp), %r14
	movq	(%rbp,%rbx), %rdi
	movb	54(%rdi), %al
	andb	$15, %al
	cmpb	$3, %al
	je	.LBB48_8
# %bb.4:
	cmpb	$2, %al
	je	.LBB48_7
# %bb.5:
	cmpb	$1, %al
	jne	.LBB48_12
# %bb.6:
	movl	20(%rdi), %esi
	addq	$16, %rdi
	shrl	$4, %esi
	jmp	.LBB48_11
.LBB48_7:
	movl	20(%rdi), %esi
	addq	$16, %rdi
	shrl	$3, %esi
	jmp	.LBB48_11
.LBB48_8:
	movb	52(%rdi), %al
	cmpb	$15, %al
	ja	.LBB48_10
# %bb.9:
	addb	$1, %al
	movb	%al, 52(%rdi)
.LBB48_10:
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	addq	$16, %rdi
	mulsd	.LCPI48_0(%rip), %xmm0
	movsd	.LCPI48_1(%rip), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	cvttsd2si	%xmm0, %eax
	movl	$1, %esi
	cmovbel	%eax, %esi
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmovbel	%eax, %esi
.LBB48_11:
	movzbl	%r15b, %edx
	callq	UDBOG2@PLT
.LBB48_12:
	movq	(%r14), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB48_13
# %bb.14:
	movzbl	44(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rcx
	movzbl	16(%rcx,%rax), %eax
	movq	ITEM_FUNC_LIST@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movzbl	%r15b, %esi
	movl	$5, %edi
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmpq	*%rax                           # TAILCALL
.LBB48_13:
	.cfi_def_cfa_offset 48
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.99(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movzbl	%r15b, %edi
	callq	SwitchIn@PLT
	leaq	.L.str.48(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end48:
	.size	endturn, .Lfunc_end48-endturn
	.cfi_endproc
                                        # -- End function
	.globl	pokemon_create                  # -- Begin function pokemon_create
	.p2align	4, 0x90
	.type	pokemon_create,@function
pokemon_create:                         # @pokemon_create
	.cfi_startproc
# %bb.0:
	movl	$64, %edi
	jmp	malloc@PLT                      # TAILCALL
.Lfunc_end49:
	.size	pokemon_create, .Lfunc_end49-pokemon_create
	.cfi_endproc
                                        # -- End function
	.globl	pokemon_clear                   # -- Begin function pokemon_clear
	.p2align	4, 0x90
	.type	pokemon_clear,@function
pokemon_clear:                          # @pokemon_clear
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rdi)
	movups	%xmm0, 16(%rdi)
	movups	%xmm0, (%rdi)
	movq	$0, 45(%rdi)
	movzbl	55(%rdi), %ecx
	andl	$-64, %ecx
	movb	%cl, 55(%rdi)
	movw	$0, 53(%rdi)
	andl	$-33554432, 56(%rdi)            # imm = 0xFE000000
	andw	$-1024, 60(%rdi)                # imm = 0xFC00
	retq
.Lfunc_end50:
	.size	pokemon_clear, .Lfunc_end50-pokemon_clear
	.cfi_endproc
                                        # -- End function
	.globl	pokemon_randomize               # -- Begin function pokemon_randomize
	.p2align	4, 0x90
	.type	pokemon_randomize,@function
pokemon_randomize:                      # @pokemon_randomize
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	callq	rand@PLT
	movslq	%eax, %rcx
	movabsq	$-6872316419617283935, %r14     # imm = 0xA0A0A0A0A0A0A0A1
	movq	%rcx, %rax
	mulq	%r14
	shrl	$5, %edx
	imull	$51, %edx, %eax
	subl	%eax, %ecx
	addb	$2, %cl
	movb	%cl, 8(%r15)
	andb	$-64, 9(%r15)
	callq	rand@PLT
	movb	9(%r15), %cl
	shlb	$6, %al
	andb	$63, %cl
	orb	%al, %cl
	movb	%cl, 9(%r15)
	callq	rand@PLT
	movslq	%eax, %rcx
	movq	%rcx, %rax
	mulq	%r14
	shrl	$5, %edx
	imull	$51, %edx, %eax
	subl	%eax, %ecx
	addb	$2, %cl
	movb	%cl, 10(%r15)
	andb	$-64, 11(%r15)
	callq	rand@PLT
	movb	11(%r15), %cl
	shlb	$6, %al
	andb	$63, %cl
	orb	%al, %cl
	movb	%cl, 11(%r15)
	callq	rand@PLT
	movslq	%eax, %rcx
	movq	%rcx, %rax
	mulq	%r14
	shrl	$5, %edx
	imull	$51, %edx, %eax
	subl	%eax, %ecx
	addb	$2, %cl
	movb	%cl, 12(%r15)
	andb	$-64, 13(%r15)
	callq	rand@PLT
	movb	13(%r15), %cl
	shlb	$6, %al
	andb	$63, %cl
	orb	%al, %cl
	movb	%cl, 13(%r15)
	callq	rand@PLT
	movslq	%eax, %rcx
	movq	%rcx, %rax
	mulq	%r14
	shrl	$5, %edx
	imull	$51, %edx, %eax
	subl	%eax, %ecx
	addb	$2, %cl
	movb	%cl, 14(%r15)
	andb	$-64, 15(%r15)
	callq	rand@PLT
	movb	15(%r15), %cl
	shlb	$6, %al
	andb	$63, %cl
	orb	%al, %cl
	movb	%cl, 15(%r15)
	callq	rand@PLT
	movslq	%eax, %rcx
	movabsq	$-4638654942511758593, %rdx     # imm = 0xBFA02FE80BFA02FF
	movq	%rcx, %rax
	mulq	%rdx
	shrl	$7, %edx
	imull	$171, %edx, %eax
	subl	%eax, %ecx
	leal	(%rcx,%rcx,8), %eax
	leal	(%rax,%rax,2), %eax
	movzwl	%ax, %eax
	shrl	$9, %eax
	movb	%al, 44(%r15)
	callq	rand@PLT
	movslq	%eax, %rcx
	movabsq	$-2912643801112034465, %rdx     # imm = 0xD79435E50D79435F
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$8, %rdx
	imull	$304, %edx, %eax                # imm = 0x130
	subl	%eax, %ecx
	imull	$55189, %ecx, %eax              # imm = 0xD795
	shrl	$20, %eax
	movb	%al, 45(%r15)
	callq	rand@PLT
	cltq
	imulq	$1374389535, %rax, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movzwl	53(%r15), %ecx
	movzbl	55(%r15), %edx
	movb	%dl, 55(%r15)
	shll	$16, %edx
	orl	%ecx, %edx
	addl	%eax, %eax
	addl	$2, %eax
	movzbl	%al, %eax
	andl	$16776961, %edx                 # imm = 0xFFFF01
	orl	%eax, %edx
	movw	%dx, 53(%r15)
	callq	rand@PLT
	cltq
	imulq	$1374389535, %rax, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$35, %rcx
	addl	%edx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	movzwl	53(%r15), %ecx
	movzbl	55(%r15), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$31, %eax
	shll	$12, %eax
	andl	$16650239, %edx                 # imm = 0xFE0FFF
	orl	%eax, %edx
	movw	%dx, 53(%r15)
	shrl	$16, %edx
	movb	%dl, 55(%r15)
	callq	rand@PLT
	movzwl	53(%r15), %ecx
	movzbl	55(%r15), %edx
	shll	$16, %edx
	andl	$31, %eax
	shll	$17, %eax
	andl	$12648448, %edx                 # imm = 0xC10000
	orl	%eax, %edx
	movw	%cx, 53(%r15)
	shrl	$16, %edx
	movb	%dl, 55(%r15)
	callq	rand@PLT
	movl	56(%r15), %ecx
	andl	$31, %eax
	andl	$-32, %ecx
	orl	%eax, %ecx
	movl	%ecx, 56(%r15)
	callq	rand@PLT
	andl	$31, %eax
	shll	$5, %eax
	movl	$-993, %ecx                     # imm = 0xFC1F
	andl	56(%r15), %ecx
	orl	%eax, %ecx
	movl	%ecx, 56(%r15)
	callq	rand@PLT
	andl	$31, %eax
	shll	$10, %eax
	movl	$-31745, %ecx                   # imm = 0x83FF
	andl	56(%r15), %ecx
	orl	%eax, %ecx
	movl	%ecx, 56(%r15)
	callq	rand@PLT
	andl	$31, %eax
	shll	$15, %eax
	movl	$-1015809, %ecx                 # imm = 0xFFF07FFF
	andl	56(%r15), %ecx
	orl	%eax, %ecx
	movl	%ecx, 56(%r15)
	callq	rand@PLT
	andl	$31, %eax
	shll	$20, %eax
	movl	$-32505857, %ecx                # imm = 0xFE0FFFFF
	andl	56(%r15), %ecx
	orl	%eax, %ecx
	movl	%ecx, 56(%r15)
	callq	rand@PLT
	movslq	%eax, %rcx
	movq	%rcx, %rax
	shrq	%rax
	movabsq	$-6640827866535438581, %rdx     # imm = 0xA3D70A3D70A3D70B
	mulq	%rdx
	shrl	$4, %edx
	imull	$50, %edx, %eax
	subl	%eax, %ecx
	movl	$-1024, %eax                    # imm = 0xFC00
	andl	60(%r15), %eax
	orl	%ecx, %eax
	addl	$1, %eax
	movw	%ax, 60(%r15)
	movl	$127, %ebp
	jmp	.LBB51_1
	.p2align	4, 0x90
.LBB51_3:                               #   in Loop: Header=BB51_1 Depth=1
	addb	$4, %cl
	movb	%cl, 46(%r15,%rax)
	addl	$-1, %ebp
	je	.LBB51_4
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	movslq	%eax, %rbx
	imulq	$715827883, %rbx, %rax          # imm = 0x2AAAAAAB
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	addl	%eax, %eax
	leal	(%rax,%rax,2), %eax
	subl	%eax, %ebx
	movsbq	%bl, %rax
	movzbl	46(%r15,%rax), %ecx
	cmpb	$-4, %cl
	jb	.LBB51_3
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	callq	rand@PLT
	cltq
	imulq	$1717986919, %rax, %rcx         # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	%ebx, %eax
	setge	%cl
	addl	%eax, %ecx
	movsbq	%cl, %rax
	movzbl	46(%r15,%rax), %ecx
	jmp	.LBB51_3
.LBB51_4:
	movq	%r15, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end51:
	.size	pokemon_randomize, .Lfunc_end51-pokemon_randomize
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function StatCalcMon
.LCPI52_0:
	.quad	127                             # 0x7f
	.quad	127                             # 0x7f
.LCPI52_1:
	.long	31                              # 0x1f
	.long	31                              # 0x1f
	.long	31                              # 0x1f
	.long	31                              # 0x1f
.LCPI52_2:
	.zero	16,63
.LCPI52_3:
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
.LCPI52_4:
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
.LCPI52_5:
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
.LCPI52_6:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	StatCalcMon
	.p2align	4, 0x90
	.type	StatCalcMon,@function
StatCalcMon:                            # @StatCalcMon
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%esi, %eax
	movl	%edi, %ecx
	imulq	$240, %rax, %rax
	addq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax,%rcx,8), %rax
	movzwl	53(%rax), %ecx
	movzbl	55(%rax), %esi
	shll	$16, %esi
	orl	%ecx, %esi
	movl	%esi, %ecx
	shrl	$17, %ecx
	andl	$31, %ecx
	movq	POKEMONDEX@GOTPCREL(%rip), %r9
	movzwl	60(%rax), %edx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %r11
	movzbl	16(%r9,%r11,8), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	46(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	movd	%esi, %xmm0
	pshufd	$68, %xmm0, %xmm0               # xmm0 = xmm0[0,1,0,1]
	psrlq	$1, %xmm0
	pand	.LCPI52_0(%rip), %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	movd	%xmm1, %r10d
	movd	%xmm0, %ecx
	pshufd	$128, %xmm0, %xmm0              # xmm0 = xmm0[0,0,0,2]
	imull	%ecx, %edi
	imulq	$1374389535, %rdi, %rdi         # imm = 0x51EB851F
	shrq	$37, %rdi
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 20(%rax)
	movl	56(%rax), %ecx
	shrl	$12, %esi
	andl	$31, %esi
	leaq	(%rsi,%rsi,8), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	%rsi, %rdi
	movq	NATURE_LIST@GOTPCREL(%rip), %r8
	movl	%ecx, %esi
	shrl	$5, %esi
	movl	%ecx, %edx
	shrl	$10, %edx
	movl	%ecx, %ebx
	shrl	$15, %ebx
	movd	%ebx, %xmm1
	movd	%edx, %xmm2
	punpckldq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%ecx, %xmm1
	movd	%esi, %xmm3
	punpckldq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	punpcklqdq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0]
	pand	.LCPI52_1(%rip), %xmm1
	movd	17(%r9,%r11,8), %xmm2           # xmm2 = mem[0],zero,zero,zero
	pxor	%xmm3, %xmm3
	punpcklbw	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	movd	47(%rax), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	psrlw	$2, %xmm4
	pand	.LCPI52_2(%rip), %xmm4
	paddd	%xmm2, %xmm2
	punpcklbw	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	punpcklwd	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3]
	paddd	%xmm1, %xmm4
	paddd	%xmm2, %xmm4
	pmaddwd	%xmm0, %xmm4
	movdqa	.LCPI52_3(%rip), %xmm0          # xmm0 = [1374389535,1374389535,1374389535,1374389535]
	pshufd	$245, %xmm4, %xmm1              # xmm1 = xmm4[1,1,3,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$237, %xmm4, %xmm2              # xmm2 = xmm4[1,3,2,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$237, %xmm1, %xmm0              # xmm0 = xmm1[1,3,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	psrld	$5, %xmm2
	paddd	.LCPI52_4(%rip), %xmm2
	cvtdq2ps	%xmm2, %xmm0
	movups	(%r8,%rdi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	.LCPI52_5(%rip), %xmm0          # xmm0 = [2.14748365E+9,2.14748365E+9,2.14748365E+9,2.14748365E+9]
	movaps	%xmm1, %xmm2
	cmpltps	%xmm0, %xmm2
	cvttps2dq	%xmm1, %xmm3
	andps	%xmm2, %xmm3
	subps	%xmm0, %xmm1
	cvttps2dq	%xmm1, %xmm0
	xorps	.LCPI52_6(%rip), %xmm0
	andnps	%xmm0, %xmm2
	orps	%xmm3, %xmm2
	movups	%xmm2, 24(%rax)
	shrl	$20, %ecx
	andl	$31, %ecx
	movzbl	21(%r9,%r11,8), %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	51(%rax), %edx
	shrl	$2, %edx
	addl	%ecx, %edx
	imull	%r10d, %edx
	imulq	$1374389535, %rdx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	addl	$5, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	mulss	16(%r8,%rdi), %xmm0
	cvttss2si	%xmm0, %rcx
	movl	%ecx, 40(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end52:
	.size	StatCalcMon, .Lfunc_end52-StatCalcMon
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function PP_Set
.LCPI53_0:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI53_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	PP_Set
	.p2align	4, 0x90
	.type	PP_Set,@function
PP_Set:                                 # @PP_Set
	.cfi_startproc
# %bb.0:
	movl	%esi, %eax
	imulq	$240, %rax, %r10
	addq	Parties@GOTPCREL(%rip), %r10
	movl	%edi, %r9d
	movq	(%r10,%r9,8), %rsi
	movzbl	8(%rsi), %edi
	shlq	$5, %rdi
	movq	MoveList@GOTPCREL(%rip), %r8
	movl	17(%r8,%rdi), %edi
	shrl	$7, %edi
	andl	$7, %edi
	leal	(%rdi,%rdi,4), %edi
	addl	$5, %edi
	cvtsi2ss	%edi, %xmm2
	movb	9(%rsi), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	cvtsi2sd	%edx, %xmm3
	movsd	.LCPI53_0(%rip), %xmm0          # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movsd	.LCPI53_1(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 9(%rsi)
	movq	(%r10,%r9,8), %rcx
	movzbl	10(%rcx), %edx
	shlq	$5, %rdx
	movl	17(%r8,%rdx), %edx
	shrl	$7, %edx
	andl	$7, %edx
	leal	(%rdx,%rdx,4), %edx
	addl	$5, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ss	%edx, %xmm2
	movb	11(%rcx), %al
	movl	%eax, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %rdx
	andb	$63, %dl
	andb	$-64, %al
	orb	%dl, %al
	movb	%al, 11(%rcx)
	movq	(%r10,%r9,8), %rax
	movzbl	12(%rax), %ecx
	shlq	$5, %rcx
	movl	17(%r8,%rcx), %ecx
	shrl	$7, %ecx
	andl	$7, %ecx
	leal	(%rcx,%rcx,4), %ecx
	addl	$5, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ss	%ecx, %xmm2
	movb	13(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 13(%rax)
	movq	(%r10,%r9,8), %rax
	movzbl	14(%rax), %ecx
	shlq	$5, %rcx
	movl	17(%r8,%rcx), %ecx
	shrl	$7, %ecx
	andl	$7, %ecx
	leal	(%rcx,%rcx,4), %ecx
	addl	$5, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ss	%ecx, %xmm2
	movb	15(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	cvtsd2ss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 15(%rax)
	retq
.Lfunc_end53:
	.size	PP_Set, .Lfunc_end53-PP_Set
	.cfi_endproc
                                        # -- End function
	.globl	RetrieveUserMove                # -- Begin function RetrieveUserMove
	.p2align	4, 0x90
	.type	RetrieveUserMove,@function
RetrieveUserMove:                       # @RetrieveUserMove
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %r12d
	movq	%fs:40, %rax
	movq	%rax, 32(%rsp)
	movb	$0, 31(%rsp)
	testl	%edi, %edi
	movl	$70, %eax
	movl	$56, %edx
	cmovneq	%rax, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	leaq	.L.str.101(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	%r12d, %eax
	imulq	$240, %rax, %r15
	movq	Parties@GOTPCREL(%rip), %rax
	leaq	(%rax,%r15), %r14
	testb	$1, 235(%rax,%r15)
	jne	.LBB54_2
# %bb.1:
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	jmp	.LBB54_3
.LBB54_2:
	movq	(%r14), %rbx
	callq	rand@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$-4, %ecx
	subl	%ecx, %eax
	cltq
	movzbl	8(%rbx,%rax,2), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	x@GOTPCREL(%rip), %rbx
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	leaq	.L.str.57(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB54_3:
	movq	HideMove@GOTPCREL(%rip), %rbp
	cmpb	$0, (%rbp)
	je	.LBB54_5
# %bb.4:
	leaq	.L.str.44(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.43(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB54_5:
	movb	$49, 31(%rsp)
	movq	x@GOTPCREL(%rip), %rax
	cmpb	$49, (%rax)
	jne	.LBB54_8
# %bb.6:
	cmpb	$0, 1(%rax)
	jne	.LBB54_8
.LBB54_7:
	xorl	%r13d, %r13d
	jmp	.LBB54_33
.LBB54_8:
	leaq	31(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	6(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movl	$1702260557, (%rax)             # imm = 0x65766F4D
	movw	$32, 4(%rax)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	strcat@PLT
	movq	x@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB54_31
# %bb.9:
	movq	(%r14), %rax
	movzbl	8(%rax), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	movq	HideMove@GOTPCREL(%rip), %rbp
	je	.LBB54_7
# %bb.10:
	movb	$50, 31(%rsp)
	cmpb	$50, (%rbx)
	movl	$1, %r13d
	jne	.LBB54_12
# %bb.11:
	cmpb	$0, 1(%rbx)
	je	.LBB54_33
.LBB54_12:
	leaq	31(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	6(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movl	$1702260557, (%rax)             # imm = 0x65766F4D
	movw	$32, 4(%rax)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	strcat@PLT
	movq	x@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB54_32
# %bb.13:
	movq	(%r14), %rax
	movzbl	10(%rax), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	movq	HideMove@GOTPCREL(%rip), %rbp
	je	.LBB54_33
# %bb.14:
	movb	$51, 31(%rsp)
	cmpb	$51, (%rbx)
	movl	$2, %r13d
	jne	.LBB54_16
# %bb.15:
	cmpb	$0, 1(%rbx)
	je	.LBB54_33
.LBB54_16:
	leaq	31(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	6(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movl	$1702260557, (%rax)             # imm = 0x65766F4D
	movw	$32, 4(%rax)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	strcat@PLT
	movq	x@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB54_32
# %bb.17:
	movq	(%r14), %rax
	movzbl	12(%rax), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	movq	HideMove@GOTPCREL(%rip), %rbp
	je	.LBB54_33
# %bb.18:
	movb	$52, 31(%rsp)
	cmpb	$52, (%rbx)
	movl	$3, %r13d
	jne	.LBB54_20
# %bb.19:
	cmpb	$0, 1(%rbx)
	je	.LBB54_33
.LBB54_20:
	leaq	31(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	6(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movl	$1702260557, (%rax)             # imm = 0x65766F4D
	movw	$32, 4(%rax)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	strcat@PLT
	movq	x@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB54_32
# %bb.21:
	movq	(%r14), %rax
	movzbl	14(%rax), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	x@GOTPCREL(%rip), %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	movq	HideMove@GOTPCREL(%rip), %rbp
	je	.LBB54_33
# %bb.22:
	movq	Parties@GOTPCREL(%rip), %rax
	addq	%r15, %rax
	addq	$233, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	Parties@GOTPCREL(%rip), %rax
	addq	%r15, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	$1, %ecx
	movq	x@GOTPCREL(%rip), %r13
.LBB54_23:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	%rcx, (%rsp)                    # 8-byte Spill
	cmpq	$6, %rcx
	je	.LBB54_51
# %bb.24:                               #   in Loop: Header=BB54_23 Depth=1
	movq	(%rsp), %rax                    # 8-byte Reload
	addl	$49, %eax
	movb	%al, 31(%rsp)
	leaq	31(%rsp), %rdi
	callq	strlen@PLT
	leaq	12(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%rbx)
	movl	$5251183, 8(%rbx)               # imm = 0x50206F
	movq	%rbx, %rdi
	leaq	31(%rsp), %rsi
	callq	strcat@PLT
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB54_28
# %bb.25:                               #   in Loop: Header=BB54_23 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	POKEMONDEX@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%rbp)
	movl	$2125684, 7(%rbp)               # imm = 0x206F74
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	strcat@PLT
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	HideMove@GOTPCREL(%rip), %rbp
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB54_28
# %bb.26:                               #   in Loop: Header=BB54_23 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB54_28
# %bb.27:                               #   in Loop: Header=BB54_23 Depth=1
	leaq	31(%rsp), %rdi
	callq	strlen@PLT
	leaq	2(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	movw	$80, (%rax)
	movq	%rax, %rdi
	leaq	31(%rsp), %rsi
	callq	strcat@PLT
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	addq	$1, %rcx
	testl	%eax, %eax
	jne	.LBB54_23
.LBB54_28:
	movq	Parties@GOTPCREL(%rip), %rax
	movb	$1, 232(%rax,%r15)
	movq	16(%rsp), %rax                  # 8-byte Reload
	orb	$-128, 1(%rax)
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%r14,%rax,8), %rbx
	movzwl	60(%rbx), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	POKEMONDEX@GOTPCREL(%rip), %rdi
	leaq	.L.str.106(%rip), %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB54_30
# %bb.29:
	cmpl	$0, 16(%rbx)
	jg	.LBB54_45
.LBB54_30:
	leaq	.L.str.107(%rip), %rsi
	jmp	.LBB54_41
.LBB54_31:
	xorl	%r13d, %r13d
.LBB54_32:
	movq	HideMove@GOTPCREL(%rip), %rbp
.LBB54_33:
	movq	(%r14), %rax
	leaq	(%rax,%r13,2), %rcx
	addq	$8, %rcx
	movq	Parties@GOTPCREL(%rip), %rdx
	movq	%rcx, 48(%rdx,%r15)
	cmpb	$0, 8(%rax,%r13,2)
	je	.LBB54_40
# %bb.34:
	testb	$63, 9(%rax,%r13,2)
	jne	.LBB54_45
# %bb.35:
	testb	$63, 9(%rax)
	je	.LBB54_39
# %bb.36:
	testb	$63, 11(%rax)
	jne	.LBB54_39
# %bb.37:
	testb	$63, 13(%rax)
	jne	.LBB54_39
# %bb.38:
	testb	$63, 15(%rax)
	je	.LBB54_48
.LBB54_39:
	leaq	.L.str.104(%rip), %rsi
	jmp	.LBB54_41
.LBB54_40:
	leaq	.L.str.103(%rip), %rsi
.LBB54_41:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.37(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.38(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.39(%rip), %rdi
	callq	system@PLT
.LBB54_42:
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	getc@PLT
	leaq	.L.str.40(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.41(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.42(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.43(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	cmpb	$0, (%rbp)
	jne	.LBB54_44
# %bb.43:
	leaq	.L.str.48(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB54_44:
	movq	Reset@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB54_45:
	movq	%fs:40, %rax
	cmpq	32(%rsp), %rax
	jne	.LBB54_58
# %bb.46:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB54_48:
	.cfi_def_cfa_offset 96
	movq	%rdx, %rcx
	leaq	(%rdx,%r15), %rax
	addq	$48, %rax
	movq	Struggle_Slot@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB54_45
.LBB54_51:
	movabsq	$8241956893437028694, %rax      # imm = 0x7261502077656956
	xorq	(%r13), %rax
	movabsq	$34186506789724279, %rcx        # imm = 0x79747261502077
	xorq	3(%r13), %rcx
	orq	%rax, %rcx
	je	.LBB54_55
# %bb.52:
	movl	$2003134806, %eax               # imm = 0x77656956
	xorl	(%r13), %eax
	movzbl	4(%r13), %ecx
	orl	%eax, %ecx
	je	.LBB54_55
# %bb.53:
	movl	$1953653072, %eax               # imm = 0x74726150
	xorl	(%r13), %eax
	movzwl	4(%r13), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB54_55
# %bb.54:
	leaq	.L.str.37(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.38(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.39(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.108(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB54_42
.LBB54_55:
	cmpb	$0, (%rbp)
	jne	.LBB54_57
# %bb.56:
	leaq	.L.str.48(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB54_57:
	movzbl	%r12b, %edi
	callq	displayparty@PLT
	jmp	.LBB54_44
.LBB54_58:
	callq	__stack_chk_fail@PLT
.Lfunc_end54:
	.size	RetrieveUserMove, .Lfunc_end54-RetrieveUserMove
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function Battle
.LCPI55_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI55_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI55_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI55_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI55_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI55_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI55_6:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
.LCPI55_7:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
.LCPI55_9:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff8000000000000              # double 1.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI55_8:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI55_10:
	.quad	0x3ff0000000000000              # double 1
.LCPI55_11:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	Battle
	.p2align	4, 0x90
	.type	Battle,@function
Battle:                                 # @Battle
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	StatCalc@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB55_35
# %bb.1:
	leaq	.L.str.109(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdx
	movq	x@GOTPCREL(%rip), %r13
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	%r13, %rdi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	leaq	.L.str.44(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.45(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	cmpw	$121, (%r13)
	jne	.LBB55_15
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB55_3
	.p2align	4, 0x90
.LBB55_124:                             #   in Loop: Header=BB55_3 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$1, %rax
	cmpq	$2, %rax
	je	.LBB55_18
.LBB55_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_4 Depth 2
                                        #       Child Loop BB55_5 Depth 3
                                        #       Child Loop BB55_9 Depth 3
                                        #       Child Loop BB55_13 Depth 3
                                        #       Child Loop BB55_116 Depth 3
                                        #       Child Loop BB55_120 Depth 3
	movq	%rax, %r14
	shlq	$4, %r14
	subq	%rax, %r14
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	subq	%rax, %r14
	addq	EOPTEXT@GOTPCREL(%rip), %r14
	xorl	%r12d, %r12d
	jmp	.LBB55_4
	.p2align	4, 0x90
.LBB55_122:                             #   in Loop: Header=BB55_4 Depth=2
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movb	%bl, 14(%rax)
.LBB55_123:                             #   in Loop: Header=BB55_4 Depth=2
	cmpq	$6, %r12
	je	.LBB55_124
.LBB55_4:                               #   Parent Loop BB55_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB55_5 Depth 3
                                        #       Child Loop BB55_9 Depth 3
                                        #       Child Loop BB55_13 Depth 3
                                        #       Child Loop BB55_116 Depth 3
                                        #       Child Loop BB55_120 Depth 3
	movq	%r12, %r15
	addq	$1, %r12
	movl	$1, %edi
	leaq	.L.str.110(%rip), %rsi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r13, %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	movl	$1, %edi
	leaq	.L.str.44(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.45(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	POKEMONDEX@GOTPCREL(%rip), %rbp
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB55_5:                               #   Parent Loop BB55_3 Depth=1
                                        #     Parent Loop BB55_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB55_6
# %bb.7:                                #   in Loop: Header=BB55_5 Depth=3
	addq	$1, %rbx
	addq	$24, %rbp
	cmpq	$51, %rbx
	jne	.LBB55_5
	jmp	.LBB55_8
	.p2align	4, 0x90
.LBB55_6:                               #   in Loop: Header=BB55_4 Depth=2
	imulq	$240, 8(%rsp), %rax             # 8-byte Folded Reload
	addq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax,%r15,8), %rax
	movl	60(%rax), %ecx
	movl	$-1024, %edx                    # imm = 0xFC00
	andl	%edx, %ecx
	orl	%ecx, %ebx
	movw	%bx, 60(%rax)
.LBB55_8:                               #   in Loop: Header=BB55_4 Depth=2
	imulq	$240, 8(%rsp), %rax             # 8-byte Folded Reload
	addq	Parties@GOTPCREL(%rip), %rax
	leaq	(%rax,%r15,8), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movl	$1, %edi
	leaq	.L.str.111(%rip), %rsi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	movl	$1, %r8d
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %r15
	movq	(%r15), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r13, %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	movl	$1, %edi
	leaq	.L.str.44(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.45(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	MoveList@GOTPCREL(%rip), %rbp
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB55_9:                               #   Parent Loop BB55_3 Depth=1
                                        #     Parent Loop BB55_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB55_10
# %bb.11:                               #   in Loop: Header=BB55_9 Depth=3
	addq	$1, %rbx
	addq	$32, %rbp
	cmpq	$53, %rbx
	jne	.LBB55_9
	jmp	.LBB55_12
	.p2align	4, 0x90
.LBB55_10:                              #   in Loop: Header=BB55_4 Depth=2
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movb	%bl, 8(%rax)
.LBB55_12:                              #   in Loop: Header=BB55_4 Depth=2
	movl	$1, %edi
	leaq	.L.str.111(%rip), %rsi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	movl	$2, %r8d
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r13, %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	movl	$1, %edi
	leaq	.L.str.44(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.45(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	MoveList@GOTPCREL(%rip), %r15
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB55_13:                              #   Parent Loop BB55_3 Depth=1
                                        #     Parent Loop BB55_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB55_114
# %bb.14:                               #   in Loop: Header=BB55_13 Depth=3
	addq	$1, %rbp
	addq	$32, %r15
	cmpq	$53, %rbp
	jne	.LBB55_13
	jmp	.LBB55_115
	.p2align	4, 0x90
.LBB55_114:                             #   in Loop: Header=BB55_4 Depth=2
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movb	%bpl, 10(%rax)
.LBB55_115:                             #   in Loop: Header=BB55_4 Depth=2
	movl	$1, %edi
	leaq	.L.str.111(%rip), %rsi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	movl	$3, %r8d
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %r15
	movq	(%r15), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r13, %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	movl	$1, %edi
	leaq	.L.str.44(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.45(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	MoveList@GOTPCREL(%rip), %rbp
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB55_116:                             #   Parent Loop BB55_3 Depth=1
                                        #     Parent Loop BB55_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB55_118
# %bb.117:                              #   in Loop: Header=BB55_116 Depth=3
	addq	$1, %rbx
	addq	$32, %rbp
	cmpq	$53, %rbx
	jne	.LBB55_116
	jmp	.LBB55_119
	.p2align	4, 0x90
.LBB55_118:                             #   in Loop: Header=BB55_4 Depth=2
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %rax
	movb	%bl, 12(%rax)
.LBB55_119:                             #   in Loop: Header=BB55_4 Depth=2
	movl	$1, %edi
	leaq	.L.str.111(%rip), %rsi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	movl	$4, %r8d
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r13, %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	movl	$1, %edi
	leaq	.L.str.44(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.45(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	MoveList@GOTPCREL(%rip), %rbp
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB55_120:                             #   Parent Loop BB55_3 Depth=1
                                        #     Parent Loop BB55_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB55_122
# %bb.121:                              #   in Loop: Header=BB55_120 Depth=3
	addq	$1, %rbx
	addq	$32, %rbp
	cmpq	$53, %rbx
	jne	.LBB55_120
	jmp	.LBB55_123
.LBB55_15:
	leaq	.L.str.112(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	%r13, %rdi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	leaq	.L.str.44(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.45(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	cmpw	$121, (%r13)
	jne	.LBB55_18
# %bb.16:
	xorl	%ebp, %ebp
	movq	Parties@GOTPCREL(%rip), %r14
	.p2align	4, 0x90
.LBB55_17:                              # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbp), %rdi
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 32(%rdi)
	movdqu	%xmm0, 16(%rdi)
	movdqu	%xmm0, (%rdi)
	movq	$0, 45(%rdi)
	movzbl	55(%rdi), %eax
	andl	$-64, %eax
	movb	%al, 55(%rdi)
	movw	$0, 53(%rdi)
	andl	$-33554432, 56(%rdi)            # imm = 0xFE000000
	andw	$-1024, 60(%rdi)                # imm = 0xFC00
	callq	pokemon_randomize@PLT
	movq	8(%r14,%rbp), %rdi
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, 16(%rdi)
	movdqu	%xmm0, 32(%rdi)
	movq	$0, 45(%rdi)
	movzbl	55(%rdi), %eax
	andl	$-64, %eax
	movb	%al, 55(%rdi)
	movw	$0, 53(%rdi)
	andl	$-33554432, 56(%rdi)            # imm = 0xFE000000
	andw	$-1024, 60(%rdi)                # imm = 0xFC00
	callq	pokemon_randomize@PLT
	movq	16(%r14,%rbp), %rdi
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, 16(%rdi)
	movdqu	%xmm0, 32(%rdi)
	movq	$0, 45(%rdi)
	movzbl	55(%rdi), %eax
	andl	$-64, %eax
	movb	%al, 55(%rdi)
	movw	$0, 53(%rdi)
	andl	$-33554432, 56(%rdi)            # imm = 0xFE000000
	andw	$-1024, 60(%rdi)                # imm = 0xFC00
	callq	pokemon_randomize@PLT
	movq	24(%r14,%rbp), %rdi
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, 16(%rdi)
	movdqu	%xmm0, 32(%rdi)
	movq	$0, 45(%rdi)
	movzbl	55(%rdi), %eax
	andl	$-64, %eax
	movb	%al, 55(%rdi)
	movw	$0, 53(%rdi)
	andl	$-33554432, 56(%rdi)            # imm = 0xFE000000
	andw	$-1024, 60(%rdi)                # imm = 0xFC00
	callq	pokemon_randomize@PLT
	movq	32(%r14,%rbp), %rdi
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, 16(%rdi)
	movdqu	%xmm0, 32(%rdi)
	movq	$0, 45(%rdi)
	movzbl	55(%rdi), %eax
	andl	$-64, %eax
	movb	%al, 55(%rdi)
	movw	$0, 53(%rdi)
	andl	$-33554432, 56(%rdi)            # imm = 0xFE000000
	andw	$-1024, 60(%rdi)                # imm = 0xFC00
	callq	pokemon_randomize@PLT
	movq	40(%r14,%rbp), %rdi
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, 16(%rdi)
	movdqu	%xmm0, 32(%rdi)
	movq	$0, 45(%rdi)
	movzbl	55(%rdi), %eax
	andl	$-64, %eax
	movb	%al, 55(%rdi)
	movw	$0, 53(%rdi)
	andl	$-33554432, 56(%rdi)            # imm = 0xFE000000
	andw	$-1024, 60(%rdi)                # imm = 0xFC00
	callq	pokemon_randomize@PLT
	addq	$240, %rbp
	cmpq	$480, %rbp                      # imm = 0x1E0
	jne	.LBB55_17
.LBB55_18:
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	StatCalcMon@PLT
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	PP_Set@PLT
	xorl	%edi, %edi
	movl	$1, %esi
	callq	StatCalcMon@PLT
	xorl	%edi, %edi
	movl	$1, %esi
	callq	PP_Set@PLT
	movl	$1, %edi
	xorl	%esi, %esi
	callq	StatCalcMon@PLT
	movl	$1, %edi
	xorl	%esi, %esi
	callq	PP_Set@PLT
	movl	$1, %edi
	movl	$1, %esi
	callq	StatCalcMon@PLT
	movl	$1, %edi
	movl	$1, %esi
	callq	PP_Set@PLT
	movl	$2, %edi
	xorl	%esi, %esi
	callq	StatCalcMon@PLT
	movl	$2, %edi
	xorl	%esi, %esi
	callq	PP_Set@PLT
	movl	$2, %edi
	movl	$1, %esi
	callq	StatCalcMon@PLT
	movl	$2, %edi
	movl	$1, %esi
	callq	PP_Set@PLT
	movl	$3, %edi
	xorl	%esi, %esi
	callq	StatCalcMon@PLT
	movl	$3, %edi
	xorl	%esi, %esi
	callq	PP_Set@PLT
	movl	$3, %edi
	movl	$1, %esi
	callq	StatCalcMon@PLT
	movl	$3, %edi
	movl	$1, %esi
	callq	PP_Set@PLT
	movl	$4, %edi
	xorl	%esi, %esi
	callq	StatCalcMon@PLT
	movl	$4, %edi
	xorl	%esi, %esi
	callq	PP_Set@PLT
	movl	$4, %edi
	movl	$1, %esi
	callq	StatCalcMon@PLT
	movl	$4, %edi
	movl	$1, %esi
	callq	PP_Set@PLT
	movl	$5, %edi
	xorl	%esi, %esi
	callq	StatCalcMon@PLT
	movl	$5, %edi
	xorl	%esi, %esi
	callq	PP_Set@PLT
	movl	$5, %edi
	movl	$1, %esi
	callq	StatCalcMon@PLT
	movl	$5, %edi
	movl	$1, %esi
	callq	PP_Set@PLT
	leaq	.L.str.113(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	%r13, %rdi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	leaq	.L.str.44(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.45(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	cmpw	$121, (%r13)
	jne	.LBB55_28
# %bb.19:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773374, %esi                 # imm = 0xFFF0FE
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	8(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773374, %esi                 # imm = 0xFFF0FE
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	16(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773374, %esi                 # imm = 0xFFF0FE
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	24(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773374, %esi                 # imm = 0xFFF0FE
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	32(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773374, %esi                 # imm = 0xFFF0FE
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	40(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	andl	$16773374, %esi                 # imm = 0xFFF0FE
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	240(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	andb	$-16, 54(%rcx)
	movq	240(%rax), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	248(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	andb	$-16, 54(%rcx)
	movq	248(%rax), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	256(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	andb	$-16, 54(%rcx)
	movq	256(%rax), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	264(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	andb	$-16, 54(%rcx)
	movq	264(%rax), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	272(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	andb	$-16, 54(%rcx)
	movq	272(%rax), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movq	280(%rax), %rcx
	movl	20(%rcx), %edx
	movl	%edx, 16(%rcx)
	andb	$-16, 54(%rcx)
	movq	280(%rax), %rcx
	movzwl	53(%rcx), %edx
	movzbl	55(%rcx), %esi
	movb	%sil, 55(%rcx)
	shll	$16, %esi
	orl	%edx, %esi
	orl	$1, %esi
	movw	%si, 53(%rcx)
	movapd	.LCPI55_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	88(%rax), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI55_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI55_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI55_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI55_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI55_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI55_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB55_20:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm2              # xmm2 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm0, %xmm1                    # xmm1 = xmm0[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm1, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	andnpd	%xmm7, %xmm1
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm2, %xmm7                    # xmm7 = xmm2[0],xmm7[1]
	andnpd	%xmm1, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB55_20
# %bb.21:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, %rdx
	movapd	%xmm5, %xmm7
	movlpd	96(%rax), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI55_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	.p2align	4, 0x90
.LBB55_22:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm7, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm1, %xmm7                    # xmm7 = xmm1[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm7, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm1, %xmm7                    # xmm7 = xmm1[0],xmm7[1]
	andnpd	%xmm2, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB55_22
# %bb.23:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, %rcx
	movq	%rdx, %xmm7
	shufpd	$2, %xmm5, %xmm7                # xmm7 = xmm7[0],xmm5[1]
	movdqa	.LCPI55_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %edx
	.p2align	4, 0x90
.LBB55_24:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm7, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm1, %xmm7                    # xmm7 = xmm1[0],xmm7[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm7
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm7, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	movsd	%xmm1, %xmm7                    # xmm7 = xmm1[0],xmm7[1]
	andnpd	%xmm2, %xmm7
	paddq	%xmm4, %xmm6
	addq	$-8, %rdx
	jne	.LBB55_24
# %bb.25:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 88(%rax)
	movq	%rcx, %xmm0
	movsd	%xmm0, %xmm5                    # xmm5 = xmm0[0],xmm5[1]
	movdqa	.LCPI55_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	.p2align	4, 0x90
.LBB55_26:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm0
	psllq	%xmm6, %xmm0
	pshufd	$238, %xmm6, %xmm1              # xmm1 = xmm6[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm0, %xmm2                    # xmm2 = xmm0[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm8, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm9, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm2, %xmm5
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm0, %xmm2
	movsd	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1]
	movdqa	%xmm6, %xmm0
	paddq	%xmm10, %xmm0
	movdqa	%xmm3, %xmm1
	psllq	%xmm0, %xmm1
	andnpd	%xmm5, %xmm2
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm5
	psllq	%xmm0, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	andnpd	%xmm2, %xmm5
	paddq	%xmm4, %xmm6
	addq	$-8, %rcx
	jne	.LBB55_26
# %bb.27:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 96(%rax)
.LBB55_28:
	leaq	.L.str.114(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	%r13, %rdi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	cmpw	$121, (%r13)
	jne	.LBB55_30
# %bb.29:
	movq	HideMove@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB55_30:
	leaq	.L.str.44(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.45(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.115(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	%r13, %rdi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	cmpw	$121, (%r13)
	jne	.LBB55_32
# %bb.31:
	movq	Parties@GOTPCREL(%rip), %rax
	orb	$1, 235(%rax)
.LBB55_32:
	leaq	.L.str.44(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.45(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.116(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	%r13, %rdi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	cmpw	$121, (%r13)
	jne	.LBB55_34
# %bb.33:
	movq	Parties@GOTPCREL(%rip), %rax
	orb	$1, 475(%rax)
.LBB55_34:
	leaq	.L.str.44(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.45(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	StatCalc@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	BattleMode@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB55_35:
	movq	Parties@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rbx
	leaq	(%rbx,%rax,8), %rdx
	leaq	.L.str.117(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	240(%r13), %rax
	movzwl	60(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rdx
	leaq	.L.str.118(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Empty_slot@GOTPCREL(%rip), %rax
	movq	%rax, 48(%r13)
	movq	%rax, 288(%r13)
	movq	BattleMode@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB55_113
# %bb.36:
	movq	Retrieve@GOTPCREL(%rip), %rbp
	leaq	.L.str.48(%rip), %r14
	movq	Struggle_Slot@GOTPCREL(%rip), %r12
	movq	Reset@GOTPCREL(%rip), %r15
	movq	HideMove@GOTPCREL(%rip), %rbx
	jmp	.LBB55_38
	.p2align	4, 0x90
.LBB55_104:                             #   in Loop: Header=BB55_38 Depth=1
	callq	rand@PLT
	andb	$1, %al
	leaq	.L.str.48(%rip), %r14
	movq	Struggle_Slot@GOTPCREL(%rip), %r12
.LBB55_112:                             #   in Loop: Header=BB55_38 Depth=1
	movq	EndFirst@GOTPCREL(%rip), %r15
	movb	%al, (%r15)
	xorb	$1, %al
	movzbl	%al, %edi
	callq	endturn@PLT
	movzbl	(%r15), %edi
	callq	endturn@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rbp
	movb	$1, (%rbp)
	movq	HideMove@GOTPCREL(%rip), %rbx
	movq	Reset@GOTPCREL(%rip), %r15
.LBB55_37:                              #   in Loop: Header=BB55_38 Depth=1
	movq	BattleMode@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB55_113
.LBB55_38:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_58 Depth 2
	movq	TurnCounter@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	$1, %edi
	leaq	.L.str.119(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	cmpb	$0, (%rbp)
	jne	.LBB55_58
	jmp	.LBB55_40
	.p2align	4, 0x90
.LBB55_64:                              #   in Loop: Header=BB55_58 Depth=2
	movb	$0, (%r15)
	cmpb	$0, (%rbp)
	je	.LBB55_40
.LBB55_58:                              #   Parent Loop BB55_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$127, 234(%r13)
	andb	$127, 474(%r13)
	xorl	%edi, %edi
	callq	RetrieveUserMove@PLT
	cmpb	$0, (%r15)
	jne	.LBB55_64
# %bb.59:                               #   in Loop: Header=BB55_58 Depth=2
	cmpb	$0, (%rbx)
	jne	.LBB55_61
# %bb.60:                               #   in Loop: Header=BB55_58 Depth=2
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB55_61:                              #   in Loop: Header=BB55_58 Depth=2
	movl	$1, %edi
	callq	RetrieveUserMove@PLT
	cmpb	$0, (%r15)
	jne	.LBB55_64
# %bb.62:                               #   in Loop: Header=BB55_58 Depth=2
	movb	$0, (%rbp)
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	cmpb	$0, (%rbx)
	jne	.LBB55_40
# %bb.63:                               #   in Loop: Header=BB55_58 Depth=2
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	cmpb	$0, (%rbp)
	jne	.LBB55_58
	.p2align	4, 0x90
.LBB55_40:                              #   in Loop: Header=BB55_38 Depth=1
	testb	$1, 235(%r13)
	movsd	.LCPI55_8(%rip), %xmm1          # xmm1 = mem[0],zero
	je	.LBB55_43
# %bb.41:                               #   in Loop: Header=BB55_38 Depth=1
	cmpq	%r12, 48(%r13)
	je	.LBB55_43
# %bb.42:                               #   in Loop: Header=BB55_38 Depth=1
	movq	(%r13), %r15
	callq	rand@PLT
	movsd	.LCPI55_8(%rip), %xmm1          # xmm1 = mem[0],zero
                                        # kill: def $eax killed $eax def $rax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$-4, %ecx
	subl	%ecx, %eax
	cltq
	leaq	(%r15,%rax,2), %rax
	addq	$8, %rax
	movq	Reset@GOTPCREL(%rip), %r15
	movq	Retrieve@GOTPCREL(%rip), %rbp
	movq	HideMove@GOTPCREL(%rip), %rbx
	movq	%rax, 48(%r13)
.LBB55_43:                              #   in Loop: Header=BB55_38 Depth=1
	testb	$1, 475(%r13)
	je	.LBB55_46
# %bb.44:                               #   in Loop: Header=BB55_38 Depth=1
	cmpq	%r12, 288(%r13)
	je	.LBB55_46
# %bb.45:                               #   in Loop: Header=BB55_38 Depth=1
	movq	240(%r13), %r15
	callq	rand@PLT
	movsd	.LCPI55_8(%rip), %xmm1          # xmm1 = mem[0],zero
                                        # kill: def $eax killed $eax def $rax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$-4, %ecx
	subl	%ecx, %eax
	cltq
	leaq	(%r15,%rax,2), %rax
	addq	$8, %rax
	movq	Reset@GOTPCREL(%rip), %r15
	movq	Retrieve@GOTPCREL(%rip), %rbp
	movq	HideMove@GOTPCREL(%rip), %rbx
	movq	%rax, 288(%r13)
.LBB55_46:                              #   in Loop: Header=BB55_38 Depth=1
	movq	Execute@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB55_37
# %bb.47:                               #   in Loop: Header=BB55_38 Depth=1
	movl	$0, 56(%r13)
	movl	$0, 296(%r13)
	movl	233(%r13), %r15d
	movl	473(%r13), %ebx
	movaps	.LCPI55_7(%rip), %xmm0          # xmm0 = [1.0E+0,1.0E+0]
	movups	%xmm0, 72(%r13)
	movups	%xmm0, 312(%r13)
	orl	$96, %r15d
	orl	$96, %ebx
	movl	%r15d, %eax
	andl	$-22401, %eax                   # imm = 0xA87F
	movl	%eax, 233(%r13)
	movl	%ebx, %eax
	andl	$-22401, %eax                   # imm = 0xA87F
	movl	%eax, 473(%r13)
	movq	(%r13), %r8
	movq	48(%r13), %rcx
	movzbl	(%rcx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %r10
	movl	17(%r10,%rdx), %edx
	shrl	$10, %edx
	andl	$31, %edx
	andl	$-22432, %r15d                  # imm = 0xA860
	orl	%edx, %r15d
	movl	%r15d, 233(%r13)
	movq	288(%r13), %rdx
	movzbl	(%rdx), %esi
	shlq	$5, %rsi
	movl	17(%r10,%rsi), %esi
	shrl	$10, %esi
	andl	$31, %esi
	andl	$-22432, %ebx                   # imm = 0xA860
	orl	%esi, %ebx
	movl	%ebx, 473(%r13)
	movzbl	(%rcx), %ecx
	shlq	$5, %rcx
	movl	17(%r10,%rcx), %ecx
	movl	%ecx, %esi
	shrl	$10, %esi
	andl	$31, %esi
	movzwl	60(%r8), %edi
	andl	$1023, %edi                     # imm = 0x3FF
	leaq	(%rdi,%rdi,2), %rdi
	movq	POKEMONDEX@GOTPCREL(%rip), %r9
	movzwl	22(%r9,%rdi,8), %eax
	movl	%eax, %edi
	andl	$31, %edi
	movapd	%xmm1, %xmm0
	cmpl	%edi, %esi
	je	.LBB55_49
# %bb.48:                               #   in Loop: Header=BB55_38 Depth=1
	shrl	$5, %eax
	andl	$31, %eax
	xorl	%edi, %edi
	cmpl	%eax, %esi
	sete	%dil
	leaq	.LCPI55_9(%rip), %rax
	movsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
.LBB55_49:                              #   in Loop: Header=BB55_38 Depth=1
	movsd	%xmm0, 64(%r13)
	movzbl	(%rdx), %eax
	shlq	$5, %rax
	movl	17(%r10,%rax), %edx
	movl	%edx, %esi
	shrl	$10, %esi
	andl	$31, %esi
	movq	240(%r13), %r12
	movzwl	60(%r12), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movzwl	22(%r9,%rax,8), %edi
	movl	%edi, %eax
	andl	$31, %eax
	movapd	%xmm1, %xmm0
	cmpl	%eax, %esi
	je	.LBB55_51
# %bb.50:                               #   in Loop: Header=BB55_38 Depth=1
	shrl	$5, %edi
	andl	$31, %edi
	xorl	%eax, %eax
	cmpl	%edi, %esi
	sete	%al
	leaq	.LCPI55_9(%rip), %rsi
	movsd	(%rsi,%rax,8), %xmm0            # xmm0 = mem[0],zero
.LBB55_51:                              #   in Loop: Header=BB55_38 Depth=1
	movsd	%xmm0, 304(%r13)
	movzwl	53(%r8), %eax
	andl	$3840, %eax                     # imm = 0xF00
	movsd	.LCPI55_10(%rip), %xmm1         # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	cmpl	$768, %eax                      # imm = 0x300
	jne	.LBB55_53
# %bb.52:                               #   in Loop: Header=BB55_38 Depth=1
	movabsq	$4602678819172646912, %rax      # imm = 0x3FE0000000000000
	movq	%rax, 80(%r13)
	movsd	.LCPI55_11(%rip), %xmm2         # xmm2 = mem[0],zero
.LBB55_53:                              #   in Loop: Header=BB55_38 Depth=1
	movzwl	53(%r12), %eax
	andl	$3840, %eax                     # imm = 0xF00
	movapd	%xmm1, %xmm0
	cmpl	$768, %eax                      # imm = 0x300
	jne	.LBB55_55
# %bb.54:                               #   in Loop: Header=BB55_38 Depth=1
	movabsq	$4602678819172646912, %rax      # imm = 0x3FE0000000000000
	movq	%rax, 320(%r13)
	movsd	.LCPI55_11(%rip), %xmm0         # xmm0 = mem[0],zero
.LBB55_55:                              #   in Loop: Header=BB55_38 Depth=1
	shll	$11, %ecx
	sarl	$28, %ecx
	shll	$11, %edx
	sarl	$28, %edx
	cmpl	%edx, %ecx
	jne	.LBB55_78
# %bb.56:                               #   in Loop: Header=BB55_38 Depth=1
	movl	40(%r8), %eax
	cvtsi2sd	%rax, %xmm3
	movsbl	4(%r8), %ebp
	testl	%ebp, %ebp
	movsd	%xmm2, (%rsp)                   # 8-byte Spill
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	js	.LBB55_65
# %bb.57:                               #   in Loop: Header=BB55_38 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI55_11(%rip), %xmm0
	addsd	%xmm1, %xmm0
	jmp	.LBB55_66
	.p2align	4, 0x90
.LBB55_78:                              #   in Loop: Header=BB55_38 Depth=1
	movq	First@GOTPCREL(%rip), %rax
	setg	(%rax)
	jmp	.LBB55_79
.LBB55_65:                              #   in Loop: Header=BB55_38 Depth=1
	movl	%ebp, %eax
	negl	%eax
	movapd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI55_11(%rip), %xmm1
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB55_66:                              #   in Loop: Header=BB55_38 Depth=1
	movsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	mulsd	%xmm3, %xmm0
	callq	floor@PLT
	mulsd	(%rsp), %xmm0                   # 8-byte Folded Reload
	movl	40(%r12), %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rax, %xmm2
	movsbl	4(%r12), %r12d
	testl	%r12d, %r12d
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	js	.LBB55_68
# %bb.67:                               #   in Loop: Header=BB55_38 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm0
	mulsd	.LCPI55_11(%rip), %xmm0
	addsd	.LCPI55_10(%rip), %xmm0
	jmp	.LBB55_69
.LBB55_68:                              #   in Loop: Header=BB55_38 Depth=1
	movl	%r12d, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI55_11(%rip), %xmm1
	movsd	.LCPI55_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB55_69:                              #   in Loop: Header=BB55_38 Depth=1
	mulsd	%xmm2, %xmm0
	movsd	%xmm2, 24(%rsp)                 # 8-byte Spill
	callq	floor@PLT
	mulsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB55_71
	jp	.LBB55_71
# %bb.70:                               #   in Loop: Header=BB55_38 Depth=1
	callq	rand@PLT
	andb	$1, %al
	movq	First@GOTPCREL(%rip), %rcx
	movb	%al, (%rcx)
	movl	233(%r13), %r15d
	movl	473(%r13), %ebx
	jmp	.LBB55_79
.LBB55_71:                              #   in Loop: Header=BB55_38 Depth=1
	testb	%bpl, %bpl
	js	.LBB55_73
# %bb.72:                               #   in Loop: Header=BB55_38 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI55_11(%rip), %xmm0
	addsd	.LCPI55_10(%rip), %xmm0
	jmp	.LBB55_74
.LBB55_73:                              #   in Loop: Header=BB55_38 Depth=1
	negl	%ebp
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebp, %xmm1
	mulsd	.LCPI55_11(%rip), %xmm1
	movsd	.LCPI55_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB55_74:                              #   in Loop: Header=BB55_38 Depth=1
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	(%rsp), %xmm1                   # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	testb	%r12b, %r12b
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
	js	.LBB55_76
# %bb.75:                               #   in Loop: Header=BB55_38 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm0
	mulsd	.LCPI55_11(%rip), %xmm0
	addsd	.LCPI55_10(%rip), %xmm0
	jmp	.LBB55_77
.LBB55_76:                              #   in Loop: Header=BB55_38 Depth=1
	negl	%r12d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r12d, %xmm1
	mulsd	.LCPI55_11(%rip), %xmm1
	movsd	.LCPI55_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB55_77:                              #   in Loop: Header=BB55_38 Depth=1
	movsd	24(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	First@GOTPCREL(%rip), %rax
	seta	(%rax)
	.p2align	4, 0x90
.LBB55_79:                              #   in Loop: Header=BB55_38 Depth=1
	shrl	$15, %r15d
	andl	$1, %r15d
	shrl	$15, %ebx
	andl	$1, %ebx
	cmpl	%ebx, %r15d
	je	.LBB55_81
# %bb.80:                               #   in Loop: Header=BB55_38 Depth=1
	movq	First@GOTPCREL(%rip), %rax
	movb	%r15b, (%rax)
.LBB55_81:                              #   in Loop: Header=BB55_38 Depth=1
	movq	(%r13), %rax
	movzbl	45(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	AbilityList@GOTPCREL(%rip), %rbx
	movzbl	16(%rbx,%rax), %eax
	movl	$1, %edi
	xorl	%esi, %esi
	movq	ABILITY_FUNC_LIST@GOTPCREL(%rip), %r15
	callq	*(%r15,%rax,8)
	movq	240(%r13), %rax
	movzbl	45(%rax), %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rax,%rcx,2), %rax
	movzbl	16(%rbx,%rax), %eax
	movl	$1, %edi
	movl	$1, %esi
	callq	*(%r15,%rax,8)
	movq	48(%r13), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rbx
	movl	17(%rbx,%rax), %eax
	shrl	$23, %eax
	andl	$248, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %r15
	callq	*(%r15,%rax)
	movq	48(%r13), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbx,%rax), %eax
	shrl	$18, %eax
	andl	$248, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	*(%r15,%rax)
	movq	288(%r13), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbx,%rax), %eax
	shrl	$23, %eax
	andl	$248, %eax
	xorl	%edi, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	*(%r15,%rax)
	movq	288(%r13), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbx,%rax), %eax
	shrl	$18, %eax
	andl	$248, %eax
	xorl	%edi, %edi
	movl	$1, %esi
	movl	$1, %edx
	callq	*(%r15,%rax)
	movq	88(%r13), %rax
	testb	$1, %al
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rbx
	jne	.LBB55_82
# %bb.83:                               #   in Loop: Header=BB55_38 Depth=1
	testb	$2, %al
	jne	.LBB55_84
.LBB55_85:                              #   in Loop: Header=BB55_38 Depth=1
	testb	$4, %al
	jne	.LBB55_86
.LBB55_87:                              #   in Loop: Header=BB55_38 Depth=1
	testb	$8, %al
	jne	.LBB55_88
.LBB55_89:                              #   in Loop: Header=BB55_38 Depth=1
	testb	$1, %al
	jne	.LBB55_90
.LBB55_91:                              #   in Loop: Header=BB55_38 Depth=1
	testb	$2, %al
	jne	.LBB55_92
.LBB55_93:                              #   in Loop: Header=BB55_38 Depth=1
	testb	$4, %al
	jne	.LBB55_94
.LBB55_95:                              #   in Loop: Header=BB55_38 Depth=1
	testb	$8, %al
	je	.LBB55_97
.LBB55_96:                              #   in Loop: Header=BB55_38 Depth=1
	xorl	%edi, %edi
	movl	$1, %esi
	callq	*24(%rbx)
.LBB55_97:                              #   in Loop: Header=BB55_38 Depth=1
	xorl	%edi, %edi
	movq	First@GOTPCREL(%rip), %rbx
	cmpb	$0, (%rbx)
	sete	%dil
	callq	ExecuteMove@PLT
	movzbl	(%rbx), %edi
	callq	ExecuteMove@PLT
	movq	(%r13), %rax
	movl	40(%rax), %ecx
	cvtsi2sd	%rcx, %xmm2
	movsbl	4(%rax), %r15d
	testl	%r15d, %r15d
	js	.LBB55_99
# %bb.98:                               #   in Loop: Header=BB55_38 Depth=1
	cvtsi2sd	%r15d, %xmm0
	mulsd	.LCPI55_11(%rip), %xmm0
	addsd	.LCPI55_10(%rip), %xmm0
	jmp	.LBB55_100
	.p2align	4, 0x90
.LBB55_82:                              #   in Loop: Header=BB55_38 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*(%rbx)
	movq	88(%r13), %rax
	testb	$2, %al
	je	.LBB55_85
.LBB55_84:                              #   in Loop: Header=BB55_38 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*8(%rbx)
	movq	88(%r13), %rax
	testb	$4, %al
	je	.LBB55_87
.LBB55_86:                              #   in Loop: Header=BB55_38 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*16(%rbx)
	movq	88(%r13), %rax
	testb	$8, %al
	je	.LBB55_89
.LBB55_88:                              #   in Loop: Header=BB55_38 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*24(%rbx)
	movq	88(%r13), %rax
	testb	$1, %al
	je	.LBB55_91
.LBB55_90:                              #   in Loop: Header=BB55_38 Depth=1
	xorl	%edi, %edi
	movl	$1, %esi
	callq	*(%rbx)
	movq	88(%r13), %rax
	testb	$2, %al
	je	.LBB55_93
.LBB55_92:                              #   in Loop: Header=BB55_38 Depth=1
	xorl	%edi, %edi
	movl	$1, %esi
	callq	*8(%rbx)
	movq	88(%r13), %rax
	testb	$4, %al
	je	.LBB55_95
.LBB55_94:                              #   in Loop: Header=BB55_38 Depth=1
	xorl	%edi, %edi
	movl	$1, %esi
	callq	*16(%rbx)
	movq	88(%r13), %rax
	testb	$8, %al
	jne	.LBB55_96
	jmp	.LBB55_97
	.p2align	4, 0x90
.LBB55_99:                              #   in Loop: Header=BB55_38 Depth=1
	movl	%r15d, %eax
	negl	%eax
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI55_11(%rip), %xmm1
	movsd	.LCPI55_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB55_100:                             #   in Loop: Header=BB55_38 Depth=1
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	mulsd	%xmm2, %xmm0
	callq	floor@PLT
	movsd	80(%r13), %xmm1                 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	240(%r13), %rax
	movl	40(%rax), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rcx, %xmm2
	movsbl	4(%rax), %r12d
	testl	%r12d, %r12d
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	js	.LBB55_102
# %bb.101:                              #   in Loop: Header=BB55_38 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm0
	mulsd	.LCPI55_11(%rip), %xmm0
	addsd	.LCPI55_10(%rip), %xmm0
	jmp	.LBB55_103
	.p2align	4, 0x90
.LBB55_102:                             #   in Loop: Header=BB55_38 Depth=1
	movl	%r12d, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI55_11(%rip), %xmm1
	movsd	.LCPI55_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB55_103:                             #   in Loop: Header=BB55_38 Depth=1
	mulsd	%xmm2, %xmm0
	movsd	%xmm2, 16(%rsp)                 # 8-byte Spill
	callq	floor@PLT
	movsd	320(%r13), %xmm1                # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jne	.LBB55_105
	jnp	.LBB55_104
.LBB55_105:                             #   in Loop: Header=BB55_38 Depth=1
	testb	%r15b, %r15b
	movsd	%xmm1, 24(%rsp)                 # 8-byte Spill
	js	.LBB55_107
# %bb.106:                              #   in Loop: Header=BB55_38 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	mulsd	.LCPI55_11(%rip), %xmm0
	addsd	.LCPI55_10(%rip), %xmm0
	jmp	.LBB55_108
.LBB55_107:                             #   in Loop: Header=BB55_38 Depth=1
	negl	%r15d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r15d, %xmm1
	mulsd	.LCPI55_11(%rip), %xmm1
	movsd	.LCPI55_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB55_108:                             #   in Loop: Header=BB55_38 Depth=1
	leaq	.L.str.48(%rip), %r14
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	(%rsp), %xmm1                   # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	testb	%r12b, %r12b
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
	js	.LBB55_110
# %bb.109:                              #   in Loop: Header=BB55_38 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm0
	mulsd	.LCPI55_11(%rip), %xmm0
	addsd	.LCPI55_10(%rip), %xmm0
	jmp	.LBB55_111
.LBB55_110:                             #   in Loop: Header=BB55_38 Depth=1
	negl	%r12d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r12d, %xmm1
	mulsd	.LCPI55_11(%rip), %xmm1
	movsd	.LCPI55_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB55_111:                             #   in Loop: Header=BB55_38 Depth=1
	movq	Struggle_Slot@GOTPCREL(%rip), %r12
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	24(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
	jmp	.LBB55_112
.LBB55_113:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end55:
	.size	Battle, .Lfunc_end55-Battle
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%edi, %edi
	callq	time@PLT
	movq	seed@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	leaq	.L.str.40(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.41(%rip), %rdi
	callq	system@PLT
	leaq	.L.str.42(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.120(%rip), %rdi
	callq	system@PLT
	movl	(%rbx), %edi
	callq	srand@PLT
	movq	(%rbx), %rdx
	leaq	.L.str.121(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	callq	Battle@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end56:
	.size	main, .Lfunc_end56-main
	.cfi_endproc
                                        # -- End function
	.type	TypeChart,@object               # @TypeChart
	.data
	.globl	TypeChart
	.p2align	4
TypeChart:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x00000000                      # float 0
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x00000000                      # float 0
	.long	0x00000000                      # float 0
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x00000000                      # float 0
	.long	0x00000000                      # float 0
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x00000000                      # float 0
	.size	TypeChart, 1764

	.type	NATURE_LIST,@object             # @NATURE_LIST
	.globl	NATURE_LIST
	.p2align	4
NATURE_LIST:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.asciz	"Hardy\000\000"
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.asciz	"Lonely\000"
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.asciz	"Brave\000\000"
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.asciz	"Adamant"
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.asciz	"Naughty"
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.asciz	"Bold\000\000\000"
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.asciz	"Docile\000"
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.asciz	"Relaxed"
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.asciz	"Impish\000"
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.asciz	"Lax\000\000\000\000"
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.asciz	"Timid\000\000"
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.asciz	"Hasty\000\000"
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.asciz	"Serious"
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.asciz	"Jolly\000\000"
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f8ccccd                      # float 1.10000002
	.asciz	"Naive\000\000"
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.asciz	"Modest\000"
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.asciz	"Mild\000\000\000"
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.asciz	"Quiet\000\000"
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.asciz	"Bashful"
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.asciz	"Rash\000\000\000"
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.asciz	"Calm\000\000\000"
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.asciz	"Gentle\000"
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f666666                      # float 0.899999976
	.asciz	"Sassy\000\000"
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.asciz	"Careful"
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.asciz	"Quirky\000"
	.size	NATURE_LIST, 700

	.type	Stagenames,@object              # @Stagenames
	.section	.rodata,"a",@progbits
	.globl	Stagenames
	.p2align	4
Stagenames:
	.asciz	"Attack\000\000\000\000\000\000\000\000\000"
	.asciz	"Defense\000\000\000\000\000\000\000\000"
	.asciz	"Special Attack\000"
	.asciz	"Special Defense"
	.asciz	"Speed\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Accuracy\000\000\000\000\000\000\000"
	.asciz	"Evasion\000\000\000\000\000\000\000\000"
	.asciz	"Crit Chance\000\000\000\000"
	.size	Stagenames, 128

	.type	Itemtext,@object                # @Itemtext
	.globl	Itemtext
	.p2align	4
Itemtext:
	.asciz	"Not Usable"
	.asciz	"Usable\000\000\000\000"
	.size	Itemtext, 22

	.type	Statusnames,@object             # @Statusnames
	.globl	Statusnames
	.p2align	4
Statusnames:
	.asciz	"None\000\000\000\000\000\000\000"
	.asciz	"Burned\000\000\000\000\000"
	.asciz	"Poisoned\000\000\000"
	.asciz	"Intoxicated"
	.asciz	"Paralyzed\000\000"
	.asciz	"Asleep\000\000\000\000\000"
	.asciz	"Frozen\000\000\000\000\000"
	.zero	12
	.size	Statusnames, 96

	.type	EOPTEXT,@object                 # @EOPTEXT
	.globl	EOPTEXT
	.p2align	4
EOPTEXT:
	.zero	14
	.asciz	"The opposing "
	.zero	14
	.asciz	"the opposing "
	.asciz	"your\000\000\000\000\000\000\000\000\000"
	.asciz	"enemy\000\000\000\000\000\000\000\000"
	.asciz	"Player\000\000\000\000\000\000\000"
	.asciz	"Enemy\000\000\000\000\000\000\000\000"
	.size	EOPTEXT, 112

	.type	TypeNames,@object               # @TypeNames
	.globl	TypeNames
	.p2align	4
TypeNames:
	.asciz	"NOTYPE\000\000\000\000\000\000\000"
	.asciz	"NORMAL\000\000\000\000\000\000\000"
	.asciz	"FIRE\000\000\000\000\000\000\000\000\000"
	.asciz	"WATER\000\000\000\000\000\000\000\000"
	.asciz	"ELECTRIC\000\000\000\000\000"
	.asciz	"GRASS\000\000\000\000\000\000\000\000"
	.asciz	"ICE\000\000\000\000\000\000\000\000\000\000"
	.asciz	"FIGHTING\000\000\000\000\000"
	.asciz	"POISON\000\000\000\000\000\000\000"
	.asciz	"GROUND\000\000\000\000\000\000\000"
	.asciz	"FLYING\000\000\000\000\000\000\000"
	.asciz	"PSYCHIC\000\000\000\000\000\000"
	.asciz	"BUG\000\000\000\000\000\000\000\000\000\000"
	.asciz	"ROCK\000\000\000\000\000\000\000\000\000"
	.asciz	"GHOST\000\000\000\000\000\000\000\000"
	.asciz	"DRAGON\000\000\000\000\000\000\000"
	.asciz	"DARK\000\000\000\000\000\000\000\000\000"
	.asciz	"STEEL\000\000\000\000\000\000\000\000"
	.asciz	"FAIRY\000\000\000\000\000\000\000\000"
	.asciz	"SOUND\000\000\000\000\000\000\000\000"
	.asciz	"LIGHT\000\000\000\000\000\000\000\000"
	.asciz	"NULL\000\000\000\000\000\000\000\000\000"
	.asciz	"NULL\000\000\000\000\000\000\000\000\000"
	.asciz	"NULL\000\000\000\000\000\000\000\000\000"
	.asciz	"NULL\000\000\000\000\000\000\000\000\000"
	.asciz	"NULL\000\000\000\000\000\000\000\000\000"
	.asciz	"NULL\000\000\000\000\000\000\000\000\000"
	.asciz	"NULL\000\000\000\000\000\000\000\000\000"
	.asciz	"NULL\000\000\000\000\000\000\000\000\000"
	.asciz	"NULL\000\000\000\000\000\000\000\000\000"
	.asciz	"NULL\000\000\000\000\000\000\000\000\000"
	.size	TypeNames, 434

	.type	StatCalc,@object                # @StatCalc
	.data
	.globl	StatCalc
StatCalc:
	.byte	1                               # 0x1
	.size	StatCalc, 1

	.type	BattleMode,@object              # @BattleMode
	.bss
	.globl	BattleMode
BattleMode:
	.byte	0                               # 0x0
	.size	BattleMode, 1

	.type	Retrieve,@object                # @Retrieve
	.globl	Retrieve
Retrieve:
	.byte	0                               # 0x0
	.size	Retrieve, 1

	.type	Execute,@object                 # @Execute
	.globl	Execute
Execute:
	.byte	0                               # 0x0
	.size	Execute, 1

	.type	Reset,@object                   # @Reset
	.globl	Reset
Reset:
	.byte	0                               # 0x0
	.size	Reset, 1

	.type	First,@object                   # @First
	.globl	First
First:
	.byte	0                               # 0x0
	.size	First, 1

	.type	Display,@object                 # @Display
	.globl	Display
Display:
	.byte	0                               # 0x0
	.size	Display, 1

	.type	TurnCounter,@object             # @TurnCounter
	.globl	TurnCounter
	.p2align	2
TurnCounter:
	.long	0                               # 0x0
	.size	TurnCounter, 4

	.type	HideMove,@object                # @HideMove
	.globl	HideMove
HideMove:
	.byte	0                               # 0x0
	.size	HideMove, 1

	.type	EFFECT_FUNC_LIST,@object        # @EFFECT_FUNC_LIST
	.data
	.globl	EFFECT_FUNC_LIST
	.p2align	4
EFFECT_FUNC_LIST:
	.quad	PROTECTF
	.quad	LEECH_SEEDF
	.quad	PERISH_SONGF
	.quad	CONFUSIONF
	.size	EFFECT_FUNC_LIST, 32

	.type	MoveList,@object                # @MoveList
	.section	.rodata,"a",@progbits
	.globl	MoveList
	.p2align	4
MoveList:
	.asciz	"Nothing\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	10
	.byte	0                               # 0x0
	.asciz	"Struggle\000\000\000\000\000\000\000"
	.byte	50                              # 0x32
	.byte	101                             # 0x65
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.zero	10
	.byte	3                               # 0x3
	.asciz	"Scratch\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	135                             # 0x87
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	10
	.byte	7                               # 0x7
	.asciz	"Water Gun\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	14                              # 0xe
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	10
	.byte	6                               # 0x6
	.asciz	"Vine Whip\000\000\000\000\000\000"
	.byte	45                              # 0x2d
	.byte	100                             # 0x64
	.byte	151                             # 0x97
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	10
	.byte	7                               # 0x7
	.asciz	"Ember\000\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Quick Attack\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	134                             # 0x86
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.zero	10
	.byte	7                               # 0x7
	.asciz	"Super Attack\000\000\000"
	.byte	120                             # 0x78
	.byte	75                              # 0x4b
	.byte	133                             # 0x85
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	10
	.byte	7                               # 0x7
	.asciz	"Stone Edge\000\000\000\000\000"
	.byte	100                             # 0x64
	.byte	80                              # 0x50
	.byte	180                             # 0xb4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	10
	.byte	22                              # 0x16
	.asciz	"Gust\000\000\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	43                              # 0x2b
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	10
	.byte	6                               # 0x6
	.asciz	"Thunder Shock\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	18                              # 0x12
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.byte	4                               # 0x4
	.byte	10                              # 0xa
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Thunder Wave\000\000\000"
	.byte	0                               # 0x0
	.byte	218                             # 0xda
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	4                               # 0x4
	.byte	100                             # 0x64
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Swords Dance\000\000\000"
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	" \000\000\000d\000\000\000\000"
	.byte	0                               # 0x0
	.asciz	"Dragon Dance\000\000\000"
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	61                              # 0x3d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\020\000\020\000d\000\000\000\000"
	.byte	0                               # 0x0
	.asciz	"Will-O-Wisp\000\000\000\000"
	.byte	0                               # 0x0
	.byte	90                              # 0x5a
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	1                               # 0x1
	.byte	100                             # 0x64
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Spore\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	5                               # 0x5
	.byte	100                             # 0x64
	.zero	8
	.byte	14                              # 0xe
	.asciz	"Toxic\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	218                             # 0xda
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	3                               # 0x3
	.byte	100                             # 0x64
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Freeze\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	188                             # 0xbc
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	6                               # 0x6
	.byte	100                             # 0x64
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Bulk Up\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\021\000\000\000d\000\000\000\000"
	.byte	0                               # 0x0
	.asciz	"Charm\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\240\000\000\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Leer\000\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\t\000\000\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Flash\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Kinesis\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	85                              # 0x55
	.byte	45                              # 0x2d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Leaf Tornado\000\000\000"
	.byte	65                              # 0x41
	.byte	218                             # 0xda
	.byte	20                              # 0x14
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\224\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Mirror Shot\000\000\000\000"
	.byte	65                              # 0x41
	.byte	213                             # 0xd5
	.byte	68                              # 0x44
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\236\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Mud Bomb\000\000\000\000\000\000\000"
	.byte	65                              # 0x41
	.byte	213                             # 0xd5
	.byte	36                              # 0x24
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\236\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Mud-Slap\000\000\000\000\000\000\000"
	.byte	20                              # 0x14
	.byte	228                             # 0xe4
	.byte	36                              # 0x24
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Muddy Water\000\000\000\000"
	.byte	95                              # 0x5f
	.byte	213                             # 0xd5
	.byte	12                              # 0xc
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\236\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Night Daze\000\000\000\000\000"
	.byte	85                              # 0x55
	.byte	223                             # 0xdf
	.byte	64                              # 0x40
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\250\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Octazooka\000\000\000\000\000\000"
	.byte	65                              # 0x41
	.byte	213                             # 0xd5
	.byte	12                              # 0xc
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\262\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Sand Attack\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	2                               # 0x2
	.asciz	"Smoke Screen\000\000\000"
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	2                               # 0x2
	.asciz	"Aurora Beam\000\000\000\000"
	.byte	65                              # 0x41
	.byte	228                             # 0xe4
	.byte	25                              # 0x19
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.asciz	"\220\000\000\000\212\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Baby-Doll Eyes\000"
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.byte	74                              # 0x4a
	.byte	2                               # 0x2
	.byte	8                               # 0x8
	.asciz	"\220\000\000\000\344\000\000\000\000"
	.byte	2                               # 0x2
	.asciz	"Breaking Swipe\000"
	.byte	60                              # 0x3c
	.byte	100                             # 0x64
	.byte	189                             # 0xbd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\220\000\000\000\344\000\000\000\000"
	.byte	7                               # 0x7
	.asciz	"Protect\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	16                              # 0x10
	.zero	10
	.byte	0                               # 0x0
	.asciz	"Mercury Shot\000\000\000"
	.byte	70                              # 0x46
	.byte	90                              # 0x5a
	.byte	69                              # 0x45
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	20                              # 0x14
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Superpower\000\000\000\000\000"
	.byte	120                             # 0x78
	.byte	100                             # 0x64
	.byte	156                             # 0x9c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\231\000\000\000d\000\000\000\000"
	.byte	7                               # 0x7
	.asciz	"Dragon Tail\000\000\000\000"
	.byte	60                              # 0x3c
	.byte	218                             # 0xda
	.byte	188                             # 0xbc
	.byte	20                              # 0x14
	.byte	20                              # 0x14
	.zero	10
	.byte	7                               # 0x7
	.asciz	"Roar\000\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	5                               # 0x5
	.byte	20                              # 0x14
	.byte	20                              # 0x14
	.zero	10
	.byte	0                               # 0x0
	.asciz	"Icicle Crash\000\000\000"
	.byte	85                              # 0x55
	.byte	218                             # 0xda
	.byte	152                             # 0x98
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	30                              # 0x1e
	.zero	8
	.byte	2                               # 0x2
	.asciz	"Confuse Ray\000\000\000\000"
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.byte	56                              # 0x38
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	7                               # 0x7
	.byte	100                             # 0x64
	.zero	8
	.byte	2                               # 0x2
	.asciz	"Feather Dance\000\000"
	.byte	0                               # 0x0
	.byte	101                             # 0x65
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\240\000\000\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Growl\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	101                             # 0x65
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\220\000\000\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Luminous Glow\000\000"
	.byte	0                               # 0x0
	.byte	101                             # 0x65
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.asciz	"\000\020\020\000d\000\000\000\000"
	.byte	0                               # 0x0
	.asciz	"Earthquake\000\000\000\000\000"
	.byte	100                             # 0x64
	.byte	228                             # 0xe4
	.byte	164                             # 0xa4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	10
	.byte	6                               # 0x6
	.asciz	"Giga Drain\000\000\000\000\000"
	.byte	75                              # 0x4b
	.byte	228                             # 0xe4
	.byte	20                              # 0x14
	.byte	1                               # 0x1
	.byte	24                              # 0x18
	.byte	50                              # 0x32
	.zero	9
	.byte	6                               # 0x6
	.asciz	"Blinding Flash\000"
	.byte	120                             # 0x78
	.byte	101                             # 0x65
	.byte	80                              # 0x50
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.asciz	"\000\000\013\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Blindstrike\000\000\000\000"
	.byte	75                              # 0x4b
	.byte	90                              # 0x5a
	.byte	209                             # 0xd1
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Web Blast\000\000\000\000\000\000"
	.byte	80                              # 0x50
	.byte	100                             # 0x64
	.byte	49                              # 0x31
	.byte	97                              # 0x61
	.byte	8                               # 0x8
	.asciz	"\000\000\220\000\262\0072\000\000"
	.byte	6                               # 0x6
	.asciz	"Illusion Field\000"
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	1                               # 0x1
	.byte	96                              # 0x60
	.byte	28                              # 0x1c
	.asciz	"\n\000\000\000\000\007d\000\000"
	.byte	0                               # 0x0
	.asciz	"Double Edge\000\000\000\000"
	.byte	120                             # 0x78
	.byte	228                             # 0xe4
	.byte	132                             # 0x84
	.byte	0                               # 0x0
	.byte	24                              # 0x18
	.byte	33                              # 0x21
	.byte	128                             # 0x80
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Buzsring\000\000\000\000\000\000\000"
	.byte	75                              # 0x4b
	.byte	90                              # 0x5a
	.byte	78                              # 0x4e
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.byte	7                               # 0x7
	.byte	100                             # 0x64
	.zero	8
	.byte	6                               # 0x6
	.size	MoveList, 1696

	.type	Empty_slot,@object              # @Empty_slot
	.data
	.globl	Empty_slot
Empty_slot:
	.byte	0                               # 0x0
	.byte	65                              # 0x41
	.size	Empty_slot, 2

	.type	Struggle_Slot,@object           # @Struggle_Slot
	.globl	Struggle_Slot
Struggle_Slot:
	.byte	1                               # 0x1
	.byte	65                              # 0x41
	.size	Struggle_Slot, 2

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s%s's %s can't go any higher\n"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s%s's %s can't go any lower\n"
	.size	.L.str.1, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s%s's %s rose by %d stages\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s%s's %s fell by %d stages\n"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"But it failed!\n"
	.size	.L.str.4, 16

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s was dragged out!\n"
	.size	.L.str.5, 21

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s%s regained %d hp!\n"
	.size	.L.str.6, 22

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s%s is at %d/%d hp\n"
	.size	.L.str.7, 21

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s%s took %d damage as recoil!\n"
	.size	.L.str.8, 32

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s%s fainted!\n"
	.size	.L.str.9, 15

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%s%s is already at full health!\n"
	.size	.L.str.10, 33

	.type	MOVE_FUNC_LIST,@object          # @MOVE_FUNC_LIST
	.data
	.globl	MOVE_FUNC_LIST
	.p2align	4
MOVE_FUNC_LIST:
	.quad	Nothingf
	.quad	Strugglef
	.quad	StatMod
	.quad	StatusInfliction
	.quad	ProtectingMove
	.quad	RoarFunc
	.quad	Hp_Draining_Move
	.quad	EdgeCase
	.size	MOVE_FUNC_LIST, 64

	.type	AbilityList,@object             # @AbilityList
	.section	.rodata,"a",@progbits
	.globl	AbilityList
	.p2align	4
AbilityList:
	.asciz	"NoAbility\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.zero	2
	.asciz	"Overgrow\000\000\000\000\000\000\000"
	.byte	1                               # 0x1
	.ascii	"\005\003"
	.asciz	"Blaze\000\000\000\000\000\000\000\000\000\000"
	.byte	1                               # 0x1
	.ascii	"\002\003"
	.asciz	"Torrent\000\000\000\000\000\000\000\000"
	.byte	1                               # 0x1
	.zero	2,3
	.asciz	"Swarm\000\000\000\000\000\000\000\000\000\000"
	.byte	1                               # 0x1
	.ascii	"\f\003"
	.asciz	"Clear Body\000\000\000\000\000"
	.byte	2                               # 0x2
	.ascii	"\377\002"
	.asciz	"Big Pecks\000\000\000\000\000\000"
	.byte	2                               # 0x2
	.zero	2,2
	.asciz	"Hyper Cutter\000\000\000"
	.byte	2                               # 0x2
	.ascii	"\001\002"
	.asciz	"Aerilate\000\000\000\000\000\000\000"
	.byte	3                               # 0x3
	.ascii	"\n\206"
	.asciz	"Pixilate\000\000\000\000\000\000\000"
	.byte	3                               # 0x3
	.ascii	"\f\206"
	.asciz	"Frozen Wing\000\000\000\000"
	.byte	3                               # 0x3
	.ascii	"Q\240"
	.asciz	"Galvanize\000\000\000\000\000\000"
	.byte	3                               # 0x3
	.ascii	"\t\f"
	.asciz	"Levitate\000\000\000\000\000\000\000"
	.byte	4                               # 0x4
	.asciz	"H"
	.asciz	"Water Absorb\000\000\000"
	.byte	4                               # 0x4
	.zero	2,25
	.asciz	"Motor Drive\000\000\000\000"
	.byte	4                               # 0x4
	.ascii	"\"\201"
	.asciz	"Sap Sipper\000\000\000\000\000"
	.byte	4                               # 0x4
	.ascii	"*\001"
	.size	AbilityList, 304

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"%s%s regained some hp!\n"
	.size	.L.str.12, 24

	.type	ABILITY_FUNC_LIST,@object       # @ABILITY_FUNC_LIST
	.data
	.globl	ABILITY_FUNC_LIST
	.p2align	4
ABILITY_FUNC_LIST:
	.quad	NoAbilityf
	.quad	TypeBasedBoost
	.quad	StatDecreaseImmunity
	.quad	TypeChange
	.quad	TypeImmunity
	.size	ABILITY_FUNC_LIST, 40

	.type	POKEMONDEX,@object              # @POKEMONDEX
	.section	.rodata,"a",@progbits
	.globl	POKEMONDEX
	.p2align	4
POKEMONDEX:
	.asciz	"NoPoke\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.asciz	"Bulbasaur\000\000\000\000\000\000"
	.byte	45                              # 0x2d
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	65                              # 0x41
	.byte	65                              # 0x41
	.byte	45                              # 0x2d
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.asciz	"Ivysaur\000\000\000\000\000\000\000\000"
	.byte	60                              # 0x3c
	.byte	62                              # 0x3e
	.byte	63                              # 0x3f
	.byte	80                              # 0x50
	.byte	80                              # 0x50
	.byte	60                              # 0x3c
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.asciz	"Venusaur\000\000\000\000\000\000\000"
	.byte	80                              # 0x50
	.byte	82                              # 0x52
	.byte	83                              # 0x53
	.byte	100                             # 0x64
	.byte	100                             # 0x64
	.byte	80                              # 0x50
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.asciz	"Charmander\000\000\000\000\000"
	.byte	39                              # 0x27
	.byte	52                              # 0x34
	.byte	43                              # 0x2b
	.byte	60                              # 0x3c
	.byte	50                              # 0x32
	.byte	65                              # 0x41
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.asciz	"Charmeleon\000\000\000\000\000"
	.byte	58                              # 0x3a
	.byte	64                              # 0x40
	.byte	58                              # 0x3a
	.byte	80                              # 0x50
	.byte	65                              # 0x41
	.byte	80                              # 0x50
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.asciz	"Charizard\000\000\000\000\000\000"
	.byte	78                              # 0x4e
	.byte	84                              # 0x54
	.byte	78                              # 0x4e
	.byte	109                             # 0x6d
	.byte	85                              # 0x55
	.byte	100                             # 0x64
	.byte	66                              # 0x42
	.byte	1                               # 0x1
	.asciz	"Squirtle\000\000\000\000\000\000\000"
	.byte	44                              # 0x2c
	.byte	48                              # 0x30
	.byte	65                              # 0x41
	.byte	50                              # 0x32
	.byte	64                              # 0x40
	.byte	43                              # 0x2b
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.asciz	"Wartortle\000\000\000\000\000\000"
	.byte	59                              # 0x3b
	.byte	63                              # 0x3f
	.byte	80                              # 0x50
	.byte	65                              # 0x41
	.byte	80                              # 0x50
	.byte	58                              # 0x3a
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.asciz	"Blastoise\000\000\000\000\000\000"
	.byte	79                              # 0x4f
	.byte	83                              # 0x53
	.byte	100                             # 0x64
	.byte	85                              # 0x55
	.byte	105                             # 0x69
	.byte	78                              # 0x4e
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.asciz	"Pidgey\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	45                              # 0x2d
	.byte	40                              # 0x28
	.byte	35                              # 0x23
	.byte	35                              # 0x23
	.byte	56                              # 0x38
	.byte	65                              # 0x41
	.byte	1                               # 0x1
	.asciz	"Pidgeotto\000\000\000\000\000\000"
	.byte	63                              # 0x3f
	.byte	60                              # 0x3c
	.byte	55                              # 0x37
	.byte	50                              # 0x32
	.byte	50                              # 0x32
	.byte	71                              # 0x47
	.byte	65                              # 0x41
	.byte	1                               # 0x1
	.asciz	"Pidgeot\000\000\000\000\000\000\000\000"
	.byte	83                              # 0x53
	.byte	80                              # 0x50
	.byte	75                              # 0x4b
	.byte	70                              # 0x46
	.byte	70                              # 0x46
	.byte	101                             # 0x65
	.byte	65                              # 0x41
	.byte	1                               # 0x1
	.asciz	"Cordagar\000\000\000\000\000\000\000"
	.byte	75                              # 0x4b
	.byte	100                             # 0x64
	.byte	75                              # 0x4b
	.byte	25                              # 0x19
	.byte	25                              # 0x19
	.byte	85                              # 0x55
	.byte	239                             # 0xef
	.byte	0                               # 0x0
	.asciz	"Bulej\000\000\000\000\000\000\000\000\000\000"
	.byte	35                              # 0x23
	.byte	60                              # 0x3c
	.byte	40                              # 0x28
	.byte	45                              # 0x2d
	.byte	40                              # 0x28
	.byte	55                              # 0x37
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.asciz	"Bulicjel\000\000\000\000\000\000\000"
	.byte	50                              # 0x32
	.byte	85                              # 0x55
	.byte	55                              # 0x37
	.byte	65                              # 0x41
	.byte	60                              # 0x3c
	.byte	75                              # 0x4b
	.byte	202                             # 0xca
	.byte	0                               # 0x0
	.asciz	"Bulicayjal\000\000\000\000\000"
	.byte	70                              # 0x46
	.byte	110                             # 0x6e
	.byte	70                              # 0x46
	.byte	90                              # 0x5a
	.byte	80                              # 0x50
	.byte	100                             # 0x64
	.byte	202                             # 0xca
	.byte	0                               # 0x0
	.asciz	"Demellagon\000\000\000\000\000"
	.byte	75                              # 0x4b
	.byte	100                             # 0x64
	.byte	60                              # 0x3c
	.byte	50                              # 0x32
	.byte	50                              # 0x32
	.byte	60                              # 0x3c
	.byte	15                              # 0xf
	.byte	2                               # 0x2
	.asciz	"Lapousion\000\000\000\000\000\000"
	.byte	65                              # 0x41
	.byte	15                              # 0xf
	.byte	45                              # 0x2d
	.byte	65                              # 0x41
	.byte	60                              # 0x3c
	.byte	50                              # 0x32
	.byte	20                              # 0x14
	.byte	1                               # 0x1
	.asciz	"Lalemorta\000\000\000\000\000\000"
	.byte	25                              # 0x19
	.byte	65                              # 0x41
	.byte	100                             # 0x64
	.byte	90                              # 0x5a
	.byte	80                              # 0x50
	.byte	20                              # 0x14
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.asciz	"Slor\000\000\000\000\000\000\000\000\000\000\000"
	.byte	20                              # 0x14
	.byte	10                              # 0xa
	.byte	15                              # 0xf
	.byte	55                              # 0x37
	.byte	40                              # 0x28
	.byte	60                              # 0x3c
	.byte	84                              # 0x54
	.byte	1                               # 0x1
	.asciz	"Slinor\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	20                              # 0x14
	.byte	30                              # 0x1e
	.byte	110                             # 0x6e
	.byte	80                              # 0x50
	.byte	120                             # 0x78
	.byte	84                              # 0x54
	.byte	1                               # 0x1
	.asciz	"Sorlighnor\000\000\000\000\000"
	.byte	60                              # 0x3c
	.byte	30                              # 0x1e
	.byte	45                              # 0x2d
	.byte	165                             # 0xa5
	.byte	120                             # 0x78
	.byte	180                             # 0xb4
	.byte	84                              # 0x54
	.byte	1                               # 0x1
	.asciz	"Poochyena\000\000\000\000\000\000"
	.byte	35                              # 0x23
	.byte	55                              # 0x37
	.byte	35                              # 0x23
	.byte	30                              # 0x1e
	.byte	30                              # 0x1e
	.byte	35                              # 0x23
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.asciz	"Mightyena\000\000\000\000\000\000"
	.byte	70                              # 0x46
	.byte	90                              # 0x5a
	.byte	70                              # 0x46
	.byte	60                              # 0x3c
	.byte	60                              # 0x3c
	.byte	70                              # 0x46
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.asciz	"Boltyena\000\000\000\000\000\000\000"
	.byte	85                              # 0x55
	.byte	120                             # 0x78
	.byte	85                              # 0x55
	.byte	75                              # 0x4b
	.byte	75                              # 0x4b
	.byte	120                             # 0x78
	.byte	144                             # 0x90
	.byte	0                               # 0x0
	.asciz	"Illsonar\000\000\000\000\000\000\000"
	.byte	100                             # 0x64
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	180                             # 0xb4
	.byte	180                             # 0xb4
	.byte	100                             # 0x64
	.byte	20                              # 0x14
	.byte	2                               # 0x2
	.asciz	"Drillbur\000\000\000\000\000\000\000"
	.byte	60                              # 0x3c
	.byte	85                              # 0x55
	.byte	40                              # 0x28
	.byte	30                              # 0x1e
	.byte	45                              # 0x2d
	.byte	68                              # 0x44
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.asciz	"Excadrill\000\000\000\000\000\000"
	.byte	110                             # 0x6e
	.byte	135                             # 0x87
	.byte	60                              # 0x3c
	.byte	50                              # 0x32
	.byte	65                              # 0x41
	.byte	88                              # 0x58
	.byte	41                              # 0x29
	.byte	2                               # 0x2
	.asciz	"Radrillite\000\000\000\000\000"
	.byte	120                             # 0x78
	.byte	150                             # 0x96
	.byte	75                              # 0x4b
	.byte	60                              # 0x3c
	.byte	75                              # 0x4b
	.byte	98                              # 0x62
	.byte	17                              # 0x11
	.byte	1                               # 0x1
	.asciz	"Fotor\000\000\000\000\000\000\000\000\000\000"
	.byte	55                              # 0x37
	.byte	70                              # 0x46
	.byte	35                              # 0x23
	.byte	40                              # 0x28
	.byte	35                              # 0x23
	.byte	65                              # 0x41
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.asciz	"Fotelub\000\000\000\000\000\000\000\000"
	.byte	65                              # 0x41
	.byte	90                              # 0x5a
	.byte	55                              # 0x37
	.byte	60                              # 0x3c
	.byte	55                              # 0x37
	.byte	95                              # 0x5f
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.asciz	"Fotelobul\000\000\000\000\000\000"
	.byte	75                              # 0x4b
	.byte	110                             # 0x6e
	.byte	75                              # 0x4b
	.byte	80                              # 0x50
	.byte	75                              # 0x4b
	.byte	125                             # 0x7d
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.asciz	"Axqual\000\000\000\000\000\000\000\000\000"
	.byte	60                              # 0x3c
	.byte	30                              # 0x1e
	.byte	60                              # 0x3c
	.byte	60                              # 0x3c
	.byte	60                              # 0x3c
	.byte	30                              # 0x1e
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.asciz	"Axaquan\000\000\000\000\000\000\000\000"
	.byte	80                              # 0x50
	.byte	40                              # 0x28
	.byte	80                              # 0x50
	.byte	85                              # 0x55
	.byte	85                              # 0x55
	.byte	50                              # 0x32
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.asciz	"Axaquanel\000\000\000\000\000\000"
	.byte	100                             # 0x64
	.byte	50                              # 0x32
	.byte	100                             # 0x64
	.byte	110                             # 0x6e
	.byte	110                             # 0x6e
	.byte	70                              # 0x46
	.byte	99                              # 0x63
	.byte	1                               # 0x1
	.asciz	"Graloth\000\000\000\000\000\000\000\000"
	.byte	60                              # 0x3c
	.byte	50                              # 0x32
	.byte	60                              # 0x3c
	.byte	60                              # 0x3c
	.byte	60                              # 0x3c
	.byte	10                              # 0xa
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.asciz	"Mushoraloth\000\000\000\000"
	.byte	80                              # 0x50
	.byte	80                              # 0x50
	.byte	80                              # 0x50
	.byte	80                              # 0x50
	.byte	80                              # 0x50
	.byte	20                              # 0x14
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.asciz	"Biluminasoth\000\000\000"
	.byte	100                             # 0x64
	.byte	100                             # 0x64
	.byte	100                             # 0x64
	.byte	110                             # 0x6e
	.byte	100                             # 0x64
	.byte	30                              # 0x1e
	.byte	133                             # 0x85
	.byte	2                               # 0x2
	.asciz	"Elemig\000\000\000\000\000\000\000\000\000"
	.byte	35                              # 0x23
	.byte	60                              # 0x3c
	.byte	25                              # 0x19
	.byte	20                              # 0x14
	.byte	45                              # 0x2d
	.byte	60                              # 0x3c
	.byte	36                              # 0x24
	.byte	2                               # 0x2
	.asciz	"Stelirengo\000\000\000\000\000"
	.byte	60                              # 0x3c
	.byte	80                              # 0x50
	.byte	75                              # 0x4b
	.byte	40                              # 0x28
	.byte	75                              # 0x4b
	.byte	90                              # 0x5a
	.byte	36                              # 0x24
	.byte	2                               # 0x2
	.asciz	"Leechester\000\000\000\000\000"
	.byte	65                              # 0x41
	.byte	80                              # 0x50
	.byte	60                              # 0x3c
	.byte	75                              # 0x4b
	.byte	60                              # 0x3c
	.byte	60                              # 0x3c
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.asciz	"Guiner\000\000\000\000\000\000\000\000\000"
	.byte	65                              # 0x41
	.byte	45                              # 0x2d
	.byte	50                              # 0x32
	.byte	30                              # 0x1e
	.byte	40                              # 0x28
	.byte	25                              # 0x19
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.asciz	"Guinigerem\000\000\000\000\000"
	.byte	90                              # 0x5a
	.byte	75                              # 0x4b
	.byte	70                              # 0x46
	.byte	55                              # 0x37
	.byte	65                              # 0x41
	.byte	45                              # 0x2d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.asciz	"Garasolem\000\000\000\000\000\000"
	.byte	45                              # 0x2d
	.byte	85                              # 0x55
	.byte	85                              # 0x55
	.byte	85                              # 0x55
	.byte	85                              # 0x55
	.byte	20                              # 0x14
	.byte	40                              # 0x28
	.byte	1                               # 0x1
	.asciz	"Faeternaert\000\000\000\000"
	.byte	120                             # 0x78
	.byte	50                              # 0x32
	.byte	50                              # 0x32
	.byte	130                             # 0x82
	.byte	150                             # 0x96
	.byte	100                             # 0x64
	.byte	84                              # 0x54
	.byte	2                               # 0x2
	.asciz	"Daroasinaught\000\000"
	.byte	60                              # 0x3c
	.byte	150                             # 0x96
	.byte	60                              # 0x3c
	.byte	150                             # 0x96
	.byte	60                              # 0x3c
	.byte	120                             # 0x78
	.byte	208                             # 0xd0
	.byte	1                               # 0x1
	.asciz	"Rhinorium\000\000\000\000\000\000"
	.byte	70                              # 0x46
	.byte	115                             # 0x73
	.byte	120                             # 0x78
	.byte	60                              # 0x3c
	.byte	70                              # 0x46
	.byte	68                              # 0x44
	.byte	109                             # 0x6d
	.byte	1                               # 0x1
	.asciz	"Horighnile\000\000\000\000\000"
	.byte	50                              # 0x32
	.byte	40                              # 0x28
	.byte	40                              # 0x28
	.byte	120                             # 0x78
	.byte	120                             # 0x78
	.byte	100                             # 0x64
	.byte	116                             # 0x74
	.byte	2                               # 0x2
	.asciz	"Spiramp\000\000\000\000\000\000\000\000"
	.byte	200                             # 0xc8
	.byte	40                              # 0x28
	.byte	140                             # 0x8c
	.byte	40                              # 0x28
	.byte	140                             # 0x8c
	.byte	10                              # 0xa
	.byte	133                             # 0x85
	.byte	1                               # 0x1
	.asciz	"Trevantula\000\000\000\000\000"
	.byte	100                             # 0x64
	.byte	101                             # 0x65
	.byte	71                              # 0x47
	.byte	120                             # 0x78
	.byte	101                             # 0x65
	.byte	91                              # 0x5b
	.byte	12                              # 0xc
	.byte	1                               # 0x1
	.size	POKEMONDEX, 1224

	.type	ItemList,@object                # @ItemList
	.globl	ItemList
	.p2align	4
ItemList:
	.asciz	"Nothing\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.zero	2
	.asciz	"Leftovers\000\000\000\000\000\000"
	.byte	1                               # 0x1
	.zero	2
	.asciz	"Focus Sash\000\000\000\000\000"
	.byte	2                               # 0x2
	.zero	2
	.asciz	"Liechi Berry\000\000\000"
	.byte	3                               # 0x3
	.ascii	"\001\003"
	.asciz	"Ganlon Berry\000\000\000"
	.byte	3                               # 0x3
	.ascii	"\021\003"
	.asciz	"Petaya Berry\000\000\000"
	.byte	3                               # 0x3
	.ascii	"!\003"
	.asciz	"Apicot Berry\000\000\000"
	.byte	3                               # 0x3
	.ascii	"1\003"
	.asciz	"Salac Berry\000\000\000\000"
	.byte	3                               # 0x3
	.ascii	"A\003"
	.asciz	"Lansat Berry\000\000\000"
	.byte	3                               # 0x3
	.ascii	"q\002"
	.size	ItemList, 171

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"%s restored a little HP using its Leftovers\n"
	.size	.L.str.14, 45

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%s is at %d/%d hp\n\n"
	.size	.L.str.15, 20

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s hung on with its Focus Sash!\n"
	.size	.L.str.16, 33

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%s%s's %s actiated!\n"
	.size	.L.str.17, 21

	.type	ITEM_FUNC_LIST,@object          # @ITEM_FUNC_LIST
	.data
	.globl	ITEM_FUNC_LIST
	.p2align	4
ITEM_FUNC_LIST:
	.quad	NoItemf
	.quad	Leftoversf
	.quad	Focus_Sashf
	.quad	Berries
	.size	ITEM_FUNC_LIST, 32

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"\033[1;37mP%d:\033[0m\n"
	.size	.L.str.18, 17

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Pokemon: %s\n"
	.size	.L.str.19, 13

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Level: %d\n"
	.size	.L.str.20, 11

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Health: %d/%d\n"
	.size	.L.str.21, 15

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Attack: %d\n"
	.size	.L.str.22, 12

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Defense: %d\n"
	.size	.L.str.23, 13

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Special Attack: %d\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Special Defense: %d\n"
	.size	.L.str.25, 21

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Speed: %d\n"
	.size	.L.str.26, 11

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Nature: %s\n"
	.size	.L.str.27, 12

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Move 1: %s %d/%.0f\n"
	.size	.L.str.28, 20

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Move 2: %s %d/%.0f\n"
	.size	.L.str.29, 20

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Move 3: %s %d/%.0f\n"
	.size	.L.str.30, 20

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Move 4: %s %d/%.0f\n"
	.size	.L.str.31, 20

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Item: %s (%s)\n"
	.size	.L.str.32, 15

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Ability: %s\n"
	.size	.L.str.33, 13

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Status: %s\n"
	.size	.L.str.34, 12

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"IVs: %d %d %d %d %d %d\n"
	.size	.L.str.35, 24

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"EVs: %d %d %d %d %d %d\n"
	.size	.L.str.36, 24

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"\033[?25l"
	.size	.L.str.37, 7

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"/bin/stty raw"
	.size	.L.str.38, 14

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"/bin/stty -echo"
	.size	.L.str.39, 16

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"/bin/stty echo"
	.size	.L.str.40, 15

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"/bin/stty cooked"
	.size	.L.str.41, 17

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"\033[?25h"
	.size	.L.str.42, 7

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"\033[2K\r"
	.size	.L.str.43, 6

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"\033[1A"
	.size	.L.str.44, 5

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"\033[2K"
	.size	.L.str.45, 5

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"\033[1;37mP%d:\033[0m %s\r\t\t\t\t\033[1CLvl:%d\t\033[1CHp:%d/%d\n"
	.size	.L.str.46, 48

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"\nPartyMember: "
	.size	.L.str.47, 15

	.type	x,@object                       # @x
	.bss
	.globl	x
	.p2align	4
x:
	.zero	32
	.size	x, 32

	.type	.L.str.48,@object               # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"\n"
	.size	.L.str.48, 2

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"The Player has won\n"
	.size	.L.str.49, 20

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"The Enemy has won\n"
	.size	.L.str.50, 19

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"%d-%d\n"
	.size	.L.str.51, 7

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"The seed for this game was %u (just in case you want to recreate the game)\n"
	.size	.L.str.52, 76

	.type	seed,@object                    # @seed
	.bss
	.globl	seed
	.p2align	3
seed:
	.quad	0                               # 0x0
	.size	seed, 8

	.type	.L.str.53,@object               # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"Do you want to play again? (Playing again probably has some bugs) (y/n): "
	.size	.L.str.53, 74

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Switch-In: "
	.size	.L.str.55, 12

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"%s\n"
	.size	.L.str.57, 4

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"Switch to P2"
	.size	.L.str.58, 13

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Switch to "
	.size	.L.str.59, 11

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"P2"
	.size	.L.str.60, 3

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"Go! %s!\n"
	.size	.L.str.61, 9

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"That pokemon is already fainted!"
	.size	.L.str.62, 33

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"Switch to P3"
	.size	.L.str.63, 13

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"P3"
	.size	.L.str.64, 3

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"Switch to P4"
	.size	.L.str.65, 13

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"P4"
	.size	.L.str.66, 3

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"Switch to P5"
	.size	.L.str.67, 13

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"P5"
	.size	.L.str.68, 3

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"Switch to P6"
	.size	.L.str.69, 13

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"P6"
	.size	.L.str.70, 3

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"View Party"
	.size	.L.str.71, 11

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"View"
	.size	.L.str.72, 5

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"Party"
	.size	.L.str.73, 6

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"That is not a valid switch in!"
	.size	.L.str.74, 31

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"%s%s used %s!\n"
	.size	.L.str.75, 15

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"But it missed!\n"
	.size	.L.str.76, 16

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"%s%s couldn't move\n"
	.size	.L.str.77, 20

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"It flinched!\n"
	.size	.L.str.78, 14

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"It was paralyzed!\n"
	.size	.L.str.79, 19

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"It is asleep\n"
	.size	.L.str.80, 14

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"It is frozen!\n"
	.size	.L.str.81, 15

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"It did %d damage!\n"
	.size	.L.str.82, 19

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"It was super effective!\n"
	.size	.L.str.83, 25

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"It dosen't affect %s\n"
	.size	.L.str.84, 22

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"It was not very effective!\n"
	.size	.L.str.85, 28

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"It was a critical hit!\n"
	.size	.L.str.86, 24

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"%s%s protected itself!\n"
	.size	.L.str.87, 24

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"It had no effect on %s%s...\n"
	.size	.L.str.88, 29

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"%s took some damage from its burn!\n"
	.size	.L.str.89, 36

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"%s is hurt by poison!\n"
	.size	.L.str.90, 23

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"%s is hurt by poison! (it's badly poisoned)\n"
	.size	.L.str.91, 45

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"It hurt itself in its confusion\n"
	.size	.L.str.92, 33

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"%s%s is at %d/%d\n"
	.size	.L.str.93, 18

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"%s%s woke up\n"
	.size	.L.str.94, 14

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"%s%s thawed out\n"
	.size	.L.str.95, 17

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"%s%s is confused!\n"
	.size	.L.str.96, 19

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"%s%s snapped out of its confusion!\n"
	.size	.L.str.97, 36

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"%s, that's enough!\nCome back!\n"
	.size	.L.str.98, 31

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"\033[1F%s fainted!\n"
	.size	.L.str.99, 17

	.type	Pokemon1,@object                # @Pokemon1
	.data
	.globl	Pokemon1
	.p2align	2
Pokemon1:
	.zero	8
	.byte	51                              # 0x33
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	252                             # 0xfc
	.byte	0                               # 0x0
	.zero	2
	.size	Pokemon1, 64

	.type	Pokemon2,@object                # @Pokemon2
	.globl	Pokemon2
	.p2align	2
Pokemon2:
	.zero	8
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.zero	2
	.size	Pokemon2, 64

	.type	Pokemon3,@object                # @Pokemon3
	.globl	Pokemon3
	.p2align	2
Pokemon3:
	.zero	8
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.zero	2
	.size	Pokemon3, 64

	.type	Pokemon4,@object                # @Pokemon4
	.globl	Pokemon4
	.p2align	2
Pokemon4:
	.zero	8
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.zero	2
	.size	Pokemon4, 64

	.type	Pokemon5,@object                # @Pokemon5
	.globl	Pokemon5
	.p2align	2
Pokemon5:
	.zero	8
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.zero	2
	.size	Pokemon5, 64

	.type	Pokemon6,@object                # @Pokemon6
	.globl	Pokemon6
	.p2align	2
Pokemon6:
	.zero	8
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.zero	2
	.size	Pokemon6, 64

	.type	EnemyPokemon1,@object           # @EnemyPokemon1
	.globl	EnemyPokemon1
	.p2align	2
EnemyPokemon1:
	.zero	8
	.byte	51                              # 0x33
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	44                              # 0x2c
	.byte	1                               # 0x1
	.zero	2
	.size	EnemyPokemon1, 64

	.type	EnemyPokemon2,@object           # @EnemyPokemon2
	.globl	EnemyPokemon2
	.p2align	2
EnemyPokemon2:
	.zero	8
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.zero	2
	.size	EnemyPokemon2, 64

	.type	EnemyPokemon3,@object           # @EnemyPokemon3
	.globl	EnemyPokemon3
	.p2align	2
EnemyPokemon3:
	.zero	8
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.zero	2
	.size	EnemyPokemon3, 64

	.type	EnemyPokemon4,@object           # @EnemyPokemon4
	.globl	EnemyPokemon4
	.p2align	2
EnemyPokemon4:
	.zero	8
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.zero	2
	.size	EnemyPokemon4, 64

	.type	EnemyPokemon5,@object           # @EnemyPokemon5
	.globl	EnemyPokemon5
	.p2align	2
EnemyPokemon5:
	.zero	8
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.zero	2
	.size	EnemyPokemon5, 64

	.type	EnemyPokemon6,@object           # @EnemyPokemon6
	.globl	EnemyPokemon6
	.p2align	2
EnemyPokemon6:
	.zero	8
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.long	20                              # 0x14
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.ascii	"\000\000\000\374\374\004"
	.byte	0                               # 0x0
	.byte	200                             # 0xc8
	.byte	208                             # 0xd0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.zero	2
	.size	EnemyPokemon6, 64

	.type	Parties,@object                 # @Parties
	.globl	Parties
	.p2align	4
Parties:
	.quad	Pokemon1
	.quad	Pokemon2
	.quad	Pokemon3
	.quad	Pokemon4
	.quad	Pokemon5
	.quad	Pokemon6
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.zero	16
	.zero	128
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	4
	.quad	EnemyPokemon1
	.quad	EnemyPokemon2
	.quad	EnemyPokemon3
	.quad	EnemyPokemon4
	.quad	EnemyPokemon5
	.quad	EnemyPokemon6
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.zero	16
	.zero	128
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	4
	.size	Parties, 480

	.type	.L.str.101,@object              # @.str.101
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.101:
	.asciz	"Enter %s move: "
	.size	.L.str.101, 16

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"Move "
	.size	.L.str.102, 6

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"There is no move in that slot."
	.size	.L.str.103, 31

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"There is no more PP left in that move."
	.size	.L.str.104, 39

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"Switch to P"
	.size	.L.str.105, 12

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"NoPoke"
	.size	.L.str.106, 7

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"There is no pokemon in that party slot."
	.size	.L.str.107, 40

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"Move Selection Failed. Please retry."
	.size	.L.str.108, 37

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"\nSet Party? (y/n): "
	.size	.L.str.109, 20

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"%sP%d Pokemon? (Name): "
	.size	.L.str.110, 24

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"%sP%d Move%d? (Move): "
	.size	.L.str.111, 23

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"Randomize Party? (y/n): "
	.size	.L.str.112, 25

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"Heal? (y/n): "
	.size	.L.str.113, 14

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"Hide Moves? (y/n): "
	.size	.L.str.114, 20

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"Turn on Player Ai? (y/n): "
	.size	.L.str.115, 27

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"Turn on Enemy Ai? (y/n): "
	.size	.L.str.116, 26

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"Go %s!\n"
	.size	.L.str.117, 8

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"The Enemy sent out %s!\n\n"
	.size	.L.str.118, 25

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"\033[100m\033[3m\033[1mTURN: %d\033[0m\n\n"
	.size	.L.str.119, 29

	.type	EndFirst,@object                # @EndFirst
	.bss
	.globl	EndFirst
EndFirst:
	.byte	0                               # 0x0
	.size	EndFirst, 1

	.type	.L.str.120,@object              # @.str.120
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.120:
	.asciz	"clear"
	.size	.L.str.120, 6

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"%d\n"
	.size	.L.str.121, 4

	.ident	"clang version 12.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym PROTECTF
	.addrsig_sym LEECH_SEEDF
	.addrsig_sym PERISH_SONGF
	.addrsig_sym CONFUSIONF
	.addrsig_sym Nothingf
	.addrsig_sym Strugglef
	.addrsig_sym StatMod
	.addrsig_sym StatusInfliction
	.addrsig_sym ProtectingMove
	.addrsig_sym RoarFunc
	.addrsig_sym Hp_Draining_Move
	.addrsig_sym EdgeCase
	.addrsig_sym NoAbilityf
	.addrsig_sym TypeBasedBoost
	.addrsig_sym StatDecreaseImmunity
	.addrsig_sym TypeChange
	.addrsig_sym TypeImmunity
	.addrsig_sym NoItemf
	.addrsig_sym Leftoversf
	.addrsig_sym Focus_Sashf
	.addrsig_sym Berries
	.addrsig_sym strcpy
	.addrsig_sym strcat
	.addrsig_sym __stack_chk_fail
	.addrsig_sym NATURE_LIST
	.addrsig_sym Stagenames
	.addrsig_sym Itemtext
	.addrsig_sym Statusnames
	.addrsig_sym EOPTEXT
	.addrsig_sym MoveList
	.addrsig_sym Empty_slot
	.addrsig_sym Struggle_Slot
	.addrsig_sym AbilityList
	.addrsig_sym POKEMONDEX
	.addrsig_sym ItemList
	.addrsig_sym x
	.addrsig_sym Pokemon1
	.addrsig_sym Pokemon2
	.addrsig_sym Pokemon3
	.addrsig_sym Pokemon4
	.addrsig_sym Pokemon5
	.addrsig_sym Pokemon6
	.addrsig_sym EnemyPokemon1
	.addrsig_sym EnemyPokemon2
	.addrsig_sym EnemyPokemon3
	.addrsig_sym EnemyPokemon4
	.addrsig_sym EnemyPokemon5
	.addrsig_sym EnemyPokemon6
