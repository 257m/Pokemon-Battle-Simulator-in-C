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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function statboostmult
.LCPI1_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI1_1:
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
	js	.LBB1_2
# %bb.1:
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI1_0(%rip), %xmm0
	addsd	.LCPI1_1(%rip), %xmm0
	retq
.LBB1_2:
	negl	%eax
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI1_0(%rip), %xmm1
	movsd	.LCPI1_1(%rip), %xmm0           # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
	retq
.Lfunc_end1:
	.size	statboostmult, .Lfunc_end1-statboostmult
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function ppboostmult
.LCPI2_0:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI2_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	ppboostmult
	.p2align	4, 0x90
	.type	ppboostmult,@function
ppboostmult:                            # @ppboostmult
	.cfi_startproc
# %bb.0:
	cvtsi2sd	%edi, %xmm0
	mulsd	.LCPI2_0(%rip), %xmm0
	addsd	.LCPI2_1(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end2:
	.size	ppboostmult, .Lfunc_end2-ppboostmult
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
.Lfunc_end3:
	.size	map, .Lfunc_end3-map
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
	jae	.LBB4_3
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	%eax, %ebp
	jb	.LBB4_1
# %bb.2:
	movl	%eax, %edi
.LBB4_3:
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
.Lfunc_end4:
	.size	map2, .Lfunc_end4-map2
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
	js	.LBB5_1
# %bb.2:
	je	.LBB5_3
# %bb.4:
	testl	%edi, %edi
	movl	$1, %eax
	cmovlel	%eax, %edi
	leal	-1(%rdi), %edx
	movl	%edi, %ecx
	andl	$7, %ecx
	cmpl	$7, %edx
	jb	.LBB5_7
# %bb.5:
	andl	$-8, %edi
	negl	%edi
	movl	$1, %eax
	.p2align	4, 0x90
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	addl	$8, %edi
	jne	.LBB5_6
.LBB5_7:
	testl	%ecx, %ecx
	je	.LBB5_9
	.p2align	4, 0x90
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	addl	%eax, %eax
	addl	$-1, %ecx
	jne	.LBB5_8
.LBB5_9:
	retq
.LBB5_1:
	xorl	%eax, %eax
	retq
.LBB5_3:
	movl	$1, %eax
	retq
.Lfunc_end5:
	.size	power2, .Lfunc_end5-power2
	.cfi_endproc
                                        # -- End function
	.globl	tt                              # -- Begin function tt
	.p2align	4, 0x90
	.type	tt,@function
tt:                                     # @tt
	.cfi_startproc
# %bb.0:
	testl	%edi, %edi
	jne	.LBB6_2
# %bb.1:
	movaps	%xmm1, %xmm0
.LBB6_2:
	retq
.Lfunc_end6:
	.size	tt, .Lfunc_end6-tt
	.cfi_endproc
                                        # -- End function
	.globl	tt2                             # -- Begin function tt2
	.p2align	4, 0x90
	.type	tt2,@function
tt2:                                    # @tt2
	.cfi_startproc
# %bb.0:
	testl	%edi, %edi
	jne	.LBB7_2
# %bb.1:
	movaps	%xmm1, %xmm0
.LBB7_2:
	movsd	%xmm0, (%rsi)
	retq
.Lfunc_end7:
	.size	tt2, .Lfunc_end7-tt2
	.cfi_endproc
                                        # -- End function
	.globl	PROTECTF                        # -- Begin function PROTECTF
	.p2align	4, 0x90
	.type	PROTECTF,@function
PROTECTF:                               # @PROTECTF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end8:
	.size	PROTECTF, .Lfunc_end8-PROTECTF
	.cfi_endproc
                                        # -- End function
	.globl	LEECH_SEEDF                     # -- Begin function LEECH_SEEDF
	.p2align	4, 0x90
	.type	LEECH_SEEDF,@function
LEECH_SEEDF:                            # @LEECH_SEEDF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end9:
	.size	LEECH_SEEDF, .Lfunc_end9-LEECH_SEEDF
	.cfi_endproc
                                        # -- End function
	.globl	PERISH_SONGF                    # -- Begin function PERISH_SONGF
	.p2align	4, 0x90
	.type	PERISH_SONGF,@function
PERISH_SONGF:                           # @PERISH_SONGF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end10:
	.size	PERISH_SONGF, .Lfunc_end10-PERISH_SONGF
	.cfi_endproc
                                        # -- End function
	.globl	CONFUSIONF                      # -- Begin function CONFUSIONF
	.p2align	4, 0x90
	.type	CONFUSIONF,@function
CONFUSIONF:                             # @CONFUSIONF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end11:
	.size	CONFUSIONF, .Lfunc_end11-CONFUSIONF
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
	movq	84(%r14), %rax
	movsbl	%dil, %ebx
	movzbl	%sil, %ebp
	testb	$1, %al
	jne	.LBB12_1
# %bb.2:
	testb	$2, %al
	jne	.LBB12_3
.LBB12_4:
	testb	$4, %al
	jne	.LBB12_5
.LBB12_6:
	testb	$8, %al
	jne	.LBB12_8
.LBB12_7:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB12_1:
	.cfi_def_cfa_offset 32
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movl	%ebx, %edi
	movl	%ebp, %esi
	callq	*(%rax)
	movq	84(%r14), %rax
	testb	$2, %al
	je	.LBB12_4
.LBB12_3:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movl	%ebx, %edi
	movl	%ebp, %esi
	callq	*8(%rax)
	movq	84(%r14), %rax
	testb	$4, %al
	je	.LBB12_6
.LBB12_5:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movl	%ebx, %edi
	movl	%ebp, %esi
	callq	*16(%rax)
	movq	84(%r14), %rax
	testb	$8, %al
	je	.LBB12_7
.LBB12_8:
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
.Lfunc_end12:
	.size	ACTIVATE_EFFECTS, .Lfunc_end12-ACTIVATE_EFFECTS
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function CLEAR_EFFECTS
.LCPI13_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI13_1:
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
.LCPI13_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI13_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI13_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI13_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI13_6:
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
	movapd	.LCPI13_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	84(%rax), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI13_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI13_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI13_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI13_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI13_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI13_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB13_1
# %bb.2:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 84(%rax)
	movlpd	92(%rax), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI13_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	.p2align	4, 0x90
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB13_3
# %bb.4:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 92(%rax)
	retq
.Lfunc_end13:
	.size	CLEAR_EFFECTS, .Lfunc_end13-CLEAR_EFFECTS
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
	movups	%xmm0, 212(%rax)
	movups	%xmm0, 196(%rax)
	movups	%xmm0, 180(%rax)
	movups	%xmm0, 164(%rax)
	movups	%xmm0, 148(%rax)
	movups	%xmm0, 132(%rax)
	movups	%xmm0, 116(%rax)
	movups	%xmm0, 100(%rax)
	retq
.Lfunc_end14:
	.size	CLEAR_EFFECT_COUNTERS, .Lfunc_end14-CLEAR_EFFECT_COUNTERS
	.cfi_endproc
                                        # -- End function
	.globl	Boost                           # -- Begin function Boost
	.p2align	4, 0x90
	.type	Boost,@function
Boost:                                  # @Boost
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	addb	66(%rdx,%rax), %sil
	movb	%sil, 66(%rdx,%rax)
	movb	$6, %cl
	cmpb	$6, %sil
	jg	.LBB15_2
# %bb.1:
	movb	$-6, %cl
	cmpb	$-7, %sil
	jg	.LBB15_3
.LBB15_2:
	movb	%cl, 66(%rdx,%rax)
.LBB15_3:
	retq
.Lfunc_end15:
	.size	Boost, .Lfunc_end15-Boost
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
	je	.LBB16_10
# %bb.1:
	movzbl	%dil, %r8d
	movsbl	66(%rdx,%r8), %edi
	cmpl	$6, %edi
	jl	.LBB16_4
# %bb.2:
	movb	$6, 66(%rdx,%r8)
	movzbl	%cl, %ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	subq	%rcx, %rax
	subq	%rcx, %rax
	addq	EOPTEXT@GOTPCREL(%rip), %rax
	movl	(%rdx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str(%rip), %rsi
	jmp	.LBB16_3
.LBB16_10:
	retq
.LBB16_4:
	cmpb	$-6, %dil
	jg	.LBB16_6
# %bb.5:
	movb	$-6, 66(%rdx,%r8)
	movzbl	%cl, %ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	subq	%rcx, %rax
	subq	%rcx, %rax
	addq	EOPTEXT@GOTPCREL(%rip), %rax
	movl	(%rdx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str.1(%rip), %rsi
.LBB16_3:
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	jmp	__printf_chk@PLT                # TAILCALL
.LBB16_6:
	movl	%esi, %eax
	addl	%edi, %esi
	testb	%al, %al
	jle	.LBB16_9
# %bb.7:
	leal	-6(%rsi), %r9d
	cmpl	$6, %esi
	movzbl	%al, %eax
	movzbl	%r9b, %esi
	cmovlel	%eax, %esi
	movsbl	%sil, %r9d
	addb	%r9b, %dil
	movb	%dil, 66(%rdx,%r8)
	movzbl	%cl, %ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	subq	%rcx, %rax
	subq	%rcx, %rax
	addq	EOPTEXT@GOTPCREL(%rip), %rax
	movl	(%rdx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str.2(%rip), %rsi
	jmp	.LBB16_8
.LBB16_9:
	leal	6(%rsi), %r9d
	cmpl	$-6, %esi
	movzbl	%al, %eax
	movzbl	%r9b, %esi
	cmovgel	%eax, %esi
	movsbl	%sil, %r9d
	addb	%r9b, %dil
	movb	%dil, 66(%rdx,%r8)
	movzbl	%cl, %ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	subq	%rcx, %rax
	subq	%rcx, %rax
	addq	EOPTEXT@GOTPCREL(%rip), %rax
	movl	(%rdx), %ecx
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	negl	%r9d
	leaq	.L.str.3(%rip), %rsi
.LBB16_8:
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end16:
	.size	Boostandprint, .Lfunc_end16-Boostandprint
	.cfi_endproc
                                        # -- End function
	.globl	BoostChance                     # -- Begin function BoostChance
	.p2align	4, 0x90
	.type	BoostChance,@function
BoostChance:                            # @BoostChance
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
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movl	%esi, %ebp
	movl	%edi, %r14d
	callq	rand@PLT
	cmpl	$2147483601, %eax               # imm = 0x7FFFFFD1
	jb	.LBB17_2
	.p2align	4, 0x90
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483600, %eax               # imm = 0x7FFFFFD0
	ja	.LBB17_1
.LBB17_2:
	movl	%eax, %ecx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movzbl	%bl, %ecx
	cmpl	%ecx, %eax
	jae	.LBB17_7
# %bb.3:
	movzbl	%r14b, %eax
	addb	66(%r15,%rax), %bpl
	movb	%bpl, 66(%r15,%rax)
	cmpb	$7, %bpl
	jl	.LBB17_5
# %bb.4:
	movb	$6, 66(%r15,%rax)
	jmp	.LBB17_7
.LBB17_5:
	cmpb	$-7, %bpl
	jg	.LBB17_7
# %bb.6:
	movb	$-6, 66(%r15,%rax)
.LBB17_7:
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
.Lfunc_end17:
	.size	BoostChance, .Lfunc_end17-BoostChance
	.cfi_endproc
                                        # -- End function
	.globl	ResetBoosts                     # -- Begin function ResetBoosts
	.p2align	4, 0x90
	.type	ResetBoosts,@function
ResetBoosts:                            # @ResetBoosts
	.cfi_startproc
# %bb.0:
	movq	$0, 66(%rdi)
	retq
.Lfunc_end18:
	.size	ResetBoosts, .Lfunc_end18-ResetBoosts
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
	jae	.LBB19_6
# %bb.1:
	movl	%esi, %eax
	xorb	$1, %al
	movzbl	%al, %eax
	imulq	$231, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rax,8), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	xorl	%eax, %eax
	cmpw	$8, %dx
	je	.LBB19_5
# %bb.2:
	cmpw	$17, %dx
	je	.LBB19_5
# %bb.3:
	shrl	$5, %ecx
	andl	$31, %ecx
	xorl	%eax, %eax
	cmpw	$8, %cx
	je	.LBB19_5
# %bb.4:
	cmpw	$17, %cx
	je	.LBB19_5
	jmp	.LBB19_9
.LBB19_6:
	cmpb	$1, %dil
	jne	.LBB19_9
# %bb.7:
	movl	%esi, %eax
	xorb	$1, %al
	movzbl	%al, %eax
	imulq	$231, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rax,8), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	xorl	%eax, %eax
	cmpw	$2, %dx
	je	.LBB19_5
# %bb.8:
	andl	$992, %ecx                      # imm = 0x3E0
	cmpw	$64, %cx
	je	.LBB19_5
.LBB19_9:
	movzbl	%sil, %eax
	imulq	$231, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %r8
	movq	48(%r8,%rax), %rax
	movzbl	(%rax), %r9d
	movq	%r9, %rax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rdx
	testb	$8, 31(%rdx,%rax)
	je	.LBB19_12
# %bb.10:
	movl	%esi, %eax
	xorb	$1, %al
	movzbl	%al, %eax
	imulq	$231, %rax, %rax
	movq	(%r8,%rax), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rdx
	movzwl	22(%rdx,%rax,8), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	xorl	%eax, %eax
	cmpw	$5, %dx
	je	.LBB19_5
# %bb.11:
	andl	$992, %ecx                      # imm = 0x3E0
	movzwl	%cx, %ecx
	cmpl	$160, %ecx
	je	.LBB19_5
.LBB19_12:
	cmpb	$6, %dil
	je	.LBB19_16
# %bb.13:
	cmpb	$4, %dil
	jne	.LBB19_18
# %bb.14:
	xorb	$1, %sil
	movzbl	%sil, %eax
	imulq	$231, %rax, %rax
	movq	(%r8,%rax), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rax,8), %edx
	movl	%edx, %esi
	andl	$31, %esi
	cmpw	$4, %si
	je	.LBB19_15
# %bb.19:
	shrl	$5, %edx
	andl	$31, %edx
	cmpw	$4, %dx
	jne	.LBB19_21
.LBB19_15:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.LBB19_16:
	xorb	$1, %sil
	movzbl	%sil, %eax
	imulq	$231, %rax, %rax
	movq	(%r8,%rax), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rax,8), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	xorl	%eax, %eax
	cmpw	$6, %dx
	je	.LBB19_5
# %bb.17:
	andl	$992, %ecx                      # imm = 0x3E0
	movzwl	%cx, %ecx
	cmpl	$192, %ecx
	je	.LBB19_5
.LBB19_18:
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	retq
.LBB19_21:
	cmpb	$11, %r9b
	jne	.LBB19_18
# %bb.22:
	xorl	%eax, %eax
	cmpw	$9, %si
	je	.LBB19_5
# %bb.23:
	cmpw	$9, %dx
	jne	.LBB19_18
.LBB19_5:
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end19:
	.size	StatusImmunity, .Lfunc_end19-StatusImmunity
	.cfi_endproc
                                        # -- End function
	.globl	Nothingf                        # -- Begin function Nothingf
	.p2align	4, 0x90
	.type	Nothingf,@function
Nothingf:                               # @Nothingf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end20:
	.size	Nothingf, .Lfunc_end20-Nothingf
	.cfi_endproc
                                        # -- End function
	.globl	Strugglef                       # -- Begin function Strugglef
	.p2align	4, 0x90
	.type	Strugglef,@function
Strugglef:                              # @Strugglef
	.cfi_startproc
# %bb.0:
	movl	%esi, %eax
	imulq	$231, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rsi
	movq	48(%rsi,%rax), %rdx
	movb	1(%rdx), %cl
	andb	$-64, %cl
	orb	$1, %cl
	movb	%cl, 1(%rdx)
	cmpb	$2, %dil
	jne	.LBB21_2
# %bb.1:
	movq	(%rsi), %rcx
	movl	40(%rcx), %ecx
	shrl	$2, %ecx
	movq	(%rsi,%rax), %rax
	subl	%ecx, 4(%rax)
.LBB21_2:
	retq
.Lfunc_end21:
	.size	Strugglef, .Lfunc_end21-Strugglef
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function StatMod
.LCPI22_0:
	.quad	0x4059000000000000              # double 100
.LCPI22_1:
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
	imulq	$231, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %r9
	movq	48(%r9,%rax), %rbp
	movzbl	(%rbp), %ebx
	leal	(%rdx,%rdx,4), %r15d
	shlq	$5, %rbx
	movq	MoveList@GOTPCREL(%rip), %rdx
	addq	%rbx, %rdx
	cmpb	$0, 25(%r15,%rdx)
	movl	%esi, %ebp
	jns	.LBB22_2
# %bb.1:
	movl	%esi, %ebp
	xorb	$1, %bpl
	movzbl	%bpl, %edx
	imulq	$231, %rdx, %rdx
	cmpb	$0, 228(%r9,%rdx)
	js	.LBB22_21
.LBB22_2:
	cmpb	$2, %dil
	jne	.LBB22_21
# %bb.3:
	movl	%esi, %edx
	xorb	$1, %dl
	movzbl	%dl, %edx
	imulq	$231, %rdx, %rdx
	testb	$1, 84(%r9,%rdx)
	je	.LBB22_5
# %bb.4:
	movq	MoveList@GOTPCREL(%rip), %rdx
	movb	31(%rdx,%rbx), %dl
	andb	$2, %dl
	shrb	%dl
	testb	%dl, %bpl
	jne	.LBB22_21
.LBB22_5:
	movsd	68(%r9,%rax), %xmm0             # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movzbl	%bpl, %r14d
	jne	.LBB22_6
	jnp	.LBB22_7
.LBB22_6:
	movzwl	228(%r9,%rax), %edx
	andl	$31, %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rdi
	movl	17(%rdi,%rdx), %edx
	shrl	$11, %edx
	andl	$31, %edx
	imulq	$231, %r14, %rdi
	movq	(%r9,%rdi), %rdi
	movl	(%rdi), %edi
	andl	$1023, %edi                     # imm = 0x3FF
	leaq	(%rdi,%rdi,2), %r8
	movq	POKEMONDEX@GOTPCREL(%rip), %rdi
	movzwl	22(%rdi,%r8,8), %edi
	movl	%edi, %ecx
	andl	$31, %ecx
	imulq	$84, %rdx, %rdx
	addq	TypeChart@GOTPCREL(%rip), %rdx
	movss	(%rdx,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	shrq	$3, %rdi
	andl	$124, %edi
	mulss	(%rdi,%rdx), %xmm0
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.LBB22_9
.LBB22_7:
	cmpb	%sil, %bpl
	je	.LBB22_9
# %bb.8:
	movq	MoveList@GOTPCREL(%rip), %rcx
	movb	31(%rcx,%rbx), %cl
	andb	$4, %cl
	jne	.LBB22_21
.LBB22_9:
	leaq	(%r9,%rax), %r12
	addq	$48, %r12
	leaq	4(%r15), %rbx
	callq	rand@PLT
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	movq	%rax, %rcx
	shlq	$5, %rcx
	addq	MoveList@GOTPCREL(%rip), %rcx
	movb	21(%rbx,%rcx), %cl
	andb	$127, %cl
	movzbl	%cl, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	divsd	.LCPI22_0(%rip), %xmm1
	mulsd	.LCPI22_1(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_21
# %bb.10:
	imulq	$231, %r14, %rbx
	addq	Parties@GOTPCREL(%rip), %rbx
	movl	%r15d, %ecx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	$1, %edx
	movl	%ebp, %ecx
	shll	%cl, %edx
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	leal	1(%r15), %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	xorl	%ebp, %ebp
	movq	MoveList@GOTPCREL(%rip), %r13
	.p2align	4, 0x90
.LBB22_11:                              # =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movl	%ebp, %ecx
	shrl	%ecx
	addl	%r15d, %ecx
	shlq	$5, %rax
	addq	%r13, %rax
	movzbl	21(%rcx,%rax), %eax
	movl	%eax, %ecx
	testb	$1, %bpl
	jne	.LBB22_13
# %bb.12:                               #   in Loop: Header=BB22_11 Depth=1
	shrl	$4, %ecx
	andl	$7, %ecx
	movl	%ecx, %esi
	negl	%esi
	testb	%al, %al
	cmovnsl	%ecx, %esi
	jmp	.LBB22_14
	.p2align	4, 0x90
.LBB22_13:                              #   in Loop: Header=BB22_11 Depth=1
	andl	$7, %ecx
	movl	%ecx, %esi
	negl	%esi
	testb	$8, %al
	cmovel	%ecx, %esi
.LBB22_14:                              #   in Loop: Header=BB22_11 Depth=1
	movq	(%rbx), %rdx
	testl	%esi, %esi
	jns	.LBB22_18
# %bb.15:                               #   in Loop: Header=BB22_11 Depth=1
	movzbl	9(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	movq	AbilityList@GOTPCREL(%rip), %rcx
	cmpb	$2, 15(%rcx,%rax,2)
	jne	.LBB22_18
# %bb.16:                               #   in Loop: Header=BB22_11 Depth=1
	addq	%rax, %rax
	addq	AbilityList@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movzbl	16(%rcx,%rax), %ecx
	btl	%ebp, %ecx
	jae	.LBB22_18
# %bb.17:                               #   in Loop: Header=BB22_11 Depth=1
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movzbl	16(%rcx,%rax), %eax
	testl	%eax, 4(%rsp)                   # 4-byte Folded Reload
	jne	.LBB22_19
	.p2align	4, 0x90
.LBB22_18:                              #   in Loop: Header=BB22_11 Depth=1
	movzbl	%bpl, %edi
	movl	%r14d, %ecx
	callq	Boostandprint@PLT
.LBB22_19:                              #   in Loop: Header=BB22_11 Depth=1
	cmpl	$7, %ebp
	je	.LBB22_21
# %bb.20:                               #   in Loop: Header=BB22_11 Depth=1
	addl	$1, %ebp
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	jmp	.LBB22_11
.LBB22_21:
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
.Lfunc_end22:
	.size	StatMod, .Lfunc_end22-StatMod
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function StatusInfliction
.LCPI23_0:
	.quad	0x41dfffffffc00000              # double 2147483647
.LCPI23_1:
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
	jne	.LBB23_17
# %bb.1:
	movl	%esi, %edx
	xorb	$1, %dl
	movzbl	%dl, %edx
	imulq	$231, %rdx, %r13
	movq	Parties@GOTPCREL(%rip), %r15
	cmpb	$0, 228(%r15,%r13)
	js	.LBB23_17
# %bb.2:
	testb	$1, 84(%r15,%r13)
	movzbl	%sil, %r14d
	je	.LBB23_4
# %bb.3:
	imulq	$231, %r14, %rdx
	movq	48(%r15,%rdx), %rdx
	movzbl	(%rdx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rsi
	testb	$2, 31(%rsi,%rdx)
	jne	.LBB23_17
.LBB23_4:
	leaq	(%r15,%r13), %r12
	imulq	$231, %r14, %rbx
	movsd	68(%r15,%rbx), %xmm0            # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB23_5
	jnp	.LBB23_6
.LBB23_5:
	movzwl	228(%r15,%rbx), %edx
	andl	$31, %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rsi
	movl	17(%rsi,%rdx), %edx
	shrl	$11, %edx
	andl	$31, %edx
	movq	(%r12), %rsi
	movl	(%rsi), %esi
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
	jb	.LBB23_7
.LBB23_6:
	movq	48(%r15,%rbx), %rdx
	movzbl	(%rdx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rsi
	testb	$4, 31(%rsi,%rdx)
	jne	.LBB23_17
.LBB23_7:
	movb	%cl, %al
	leal	(%rax,%rax,4), %ebp
	callq	rand@PLT
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movq	48(%r15,%rbx), %rax
	movzbl	(%rax), %ebx
	movzbl	%bpl, %eax
	shlq	$5, %rbx
	movq	MoveList@GOTPCREL(%rip), %rcx
	addq	%rbx, %rcx
	movzbl	22(%rax,%rcx), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	mulsd	.LCPI23_0(%rip), %xmm1
	divsd	.LCPI23_1(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_17
# %bb.8:
	movb	21(%rax,%rcx), %bpl
	movzbl	%bpl, %edi
	movl	%r14d, %esi
	callq	StatusImmunity@PLT
	testb	%al, %al
	jne	.LBB23_10
# %bb.9:
	movq	MoveList@GOTPCREL(%rip), %rax
	testb	$4, 31(%rax,%rbx)
	jne	.LBB23_17
.LBB23_10:
	cmpb	$6, %bpl
	ja	.LBB23_13
# %bb.11:
	movq	(%r12), %rax
	cmpb	$0, 65(%rax)
	jne	.LBB23_16
# %bb.12:
	movb	%bpl, 65(%rax)
	jmp	.LBB23_17
.LBB23_13:
	cmpb	$7, %bpl
	jne	.LBB23_16
# %bb.14:
	leaq	(%r15,%r13), %rax
	addq	$84, %rax
	orb	$8, (%rax)
	cmpb	$0, 103(%r15,%r13)
	jne	.LBB23_17
# %bb.15:
	leaq	(%r15,%r13), %rbx
	addq	$103, %rbx
	callq	rand@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$252, %ecx
	subl	%ecx, %eax
	addb	$2, %al
	movb	%al, (%rbx)
	jmp	.LBB23_17
.LBB23_16:
	leaq	(%r15,%r13), %rax
	addq	$228, %rax
	orb	$16, 1(%rax)
.LBB23_17:
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
.Lfunc_end23:
	.size	StatusInfliction, .Lfunc_end23-StatusInfliction
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function ProtectingMove
.LCPI24_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI24_1:
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
	je	.LBB24_6
# %bb.1:
	cmpb	$1, %dil
	jne	.LBB24_7
# %bb.2:
	callq	rand@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movzbl	%bl, %eax
	imulq	$231, %rax, %r12
	movq	Parties@GOTPCREL(%rip), %r15
	leaq	(%r15,%r12), %r14
	addq	$100, %r14
	movsbl	100(%r15,%r12), %edi
	movsd	.LCPI24_0(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	ldexp@PLT
	movsd	.LCPI24_1(%rip), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	.LCPI24_0(%rip), %xmm1
	ucomisd	(%rsp), %xmm1                   # 8-byte Folded Reload
	jbe	.LBB24_5
# %bb.3:
	movq	First@GOTPCREL(%rip), %rax
	xorb	$1, %bl
	cmpb	%bl, (%rax)
	jne	.LBB24_5
# %bb.4:
	orb	$1, 84(%r15,%r12)
	movzbl	%bl, %eax
	imulq	$231, %rax, %rax
	orb	$1, 229(%r15,%rax)
	addb	$1, (%r14)
	jmp	.LBB24_7
.LBB24_6:
	movzbl	%bl, %eax
	imulq	$231, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	andb	$-2, 84(%rcx,%rax)
.LBB24_7:
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
.LBB24_5:
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
.Lfunc_end24:
	.size	ProtectingMove, .Lfunc_end24-ProtectingMove
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function RoarFunc
.LCPI25_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI25_1:
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
.LCPI25_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI25_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI25_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI25_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI25_6:
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
	jne	.LBB25_11
# %bb.1:
	movl	%esi, %eax
	xorb	$1, %al
	movzbl	%al, %eax
	imulq	$231, %rax, %rbx
	movq	Parties@GOTPCREL(%rip), %r14
	cmpb	$0, 228(%r14,%rbx)
	js	.LBB25_11
# %bb.2:
	testb	$1, 84(%r14,%rbx)
	je	.LBB25_4
# %bb.3:
	movzbl	%sil, %eax
	imulq	$231, %rax, %rax
	movq	48(%r14,%rax), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rcx
	testb	$2, 31(%rcx,%rax)
	jne	.LBB25_11
.LBB25_4:
	callq	rand@PLT
	movq	8(%r14,%rbx), %rcx
	movq	16(%r14,%rbx), %rdx
	xorl	%esi, %esi
	cmpl	$0, 4(%rcx)
	setg	%sil
	xorl	%ecx, %ecx
	cmpl	$0, 4(%rdx)
	setg	%cl
	addl	%esi, %ecx
	movq	24(%r14,%rbx), %rdx
	xorl	%esi, %esi
	cmpl	$0, 4(%rdx)
	setg	%sil
	addl	%ecx, %esi
	movq	32(%r14,%rbx), %rcx
	xorl	%edx, %edx
	cmpl	$0, 4(%rcx)
	setg	%dl
	addl	%esi, %edx
	movq	40(%r14,%rbx), %rcx
	xorl	%esi, %esi
	cmpl	$0, 4(%rcx)
	setg	%sil
	addl	%edx, %esi
	cltd
	idivl	%esi
	addb	$1, %dl
	movq	Parties@GOTPCREL(%rip), %rax
	addq	%rbx, %rax
	.p2align	4, 0x90
.LBB25_5:                               # =>This Inner Loop Header: Depth=1
	movzbl	%dl, %ecx
	movq	(%rax,%rcx,8), %rsi
	movl	%ecx, %edx
	addb	$1, %dl
	cmpl	$0, 4(%rsi)
	jle	.LBB25_5
# %bb.6:
	leaq	(%rax,%rcx,8), %rax
	movq	(%r14,%rbx), %rcx
	movq	$0, 66(%rcx)
	movapd	.LCPI25_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	84(%r14), %xmm7                 # xmm7 = mem[0],xmm7[1]
	leaq	(%r14,%rbx), %rcx
	movdqa	.LCPI25_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %edx
	movdqa	.LCPI25_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI25_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI25_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI25_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI25_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB25_7:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB25_7
# %bb.8:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 84(%r14)
	movlpd	92(%r14), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI25_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %edx
	.p2align	4, 0x90
.LBB25_9:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB25_9
# %bb.10:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 92(%r14)
	movq	(%rcx), %rdx
	movq	(%rax), %rsi
	movq	%rsi, (%rcx)
	movq	%rdx, (%rax)
	movq	(%rcx), %rax
	movl	(%rax), %eax
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
.LBB25_11:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end25:
	.size	RoarFunc, .Lfunc_end25-RoarFunc
	.cfi_endproc
                                        # -- End function
	.globl	Switch                          # -- Begin function Switch
	.p2align	4, 0x90
	.type	Switch,@function
Switch:                                 # @Switch
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	imulq	$231, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %r8
	leaq	(%r8,%rax), %rdx
	movq	(%r8,%rax), %rdi
	movl	%esi, %esi
	movq	(%rdx,%rsi,8), %rcx
	movq	%rcx, (%r8,%rax)
	movq	%rdi, (%rdx,%rsi,8)
	retq
.Lfunc_end26:
	.size	Switch, .Lfunc_end26-Switch
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpb	$2, %dil
	jne	.LBB27_7
# %bb.1:
	movzbl	%sil, %r15d
	imulq	$231, %r15, %rbx
	movq	Parties@GOTPCREL(%rip), %r14
	movl	56(%r14,%rbx), %ebp
	cvtsi2sd	%ebp, %xmm1
	movq	(%r14,%rbx), %r12
	movq	48(%r14,%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%dl, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$5, %rax
	addq	MoveList@GOTPCREL(%rip), %rax
	movsbl	21(%rax,%rcx), %eax
	testw	%ax, %ax
	js	.LBB27_2
# %bb.3:
	xorl	$-128, %eax
	leal	(%rax,%rax,4), %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	%ax, %eax
	movswl	%ax, %ecx
	shrl	$15, %eax
	shrl	$12, %ecx
	addb	%al, %cl
	movsbl	%cl, %eax
	jmp	.LBB27_4
.LBB27_2:
	movzbl	%al, %eax
	leal	(%rax,%rax,4), %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	%ax, %eax
	shrl	$12, %eax
.LBB27_4:
	cvtsi2sd	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	callq	ceil@PLT
	cvttsd2si	%xmm0, %edx
	movl	4(%r12), %eax
	movl	40(%r12), %ecx
	leal	(%rax,%rdx), %esi
	movl	%ecx, %r8d
	subl	%eax, %r8d
	cmpl	%ecx, %esi
	cmovbel	%edx, %r8d
	addl	%r8d, %eax
	movl	%eax, 4(%r12)
	testl	%r8d, %r8d
	jle	.LBB27_5
# %bb.8:
	addq	%rbx, %r14
	movq	%r15, %rbx
	shlq	$4, %rbx
	subq	%r15, %rbx
	subq	%r15, %rbx
	addq	EOPTEXT@GOTPCREL(%rip), %rbx
	movl	(%r12), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rbp
	leaq	(,%rax,8), %rcx
	addq	%rbp, %rcx
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movl	(%rax), %ecx
	movl	4(%rax), %r8d
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(,%rcx,8), %rcx
	addq	%rbp, %rcx
	movl	40(%rax), %r9d
	leaq	.L.str.7(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
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
.LBB27_5:
	.cfi_def_cfa_offset 48
	testl	%ebp, %ebp
	jle	.LBB27_7
# %bb.6:
	cmpl	%ecx, %eax
	jne	.LBB27_7
# %bb.9:
	movq	%r15, %rdx
	shlq	$4, %rdx
	subq	%r15, %rdx
	subq	%r15, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movl	(%r12), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.8(%rip), %rsi
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
.LBB27_7:
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
.Lfunc_end27:
	.size	Hp_Draining_Move, .Lfunc_end27-Hp_Draining_Move
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function EdgeCase
.LCPI28_0:
	.quad	0x4059000000000000              # double 100
.LCPI28_1:
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
	jne	.LBB28_6
# %bb.1:
	movl	%esi, %eax
	imulq	$231, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	48(%rcx,%rax), %rdi
	cmpb	$50, (%rdi)
	jne	.LBB28_6
# %bb.2:
	leaq	(%rcx,%rax), %r15
	addq	$48, %r15
	movzbl	%dl, %eax
	leaq	(%rax,%rax,4), %rbx
	xorb	$1, %sil
	movzbl	%sil, %r14d
	imulq	$231, %r14, %r12
	addq	Parties@GOTPCREL(%rip), %r12
	xorl	%ebp, %ebp
	movq	MoveList@GOTPCREL(%rip), %r13
	jmp	.LBB28_3
	.p2align	4, 0x90
.LBB28_5:                               #   in Loop: Header=BB28_3 Depth=1
	addl	$1, %ebp
	cmpl	$8, %ebp
	je	.LBB28_6
.LBB28_3:                               # =>This Inner Loop Header: Depth=1
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
	divsd	.LCPI28_0(%rip), %xmm1
	mulsd	.LCPI28_1(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_5
# %bb.4:                                #   in Loop: Header=BB28_3 Depth=1
	movq	(%r12), %rdx
	movzbl	%bpl, %edi
	movl	$-12, %esi
	movl	%r14d, %ecx
	callq	Boostandprint@PLT
	jmp	.LBB28_5
.LBB28_6:
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
	.size	EdgeCase, .Lfunc_end28-EdgeCase
	.cfi_endproc
                                        # -- End function
	.globl	NoAbilityf                      # -- Begin function NoAbilityf
	.p2align	4, 0x90
	.type	NoAbilityf,@function
NoAbilityf:                             # @NoAbilityf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end29:
	.size	NoAbilityf, .Lfunc_end29-NoAbilityf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function TypeBasedBoost
.LCPI30_0:
	.quad	0x3ff8000000000000              # double 1.5
	.text
	.globl	TypeBasedBoost
	.p2align	4, 0x90
	.type	TypeBasedBoost,@function
TypeBasedBoost:                         # @TypeBasedBoost
	.cfi_startproc
# %bb.0:
	cmpb	$1, %dil
	jne	.LBB30_4
# %bb.1:
	movzbl	%sil, %eax
	imulq	$231, %rax, %r10
	movq	Parties@GOTPCREL(%rip), %r8
	movq	(%r8,%r10), %rax
	movq	48(%r8,%r10), %rsi
	movzbl	9(%rax), %edx
	leaq	(%rdx,%rdx,8), %rdx
	movq	AbilityList@GOTPCREL(%rip), %r9
	movzbl	16(%r9,%rdx,2), %edi
	movzbl	(%rsi), %esi
	shlq	$5, %rsi
	movq	MoveList@GOTPCREL(%rip), %rcx
	movl	17(%rcx,%rsi), %ecx
	shrl	$11, %ecx
	andl	$31, %ecx
	cmpl	%edi, %ecx
	jne	.LBB30_4
# %bb.2:
	movl	4(%rax), %ecx
	movl	40(%rax), %eax
	movzbl	17(%r9,%rdx,2), %esi
	xorl	%edx, %edx
	divl	%esi
	cmpl	%eax, %ecx
	ja	.LBB30_4
# %bb.3:
	movsd	68(%r8,%r10), %xmm0             # xmm0 = mem[0],zero
	mulsd	.LCPI30_0(%rip), %xmm0
	movsd	%xmm0, 68(%r8,%r10)
.LBB30_4:
	retq
.Lfunc_end30:
	.size	TypeBasedBoost, .Lfunc_end30-TypeBasedBoost
	.cfi_endproc
                                        # -- End function
	.globl	StatDecreaseImmunity            # -- Begin function StatDecreaseImmunity
	.p2align	4, 0x90
	.type	StatDecreaseImmunity,@function
StatDecreaseImmunity:                   # @StatDecreaseImmunity
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end31:
	.size	StatDecreaseImmunity, .Lfunc_end31-StatDecreaseImmunity
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function TypeChange
.LCPI32_0:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI32_1:
	.quad	0x4034000000000000              # double 20
.LCPI32_2:
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
	jne	.LBB32_8
# %bb.1:
	movzbl	%sil, %eax
	imulq	$231, %rax, %r14
	movq	Parties@GOTPCREL(%rip), %r8
	movzwl	228(%r8,%r14), %ebx
	movl	%ebx, %edi
	andl	$31, %edi
	movq	(%r8,%r14), %r10
	movzbl	9(%r10), %ecx
	leaq	(%rcx,%rcx,8), %rdx
	movq	AbilityList@GOTPCREL(%rip), %r11
	movzbl	16(%r11,%rdx,2), %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	cmpl	%edi, %eax
	jne	.LBB32_8
# %bb.2:
	movb	17(%r11,%rdx,2), %r9b
	movzbl	%r9b, %edx
	testb	$32, %dl
	jne	.LBB32_3
# %bb.6:
	leaq	(%r8,%r14), %rax
	addq	$228, %rax
	shrl	$6, %edx
	leal	(%rdx,%rcx,4), %ecx
	andl	$31, %ecx
	andl	$-32, %ebx
	orl	%ecx, %ebx
	movw	%bx, (%rax)
	movzbl	9(%r10), %eax
	leaq	(%rax,%rax,8), %rax
	movb	17(%r11,%rax,2), %r9b
	movsd	68(%r8,%r14), %xmm0             # xmm0 = mem[0],zero
	jmp	.LBB32_7
.LBB32_3:
	shll	$2, %ecx
	andl	$28, %ecx
	movq	%rdx, %rax
	shrq	$6, %rax
	orq	%rcx, %rax
	xorb	$1, %sil
	movzbl	%sil, %esi
	imulq	$231, %rsi, %rsi
	movq	(%r8,%rsi), %rsi
	movl	(%rsi), %esi
	andl	$1023, %esi                     # imm = 0x3FF
	leaq	(%rsi,%rsi,2), %rsi
	movq	POKEMONDEX@GOTPCREL(%rip), %rdi
	movzwl	22(%rdi,%rsi,8), %esi
	movl	%esi, %ebx
	andl	$31, %ebx
	imulq	$84, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rbx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	shrq	$3, %rsi
	andl	$124, %esi
	mulss	(%rsi,%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	68(%r8,%r14), %xmm0
	movsd	%xmm0, 68(%r8,%r14)
	movl	(%r10), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movzwl	22(%rdi,%rax,8), %esi
	movl	%esi, %eax
	andl	$31, %eax
	shrb	$6, %dl
	orb	%cl, %dl
	movzbl	%dl, %ecx
	cmpw	%cx, %ax
	je	.LBB32_5
# %bb.4:
	shrl	$5, %esi
	andl	$31, %esi
	cmpw	%cx, %si
	jne	.LBB32_7
.LBB32_5:
	leaq	(%r8,%r14), %rax
	addq	$68, %rax
	mulsd	.LCPI32_0(%rip), %xmm0
	movsd	%xmm0, (%rax)
.LBB32_7:
	andb	$31, %r9b
	movzbl	%r9b, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	.LCPI32_1(%rip), %xmm1
	addsd	.LCPI32_2(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 68(%r8,%r14)
.LBB32_8:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	TypeChange, .Lfunc_end32-TypeChange
	.cfi_endproc
                                        # -- End function
	.globl	TypeImmunity                    # -- Begin function TypeImmunity
	.p2align	4, 0x90
	.type	TypeImmunity,@function
TypeImmunity:                           # @TypeImmunity
	.cfi_startproc
# %bb.0:
	cmpb	$-4, %dil
	jne	.LBB33_8
# %bb.1:
	movzbl	%sil, %r9d
	xorb	$1, %sil
	movzbl	%sil, %eax
	imulq	$231, %rax, %rdi
	movq	Parties@GOTPCREL(%rip), %r10
	movzwl	228(%r10,%rdi), %ecx
	andl	$31, %ecx
	imulq	$231, %r9, %rax
	movq	(%r10,%rax), %r11
	movzbl	9(%r11), %eax
	leaq	(%rax,%rax,8), %rsi
	movq	AbilityList@GOTPCREL(%rip), %r8
	movzbl	16(%r8,%rsi,2), %eax
	movl	%eax, %edx
	shrl	$3, %edx
	cmpw	%dx, %cx
	jne	.LBB33_8
# %bb.2:
	movq	48(%r10,%rdi), %rcx
	movzbl	(%rcx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rcx
	testb	$3, 19(%rcx,%rdx)
	je	.LBB33_8
# %bb.3:
	testb	$4, 31(%rcx,%rdx)
	je	.LBB33_8
# %bb.4:
	movq	$0, 68(%r10,%rdi)
	andb	$7, %al
	cmpb	$2, %al
	je	.LBB33_10
# %bb.5:
	cmpb	$1, %al
	jne	.LBB33_8
# %bb.6:
	movl	4(%r11), %eax
	movl	40(%r11), %edx
	movzbl	17(%r8,%rsi,2), %esi
	leal	(%rsi,%rsi,4), %ecx
	leal	(%rsi,%rcx,8), %ecx
	shrl	$12, %ecx
	imull	%edx, %ecx
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB33_9
# %bb.7:
	movl	%edx, 4(%r11)
.LBB33_8:
	retq
.LBB33_10:
	movzbl	17(%r8,%rsi,2), %ecx
	movl	%ecx, %eax
	andb	$15, %al
	movzbl	%al, %edx
	negb	%al
	testb	$8, %cl
	movzbl	%al, %esi
	cmovel	%edx, %esi
	movl	%ecx, %eax
	shrb	$5, %al
	shrl	$4, %ecx
	andl	$1, %ecx
	xorl	%r9d, %ecx
	imulq	$231, %rcx, %rdx
	movq	(%r10,%rdx), %rdx
	movsbl	%sil, %esi
	movzbl	%al, %edi
                                        # kill: def $ecx killed $ecx killed $rcx
	jmp	Boostandprint@PLT               # TAILCALL
.LBB33_9:
	imull	%esi, %edx
	imulq	$1374389535, %rdx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	addl	%eax, %ecx
	movl	%ecx, 4(%r11)
	movq	%r9, %rdx
	shlq	$4, %rdx
	subq	%r9, %rdx
	subq	%r9, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movl	(%r11), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end33:
	.size	TypeImmunity, .Lfunc_end33-TypeImmunity
	.cfi_endproc
                                        # -- End function
	.globl	NoItemf                         # -- Begin function NoItemf
	.p2align	4, 0x90
	.type	NoItemf,@function
NoItemf:                                # @NoItemf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end34:
	.size	NoItemf, .Lfunc_end34-NoItemf
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
	jne	.LBB35_3
# %bb.1:
	movzbl	%sil, %eax
	imulq	$231, %rax, %rcx
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	(%rbx,%rcx), %rax
	testb	$1, 74(%rax)
	je	.LBB35_3
# %bb.2:
	movl	4(%rax), %edx
	movl	40(%rax), %esi
	cmpl	%esi, %edx
	jae	.LBB35_3
# %bb.4:
	addq	%rcx, %rbx
	shrl	$4, %esi
	addl	%edx, %esi
	movl	%esi, 4(%rax)
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %r14
	leaq	(%r14,%rax,8), %rdx
	leaq	.L.str.12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movl	40(%rax), %r8d
	leaq	.L.str.13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.LBB35_3:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end35:
	.size	Leftoversf, .Lfunc_end35-Leftoversf
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
	je	.LBB36_1
.LBB36_7:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB36_1:
	.cfi_def_cfa_offset 16
	movzbl	%sil, %eax
	imulq	$231, %rax, %rbx
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rbx), %rax
	testb	$1, 74(%rax)
	je	.LBB36_7
# %bb.2:
	movl	4(%rax), %edx
	cmpl	40(%rax), %edx
	jne	.LBB36_7
# %bb.3:
	xorb	$1, %sil
	movzbl	%sil, %esi
	imulq	$231, %rsi, %rsi
	cmpl	%edx, 56(%rcx,%rsi)
	jb	.LBB36_7
# %bb.4:
	testb	$1, 84(%rcx,%rbx)
	je	.LBB36_6
# %bb.5:
	movq	48(%rcx,%rsi), %rdi
	movzbl	(%rdi), %r8d
	shlq	$5, %r8
	movq	MoveList@GOTPCREL(%rip), %rdi
	testb	$2, 31(%rdi,%r8)
	jne	.LBB36_7
.LBB36_6:
	addq	%rcx, %rbx
	addq	%rsi, %rcx
	addq	$56, %rcx
	addl	$-1, %edx
	movl	%edx, (%rcx)
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.14(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
	andb	$-2, 74(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end36:
	.size	Focus_Sashf, .Lfunc_end36-Focus_Sashf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function displaymember
.LCPI37_0:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI37_1:
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
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movl	%edi, %ebx
	leal	1(%rbx), %edx
	leaq	.L.str.15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	%ebp, %eax
	imulq	$231, %rax, %rbp
	addq	Parties@GOTPCREL(%rip), %rbp
	movl	%ebx, %ebx
	movq	(%rbp,%rbx,8), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	4(%rax), %edx
	movl	40(%rax), %ecx
	leaq	.L.str.17(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	44(%rax), %edx
	leaq	.L.str.18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	48(%rax), %edx
	leaq	.L.str.19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	52(%rax), %edx
	leaq	.L.str.20(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	56(%rax), %edx
	leaq	.L.str.21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	60(%rax), %edx
	leaq	.L.str.22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzwl	10(%rax), %eax
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	%rax, %rcx
	movq	NATURE_LIST@GOTPCREL(%rip), %rax
	leaq	(%rax,%rcx), %rdx
	addq	$20, %rdx
	leaq	.L.str.23(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	16(%rax), %esi
	shlq	$5, %rsi
	movq	MoveList@GOTPCREL(%rip), %r14
	leaq	(%r14,%rsi), %rdx
	movzbl	17(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	17(%r14,%rsi), %esi
	shrl	$7, %esi
	andl	$15, %esi
	leal	(%rsi,%rsi,4), %esi
	cvtsi2ss	%esi, %xmm0
	shrb	$6, %al
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI37_0(%rip), %xmm1
	addsd	.LCPI37_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.24(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	20(%rax), %ecx
	shlq	$5, %rcx
	leaq	(%r14,%rcx), %rdx
	movl	17(%r14,%rcx), %ecx
	shrl	$7, %ecx
	andl	$15, %ecx
	leal	(%rcx,%rcx,4), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	21(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI37_0(%rip), %xmm1
	addsd	.LCPI37_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.25(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	24(%rax), %ecx
	shlq	$5, %rcx
	leaq	(%r14,%rcx), %rdx
	movl	17(%r14,%rcx), %ecx
	shrl	$7, %ecx
	andl	$15, %ecx
	leal	(%rcx,%rcx,4), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	25(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI37_0(%rip), %xmm1
	addsd	.LCPI37_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.26(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	28(%rax), %ecx
	shlq	$5, %rcx
	leaq	(%r14,%rcx), %rdx
	movl	17(%r14,%rcx), %ecx
	shrl	$7, %ecx
	andl	$15, %ecx
	leal	(%rcx,%rcx,4), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	29(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI37_0(%rip), %xmm1
	addsd	.LCPI37_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.27(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	8(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	addq	ItemList@GOTPCREL(%rip), %rdx
	movzbl	74(%rax), %eax
	andl	$1, %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rax,%rcx,2), %rcx
	addq	Itemtext@GOTPCREL(%rip), %rcx
	leaq	.L.str.28(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	9(%rax), %eax
	leaq	(%rax,%rax,8), %rdx
	addq	%rdx, %rdx
	addq	AbilityList@GOTPCREL(%rip), %rdx
	leaq	.L.str.29(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	65(%rax), %eax
	leaq	(%rax,%rax,2), %rdx
	shlq	$2, %rdx
	addq	Statusnames@GOTPCREL(%rip), %rdx
	leaq	.L.str.30(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end37:
	.size	displaymember, .Lfunc_end37-displaymember
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %r14d
	movl	%edi, %eax
	imulq	$231, %rax, %rbx
	movq	Parties@GOTPCREL(%rip), %r12
	movq	(%r12,%rbx), %rax
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	movq	POKEMONDEX@GOTPCREL(%rip), %rbp
	leaq	(,%rdx,8), %rdx
	addq	%rbp, %rdx
	movl	40(%rax), %r8d
	leaq	.L.str.31(%rip), %rsi
	xorl	%r15d, %r15d
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r12,%rbx), %rax
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(,%rdx,8), %rdx
	addq	%rbp, %rdx
	movl	40(%rax), %r8d
	leaq	.L.str.32(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r12,%rbx), %rax
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(,%rdx,8), %rdx
	addq	%rbp, %rdx
	movl	40(%rax), %r8d
	leaq	.L.str.33(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r12,%rbx), %rax
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(,%rdx,8), %rdx
	addq	%rbp, %rdx
	movl	40(%rax), %r8d
	leaq	.L.str.34(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r12,%rbx), %rax
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(,%rdx,8), %rdx
	addq	%rbp, %rdx
	movl	40(%rax), %r8d
	leaq	.L.str.35(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r12,%rbx), %rax
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(,%rdx,8), %rdx
	addq	%rbp, %rdx
	movl	40(%rax), %r8d
	leaq	.L.str.36(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.37(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.38(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movl	$12624, %eax                    # imm = 0x3150
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB38_10
# %bb.1:
	movl	$12880, %eax                    # imm = 0x3250
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	movl	$1, %r15d
	je	.LBB38_10
# %bb.2:
	movl	$13136, %eax                    # imm = 0x3350
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB38_3
# %bb.4:
	movl	$13392, %eax                    # imm = 0x3450
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB38_5
# %bb.6:
	movl	$13648, %eax                    # imm = 0x3550
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB38_7
# %bb.8:
	movl	$13904, %eax                    # imm = 0x3650
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB38_9
# %bb.11:
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
.LBB38_3:
	.cfi_def_cfa_offset 48
	movl	$2, %r15d
	jmp	.LBB38_10
.LBB38_5:
	movl	$3, %r15d
	jmp	.LBB38_10
.LBB38_7:
	movl	$4, %r15d
	jmp	.LBB38_10
.LBB38_9:
	movl	$5, %r15d
.LBB38_10:
	movzbl	%r14b, %esi
	movl	%r15d, %edi
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
	jmp	displaymember@PLT               # TAILCALL
.Lfunc_end38:
	.size	displayparty, .Lfunc_end38-displayparty
	.cfi_endproc
                                        # -- End function
	.globl	CheckIfAllDead                  # -- Begin function CheckIfAllDead
	.p2align	4, 0x90
	.type	CheckIfAllDead,@function
CheckIfAllDead:                         # @CheckIfAllDead
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
	movl	%edi, %eax
	imulq	$231, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %r15
	movq	(%r15,%rax), %rcx
	movl	$1, %ebx
	cmpl	$0, 4(%rcx)
	jg	.LBB39_8
# %bb.1:
	movq	8(%r15,%rax), %rcx
	cmpl	$0, 4(%rcx)
	jg	.LBB39_8
# %bb.2:
	movq	16(%r15,%rax), %rcx
	cmpl	$0, 4(%rcx)
	jg	.LBB39_8
# %bb.3:
	movq	24(%r15,%rax), %rcx
	cmpl	$0, 4(%rcx)
	jg	.LBB39_8
# %bb.4:
	movq	32(%r15,%rax), %rcx
	cmpl	$0, 4(%rcx)
	jg	.LBB39_8
# %bb.5:
	movq	40(%r15,%rax), %rax
	cmpl	$0, 4(%rax)
	jg	.LBB39_8
# %bb.6:
	leaq	.L.str.45(%rip), %rax
	leaq	.L.str.46(%rip), %rsi
	testb	%dil, %dil
	cmovneq	%rax, %rsi
	xorl	%ebx, %ebx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.47(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.38(%rip), %rsi
	movq	%r14, %rdi
	callq	strcspn@PLT
	movb	$0, (%r14,%rax)
	cmpw	$121, (%r14)
	jne	.LBB39_9
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
	movl	40(%r8), %eax
	movl	%eax, 4(%r8)
	movq	8(%r15), %r9
	movl	40(%r9), %eax
	movl	%eax, 4(%r9)
	movq	16(%r15), %r10
	movl	40(%r10), %eax
	movl	%eax, 4(%r10)
	movq	24(%r15), %r11
	movl	40(%r11), %eax
	movl	%eax, 4(%r11)
	movq	32(%r15), %r14
	movl	40(%r14), %eax
	movl	%eax, 4(%r14)
	movq	40(%r15), %r12
	movl	40(%r12), %ecx
	movl	%ecx, 4(%r12)
	movq	231(%r15), %r13
	movl	40(%r13), %edx
	movl	%edx, 4(%r13)
	movq	239(%r15), %rdx
	movl	40(%rdx), %esi
	movl	%esi, 4(%rdx)
	movq	247(%r15), %rsi
	movl	40(%rsi), %ebp
	movl	%ebp, 4(%rsi)
	movq	255(%r15), %rbp
	movl	40(%rbp), %edi
	movl	%edi, 4(%rbp)
	movq	263(%r15), %rdi
	movl	40(%rdi), %eax
	movl	%eax, 4(%rdi)
	movq	271(%r15), %rax
	movl	40(%rax), %ecx
	movl	%ecx, 4(%rax)
	movb	$0, 65(%r8)
	movb	$0, 65(%r9)
	movb	$0, 65(%r10)
	movb	$0, 65(%r11)
	movb	$0, 65(%r14)
	movb	$0, 65(%r12)
	movb	$0, 65(%r13)
	movb	$0, 65(%rdx)
	movb	$0, 65(%rsi)
	movb	$0, 65(%rbp)
	movb	$0, 65(%rdi)
	movb	$0, 65(%rax)
	orb	$1, 74(%r8)
	orb	$1, 74(%r9)
	orb	$1, 74(%r10)
	orb	$1, 74(%r11)
	orb	$1, 74(%r14)
	orb	$1, 74(%r12)
	movq	231(%r15), %rax
	orb	$1, 74(%rax)
	movq	239(%r15), %rax
	orb	$1, 74(%rax)
	movq	247(%r15), %rax
	orb	$1, 74(%rax)
	movq	255(%r15), %rax
	orb	$1, 74(%rax)
	movq	263(%r15), %rax
	orb	$1, 74(%rax)
.LBB39_8:
	movl	%ebx, %eax
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
.LBB39_9:
	.cfi_def_cfa_offset 64
	xorl	%edi, %edi
	callq	exit@PLT
.Lfunc_end39:
	.size	CheckIfAllDead, .Lfunc_end39-CheckIfAllDead
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function SwitchIn
.LCPI40_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI40_1:
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
.LCPI40_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI40_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI40_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI40_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI40_6:
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
	callq	CheckIfAllDead@PLT
	testl	%eax, %eax
	je	.LBB40_62
# %bb.1:
	movabsq	$8367802884018501459, %rbp      # imm = 0x7420686374697753
	movzbl	%bl, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	imulq	$231, %rax, %rcx
	movq	Parties@GOTPCREL(%rip), %rax
	movq	%rcx, (%rsp)                    # 8-byte Spill
	leaq	(%rax,%rcx), %r12
	addq	$8, %r12
	movb	$1, %al
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	leaq	.L.str.49(%rip), %rbx
	movq	x@GOTPCREL(%rip), %r13
	.p2align	4, 0x90
.LBB40_2:                               # =>This Inner Loop Header: Depth=1
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.50(%rip), %rdi
	callq	system@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%r13, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r13, %rdi
	leaq	.L.str.38(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r13,%rax)
	leaq	.L.str.51(%rip), %rdi
	callq	system@PLT
	movq	(%r13), %rax
	xorq	%rbp, %rax
	movq	5(%r13), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB40_6
# %bb.3:                                #   in Loop: Header=BB40_2 Depth=1
	movq	(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %r14
	shlq	$3, %r14
	addq	POKEMONDEX@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movq	%rbp, (%rax)
	movl	$2125684, 7(%rax)               # imm = 0x206F74
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	strcat@PLT
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB40_6
# %bb.4:                                #   in Loop: Header=BB40_2 Depth=1
	movq	(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB40_6
# %bb.5:                                #   in Loop: Header=BB40_2 Depth=1
	movl	(%r13), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%r13), %ecx
	orw	%ax, %cx
	je	.LBB40_6
# %bb.14:                               #   in Loop: Header=BB40_2 Depth=1
	movq	(%r13), %rax
	movq	%rbp, %r14
	xorq	%rbp, %rax
	movq	5(%r13), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB40_18
# %bb.15:                               #   in Loop: Header=BB40_2 Depth=1
	movq	8(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbp
	shlq	$3, %rbp
	addq	POKEMONDEX@GOTPCREL(%rip), %rbp
	movq	%rbp, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rbx, %r15
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movl	$2125684, 7(%rax)               # imm = 0x206F74
	movq	%rax, %rdi
	movq	%rbp, %rsi
	callq	strcat@PLT
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rbx
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB40_18
# %bb.16:                               #   in Loop: Header=BB40_2 Depth=1
	movq	8(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB40_18
# %bb.17:                               #   in Loop: Header=BB40_2 Depth=1
	movl	(%r13), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%r13), %ecx
	orw	%ax, %cx
	je	.LBB40_18
# %bb.24:                               #   in Loop: Header=BB40_2 Depth=1
	movq	(%r13), %rax
	xorq	%r14, %rax
	movq	5(%r13), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB40_28
# %bb.25:                               #   in Loop: Header=BB40_2 Depth=1
	movq	16(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	POKEMONDEX@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movq	%r14, (%rax)
	movl	$2125684, 7(%rax)               # imm = 0x206F74
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rbx
	callq	strcat@PLT
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB40_28
# %bb.26:                               #   in Loop: Header=BB40_2 Depth=1
	movq	16(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB40_28
# %bb.27:                               #   in Loop: Header=BB40_2 Depth=1
	movl	(%r13), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%r13), %ecx
	orw	%ax, %cx
	je	.LBB40_28
# %bb.34:                               #   in Loop: Header=BB40_2 Depth=1
	movq	(%r13), %rax
	xorq	%r14, %rax
	movq	5(%r13), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB40_38
# %bb.35:                               #   in Loop: Header=BB40_2 Depth=1
	movq	24(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	POKEMONDEX@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movq	%r14, (%rax)
	movl	$2125684, 7(%rax)               # imm = 0x206F74
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rbx
	callq	strcat@PLT
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB40_38
# %bb.36:                               #   in Loop: Header=BB40_2 Depth=1
	movq	24(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB40_38
# %bb.37:                               #   in Loop: Header=BB40_2 Depth=1
	movl	(%r13), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%r13), %ecx
	orw	%ax, %cx
	je	.LBB40_38
# %bb.44:                               #   in Loop: Header=BB40_2 Depth=1
	movq	(%r13), %rax
	xorq	%r14, %rax
	movq	5(%r13), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB40_48
# %bb.45:                               #   in Loop: Header=BB40_2 Depth=1
	movq	32(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	POKEMONDEX@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movq	%r14, (%rax)
	movl	$2125684, 7(%rax)               # imm = 0x206F74
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rbx
	callq	strcat@PLT
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB40_48
# %bb.46:                               #   in Loop: Header=BB40_2 Depth=1
	movq	32(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	POKEMONDEX@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB40_48
# %bb.47:                               #   in Loop: Header=BB40_2 Depth=1
	movl	(%r13), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%r13), %ecx
	orw	%ax, %cx
	je	.LBB40_48
# %bb.56:                               #   in Loop: Header=BB40_2 Depth=1
	movq	(%r13), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%r13), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB40_59
# %bb.57:                               #   in Loop: Header=BB40_2 Depth=1
	movl	(%r13), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%r13), %ecx
	orl	%eax, %ecx
	je	.LBB40_59
# %bb.58:                               #   in Loop: Header=BB40_2 Depth=1
	movl	(%r13), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%r13), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB40_59
# %bb.60:                               #   in Loop: Header=BB40_2 Depth=1
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	cmpb	$0, 12(%rsp)                    # 1-byte Folded Reload
	movq	%r14, %rbp
	je	.LBB40_2
# %bb.61:                               #   in Loop: Header=BB40_2 Depth=1
	movl	$0, 12(%rsp)                    # 4-byte Folded Spill
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	jmp	.LBB40_13
	.p2align	4, 0x90
.LBB40_6:                               #   in Loop: Header=BB40_2 Depth=1
	movq	(%r12), %rax
	cmpl	$0, 4(%rax)
	jg	.LBB40_7
# %bb.12:                               #   in Loop: Header=BB40_2 Depth=1
	movl	$1, %edi
	leaq	.L.str.55(%rip), %rsi
.LBB40_13:                              #   in Loop: Header=BB40_2 Depth=1
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB40_2
.LBB40_18:                              #   in Loop: Header=BB40_2 Depth=1
	movq	8(%r12), %rax
	cmpl	$0, 4(%rax)
	jg	.LBB40_19
.LBB40_55:                              #   in Loop: Header=BB40_2 Depth=1
	movl	$1, %edi
	leaq	.L.str.55(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	%r14, %rbp
	jmp	.LBB40_2
.LBB40_28:                              #   in Loop: Header=BB40_2 Depth=1
	movq	16(%r12), %rax
	cmpl	$0, 4(%rax)
	jle	.LBB40_55
	jmp	.LBB40_29
.LBB40_38:                              #   in Loop: Header=BB40_2 Depth=1
	movq	24(%r12), %rax
	cmpl	$0, 4(%rax)
	jle	.LBB40_55
	jmp	.LBB40_39
.LBB40_48:                              #   in Loop: Header=BB40_2 Depth=1
	movq	32(%r12), %rax
	cmpl	$0, 4(%rax)
	jle	.LBB40_55
	jmp	.LBB40_49
.LBB40_59:                              #   in Loop: Header=BB40_2 Depth=1
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	callq	displayparty@PLT
	movq	%r14, %rbp
	jmp	.LBB40_2
.LBB40_7:
	movq	Parties@GOTPCREL(%rip), %rdx
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rdx,%rcx), %rax
	movq	$0, 66(%rax)
	movapd	.LCPI40_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	84(%rdx), %xmm7                 # xmm7 = mem[0],xmm7[1]
	leaq	(%rdx,%rcx), %rax
	movdqa	.LCPI40_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI40_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI40_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI40_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI40_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI40_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB40_8:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB40_8
# %bb.9:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 84(%rdx)
	movlpd	92(%rdx), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI40_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	.p2align	4, 0x90
.LBB40_10:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB40_10
# %bb.11:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 92(%rdx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 100(%rdx)
	movdqu	%xmm0, 116(%rdx)
	movdqu	%xmm0, 132(%rdx)
	movdqu	%xmm0, 148(%rdx)
	movdqu	%xmm0, 164(%rdx)
	movdqu	%xmm0, 180(%rdx)
	movdqu	%xmm0, 196(%rdx)
	movdqu	%xmm0, 212(%rdx)
	movq	(%rax), %rdx
	movq	(%r12), %rcx
	movq	%rcx, (%rax)
	movq	%rdx, (%r12)
.LBB40_54:
	movl	(%rcx), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.54(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.50(%rip), %rdi
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
	jmp	system@PLT                      # TAILCALL
.LBB40_62:
	.cfi_def_cfa_offset 80
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
.LBB40_19:
	.cfi_def_cfa_offset 80
	movq	Parties@GOTPCREL(%rip), %rdx
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	(%rdx,%rsi), %rax
	movq	$0, 66(%rax)
	movapd	.LCPI40_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	84(%rdx), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI40_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
	movdqa	.LCPI40_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI40_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI40_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI40_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI40_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB40_20:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB40_20
# %bb.21:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 84(%rdx)
	movlpd	92(%rdx), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI40_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
	.p2align	4, 0x90
.LBB40_22:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB40_22
# %bb.23:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 92(%rdx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 100(%rdx)
	movdqu	%xmm0, 116(%rdx)
	movdqu	%xmm0, 132(%rdx)
	movdqu	%xmm0, 148(%rdx)
	movdqu	%xmm0, 164(%rdx)
	movdqu	%xmm0, 180(%rdx)
	movdqu	%xmm0, 196(%rdx)
	movdqu	%xmm0, 212(%rdx)
	movq	(%rdx,%rsi), %rax
	movq	8(%r12), %rcx
	movq	%rcx, (%rdx,%rsi)
	movq	%rax, 8(%r12)
	jmp	.LBB40_54
.LBB40_29:
	movq	Parties@GOTPCREL(%rip), %rdx
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	(%rdx,%rsi), %rax
	movq	$0, 66(%rax)
	movapd	.LCPI40_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	84(%rdx), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI40_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
	movdqa	.LCPI40_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI40_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI40_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI40_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI40_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB40_30:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB40_30
# %bb.31:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 84(%rdx)
	movlpd	92(%rdx), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI40_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
	.p2align	4, 0x90
.LBB40_32:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB40_32
# %bb.33:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 92(%rdx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 100(%rdx)
	movdqu	%xmm0, 116(%rdx)
	movdqu	%xmm0, 132(%rdx)
	movdqu	%xmm0, 148(%rdx)
	movdqu	%xmm0, 164(%rdx)
	movdqu	%xmm0, 180(%rdx)
	movdqu	%xmm0, 196(%rdx)
	movdqu	%xmm0, 212(%rdx)
	movq	(%rdx,%rsi), %rax
	movq	16(%r12), %rcx
	movq	%rcx, (%rdx,%rsi)
	movq	%rax, 16(%r12)
	jmp	.LBB40_54
.LBB40_39:
	movq	Parties@GOTPCREL(%rip), %rdx
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	(%rdx,%rsi), %rax
	movq	$0, 66(%rax)
	movapd	.LCPI40_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	84(%rdx), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI40_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
	movdqa	.LCPI40_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI40_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI40_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI40_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI40_6(%rip), %xmm4          # xmm4 = [8,8]
.LBB40_40:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB40_40
# %bb.41:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 84(%rdx)
	movlpd	92(%rdx), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI40_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
.LBB40_42:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB40_42
# %bb.43:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 92(%rdx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 100(%rdx)
	movdqu	%xmm0, 116(%rdx)
	movdqu	%xmm0, 132(%rdx)
	movdqu	%xmm0, 148(%rdx)
	movdqu	%xmm0, 164(%rdx)
	movdqu	%xmm0, 180(%rdx)
	movdqu	%xmm0, 196(%rdx)
	movdqu	%xmm0, 212(%rdx)
	movq	(%rdx,%rsi), %rax
	movq	24(%r12), %rcx
	movq	%rcx, (%rdx,%rsi)
	movq	%rax, 24(%r12)
	jmp	.LBB40_54
.LBB40_49:
	movq	Parties@GOTPCREL(%rip), %rdx
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	(%rdx,%rsi), %rax
	movq	$0, 66(%rax)
	movapd	.LCPI40_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	84(%rdx), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI40_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
	movdqa	.LCPI40_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI40_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI40_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI40_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI40_6(%rip), %xmm4          # xmm4 = [8,8]
.LBB40_50:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB40_50
# %bb.51:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 84(%rdx)
	movlpd	92(%rdx), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI40_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
.LBB40_52:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB40_52
# %bb.53:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 92(%rdx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 100(%rdx)
	movdqu	%xmm0, 116(%rdx)
	movdqu	%xmm0, 132(%rdx)
	movdqu	%xmm0, 148(%rdx)
	movdqu	%xmm0, 164(%rdx)
	movdqu	%xmm0, 180(%rdx)
	movdqu	%xmm0, 196(%rdx)
	movdqu	%xmm0, 212(%rdx)
	movq	(%rdx,%rsi), %rax
	movq	32(%r12), %rcx
	movq	%rcx, (%rdx,%rsi)
	movq	%rax, 32(%r12)
	jmp	.LBB40_54
.Lfunc_end40:
	.size	SwitchIn, .Lfunc_end40-SwitchIn
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
	movl	%edi, %ecx
	imulq	$231, %rcx, %rsi
	movq	Parties@GOTPCREL(%rip), %rdi
	leaq	(%rdi,%rsi), %rax
	leaq	(%rdi,%rsi), %rbx
	addq	$228, %rbx
	movzwl	228(%rdi,%rsi), %edx
	testb	$64, %dl
	jne	.LBB41_1
# %bb.4:
	testl	$16384, %edx                    # imm = 0x4000
	jne	.LBB41_13
# %bb.5:
	movq	%rcx, %rdx
	shlq	$4, %rdx
	subq	%rcx, %rdx
	subq	%rcx, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.68(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movzwl	(%rbx), %eax
	testl	$4096, %eax                     # imm = 0x1000
	jne	.LBB41_6
# %bb.7:
	testl	$512, %eax                      # imm = 0x200
	jne	.LBB41_8
# %bb.9:
	testl	$1024, %eax                     # imm = 0x400
	jne	.LBB41_10
# %bb.11:
	testl	$2048, %eax                     # imm = 0x800
	je	.LBB41_13
# %bb.12:
	leaq	.L.str.72(%rip), %rsi
	jmp	.LBB41_3
.LBB41_1:
	movq	%rcx, %rdx
	shlq	$4, %rdx
	subq	%rcx, %rdx
	subq	%rcx, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movq	48(%rdi,%rsi), %rax
	movzbl	(%rax), %r8d
	shlq	$5, %r8
	addq	MoveList@GOTPCREL(%rip), %r8
	leaq	.L.str.66(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	testb	$32, (%rbx)
	jne	.LBB41_13
# %bb.2:
	leaq	.L.str.67(%rip), %rsi
	jmp	.LBB41_3
.LBB41_13:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB41_6:
	.cfi_def_cfa_offset 16
	leaq	.L.str.69(%rip), %rsi
	jmp	.LBB41_3
.LBB41_8:
	leaq	.L.str.70(%rip), %rsi
	jmp	.LBB41_3
.LBB41_10:
	leaq	.L.str.71(%rip), %rsi
.LBB41_3:
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end41:
	.size	display_move, .Lfunc_end41-display_move
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function move_result
.LCPI42_0:
	.long	0x40000000                      # float 2
.LCPI42_1:
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
	imulq	$231, %rax, %rbx
	movq	Parties@GOTPCREL(%rip), %r14
	movzwl	228(%r14,%rbx), %eax
	andl	$96, %eax
	cmpw	$96, %ax
	jne	.LBB42_18
# %bb.1:
	movq	48(%r14,%rbx), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rcx
	testb	$3, 19(%rcx,%rax)
	je	.LBB42_18
# %bb.2:
	movl	56(%r14,%rbx), %edx
	testl	%edx, %edx
	jle	.LBB42_13
# %bb.3:
	leaq	(%r14,%rbx), %r12
	addq	$228, %r12
	leaq	.L.str.73(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movzwl	(%r12), %eax
	andl	$31, %eax
	movl	%ebp, %ecx
	xorb	$1, %cl
	movzbl	%cl, %r15d
	imulq	$231, %r15, %rcx
	movq	(%r14,%rcx), %rcx
	movl	(%rcx), %ecx
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
	ucomiss	.LCPI42_0(%rip), %xmm0
	jae	.LBB42_4
# %bb.5:
	movss	.LCPI42_1(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB42_10
# %bb.6:
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	.LBB42_7
# %bb.8:
	leaq	.L.str.76(%rip), %rsi
	jmp	.LBB42_9
.LBB42_13:
	movl	%ebp, %eax
	xorb	$1, %al
	movzbl	%al, %r15d
	imulq	$231, %r15, %rcx
	leaq	(%r14,%rcx), %rax
	testb	$1, 84(%r14,%rcx)
	jne	.LBB42_14
# %bb.15:
	testb	%bpl, %bpl
	movl	$28, %ecx
	movl	$42, %edx
	cmovneq	%rcx, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.79(%rip), %rsi
	jmp	.LBB42_16
.LBB42_4:
	leaq	.L.str.74(%rip), %rsi
.LBB42_9:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB42_10:
	testb	$32, 1(%r12)
	je	.LBB42_17
.LBB42_11:
	leaq	(%r14,%rbx), %rax
	addq	$56, %rax
	cmpl	$0, (%rax)
	jle	.LBB42_17
# %bb.12:
	leaq	.L.str.77(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB42_17
.LBB42_14:
	movq	%r15, %rdx
	shlq	$4, %rdx
	subq	%r15, %rdx
	subq	%r15, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.78(%rip), %rsi
.LBB42_16:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB42_17:
	movq	%r15, %rdx
	shlq	$4, %rdx
	subq	%r15, %rdx
	subq	%r15, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	imulq	$231, %r15, %rax
	movq	(%r14,%rax), %rax
	movl	(%rax), %ecx
	movl	4(%rax), %r8d
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movl	40(%rax), %r9d
	leaq	.L.str.7(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB42_18:
	xorb	$1, %bpl
	movzbl	%bpl, %ebx
	imulq	$231, %rbx, %rbp
	movq	(%r14,%rbp), %rax
	cmpl	$0, 4(%rax)
	jg	.LBB42_20
# %bb.19:
	movq	%rbx, %rdx
	shlq	$4, %rdx
	subq	%rbx, %rdx
	subq	%rbx, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.80(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	%ebx, %edi
	callq	SwitchIn@PLT
	orb	$-128, 228(%r14,%rbp)
.LBB42_20:
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
.LBB42_7:
	.cfi_def_cfa_offset 48
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.75(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	testb	$32, 1(%r12)
	jne	.LBB42_11
	jmp	.LBB42_17
.Lfunc_end42:
	.size	move_result, .Lfunc_end42-move_result
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
	js	.LBB43_1
# %bb.2:
	movl	%eax, (%rdi)
	retq
.LBB43_1:
	movl	%ecx, (%rsi)
	movl	(%rdi), %eax
	subl	%ecx, %eax
	movl	%eax, (%rdi)
	retq
.Lfunc_end43:
	.size	UDBOG, .Lfunc_end43-UDBOG
	.cfi_endproc
                                        # -- End function
	.globl	UDBOG2                          # -- Begin function UDBOG2
	.p2align	4, 0x90
	.type	UDBOG2,@function
UDBOG2:                                 # @UDBOG2
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edx, %ebx
	movl	(%rdi), %eax
	xorl	%ecx, %ecx
	subl	%esi, %eax
	cmovsl	%ecx, %eax
	movl	%eax, (%rdi)
	leaq	.L.str.81(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	%ebx, %eax
	movq	%rax, %rdx
	shlq	$4, %rdx
	subq	%rax, %rdx
	subq	%rax, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	imulq	$231, %rax, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	movl	(%rax), %ecx
	movl	4(%rax), %r8d
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movl	40(%rax), %r9d
	leaq	.L.str.82(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end44:
	.size	UDBOG2, .Lfunc_end44-UDBOG2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function ExecuteMove
.LCPI45_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI45_1:
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
.LCPI45_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI45_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI45_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI45_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI45_6:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI45_7:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI45_8:
	.quad	0x3ff0000000000000              # double 1
.LCPI45_9:
	.quad	0x4059000000000000              # double 100
.LCPI45_10:
	.quad	0x41dfffffffc00000              # double 2147483647
.LCPI45_11:
	.quad	0x4044000000000000              # double 40
.LCPI45_12:
	.quad	0x4049000000000000              # double 50
.LCPI45_13:
	.quad	0x4000000000000000              # double 2
.LCPI45_14:
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %r12d
	imulq	$231, %r12, %r13
	movq	Parties@GOTPCREL(%rip), %r15
	movzwl	228(%r15,%r13), %eax
	testb	%al, %al
	js	.LBB45_4
# %bb.1:
	leaq	(%r15,%r13), %rbx
	testw	%ax, %ax
	js	.LBB45_5
# %bb.2:
	movl	%edi, %ebp
	callq	rand@PLT
	movq	48(%r15,%r13), %rcx
	movzbl	(%rcx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %r14
	movl	17(%r14,%rdx), %edx
	andl	$127, %edx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	movq	(%rbx), %rsi
	movsbl	71(%rsi), %esi
	cvtsi2sd	%esi, %xmm1
	movl	%ebp, %ebx
	xorb	$1, %bl
	movzbl	%bl, %esi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	imulq	$231, %rsi, %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	(%r15,%rsi), %rsi
	movsbl	72(%rsi), %esi
	testl	%esi, %esi
	js	.LBB45_12
# %bb.3:
	cvtsi2sd	%esi, %xmm0
	mulsd	.LCPI45_7(%rip), %xmm0
	addsd	.LCPI45_8(%rip), %xmm0
	jmp	.LBB45_13
.LBB45_4:
	addq	$72, %rsp
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
.LBB45_5:
	.cfi_def_cfa_offset 128
	movq	(%rbx), %rax
	cmpb	$5, 65(%rax)
	jne	.LBB45_7
# %bb.6:
	movb	$0, 64(%rax)
.LBB45_7:
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.87(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
	movq	$0, 66(%rax)
	movapd	.LCPI45_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	84(%r15), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI45_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
	movdqa	.LCPI45_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI45_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI45_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI45_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI45_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB45_8:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB45_8
# %bb.9:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 84(%r15)
	movlpd	92(%r15), %xmm5                 # xmm5 = mem[0],xmm5[1]
	movdqa	.LCPI45_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %eax
	.p2align	4, 0x90
.LBB45_10:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB45_10
# %bb.11:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 92(%r15)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 100(%r15)
	movdqu	%xmm0, 116(%r15)
	movdqu	%xmm0, 132(%r15)
	movdqu	%xmm0, 148(%r15)
	movdqu	%xmm0, 164(%r15)
	movdqu	%xmm0, 180(%r15)
	movdqu	%xmm0, 196(%r15)
	movdqu	%xmm0, 212(%r15)
	movzbl	230(%r15,%r13), %eax
	movq	(%r15,%r13), %rcx
	movq	(%rbx,%rax,8), %rdx
	movq	%rdx, (%r15,%r13)
	movq	%rcx, (%rbx,%rax,8)
	movq	(%rbx), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.54(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB45_115
.LBB45_12:
	negl	%esi
	cvtsi2sd	%esi, %xmm2
	mulsd	.LCPI45_7(%rip), %xmm2
	movsd	.LCPI45_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm0
.LBB45_13:
	movq	8(%rsp), %rbx                   # 8-byte Reload
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	leaq	(%r15,%r13), %rax
	addq	$228, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	cvttsd2si	%xmm1, %eax
	testb	%al, %al
	movl	%ebp, 24(%rsp)                  # 4-byte Spill
	movsbl	%al, %eax
	js	.LBB45_15
# %bb.14:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI45_7(%rip), %xmm1
	addsd	.LCPI45_8(%rip), %xmm1
	jmp	.LBB45_16
.LBB45_15:
	negl	%eax
	cvtsi2sd	%eax, %xmm3
	mulsd	.LCPI45_7(%rip), %xmm3
	movsd	.LCPI45_8(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm3
	divsd	%xmm3, %xmm1
.LBB45_16:
	mulsd	%xmm2, %xmm1
	divsd	.LCPI45_9(%rip), %xmm1
	mulsd	.LCPI45_10(%rip), %xmm1
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	addq	%r15, %r13
	addq	$48, %r13
	xorl	%edx, %edx
	ucomisd	%xmm0, %xmm1
	seta	%dl
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdi), %eax
	shll	$5, %edx
	movl	%eax, %esi
	andl	$-33, %esi
	orl	%edx, %esi
	movw	%si, (%rdi)
	movzbl	(%rcx), %ecx
	shlq	$5, %rcx
	movl	17(%r14,%rcx), %ecx
	andl	$127, %ecx
	cmpl	$101, %ecx
	jb	.LBB45_18
# %bb.17:
	orl	$32, %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movw	%ax, (%rcx)
.LBB45_18:
	callq	rand@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	15(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	movq	(%rbx), %rcx
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	movq	(%r13), %rdx
	movzbl	(%rdx), %esi
	shlq	$5, %rsi
	movb	31(%r14,%rsi), %bl
	shrb	$4, %bl
	andb	$1, %bl
	addb	73(%rcx), %bl
	testb	%bl, %bl
	js	.LBB45_25
# %bb.19:
	je	.LBB45_26
# %bb.20:
	movsbl	%bl, %ebx
	testl	%ebx, %ebx
	movl	$1, %esi
	cmovlel	%esi, %ebx
	leal	-1(%rbx), %ebp
	movl	%ebx, %edi
	andl	$7, %edi
	cmpl	$7, %ebp
	jb	.LBB45_23
# %bb.21:
	andl	$-8, %ebx
	negl	%ebx
	movl	$1, %esi
	.p2align	4, 0x90
.LBB45_22:                              # =>This Inner Loop Header: Depth=1
	shll	$8, %esi
	addl	$8, %ebx
	jne	.LBB45_22
.LBB45_23:
	testl	%edi, %edi
	movq	16(%rsp), %r13                  # 8-byte Reload
	je	.LBB45_28
	.p2align	4, 0x90
.LBB45_24:                              # =>This Inner Loop Header: Depth=1
	addl	%esi, %esi
	addl	$-1, %edi
	jne	.LBB45_24
	jmp	.LBB45_28
.LBB45_25:
	xorl	%esi, %esi
	jmp	.LBB45_27
.LBB45_26:
	movl	$1, %esi
.LBB45_27:
	movq	16(%rsp), %r13                  # 8-byte Reload
.LBB45_28:
	xorl	%edi, %edi
	cmpl	%esi, %eax
	setb	%dil
	movzwl	(%r13), %eax
	shll	$13, %edi
	andl	$-8193, %eax                    # imm = 0xDFFF
	orl	%edi, %eax
	movw	%ax, (%r13)
	movb	65(%rcx), %bl
	addb	$-1, %bl
	cmpb	$5, %bl
	ja	.LBB45_51
# %bb.29:
	movzbl	%bl, %esi
	leaq	.LJTI45_0(%rip), %rdi
	movslq	(%rdi,%rsi,4), %rsi
	addq	%rdi, %rsi
	jmpq	*%rsi
.LBB45_30:
	movzbl	(%rdx), %eax
	shlq	$5, %rax
	movl	$196608, %ecx                   # imm = 0x30000
	andl	17(%r14,%rax), %ecx
	cmpl	$65536, %ecx                    # imm = 0x10000
	jne	.LBB45_51
# %bb.31:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movsd	68(%r15,%rax), %xmm0            # xmm0 = mem[0],zero
	mulsd	.LCPI45_7(%rip), %xmm0
	movsd	%xmm0, 68(%r15,%rax)
	jmp	.LBB45_51
.LBB45_32:
	callq	rand@PLT
	xorl	%edx, %edx
	testb	$3, %al
	sete	%dl
	movzwl	(%r13), %ecx
	shll	$9, %edx
	andl	$-513, %ecx                     # imm = 0xFDFF
	orl	%edx, %ecx
	movw	%cx, (%r13)
	testb	$3, %al
	jne	.LBB45_51
	jmp	.LBB45_39
.LBB45_33:
	movb	64(%rcx), %cl
	testb	%cl, %cl
	je	.LBB45_40
# %bb.34:
	cmpb	$4, %cl
	jb	.LBB45_42
# %bb.35:
	andl	$64511, %eax                    # imm = 0xFBFF
	movq	8(%rsp), %rcx                   # 8-byte Reload
	jmp	.LBB45_47
.LBB45_36:
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	jb	.LBB45_38
	.p2align	4, 0x90
.LBB45_37:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483645, %eax               # imm = 0x7FFFFFFD
	ja	.LBB45_37
.LBB45_38:
	movl	%eax, %ecx
	movl	$3435973837, %edx               # imm = 0xCCCCCCCD
	imulq	%rcx, %rdx
	shrq	$34, %rdx
	leal	(%rdx,%rdx,4), %edx
	xorl	%esi, %esi
	cmpl	%edx, %eax
	setne	%sil
	movzwl	(%r13), %ecx
	shll	$11, %esi
	andl	$-2049, %ecx                    # imm = 0xF7FF
	orl	%esi, %ecx
	movw	%cx, (%r13)
	cmpl	%edx, %eax
	je	.LBB45_41
.LBB45_39:
	andl	$65471, %ecx                    # imm = 0xFFBF
	movw	%cx, (%r13)
	jmp	.LBB45_51
.LBB45_40:
	andl	$-1089, %eax                    # imm = 0xFBBF
	orl	$1024, %eax                     # imm = 0x400
	movq	8(%rsp), %rcx                   # 8-byte Reload
	jmp	.LBB45_47
.LBB45_41:
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	movb	$0, 65(%rax)
	movq	%r12, %rdx
	shlq	$4, %rdx
	subq	%r12, %rdx
	subq	%r12, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.84(%rip), %rsi
	jmp	.LBB45_49
.LBB45_42:
	callq	rand@PLT
	cmpl	$2147483647, %eax               # imm = 0x7FFFFFFF
	jb	.LBB45_44
	.p2align	4, 0x90
.LBB45_43:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	ja	.LBB45_43
.LBB45_44:
	imull	$-1431655765, %eax, %ecx        # imm = 0xAAAAAAAB
	movzwl	(%r13), %eax
	cmpl	$1431655765, %ecx               # imm = 0x55555555
	movq	8(%rsp), %rcx                   # 8-byte Reload
	jbe	.LBB45_46
# %bb.45:
	andl	$-1089, %eax                    # imm = 0xFBBF
	orl	$1024, %eax                     # imm = 0x400
	jmp	.LBB45_47
.LBB45_46:
	andl	$64511, %eax                    # imm = 0xFBFF
.LBB45_47:
	movw	%ax, (%r13)
	movq	(%rcx), %rcx
	testl	$1024, %eax                     # imm = 0x400
	jne	.LBB45_50
# %bb.48:
	movw	$0, 64(%rcx)
	movq	%r12, %rdx
	shlq	$4, %rdx
	subq	%r12, %rdx
	subq	%r12, %rdx
	addq	EOPTEXT@GOTPCREL(%rip), %rdx
	movl	(%rcx), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.83(%rip), %rsi
.LBB45_49:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB45_51
.LBB45_50:
	addb	$1, 64(%rcx)
.LBB45_51:
	movzwl	(%r13), %eax
	testl	$4096, %eax                     # imm = 0x1000
	je	.LBB45_53
# %bb.52:
	andl	$65471, %eax                    # imm = 0xFFBF
	movw	%ax, (%r13)
.LBB45_53:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	testb	$8, 84(%r15,%rcx)
	je	.LBB45_66
# %bb.54:
	andl	$64, %eax
	testw	%ax, %ax
	je	.LBB45_66
# %bb.55:
	movq	%r12, %rbx
	shlq	$4, %rbx
	subq	%r12, %rbx
	subq	%r12, %rbx
	addq	EOPTEXT@GOTPCREL(%rip), %rbx
	movq	8(%rsp), %r12                   # 8-byte Reload
	movq	(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.85(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Parties@GOTPCREL(%rip), %rbp
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpb	$0, 103(%rbp,%rax)
	jle	.LBB45_59
# %bb.56:
	leaq	(%rax,%rbp), %r15
	addq	$103, %r15
	callq	rand@PLT
	testb	$1, %al
	je	.LBB45_65
# %bb.57:
	movzwl	(%r13), %eax
	andl	$-16449, %eax                   # imm = 0xBFBF
	orl	$16384, %eax                    # imm = 0x4000
	movw	%ax, (%r13)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %r12
	movl	(%r12), %eax
	movl	44(%r12), %ecx
	shrl	$9, %eax
	andl	$254, %eax
	imull	$205, %eax, %eax
	shrl	$10, %eax
	addb	$2, %al
	movzbl	%al, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	cvtsi2sd	%rcx, %xmm1
	movsbl	66(%r12), %eax
	testl	%eax, %eax
	js	.LBB45_60
# %bb.58:
	cvtsi2sd	%eax, %xmm3
	mulsd	.LCPI45_7(%rip), %xmm3
	addsd	.LCPI45_8(%rip), %xmm3
	jmp	.LBB45_61
.LBB45_59:
	addq	%rbp, %rax
	addq	$84, %rax
	andb	$-9, (%rax)
	movq	(%r12), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	leaq	.L.str.86(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB45_66
.LBB45_60:
	negl	%eax
	cvtsi2sd	%eax, %xmm2
	mulsd	.LCPI45_7(%rip), %xmm2
	movsd	.LCPI45_8(%rip), %xmm3          # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm3
.LBB45_61:
	mulsd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	.LCPI45_11(%rip), %xmm3
	movl	48(%r12), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movsbl	67(%r12), %eax
	testl	%eax, %eax
	js	.LBB45_63
# %bb.62:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI45_7(%rip), %xmm1
	addsd	.LCPI45_8(%rip), %xmm1
	jmp	.LBB45_64
.LBB45_63:
	negl	%eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	mulsd	.LCPI45_7(%rip), %xmm2
	movsd	.LCPI45_8(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm1
.LBB45_64:
	mulsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm3
	divsd	.LCPI45_12(%rip), %xmm3
	addsd	.LCPI45_13(%rip), %xmm3
	movsd	%xmm3, 56(%rsp)                 # 8-byte Spill
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
	mulsd	56(%rsp), %xmm0                 # 8-byte Folded Reload
	divsd	.LCPI45_9(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	4(%r12), %ecx
	xorl	%edx, %edx
	subl	%eax, %ecx
	cmovsl	%edx, %ecx
	movl	%ecx, 4(%r12)
	leaq	.L.str.81(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rbp,%rax), %rax
	movl	(%rax), %ecx
	movl	4(%rax), %r8d
	andl	$1023, %ecx                     # imm = 0x3FF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movl	40(%rax), %r9d
	leaq	.L.str.82(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB45_65:
	addb	$-1, (%r15)
.LBB45_66:
	movq	40(%rsp), %rbp                  # 8-byte Reload
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movzbl	20(%r14,%rax), %eax
	andl	$-8, %eax
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rbx
	movzbl	24(%rsp), %r12d                 # 1-byte Folded Reload
	movl	$3, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	callq	*(%rbx,%rax)
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r14,%rax), %eax
	shrl	$19, %eax
	andl	$248, %eax
	movl	$3, %edi
	movl	%r12d, %esi
	movl	$1, %edx
	callq	*(%rbx,%rax)
	movl	%r12d, %edi
	callq	display_move@PLT
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	(%rdx), %rax
	cmpl	$0, 4(%rax)
	jle	.LBB45_115
# %bb.67:
	movzwl	(%r13), %ecx
	andl	$96, %ecx
	cmpw	$96, %cx
	jne	.LBB45_115
# %bb.68:
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	64(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rcx,%rsi), %r15
	movq	(%rbp), %rcx
	movzbl	(%rcx), %ecx
	shlq	$5, %rcx
	movq	MoveList@GOTPCREL(%rip), %rsi
	movzwl	19(%rsi,%rcx), %ecx
	andl	$3, %ecx
	cmpl	$2, %ecx
	je	.LBB45_74
# %bb.69:
	cmpl	$1, %ecx
	je	.LBB45_72
# %bb.70:
	testl	%ecx, %ecx
	jne	.LBB45_115
# %bb.71:
	movzbl	9(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	movq	%r15, %r13
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	AbilityList@GOTPCREL(%rip), %rbx
	movzbl	15(%rbx,%rax,2), %eax
	movq	ABILITY_FUNC_LIST@GOTPCREL(%rip), %r14
	movl	$2, %edi
	movl	%r12d, %esi
	callq	*(%r14,%rax,8)
	movq	(%r13), %rax
	movzbl	9(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	movzbl	15(%rbx,%rax,2), %eax
	movl	$-4, %edi
	movq	48(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%r14,%rax,8)
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %r13
	movzbl	20(%r13,%rax), %eax
	andl	$-8, %eax
	movl	$1, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rbx
	callq	*(%rbx,%rax)
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r13,%rax), %eax
	shrl	$19, %eax
	andl	$248, %eax
	movl	$1, %edi
	movl	%r12d, %esi
	movl	$1, %edx
	callq	*(%rbx,%rax)
	movq	(%r15), %rax
	movzbl	8(%rax), %eax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %rax
	movq	ItemList@GOTPCREL(%rip), %r15
	movzbl	12(%r15,%rax), %eax
	movq	ITEM_FUNC_LIST@GOTPCREL(%rip), %r14
	movl	$1, %edi
	movl	%r12d, %esi
	callq	*(%r14,%rax,8)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movzbl	8(%rax), %eax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %rax
	movzbl	12(%r15,%rax), %eax
	movl	$-1, %edi
	movq	48(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%r14,%rax,8)
	movq	(%rbp), %rax
	movb	1(%rax), %cl
	leal	-1(%rcx), %edx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 1(%rax)
	movl	%r12d, %edi
	callq	move_result@PLT
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movzbl	20(%r13,%rax), %eax
	andl	$-8, %eax
	movl	$2, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	callq	*(%rbx,%rax)
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r13,%rax), %eax
	shrl	$19, %eax
	andl	$248, %eax
	movl	$2, %edi
	movl	%r12d, %esi
	movl	$1, %edx
	callq	*(%rbx,%rax)
	jmp	.LBB45_115
.LBB45_72:
	movzbl	9(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	movq	%rdx, %rbx
	movq	AbilityList@GOTPCREL(%rip), %r14
	movzbl	15(%r14,%rax,2), %eax
	movq	ABILITY_FUNC_LIST@GOTPCREL(%rip), %r13
	movl	$2, %edi
	movl	%r12d, %esi
	callq	*(%r13,%rax,8)
	movq	(%r15), %rax
	movzbl	9(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	movzbl	15(%r14,%rax,2), %eax
	movl	$-4, %edi
	movq	48(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%r13,%rax,8)
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	(%rbx), %rdx
	movl	(%rdx), %r8d
	movl	44(%rdx), %esi
	movl	%r8d, %eax
	shrl	$9, %eax
	andl	$254, %eax
	imull	$205, %eax, %edi
	shrl	$10, %edi
	addb	$2, %dil
	movzwl	(%r14), %eax
	testl	$8192, %eax                     # imm = 0x2000
	sete	%cl
	movsbl	66(%rdx), %ebx
	testl	%ebx, %ebx
	setns	%dl
	orb	%cl, %dl
	movzbl	%dil, %edi
	testl	%ebx, %ebx
	js	.LBB45_76
# %bb.73:
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LCPI45_7(%rip), %xmm0
	addsd	.LCPI45_8(%rip), %xmm0
	jmp	.LBB45_77
.LBB45_74:
	movzbl	9(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	movq	%rdx, %rbx
	movq	AbilityList@GOTPCREL(%rip), %r14
	movzbl	15(%r14,%rax,2), %eax
	movq	ABILITY_FUNC_LIST@GOTPCREL(%rip), %r13
	movl	$2, %edi
	movl	%r12d, %esi
	callq	*(%r13,%rax,8)
	movq	(%r15), %rax
	movzbl	9(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	movzbl	15(%r14,%rax,2), %eax
	movl	$-4, %edi
	movq	48(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%r13,%rax,8)
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	(%rbx), %rdx
	movl	(%rdx), %r8d
	movl	52(%rdx), %esi
	movl	%r8d, %eax
	shrl	$9, %eax
	andl	$254, %eax
	imull	$205, %eax, %edi
	shrl	$10, %edi
	addb	$2, %dil
	movzwl	(%r13), %eax
	testl	$8192, %eax                     # imm = 0x2000
	sete	%cl
	movsbl	68(%rdx), %ebx
	testl	%ebx, %ebx
	setns	%dl
	orb	%cl, %dl
	movzbl	%dil, %edi
	testl	%ebx, %ebx
	js	.LBB45_93
# %bb.75:
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LCPI45_7(%rip), %xmm0
	addsd	.LCPI45_8(%rip), %xmm0
	jmp	.LBB45_94
.LBB45_76:
	negl	%ebx
	cvtsi2sd	%ebx, %xmm1
	mulsd	.LCPI45_7(%rip), %xmm1
	movsd	.LCPI45_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB45_77:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rbp                  # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	cvtsi2sd	%rsi, %xmm2
	testl	$8192, %eax                     # imm = 0x2000
	sete	%bl
	testb	%dl, %dl
	jne	.LBB45_79
# %bb.78:
	movsd	.LCPI45_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB45_79:
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	shlq	$5, %rcx
	movq	(%r15), %r9
	movsbl	67(%r9), %edi
	testl	%edi, %edi
	setle	%dl
	orb	%dl, %bl
	movq	MoveList@GOTPCREL(%rip), %rdx
	movzbl	16(%rdx,%rcx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	movl	48(%r9), %esi
	testl	%edi, %edi
	js	.LBB45_81
# %bb.80:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	mulsd	.LCPI45_7(%rip), %xmm1
	addsd	.LCPI45_8(%rip), %xmm1
	jmp	.LBB45_82
.LBB45_81:
	negl	%edi
	cvtsi2sd	%edi, %xmm3
	mulsd	.LCPI45_7(%rip), %xmm3
	movsd	.LCPI45_8(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm3
	divsd	%xmm3, %xmm1
.LBB45_82:
	mulsd	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rsi, %xmm2
	movsd	.LCPI45_8(%rip), %xmm3          # xmm3 = mem[0],zero
	testb	%bl, %bl
	jne	.LBB45_84
# %bb.83:
	movapd	%xmm3, %xmm1
.LBB45_84:
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	divsd	.LCPI45_12(%rip), %xmm0
	addsd	.LCPI45_13(%rip), %xmm0
	andl	$1023, %r8d                     # imm = 0x3FF
	leaq	(%r8,%r8,2), %rdx
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rdx,8), %edx
	xorw	%ax, %dx
	movsd	.LCPI45_14(%rip), %xmm1         # xmm1 = mem[0],zero
	testb	$31, %dl
	je	.LBB45_86
# %bb.85:
	movapd	%xmm3, %xmm1
.LBB45_86:
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	Parties@GOTPCREL(%rip), %rbx
	movsd	%xmm1, 60(%rbx,%rbp)
	mulsd	%xmm1, %xmm0
	andl	$31, %eax
	movl	(%r9), %edx
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
	movsd	%xmm1, 56(%rsp)                 # 8-byte Spill
	callq	rand@PLT
	movsd	.LCPI45_8(%rip), %xmm1          # xmm1 = mem[0],zero
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
	mulsd	56(%rsp), %xmm0                 # 8-byte Folded Reload
	divsd	.LCPI45_9(%rip), %xmm0
	mulsd	68(%rbx,%rbp), %xmm0
	movzwl	(%r14), %eax
	testl	$8192, %eax                     # imm = 0x2000
	je	.LBB45_88
# %bb.87:
	movsd	.LCPI45_14(%rip), %xmm1         # xmm1 = mem[0],zero
.LBB45_88:
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	Parties@GOTPCREL(%rip), %r13
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%r13), %r14
	addq	$56, %r14
	movl	%eax, 56(%r13,%rcx)
	movq	40(%rsp), %rbp                  # 8-byte Reload
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rbx
	movzbl	20(%rbx,%rax), %eax
	andl	$-8, %eax
	movl	$1, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %r15
	callq	*(%r15,%rax)
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbx,%rax), %eax
	shrl	$19, %eax
	andl	$248, %eax
	movl	$1, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	callq	*(%r15,%rax)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	movzbl	8(%rax), %eax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rbx
	movzbl	12(%rbx,%rax), %eax
	movq	ITEM_FUNC_LIST@GOTPCREL(%rip), %r15
	movl	$1, %edi
	movl	%r12d, %esi
	callq	*(%r15,%rax,8)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movzbl	8(%rax), %eax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %rax
	movzbl	12(%rbx,%rax), %eax
	movl	$-1, %edi
	movq	48(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%r15,%rax,8)
	movq	64(%rsp), %rax                  # 8-byte Reload
	testb	$1, 84(%r13,%rax)
	movq	%rbp, %rbx
	je	.LBB45_90
# %bb.89:
	movq	(%rbx), %rax
	movzbl	(%rax), %ecx
	shlq	$5, %rcx
	movq	MoveList@GOTPCREL(%rip), %rdx
	testb	$2, 31(%rdx,%rcx)
	jne	.LBB45_110
.LBB45_90:
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movl	%edx, %ecx
	subl	(%r14), %ecx
	jns	.LBB45_92
# %bb.91:
	movl	%edx, (%r14)
	movl	4(%rax), %ecx
	subl	%edx, %ecx
.LBB45_92:
	movl	%ecx, 4(%rax)
	movq	(%rbx), %rax
	jmp	.LBB45_111
.LBB45_93:
	negl	%ebx
	cvtsi2sd	%ebx, %xmm1
	mulsd	.LCPI45_7(%rip), %xmm1
	movsd	.LCPI45_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB45_94:
	movq	40(%rsp), %rbp                  # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	cvtsi2sd	%rsi, %xmm2
	testl	$8192, %eax                     # imm = 0x2000
	sete	%bl
	testb	%dl, %dl
	jne	.LBB45_96
# %bb.95:
	movsd	.LCPI45_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB45_96:
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	(%rbp), %rcx
	movzbl	(%rcx), %ecx
	shlq	$5, %rcx
	movq	(%r15), %r9
	movsbl	69(%r9), %edi
	testl	%edi, %edi
	setle	%dl
	orb	%dl, %bl
	movq	MoveList@GOTPCREL(%rip), %rdx
	movzbl	16(%rdx,%rcx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	movl	56(%r9), %esi
	testl	%edi, %edi
	js	.LBB45_98
# %bb.97:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	mulsd	.LCPI45_7(%rip), %xmm1
	addsd	.LCPI45_8(%rip), %xmm1
	jmp	.LBB45_99
.LBB45_98:
	negl	%edi
	cvtsi2sd	%edi, %xmm3
	mulsd	.LCPI45_7(%rip), %xmm3
	movsd	.LCPI45_8(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm3
	divsd	%xmm3, %xmm1
.LBB45_99:
	mulsd	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rsi, %xmm2
	movsd	.LCPI45_8(%rip), %xmm3          # xmm3 = mem[0],zero
	testb	%bl, %bl
	jne	.LBB45_101
# %bb.100:
	movapd	%xmm3, %xmm1
.LBB45_101:
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	divsd	.LCPI45_12(%rip), %xmm0
	addsd	.LCPI45_13(%rip), %xmm0
	andl	$1023, %r8d                     # imm = 0x3FF
	leaq	(%r8,%r8,2), %rdx
	movq	POKEMONDEX@GOTPCREL(%rip), %rcx
	movzwl	22(%rcx,%rdx,8), %edx
	xorw	%ax, %dx
	movsd	.LCPI45_14(%rip), %xmm1         # xmm1 = mem[0],zero
	testb	$31, %dl
	je	.LBB45_103
# %bb.102:
	movapd	%xmm3, %xmm1
.LBB45_103:
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	Parties@GOTPCREL(%rip), %r14
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movsd	%xmm1, 60(%r14,%rbx)
	mulsd	%xmm1, %xmm0
	andl	$31, %eax
	movl	(%r9), %edx
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
	movsd	%xmm0, 56(%rsp)                 # 8-byte Spill
	callq	rand@PLT
	movsd	.LCPI45_8(%rip), %xmm1          # xmm1 = mem[0],zero
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
	mulsd	56(%rsp), %xmm0                 # 8-byte Folded Reload
	divsd	.LCPI45_9(%rip), %xmm0
	mulsd	68(%r14,%rbx), %xmm0
	movzwl	(%r13), %eax
	testl	$8192, %eax                     # imm = 0x2000
	je	.LBB45_105
# %bb.104:
	movsd	.LCPI45_14(%rip), %xmm1         # xmm1 = mem[0],zero
.LBB45_105:
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	leaq	(%r14,%rbx), %rcx
	addq	$56, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%eax, 56(%r14,%rbx)
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %r13
	movzbl	20(%r13,%rax), %eax
	andl	$-8, %eax
	movl	$1, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rbx
	callq	*(%rbx,%rax)
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r13,%rax), %eax
	shrl	$19, %eax
	andl	$248, %eax
	movl	$1, %edi
	movl	%r12d, %esi
	movl	$1, %edx
	callq	*(%rbx,%rax)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	movzbl	8(%rax), %eax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rbx
	movzbl	12(%rbx,%rax), %eax
	movq	ITEM_FUNC_LIST@GOTPCREL(%rip), %r15
	movl	$1, %edi
	movl	%r12d, %esi
	callq	*(%r15,%rax,8)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movzbl	8(%rax), %eax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %rax
	movzbl	12(%rbx,%rax), %eax
	movl	$-1, %edi
	movq	48(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*(%r15,%rax,8)
	movq	64(%rsp), %rax                  # 8-byte Reload
	testb	$1, 84(%r14,%rax)
	je	.LBB45_107
# %bb.106:
	movq	(%rbp), %rax
	movzbl	(%rax), %ecx
	shlq	$5, %rcx
	testb	$2, 31(%r13,%rcx)
	jne	.LBB45_112
.LBB45_107:
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movl	%edx, %ecx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subl	(%rsi), %ecx
	jns	.LBB45_109
# %bb.108:
	movl	%edx, (%rsi)
	movl	4(%rax), %ecx
	subl	%edx, %ecx
.LBB45_109:
	movl	%ecx, 4(%rax)
	movq	40(%rsp), %rbp                  # 8-byte Reload
	movq	(%rbp), %rax
	jmp	.LBB45_113
.LBB45_110:
	movl	$0, (%r14)
.LBB45_111:
	movb	1(%rax), %cl
	leal	-1(%rcx), %edx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 1(%rax)
	movl	%r12d, %edi
	callq	move_result@PLT
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rbp
	movzbl	20(%rbp,%rax), %eax
	andl	$-8, %eax
	movl	$2, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %r14
	callq	*(%r14,%rax)
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbp,%rax), %eax
	jmp	.LBB45_114
.LBB45_112:
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	$0, (%rcx)
.LBB45_113:
	movb	1(%rax), %cl
	leal	-1(%rcx), %edx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 1(%rax)
	movl	%r12d, %edi
	callq	move_result@PLT
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rbx
	movzbl	20(%rbx,%rax), %eax
	andl	$-8, %eax
	movl	$2, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %r14
	callq	*(%r14,%rax)
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbx,%rax), %eax
.LBB45_114:
	shrl	$19, %eax
	andl	$248, %eax
	movl	$2, %edi
	movl	%r12d, %esi
	movl	$1, %edx
	callq	*(%r14,%rax)
.LBB45_115:
	leaq	.L.str.38(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$72, %rsp
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
.Lfunc_end45:
	.size	ExecuteMove, .Lfunc_end45-ExecuteMove
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI45_0:
	.long	.LBB45_30-.LJTI45_0
	.long	.LBB45_51-.LJTI45_0
	.long	.LBB45_51-.LJTI45_0
	.long	.LBB45_32-.LJTI45_0
	.long	.LBB45_33-.LJTI45_0
	.long	.LBB45_36-.LJTI45_0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function endturn
.LCPI46_0:
	.quad	0x3fb0000000000000              # double 0.0625
.LCPI46_1:
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
	imulq	$231, %rax, %rbx
	movq	Parties@GOTPCREL(%rip), %rbp
	movq	48(%rbp,%rbx), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %r14
	movzbl	20(%r14,%rax), %eax
	andl	$-8, %eax
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %r12
	movl	$5, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	*(%r12,%rax)
	movq	48(%rbp,%rbx), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%r14,%rax), %eax
	shrl	$19, %eax
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
	andl	$939524096, %ecx                # imm = 0x38000000
	cmpl	$536870912, %ecx                # imm = 0x20000000
	je	.LBB46_3
# %bb.1:
	andl	$130023424, %eax                # imm = 0x7C00000
	cmpl	$113246208, %eax                # imm = 0x6C00000
	je	.LBB46_3
# %bb.2:
	movb	$0, 100(%rbp,%rbx)
.LBB46_3:
	leaq	(%rbx,%rbp), %r14
	movq	(%rbp,%rbx), %rax
	movb	65(%rax), %cl
	cmpb	$3, %cl
	je	.LBB46_8
# %bb.4:
	cmpb	$2, %cl
	je	.LBB46_11
# %bb.5:
	cmpb	$1, %cl
	jne	.LBB46_17
# %bb.6:
	movl	40(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB46_13
# %bb.7:
	movsd	.LCPI46_1(%rip), %xmm0          # xmm0 = mem[0],zero
	leaq	.L.str.88(%rip), %rsi
	jmp	.LBB46_16
.LBB46_8:
	movb	64(%rax), %cl
	cmpb	$15, %cl
	ja	.LBB46_10
# %bb.9:
	addb	$1, %cl
	movb	%cl, 64(%rax)
.LBB46_10:
	movl	40(%rax), %edx
	cvtsi2sd	%rdx, %xmm1
	movzbl	%cl, %ecx
	cvtsi2sd	%ecx, %xmm0
	mulsd	.LCPI46_0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	maxsd	.LCPI46_1(%rip), %xmm0
	leaq	.L.str.90(%rip), %rsi
	jmp	.LBB46_16
.LBB46_11:
	movl	40(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB46_14
# %bb.12:
	movsd	.LCPI46_1(%rip), %xmm0          # xmm0 = mem[0],zero
	jmp	.LBB46_15
.LBB46_13:
	shrl	$3, %ecx
	cvtsi2sd	%ecx, %xmm0
	leaq	.L.str.88(%rip), %rsi
	jmp	.LBB46_16
.LBB46_14:
	shrl	$3, %ecx
	cvtsi2sd	%ecx, %xmm0
.LBB46_15:
	leaq	.L.str.89(%rip), %rsi
.LBB46_16:
	xorps	%xmm1, %xmm1
	cvtsi2sdl	4(%rax), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 4(%rax)
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %rbx
	leaq	(%rbx,%rax,8), %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%rbx,%rdx,8), %rdx
	movl	40(%rax), %r8d
	leaq	.L.str.13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB46_17:
	movq	(%r14), %rax
	cmpl	$0, 4(%rax)
	jle	.LBB46_19
# %bb.18:
	movzbl	8(%rax), %eax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rcx
	movzbl	12(%rcx,%rax), %eax
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
.LBB46_19:
	.cfi_def_cfa_offset 48
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	POKEMONDEX@GOTPCREL(%rip), %rdx
	leaq	.L.str.91(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movzbl	%r15b, %edi
	callq	SwitchIn@PLT
	leaq	.L.str.38(%rip), %rsi
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
.Lfunc_end46:
	.size	endturn, .Lfunc_end46-endturn
	.cfi_endproc
                                        # -- End function
	.globl	StatCalcMon                     # -- Begin function StatCalcMon
	.p2align	4, 0x90
	.type	StatCalcMon,@function
StatCalcMon:                            # @StatCalcMon
	.cfi_startproc
# %bb.0:
	movl	%esi, %eax
	imulq	$231, %rax, %rax
	addq	Parties@GOTPCREL(%rip), %rax
	movl	%edi, %ecx
	movq	(%rax,%rcx,8), %rax
	movzwl	10(%rax), %edx
	movl	%edx, %edi
	shrl	$5, %edi
	andl	$31, %edi
	movl	(%rax), %ecx
	movl	12(%rax), %r11d
	movl	%ecx, %esi
	andl	$1023, %esi                     # imm = 0x3FF
	leaq	(%rsi,%rsi,2), %r10
	movq	POKEMONDEX@GOTPCREL(%rip), %r9
	movzbl	16(%r9,%r10,8), %esi
	leal	(%rdi,%rsi,2), %esi
	movzbl	32(%rax), %edi
	shrl	$2, %edi
	addl	%esi, %edi
	shrl	$10, %ecx
	andl	$127, %ecx
	imull	%ecx, %edi
	imulq	$1374389535, %rdi, %rsi         # imm = 0x51EB851F
	shrq	$37, %rsi
	addl	%ecx, %esi
	addl	$10, %esi
	movl	%esi, 40(%rax)
	movl	%edx, %esi
	shrl	$10, %esi
	andl	$31, %esi
	movzbl	17(%r9,%r10,8), %edi
	leal	(%rsi,%rdi,2), %esi
	movzbl	33(%rax), %edi
	shrl	$2, %edi
	addl	%esi, %edi
	imull	%ecx, %edi
	imulq	$1374389535, %rdi, %rsi         # imm = 0x51EB851F
	shrq	$37, %rsi
	addl	$5, %esi
	cvtsi2ss	%esi, %xmm0
	movq	NATURE_LIST@GOTPCREL(%rip), %r8
	andl	$31, %edx
	leaq	(%rdx,%rdx,8), %rsi
	leaq	(%rsi,%rsi,2), %rdi
	addq	%rdx, %rdi
	mulss	(%r8,%rdi), %xmm0
	cvttss2si	%xmm0, %rdx
	movl	%edx, 44(%rax)
	movl	%r11d, %edx
	andl	$31, %edx
	movzbl	18(%r9,%r10,8), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	34(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	imulq	$1374389535, %rsi, %rdx         # imm = 0x51EB851F
	shrq	$37, %rdx
	addl	$5, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
	mulss	4(%r8,%rdi), %xmm0
	cvttss2si	%xmm0, %rdx
	movl	%edx, 48(%rax)
	movl	%r11d, %edx
	shrl	$5, %edx
	andl	$31, %edx
	movzbl	19(%r9,%r10,8), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	35(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	imulq	$1374389535, %rsi, %rdx         # imm = 0x51EB851F
	shrq	$37, %rdx
	addl	$5, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
	mulss	8(%r8,%rdi), %xmm0
	cvttss2si	%xmm0, %rdx
	movl	%edx, 52(%rax)
	movl	%r11d, %edx
	shrl	$10, %edx
	andl	$31, %edx
	movzbl	20(%r9,%r10,8), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	36(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	imulq	$1374389535, %rsi, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	addl	$5, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	mulss	12(%r8,%rdi), %xmm0
	cvttss2si	%xmm0, %rcx
	movl	%ecx, 56(%rax)
	shrl	$15, %r11d
	andl	$31, %r11d
	movl	(%rax), %ecx
	movl	%ecx, %edx
	andl	$1023, %edx                     # imm = 0x3FF
	leaq	(%rdx,%rdx,2), %rdx
	movzbl	21(%r9,%rdx,8), %edx
	leal	(%r11,%rdx,2), %edx
	movzbl	37(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	shrl	$10, %ecx
	andl	$127, %ecx
	imull	%esi, %ecx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	addl	$5, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	mulss	16(%r8,%rdi), %xmm0
	cvttss2si	%xmm0, %rcx
	movl	%ecx, 60(%rax)
	retq
.Lfunc_end47:
	.size	StatCalcMon, .Lfunc_end47-StatCalcMon
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function PP_Set
.LCPI48_0:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI48_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	PP_Set
	.p2align	4, 0x90
	.type	PP_Set,@function
PP_Set:                                 # @PP_Set
	.cfi_startproc
# %bb.0:
	movl	%esi, %eax
	imulq	$231, %rax, %r10
	addq	Parties@GOTPCREL(%rip), %r10
	movl	%edi, %r9d
	movq	(%r10,%r9,8), %rsi
	movzbl	16(%rsi), %edi
	shlq	$5, %rdi
	movq	MoveList@GOTPCREL(%rip), %r8
	movl	17(%r8,%rdi), %edi
	shrl	$7, %edi
	andl	$15, %edi
	leal	(%rdi,%rdi,4), %edi
	cvtsi2ss	%edi, %xmm2
	movb	17(%rsi), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	cvtsi2sd	%edx, %xmm3
	movsd	.LCPI48_0(%rip), %xmm0          # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movsd	.LCPI48_1(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 17(%rsi)
	movq	(%r10,%r9,8), %rcx
	movzbl	20(%rcx), %edx
	shlq	$5, %rdx
	movl	17(%r8,%rdx), %edx
	shrl	$7, %edx
	andl	$15, %edx
	leal	(%rdx,%rdx,4), %edx
	xorps	%xmm2, %xmm2
	cvtsi2ss	%edx, %xmm2
	movb	21(%rcx), %al
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
	movb	%al, 21(%rcx)
	movq	(%r10,%r9,8), %rax
	movzbl	24(%rax), %ecx
	shlq	$5, %rcx
	movl	17(%r8,%rcx), %ecx
	shrl	$7, %ecx
	andl	$15, %ecx
	leal	(%rcx,%rcx,4), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ss	%ecx, %xmm2
	movb	25(%rax), %cl
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
	movb	%cl, 25(%rax)
	movq	(%r10,%r9,8), %rax
	movzbl	28(%rax), %ecx
	shlq	$5, %rcx
	movl	17(%r8,%rcx), %ecx
	shrl	$7, %ecx
	andl	$15, %ecx
	leal	(%rcx,%rcx,4), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ss	%ecx, %xmm2
	movb	29(%rax), %cl
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
	movb	%cl, 29(%rax)
	retq
.Lfunc_end48:
	.size	PP_Set, .Lfunc_end48-PP_Set
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function Battle
.LCPI49_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI49_1:
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
.LCPI49_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI49_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI49_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI49_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI49_6:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
.LCPI49_7:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
.LCPI49_9:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff8000000000000              # double 1.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI49_8:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI49_10:
	.quad	0x3ff0000000000000              # double 1
.LCPI49_11:
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
	movq	StatCalc@GOTPCREL(%rip), %r14
	cmpb	$0, (%r14)
	je	.LBB49_16
# %bb.1:
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
	leaq	.L.str.93(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rdx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.38(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	cmpw	$121, (%rbx)
	jne	.LBB49_11
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	8(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	16(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	24(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	32(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	40(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	231(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	239(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	247(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	255(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	263(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movq	271(%rax), %rcx
	movl	40(%rcx), %edx
	movl	%edx, 4(%rcx)
	movb	$0, 65(%rcx)
	orb	$1, 74(%rcx)
	movapd	.LCPI49_0(%rip), %xmm5          # xmm5 = <u,18446744073709551615>
	movapd	%xmm5, %xmm7
	movlpd	84(%rax), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI49_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm10         # xmm10 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm4          # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB49_3:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB49_3
# %bb.4:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, %rdx
	movapd	%xmm5, %xmm7
	movlpd	92(%rax), %xmm7                 # xmm7 = mem[0],xmm7[1]
	movdqa	.LCPI49_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	.p2align	4, 0x90
.LBB49_5:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB49_5
# %bb.6:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, %rcx
	movq	%rdx, %xmm7
	shufpd	$2, %xmm5, %xmm7                # xmm7 = xmm7[0],xmm5[1]
	movdqa	.LCPI49_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %edx
	.p2align	4, 0x90
.LBB49_7:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB49_7
# %bb.8:
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	pand	%xmm7, %xmm0
	movq	%xmm0, 84(%rax)
	movq	%rcx, %xmm0
	movsd	%xmm0, %xmm5                    # xmm5 = xmm0[0],xmm5[1]
	movdqa	.LCPI49_1(%rip), %xmm6          # xmm6 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	.p2align	4, 0x90
.LBB49_9:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB49_9
# %bb.10:
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	pand	%xmm5, %xmm0
	movq	%xmm0, 92(%rax)
.LBB49_11:
	leaq	.L.str.63(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.64(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.94(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.38(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	cmpw	$121, (%rbx)
	jne	.LBB49_13
# %bb.12:
	movq	HideMove@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB49_13:
	leaq	.L.str.63(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.64(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.95(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.38(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	cmpw	$121, (%rbx)
	jne	.LBB49_15
# %bb.14:
	movq	AI_MODE@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB49_15:
	leaq	.L.str.63(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.64(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movb	$0, (%r14)
	movq	BattleMode@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB49_16:
	movq	Parties@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	movq	POKEMONDEX@GOTPCREL(%rip), %r14
	leaq	(%r14,%rax,8), %rdx
	leaq	.L.str.96(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	231(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rax
	leaq	(%r14,%rax,8), %rdx
	leaq	.L.str.97(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Empty_slot@GOTPCREL(%rip), %rax
	movq	%rax, 48(%r13)
	movq	%rax, 279(%r13)
	movq	BattleMode@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB49_232
# %bb.17:
	movq	x@GOTPCREL(%rip), %r12
	jmp	.LBB49_21
	.p2align	4, 0x90
.LBB49_18:                              #   in Loop: Header=BB49_21 Depth=1
	callq	rand@PLT
	andb	$1, %al
.LBB49_19:                              #   in Loop: Header=BB49_21 Depth=1
	movq	EndFirst@GOTPCREL(%rip), %rbx
	movb	%al, (%rbx)
	xorb	$1, %al
	movzbl	%al, %edi
	callq	endturn@PLT
	movzbl	(%rbx), %edi
	callq	endturn@PLT
	movl	$1, %edi
	leaq	.L.str.38(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB49_20:                              #   in Loop: Header=BB49_21 Depth=1
	movq	BattleMode@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB49_232
.LBB49_21:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_26 Depth 2
	movq	TurnCounter@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	$1, %edi
	leaq	.L.str.98(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB49_26
	.p2align	4, 0x90
.LBB49_22:                              #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.102(%rip), %rsi
.LBB49_23:                              #   in Loop: Header=BB49_26 Depth=2
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Reset@GOTPCREL(%rip), %rbp
.LBB49_24:                              #   in Loop: Header=BB49_26 Depth=2
	movb	$1, (%rbp)
.LBB49_25:                              #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.114(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movb	$0, (%rbp)
.LBB49_26:                              #   Parent Loop BB49_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	Retrieve@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB49_173
# %bb.27:                               #   in Loop: Header=BB49_26 Depth=2
	andb	$127, 229(%r13)
	andb	$127, 460(%r13)
	movl	$1, %edi
	leaq	.L.str.99(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%r12, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r12, %rdi
	leaq	.L.str.38(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r12,%rax)
	movzwl	(%r12), %ebp
	cmpw	$49, %bp
	je	.LBB49_63
# %bb.28:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3219557, %edx                  # imm = 0x312065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB49_63
# %bb.29:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r13), %r15
	movzbl	16(%r15), %ebx
	movq	%rbx, %rsi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_63
# %bb.30:                               #   in Loop: Header=BB49_26 Depth=2
	cmpw	$50, %bp
	je	.LBB49_113
# %bb.31:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3285093, %edx                  # imm = 0x322065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB49_113
# %bb.32:                               #   in Loop: Header=BB49_26 Depth=2
	movzbl	20(%r15), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_113
# %bb.33:                               #   in Loop: Header=BB49_26 Depth=2
	cmpw	$51, %bp
	je	.LBB49_127
# %bb.34:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3350629, %edx                  # imm = 0x332065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB49_127
# %bb.35:                               #   in Loop: Header=BB49_26 Depth=2
	movzbl	24(%r15), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_127
# %bb.36:                               #   in Loop: Header=BB49_26 Depth=2
	cmpw	$52, %bp
	je	.LBB49_137
# %bb.37:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3416165, %edx                  # imm = 0x342065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB49_137
# %bb.38:                               #   in Loop: Header=BB49_26 Depth=2
	movzbl	28(%r15), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_137
# %bb.39:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_143
# %bb.40:                               #   in Loop: Header=BB49_26 Depth=2
	movq	8(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbp
	shlq	$3, %rbp
	addq	%r14, %rbp
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
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_143
# %bb.41:                               #   in Loop: Header=BB49_26 Depth=2
	movq	8(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_143
# %bb.42:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB49_143
# %bb.43:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_159
# %bb.44:                               #   in Loop: Header=BB49_26 Depth=2
	movq	16(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbp
	shlq	$3, %rbp
	addq	%r14, %rbp
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
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_159
# %bb.45:                               #   in Loop: Header=BB49_26 Depth=2
	movq	16(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_159
# %bb.46:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB49_159
# %bb.47:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_161
# %bb.48:                               #   in Loop: Header=BB49_26 Depth=2
	movq	24(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbp
	shlq	$3, %rbp
	addq	%r14, %rbp
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
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_161
# %bb.49:                               #   in Loop: Header=BB49_26 Depth=2
	movq	24(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_161
# %bb.50:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB49_161
# %bb.51:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_164
# %bb.52:                               #   in Loop: Header=BB49_26 Depth=2
	movq	32(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbp
	shlq	$3, %rbp
	addq	%r14, %rbp
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
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_164
# %bb.53:                               #   in Loop: Header=BB49_26 Depth=2
	movq	32(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_164
# %bb.54:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB49_164
# %bb.55:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_165
# %bb.56:                               #   in Loop: Header=BB49_26 Depth=2
	movq	40(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbp
	shlq	$3, %rbp
	addq	%r14, %rbp
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
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_165
# %bb.57:                               #   in Loop: Header=BB49_26 Depth=2
	movq	40(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_165
# %bb.58:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB49_165
# %bb.59:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%r12), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_170
# %bb.60:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%r12), %ecx
	orl	%eax, %ecx
	je	.LBB49_170
# %bb.61:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%r12), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB49_170
.LBB49_62:                              #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.111(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB49_172
	.p2align	4, 0x90
.LBB49_63:                              #   in Loop: Header=BB49_26 Depth=2
	movq	(%r13), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 48(%r13)
	cmpb	$0, 16(%rax)
	je	.LBB49_22
# %bb.64:                               #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 17(%rax)
	je	.LBB49_104
.LBB49_65:                              #   in Loop: Header=BB49_26 Depth=2
	movq	Reset@GOTPCREL(%rip), %rbp
	cmpb	$1, (%rbp)
	je	.LBB49_25
# %bb.66:                               #   in Loop: Header=BB49_26 Depth=2
	movq	HideMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB49_68
# %bb.67:                               #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.112(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB49_68:                              #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.113(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%r12, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r12, %rdi
	leaq	.L.str.38(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r12,%rax)
	movzwl	(%r12), %ebx
	cmpw	$49, %bx
	je	.LBB49_108
# %bb.69:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3219557, %edx                  # imm = 0x312065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB49_108
# %bb.70:                               #   in Loop: Header=BB49_26 Depth=2
	movq	231(%r13), %r15
	movzbl	16(%r15), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_108
# %bb.71:                               #   in Loop: Header=BB49_26 Depth=2
	cmpw	$50, %bx
	je	.LBB49_122
# %bb.72:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3285093, %edx                  # imm = 0x322065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB49_122
# %bb.73:                               #   in Loop: Header=BB49_26 Depth=2
	movzbl	20(%r15), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_122
# %bb.74:                               #   in Loop: Header=BB49_26 Depth=2
	cmpw	$51, %bx
	je	.LBB49_133
# %bb.75:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3350629, %edx                  # imm = 0x332065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB49_133
# %bb.76:                               #   in Loop: Header=BB49_26 Depth=2
	movzbl	24(%r15), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_133
# %bb.77:                               #   in Loop: Header=BB49_26 Depth=2
	cmpw	$52, %bx
	je	.LBB49_147
# %bb.78:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3416165, %edx                  # imm = 0x342065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB49_147
# %bb.79:                               #   in Loop: Header=BB49_26 Depth=2
	movzbl	28(%r15), %esi
	shlq	$5, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_147
# %bb.80:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_155
# %bb.81:                               #   in Loop: Header=BB49_26 Depth=2
	movq	239(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	%r14, %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%r15)
	movl	$2125684, 7(%r15)               # imm = 0x206F74
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	strcat@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_155
# %bb.82:                               #   in Loop: Header=BB49_26 Depth=2
	movq	239(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_155
# %bb.83:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB49_155
# %bb.84:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_160
# %bb.85:                               #   in Loop: Header=BB49_26 Depth=2
	movq	247(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	%r14, %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%r15)
	movl	$2125684, 7(%r15)               # imm = 0x206F74
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	strcat@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_160
# %bb.86:                               #   in Loop: Header=BB49_26 Depth=2
	movq	247(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_160
# %bb.87:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB49_160
# %bb.88:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_162
# %bb.89:                               #   in Loop: Header=BB49_26 Depth=2
	movq	263(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	%r14, %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%r15)
	movl	$2125684, 7(%r15)               # imm = 0x206F74
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	strcat@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_162
# %bb.90:                               #   in Loop: Header=BB49_26 Depth=2
	movq	263(%r13), %r15
	movl	(%r15), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	%r14, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_162
# %bb.91:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB49_162
# %bb.92:                               #   in Loop: Header=BB49_26 Depth=2
	movq	%rbx, %rsi
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rbx      # imm = 0x7420686374697753
	xorq	%rbx, %rax
	movq	5(%r12), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_167
# %bb.93:                               #   in Loop: Header=BB49_26 Depth=2
	movq	%rsi, %r15
	movq	%rsi, %rdi
	callq	strlen@PLT
	leaq	11(%rax), %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	movabsq	$8367802884018501459, %rax      # imm = 0x7420686374697753
	movq	%rax, (%rbx)
	movl	$2125684, 7(%rbx)               # imm = 0x206F74
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strcat@PLT
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_166
# %bb.94:                               #   in Loop: Header=BB49_26 Depth=2
	movq	263(%r13), %r15
	movl	(%r15), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_167
# %bb.95:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB49_167
# %bb.96:                               #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_169
# %bb.97:                               #   in Loop: Header=BB49_26 Depth=2
	movq	271(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rbp
	shlq	$3, %rbp
	addq	%r14, %rbp
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
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_169
# %bb.98:                               #   in Loop: Header=BB49_26 Depth=2
	movq	271(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_169
# %bb.99:                               #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB49_169
# %bb.100:                              #   in Loop: Header=BB49_26 Depth=2
	movq	(%r12), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%r12), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_103
# %bb.101:                              #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%r12), %ecx
	orl	%eax, %ecx
	je	.LBB49_103
# %bb.102:                              #   in Loop: Header=BB49_26 Depth=2
	movl	(%r12), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%r12), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	jne	.LBB49_62
.LBB49_103:                             #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	jmp	.LBB49_171
.LBB49_104:                             #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 21(%rax)
	jne	.LBB49_142
# %bb.105:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 25(%rax)
	jne	.LBB49_142
# %bb.106:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 29(%rax)
	jne	.LBB49_142
.LBB49_107:                             #   in Loop: Header=BB49_26 Depth=2
	movq	Struggle_Slot@GOTPCREL(%rip), %rax
	movq	%rax, 48(%r13)
	jmp	.LBB49_65
.LBB49_108:                             #   in Loop: Header=BB49_26 Depth=2
	movq	231(%r13), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 279(%r13)
	cmpb	$0, 16(%rax)
	je	.LBB49_153
# %bb.109:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 17(%rax)
	je	.LBB49_118
.LBB49_110:                             #   in Loop: Header=BB49_26 Depth=2
	cmpb	$0, (%rbp)
	jne	.LBB49_25
# %bb.111:                              #   in Loop: Header=BB49_26 Depth=2
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	HideMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB49_131
# %bb.112:                              #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	jmp	.LBB49_132
.LBB49_113:                             #   in Loop: Header=BB49_26 Depth=2
	leaq	20(%r15), %rax
	movq	%rax, 48(%r13)
	testb	%bl, %bl
	je	.LBB49_22
# %bb.114:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 21(%r15)
	jne	.LBB49_65
# %bb.115:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 17(%r15)
	jne	.LBB49_142
# %bb.116:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 25(%r15)
	jne	.LBB49_142
.LBB49_117:                             #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 29(%r15)
	jne	.LBB49_142
	jmp	.LBB49_107
.LBB49_118:                             #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 21(%rax)
	jne	.LBB49_152
# %bb.119:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 25(%rax)
	jne	.LBB49_152
# %bb.120:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 29(%rax)
	jne	.LBB49_152
.LBB49_121:                             #   in Loop: Header=BB49_26 Depth=2
	movq	Struggle_Slot@GOTPCREL(%rip), %rax
	movq	%rax, 279(%r13)
	jmp	.LBB49_110
.LBB49_122:                             #   in Loop: Header=BB49_26 Depth=2
	leaq	20(%r15), %rax
	movq	%rax, 279(%r13)
	cmpb	$0, 20(%r15)
	je	.LBB49_153
# %bb.123:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 21(%r15)
	jne	.LBB49_110
# %bb.124:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 17(%r15)
	jne	.LBB49_152
# %bb.125:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 25(%r15)
	jne	.LBB49_152
.LBB49_126:                             #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 29(%r15)
	jne	.LBB49_152
	jmp	.LBB49_121
.LBB49_127:                             #   in Loop: Header=BB49_26 Depth=2
	leaq	24(%r15), %rax
	movq	%rax, 48(%r13)
	testb	%bl, %bl
	je	.LBB49_22
# %bb.128:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 25(%r15)
	jne	.LBB49_65
# %bb.129:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 17(%r15)
	jne	.LBB49_142
# %bb.130:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 21(%r15)
	jne	.LBB49_142
	jmp	.LBB49_117
.LBB49_131:                             #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.38(%rip), %rsi
.LBB49_132:                             #   in Loop: Header=BB49_26 Depth=2
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB49_26
.LBB49_133:                             #   in Loop: Header=BB49_26 Depth=2
	leaq	24(%r15), %rax
	movq	%rax, 279(%r13)
	cmpb	$0, 24(%r15)
	je	.LBB49_153
# %bb.134:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 25(%r15)
	jne	.LBB49_110
# %bb.135:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 17(%r15)
	jne	.LBB49_152
# %bb.136:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 21(%r15)
	jne	.LBB49_152
	jmp	.LBB49_126
.LBB49_137:                             #   in Loop: Header=BB49_26 Depth=2
	leaq	28(%r15), %rax
	movq	%rax, 48(%r13)
	testb	%bl, %bl
	je	.LBB49_22
# %bb.138:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 29(%r15)
	jne	.LBB49_65
# %bb.139:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 17(%r15)
	jne	.LBB49_142
# %bb.140:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 21(%r15)
	jne	.LBB49_142
# %bb.141:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 25(%r15)
	je	.LBB49_107
	.p2align	4, 0x90
.LBB49_142:                             #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.103(%rip), %rsi
	jmp	.LBB49_23
.LBB49_143:                             #   in Loop: Header=BB49_26 Depth=2
	movb	$1, 230(%r13)
	orb	$-128, 229(%r13)
	movq	8(%r13), %rbx
.LBB49_144:                             #   in Loop: Header=BB49_26 Depth=2
	movl	(%rbx), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	%r14, %rdi
	leaq	.L.str.110(%rip), %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_146
# %bb.145:                              #   in Loop: Header=BB49_26 Depth=2
	cmpl	$0, 4(%rbx)
	jg	.LBB49_65
.LBB49_146:                             #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.111(%rip), %rsi
	jmp	.LBB49_23
.LBB49_147:                             #   in Loop: Header=BB49_26 Depth=2
	leaq	28(%r15), %rax
	movq	%rax, 279(%r13)
	cmpb	$0, 28(%r15)
	je	.LBB49_153
# %bb.148:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 29(%r15)
	jne	.LBB49_110
# %bb.149:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 17(%r15)
	jne	.LBB49_152
# %bb.150:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 21(%r15)
	jne	.LBB49_152
# %bb.151:                              #   in Loop: Header=BB49_26 Depth=2
	testb	$63, 25(%r15)
	je	.LBB49_121
.LBB49_152:                             #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.103(%rip), %rsi
	jmp	.LBB49_154
.LBB49_153:                             #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.102(%rip), %rsi
.LBB49_154:                             #   in Loop: Header=BB49_26 Depth=2
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB49_24
.LBB49_155:                             #   in Loop: Header=BB49_26 Depth=2
	movb	$1, 461(%r13)
	orb	$-128, 460(%r13)
	movq	239(%r13), %rbx
.LBB49_156:                             #   in Loop: Header=BB49_26 Depth=2
	movl	(%rbx), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	%r14, %rdi
	leaq	.L.str.110(%rip), %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_158
.LBB49_157:                             #   in Loop: Header=BB49_26 Depth=2
	cmpl	$0, 4(%rbx)
	jg	.LBB49_110
.LBB49_158:                             #   in Loop: Header=BB49_26 Depth=2
	movl	$1, %edi
	leaq	.L.str.111(%rip), %rsi
	jmp	.LBB49_154
.LBB49_159:                             #   in Loop: Header=BB49_26 Depth=2
	movb	$2, 230(%r13)
	orb	$-128, 229(%r13)
	movq	16(%r13), %rbx
	jmp	.LBB49_144
.LBB49_160:                             #   in Loop: Header=BB49_26 Depth=2
	movb	$2, 461(%r13)
	orb	$-128, 460(%r13)
	movq	247(%r13), %rbx
	jmp	.LBB49_156
.LBB49_161:                             #   in Loop: Header=BB49_26 Depth=2
	movb	$3, 230(%r13)
	orb	$-128, 229(%r13)
	movq	24(%r13), %rbx
	jmp	.LBB49_144
.LBB49_162:                             #   in Loop: Header=BB49_26 Depth=2
	movb	$3, 461(%r13)
	orb	$-128, 460(%r13)
	movq	263(%r13), %rax
	movl	(%rax), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	%r14, %rdi
	leaq	.L.str.110(%rip), %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_158
# %bb.163:                              #   in Loop: Header=BB49_26 Depth=2
	movq	255(%r13), %rax
	cmpl	$0, 4(%rax)
	jg	.LBB49_110
	jmp	.LBB49_158
.LBB49_164:                             #   in Loop: Header=BB49_26 Depth=2
	movb	$4, 230(%r13)
	orb	$-128, 229(%r13)
	movq	32(%r13), %rbx
	jmp	.LBB49_144
.LBB49_165:                             #   in Loop: Header=BB49_26 Depth=2
	movb	$5, 230(%r13)
	orb	$-128, 229(%r13)
	movq	40(%r13), %rbx
	jmp	.LBB49_144
.LBB49_166:                             #   in Loop: Header=BB49_26 Depth=2
	movq	263(%r13), %r15
.LBB49_167:                             #   in Loop: Header=BB49_26 Depth=2
	movb	$4, 461(%r13)
	orb	$-128, 460(%r13)
	movl	(%r15), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	%r14, %rdi
	leaq	.L.str.110(%rip), %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_158
# %bb.168:                              #   in Loop: Header=BB49_26 Depth=2
	cmpl	$0, 4(%r15)
	jg	.LBB49_110
	jmp	.LBB49_158
.LBB49_169:                             #   in Loop: Header=BB49_26 Depth=2
	movb	$5, 461(%r13)
	orb	$-128, 460(%r13)
	movq	271(%r13), %rbx
	movl	(%rbx), %eax
	andl	$1023, %eax                     # imm = 0x3FF
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	%r14, %rdi
	leaq	.L.str.110(%rip), %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	movq	Reset@GOTPCREL(%rip), %rbp
	jne	.LBB49_157
	jmp	.LBB49_158
.LBB49_170:                             #   in Loop: Header=BB49_26 Depth=2
	xorl	%edi, %edi
.LBB49_171:                             #   in Loop: Header=BB49_26 Depth=2
	callq	displayparty@PLT
.LBB49_172:                             #   in Loop: Header=BB49_26 Depth=2
	movq	Reset@GOTPCREL(%rip), %rbp
	movb	$1, (%rbp)
	movq	POKEMONDEX@GOTPCREL(%rip), %r14
	jmp	.LBB49_25
	.p2align	4, 0x90
.LBB49_173:                             #   in Loop: Header=BB49_21 Depth=1
	movq	AI_MODE@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB49_175
# %bb.174:                              #   in Loop: Header=BB49_21 Depth=1
	movq	231(%r13), %rbx
	callq	rand@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$-4, %ecx
	subl	%ecx, %eax
	cltq
	leaq	(%rbx,%rax,4), %rax
	addq	$16, %rax
	movq	%rax, 279(%r13)
.LBB49_175:                             #   in Loop: Header=BB49_21 Depth=1
	movq	Execute@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB49_20
# %bb.176:                              #   in Loop: Header=BB49_21 Depth=1
	movl	$0, 56(%r13)
	movl	$0, 287(%r13)
	movl	228(%r13), %ebp
	movzwl	459(%r13), %r15d
	movaps	.LCPI49_7(%rip), %xmm0          # xmm0 = [1.0E+0,1.0E+0]
	movups	%xmm0, 68(%r13)
	movups	%xmm0, 299(%r13)
	orl	$96, %ebp
	orl	$96, %r15d
	movl	%ebp, %eax
	andl	$43135, %eax                    # imm = 0xA87F
	movw	%ax, 228(%r13)
	movl	%r15d, %eax
	andl	$43135, %eax                    # imm = 0xA87F
	movw	%ax, 459(%r13)
	movq	(%r13), %r8
	movq	48(%r13), %rcx
	movzbl	(%rcx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rax
	movzwl	17(%rax,%rdx), %edx
	shrl	$11, %edx
	andl	$-22432, %ebp                   # imm = 0xA860
	orl	%edx, %ebp
	movw	%bp, 228(%r13)
	movq	279(%r13), %rdx
	movzbl	(%rdx), %esi
	shlq	$5, %rsi
	movzwl	17(%rax,%rsi), %esi
	shrl	$11, %esi
	andl	$-22432, %r15d                  # imm = 0xA860
	orl	%esi, %r15d
	movw	%r15w, 459(%r13)
	movzbl	(%rcx), %ecx
	shlq	$5, %rcx
	movl	17(%rax,%rcx), %ecx
	movl	%ecx, %esi
	shrl	$11, %esi
	andl	$31, %esi
	movl	(%r8), %edi
	andl	$1023, %edi                     # imm = 0x3FF
	leaq	(%rdi,%rdi,2), %rdi
	movzwl	22(%r14,%rdi,8), %ebx
	movl	%ebx, %edi
	andl	$31, %edi
	movsd	.LCPI49_8(%rip), %xmm1          # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm0
	cmpl	%edi, %esi
	je	.LBB49_178
# %bb.177:                              #   in Loop: Header=BB49_21 Depth=1
	shrl	$5, %ebx
	andl	$31, %ebx
	xorl	%edi, %edi
	cmpl	%ebx, %esi
	sete	%dil
	leaq	.LCPI49_9(%rip), %rax
	movsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
.LBB49_178:                             #   in Loop: Header=BB49_21 Depth=1
	movsd	%xmm0, 60(%r13)
	movzbl	(%rdx), %edx
	shlq	$5, %rdx
	movq	MoveList@GOTPCREL(%rip), %rax
	movl	17(%rax,%rdx), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	andl	$31, %esi
	movq	231(%r13), %rbx
	movl	(%rbx), %edi
	andl	$1023, %edi                     # imm = 0x3FF
	leaq	(%rdi,%rdi,2), %rdi
	movzwl	22(%r14,%rdi,8), %eax
	movl	%eax, %edi
	andl	$31, %edi
	movaps	%xmm1, %xmm0
	cmpl	%edi, %esi
	je	.LBB49_180
# %bb.179:                              #   in Loop: Header=BB49_21 Depth=1
	shrl	$5, %eax
	andl	$31, %eax
	xorl	%edi, %edi
	cmpl	%eax, %esi
	sete	%dil
	leaq	.LCPI49_9(%rip), %rax
	movsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
.LBB49_180:                             #   in Loop: Header=BB49_21 Depth=1
	movsd	%xmm0, 291(%r13)
	cmpb	$3, 65(%r8)
	movsd	.LCPI49_10(%rip), %xmm1         # xmm1 = mem[0],zero
	jne	.LBB49_182
# %bb.181:                              #   in Loop: Header=BB49_21 Depth=1
	movabsq	$4602678819172646912, %rax      # imm = 0x3FE0000000000000
	movq	%rax, 76(%r13)
	movsd	.LCPI49_11(%rip), %xmm1         # xmm1 = mem[0],zero
.LBB49_182:                             #   in Loop: Header=BB49_21 Depth=1
	cmpb	$3, 65(%rbx)
	movsd	.LCPI49_10(%rip), %xmm0         # xmm0 = mem[0],zero
	jne	.LBB49_184
# %bb.183:                              #   in Loop: Header=BB49_21 Depth=1
	movabsq	$4602678819172646912, %rax      # imm = 0x3FE0000000000000
	movq	%rax, 307(%r13)
	movsd	.LCPI49_11(%rip), %xmm0         # xmm0 = mem[0],zero
.LBB49_184:                             #   in Loop: Header=BB49_21 Depth=1
	shll	$10, %ecx
	sarl	$28, %ecx
	shll	$10, %edx
	sarl	$28, %edx
	cmpl	%edx, %ecx
	jne	.LBB49_187
# %bb.185:                              #   in Loop: Header=BB49_21 Depth=1
	movl	60(%r8), %eax
	cvtsi2sd	%rax, %xmm2
	movsbl	70(%r8), %r14d
	testl	%r14d, %r14d
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	js	.LBB49_188
# %bb.186:                              #   in Loop: Header=BB49_21 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	mulsd	.LCPI49_11(%rip), %xmm0
	addsd	.LCPI49_10(%rip), %xmm0
	jmp	.LBB49_189
	.p2align	4, 0x90
.LBB49_187:                             #   in Loop: Header=BB49_21 Depth=1
	movq	First@GOTPCREL(%rip), %rax
	setg	(%rax)
	xorw	%bp, %r15w
	jns	.LBB49_195
.LBB49_194:                             #   in Loop: Header=BB49_21 Depth=1
	movzwl	%bp, %eax
	shrl	$15, %eax
	movq	First@GOTPCREL(%rip), %rcx
	movb	%al, (%rcx)
.LBB49_195:                             #   in Loop: Header=BB49_21 Depth=1
	movq	(%r13), %rax
	movzbl	9(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	movq	AbilityList@GOTPCREL(%rip), %rbx
	movzbl	15(%rbx,%rax,2), %eax
	movl	$1, %edi
	xorl	%esi, %esi
	movq	ABILITY_FUNC_LIST@GOTPCREL(%rip), %rbp
	callq	*(%rbp,%rax,8)
	movq	231(%r13), %rax
	movzbl	9(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	movzbl	15(%rbx,%rax,2), %eax
	movl	$1, %edi
	movl	$1, %esi
	callq	*(%rbp,%rax,8)
	movq	48(%r13), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movq	MoveList@GOTPCREL(%rip), %rbx
	movzbl	20(%rbx,%rax), %eax
	andl	$-8, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %rbp
	callq	*(%rbp,%rax)
	movq	48(%r13), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbx,%rax), %eax
	shrl	$19, %eax
	andl	$248, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	*(%rbp,%rax)
	movq	279(%r13), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movzbl	20(%rbx,%rax), %eax
	andl	$-8, %eax
	xorl	%edi, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	*(%rbp,%rax)
	movq	279(%r13), %rax
	movzbl	(%rax), %eax
	shlq	$5, %rax
	movl	17(%rbx,%rax), %eax
	shrl	$19, %eax
	andl	$248, %eax
	xorl	%edi, %edi
	movl	$1, %esi
	movl	$1, %edx
	callq	*(%rbp,%rax)
	movq	84(%r13), %rax
	testb	$1, %al
	jne	.LBB49_206
# %bb.196:                              #   in Loop: Header=BB49_21 Depth=1
	testb	$2, %al
	jne	.LBB49_207
.LBB49_197:                             #   in Loop: Header=BB49_21 Depth=1
	testb	$4, %al
	jne	.LBB49_208
.LBB49_198:                             #   in Loop: Header=BB49_21 Depth=1
	testb	$8, %al
	jne	.LBB49_209
.LBB49_199:                             #   in Loop: Header=BB49_21 Depth=1
	testb	$1, %al
	jne	.LBB49_210
.LBB49_200:                             #   in Loop: Header=BB49_21 Depth=1
	testb	$2, %al
	jne	.LBB49_211
.LBB49_201:                             #   in Loop: Header=BB49_21 Depth=1
	testb	$4, %al
	jne	.LBB49_212
.LBB49_202:                             #   in Loop: Header=BB49_21 Depth=1
	testb	$8, %al
	je	.LBB49_204
.LBB49_203:                             #   in Loop: Header=BB49_21 Depth=1
	xorl	%edi, %edi
	movl	$1, %esi
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	callq	*24(%rax)
.LBB49_204:                             #   in Loop: Header=BB49_21 Depth=1
	xorl	%edi, %edi
	movq	First@GOTPCREL(%rip), %rbx
	cmpb	$0, (%rbx)
	sete	%dil
	callq	ExecuteMove@PLT
	movzbl	(%rbx), %edi
	callq	ExecuteMove@PLT
	movq	(%r13), %rax
	movl	60(%rax), %ecx
	cvtsi2sd	%rcx, %xmm2
	movsbl	70(%rax), %ebx
	testl	%ebx, %ebx
	js	.LBB49_213
# %bb.205:                              #   in Loop: Header=BB49_21 Depth=1
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LCPI49_11(%rip), %xmm0
	addsd	.LCPI49_10(%rip), %xmm0
	jmp	.LBB49_214
	.p2align	4, 0x90
.LBB49_206:                             #   in Loop: Header=BB49_21 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	callq	*(%rax)
	movq	84(%r13), %rax
	testb	$2, %al
	je	.LBB49_197
.LBB49_207:                             #   in Loop: Header=BB49_21 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	callq	*8(%rax)
	movq	84(%r13), %rax
	testb	$4, %al
	je	.LBB49_198
.LBB49_208:                             #   in Loop: Header=BB49_21 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	callq	*16(%rax)
	movq	84(%r13), %rax
	testb	$8, %al
	je	.LBB49_199
.LBB49_209:                             #   in Loop: Header=BB49_21 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	callq	*24(%rax)
	movq	84(%r13), %rax
	testb	$1, %al
	je	.LBB49_200
.LBB49_210:                             #   in Loop: Header=BB49_21 Depth=1
	xorl	%edi, %edi
	movl	$1, %esi
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	callq	*(%rax)
	movq	84(%r13), %rax
	testb	$2, %al
	je	.LBB49_201
.LBB49_211:                             #   in Loop: Header=BB49_21 Depth=1
	xorl	%edi, %edi
	movl	$1, %esi
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	callq	*8(%rax)
	movq	84(%r13), %rax
	testb	$4, %al
	je	.LBB49_202
.LBB49_212:                             #   in Loop: Header=BB49_21 Depth=1
	xorl	%edi, %edi
	movl	$1, %esi
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	callq	*16(%rax)
	movq	84(%r13), %rax
	testb	$8, %al
	jne	.LBB49_203
	jmp	.LBB49_204
	.p2align	4, 0x90
.LBB49_213:                             #   in Loop: Header=BB49_21 Depth=1
	movl	%ebx, %eax
	negl	%eax
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI49_11(%rip), %xmm1
	movsd	.LCPI49_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB49_214:                             #   in Loop: Header=BB49_21 Depth=1
	movsd	%xmm2, 24(%rsp)                 # 8-byte Spill
	mulsd	%xmm2, %xmm0
	callq	floor@PLT
	movsd	76(%r13), %xmm1                 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	231(%r13), %rax
	movl	60(%rax), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rcx, %xmm2
	movsbl	70(%rax), %ebp
	testl	%ebp, %ebp
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	js	.LBB49_216
# %bb.215:                              #   in Loop: Header=BB49_21 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI49_11(%rip), %xmm0
	addsd	.LCPI49_10(%rip), %xmm0
	jmp	.LBB49_217
	.p2align	4, 0x90
.LBB49_216:                             #   in Loop: Header=BB49_21 Depth=1
	movl	%ebp, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI49_11(%rip), %xmm1
	movsd	.LCPI49_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB49_217:                             #   in Loop: Header=BB49_21 Depth=1
	mulsd	%xmm2, %xmm0
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	callq	floor@PLT
	movsd	307(%r13), %xmm1                # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	32(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jne	.LBB49_218
	jnp	.LBB49_18
.LBB49_218:                             #   in Loop: Header=BB49_21 Depth=1
	testb	%bl, %bl
	movsd	%xmm1, 16(%rsp)                 # 8-byte Spill
	js	.LBB49_222
# %bb.219:                              #   in Loop: Header=BB49_21 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LCPI49_11(%rip), %xmm0
	addsd	.LCPI49_10(%rip), %xmm0
	jmp	.LBB49_223
.LBB49_188:                             #   in Loop: Header=BB49_21 Depth=1
	movl	%r14d, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI49_11(%rip), %xmm1
	movsd	.LCPI49_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB49_189:                             #   in Loop: Header=BB49_21 Depth=1
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	mulsd	%xmm2, %xmm0
	callq	floor@PLT
	mulsd	(%rsp), %xmm0                   # 8-byte Folded Reload
	movl	60(%rbx), %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rax, %xmm2
	movsbl	70(%rbx), %ebx
	testl	%ebx, %ebx
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	js	.LBB49_191
# %bb.190:                              #   in Loop: Header=BB49_21 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LCPI49_11(%rip), %xmm0
	addsd	.LCPI49_10(%rip), %xmm0
	jmp	.LBB49_192
.LBB49_191:                             #   in Loop: Header=BB49_21 Depth=1
	movl	%ebx, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI49_11(%rip), %xmm1
	movsd	.LCPI49_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB49_192:                             #   in Loop: Header=BB49_21 Depth=1
	mulsd	%xmm2, %xmm0
	movsd	%xmm2, 16(%rsp)                 # 8-byte Spill
	callq	floor@PLT
	mulsd	32(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	24(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB49_220
	jp	.LBB49_220
# %bb.193:                              #   in Loop: Header=BB49_21 Depth=1
	callq	rand@PLT
	andb	$1, %al
	movq	First@GOTPCREL(%rip), %rcx
	movb	%al, (%rcx)
	movzwl	228(%r13), %ebp
	movzwl	459(%r13), %r15d
	movq	POKEMONDEX@GOTPCREL(%rip), %r14
	xorw	%bp, %r15w
	jns	.LBB49_195
	jmp	.LBB49_194
.LBB49_220:                             #   in Loop: Header=BB49_21 Depth=1
	testb	%r14b, %r14b
	js	.LBB49_227
# %bb.221:                              #   in Loop: Header=BB49_21 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	mulsd	.LCPI49_11(%rip), %xmm0
	addsd	.LCPI49_10(%rip), %xmm0
	jmp	.LBB49_228
.LBB49_222:                             #   in Loop: Header=BB49_21 Depth=1
	negl	%ebx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebx, %xmm1
	mulsd	.LCPI49_11(%rip), %xmm1
	movsd	.LCPI49_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB49_223:                             #   in Loop: Header=BB49_21 Depth=1
	movsd	24(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	(%rsp), %xmm1                   # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	testb	%bpl, %bpl
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
	js	.LBB49_225
# %bb.224:                              #   in Loop: Header=BB49_21 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI49_11(%rip), %xmm0
	addsd	.LCPI49_10(%rip), %xmm0
	jmp	.LBB49_226
.LBB49_225:                             #   in Loop: Header=BB49_21 Depth=1
	negl	%ebp
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebp, %xmm1
	mulsd	.LCPI49_11(%rip), %xmm1
	movsd	.LCPI49_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB49_226:                             #   in Loop: Header=BB49_21 Depth=1
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
	jmp	.LBB49_19
.LBB49_227:                             #   in Loop: Header=BB49_21 Depth=1
	negl	%r14d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r14d, %xmm1
	mulsd	.LCPI49_11(%rip), %xmm1
	movsd	.LCPI49_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB49_228:                             #   in Loop: Header=BB49_21 Depth=1
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	(%rsp), %xmm1                   # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	testb	%bl, %bl
	movq	POKEMONDEX@GOTPCREL(%rip), %r14
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
	js	.LBB49_230
# %bb.229:                              #   in Loop: Header=BB49_21 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LCPI49_11(%rip), %xmm0
	addsd	.LCPI49_10(%rip), %xmm0
	jmp	.LBB49_231
.LBB49_230:                             #   in Loop: Header=BB49_21 Depth=1
	negl	%ebx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebx, %xmm1
	mulsd	.LCPI49_11(%rip), %xmm1
	movsd	.LCPI49_10(%rip), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB49_231:                             #   in Loop: Header=BB49_21 Depth=1
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	First@GOTPCREL(%rip), %rax
	seta	(%rax)
	xorw	%bp, %r15w
	jns	.LBB49_195
	jmp	.LBB49_194
.LBB49_232:
	xorl	%eax, %eax
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
.Lfunc_end49:
	.size	Battle, .Lfunc_end49-Battle
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
	movq	%rax, %rbx
	leaq	.L.str.115(%rip), %rdi
	callq	system@PLT
	movl	%ebx, %edi
	callq	srand@PLT
	leaq	.L.str.116(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.117(%rip), %rsi
	movl	$76, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	callq	Battle@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end50:
	.size	main, .Lfunc_end50-main
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
	.long	0x3f800000                      # float 1
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
	.long	0x3f800000                      # float 1
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
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
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
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
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
	.long	0x3f800000                      # float 1
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
	.long	0x3f000000                      # float 0.5
	.long	0x40000000                      # float 2
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
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
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
	.long	0x40000000                      # float 2
	.long	0x3f800000                      # float 1
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
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
	.size	EOPTEXT, 56

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

	.type	AI_MODE,@object                 # @AI_MODE
	.globl	AI_MODE
AI_MODE:
	.byte	0                               # 0x0
	.size	AI_MODE, 1

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
	.byte	229                             # 0xe5
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.zero	10
	.byte	3                               # 0x3
	.asciz	"Scratch\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	11                              # 0xb
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	10
	.byte	7                               # 0x7
	.asciz	"Water Gun\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	26                              # 0x1a
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.zero	10
	.byte	6                               # 0x6
	.asciz	"Vine Whip\000\000\000\000\000\000"
	.byte	45                              # 0x2d
	.byte	228                             # 0xe4
	.byte	43                              # 0x2b
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	10
	.byte	7                               # 0x7
	.asciz	"Ember\000\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	18                              # 0x12
	.byte	2                               # 0x2
	.byte	24                              # 0x18
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Quick Attack\000\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	11                              # 0xb
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	10
	.byte	7                               # 0x7
	.asciz	"Super Attack\000\000\000"
	.byte	120                             # 0x78
	.byte	203                             # 0xcb
	.byte	9                               # 0x9
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	10
	.byte	7                               # 0x7
	.asciz	"Stone Edge\000\000\000\000\000"
	.byte	100                             # 0x64
	.byte	208                             # 0xd0
	.byte	104                             # 0x68
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	10
	.byte	22                              # 0x16
	.asciz	"Gust\000\000\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	83                              # 0x53
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.zero	10
	.byte	6                               # 0x6
	.asciz	"Thunder Shock\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	35                              # 0x23
	.byte	2                               # 0x2
	.byte	24                              # 0x18
	.byte	4                               # 0x4
	.byte	10                              # 0xa
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Thunder Wave\000\000\000"
	.byte	0                               # 0x0
	.byte	90                              # 0x5a
	.byte	34                              # 0x22
	.byte	0                               # 0x0
	.byte	24                              # 0x18
	.byte	4                               # 0x4
	.byte	100                             # 0x64
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Swords Dance\000\000\000"
	.byte	0                               # 0x0
	.byte	101                             # 0x65
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	" \000\000\000d\000\000\000\000"
	.byte	0                               # 0x0
	.asciz	"Dragon Dance\000\000\000"
	.byte	0                               # 0x0
	.byte	101                             # 0x65
	.byte	122                             # 0x7a
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\020\000\020\000d\000\000\000\000"
	.byte	0                               # 0x0
	.asciz	"Will-O-Wisp\000\000\000\000"
	.byte	0                               # 0x0
	.byte	218                             # 0xda
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.byte	24                              # 0x18
	.byte	1                               # 0x1
	.byte	100                             # 0x64
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Spore\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.byte	24                              # 0x18
	.byte	5                               # 0x5
	.byte	100                             # 0x64
	.zero	8
	.byte	14                              # 0xe
	.asciz	"Toxic\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	90                              # 0x5a
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.byte	24                              # 0x18
	.byte	3                               # 0x3
	.byte	100                             # 0x64
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Freeze\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	60                              # 0x3c
	.byte	49                              # 0x31
	.byte	0                               # 0x0
	.byte	24                              # 0x18
	.byte	6                               # 0x6
	.byte	100                             # 0x64
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Bulk Up\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	101                             # 0x65
	.byte	58                              # 0x3a
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\021\000\000\000d\000\000\000\000"
	.byte	0                               # 0x0
	.asciz	"Charm\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	146                             # 0x92
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\240\000\000\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Leer\000\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\t\000\000\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Flash\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Kinesis\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	213                             # 0xd5
	.byte	89                              # 0x59
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Leaf Tornado\000\000\000"
	.byte	65                              # 0x41
	.byte	90                              # 0x5a
	.byte	41                              # 0x29
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\224\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Mirror Shot\000\000\000\000"
	.byte	65                              # 0x41
	.byte	85                              # 0x55
	.byte	137                             # 0x89
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\236\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Mud Bomb\000\000\000\000\000\000\000"
	.byte	65                              # 0x41
	.byte	85                              # 0x55
	.byte	73                              # 0x49
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\236\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Mud-Slap\000\000\000\000\000\000\000"
	.byte	20                              # 0x14
	.byte	100                             # 0x64
	.byte	73                              # 0x49
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Muddy Water\000\000\000\000"
	.byte	95                              # 0x5f
	.byte	85                              # 0x55
	.byte	25                              # 0x19
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\236\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Night Daze\000\000\000\000\000"
	.byte	85                              # 0x55
	.byte	95                              # 0x5f
	.byte	129                             # 0x81
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\250\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Octazooka\000\000\000\000\000\000"
	.byte	65                              # 0x41
	.byte	85                              # 0x55
	.byte	25                              # 0x19
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\262\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Sand Attack\000\000\000\000"
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	2                               # 0x2
	.asciz	"Smoke Screen\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	2                               # 0x2
	.asciz	"Aurora Beam\000\000\000\000"
	.byte	65                              # 0x41
	.byte	100                             # 0x64
	.byte	50                              # 0x32
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.asciz	"\220\000\000\000\212\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Baby-Doll Eyes\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	147                             # 0x93
	.byte	4                               # 0x4
	.byte	16                              # 0x10
	.asciz	"\220\000\000\000\344\000\000\000\000"
	.byte	2                               # 0x2
	.asciz	"Breaking Swipe\000"
	.byte	60                              # 0x3c
	.byte	228                             # 0xe4
	.byte	121                             # 0x79
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.asciz	"\220\000\000\000\344\000\000\000\000"
	.byte	7                               # 0x7
	.asciz	"Protect\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	101                             # 0x65
	.byte	9                               # 0x9
	.byte	16                              # 0x10
	.byte	32                              # 0x20
	.zero	10
	.byte	0                               # 0x0
	.asciz	"Mercury Shot\000\000\000"
	.byte	70                              # 0x46
	.byte	218                             # 0xda
	.byte	137                             # 0x89
	.byte	2                               # 0x2
	.byte	24                              # 0x18
	.byte	2                               # 0x2
	.byte	20                              # 0x14
	.zero	8
	.byte	6                               # 0x6
	.asciz	"Superpower\000\000\000\000\000"
	.byte	120                             # 0x78
	.byte	228                             # 0xe4
	.byte	56                              # 0x38
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.asciz	"\231\000\000\000d\000\000\000\000"
	.byte	7                               # 0x7
	.asciz	"Dragon Tail\000\000\000\000"
	.byte	60                              # 0x3c
	.byte	90                              # 0x5a
	.byte	121                             # 0x79
	.byte	41                              # 0x29
	.byte	40                              # 0x28
	.zero	10
	.byte	7                               # 0x7
	.asciz	"Roar\000\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	101                             # 0x65
	.byte	10                              # 0xa
	.byte	40                              # 0x28
	.byte	40                              # 0x28
	.zero	10
	.byte	0                               # 0x0
	.asciz	"Icicle Crash\000\000\000"
	.byte	85                              # 0x55
	.byte	90                              # 0x5a
	.byte	49                              # 0x31
	.byte	1                               # 0x1
	.byte	24                              # 0x18
	.byte	8                               # 0x8
	.byte	30                              # 0x1e
	.zero	8
	.byte	2                               # 0x2
	.asciz	"Confuse Ray\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	113                             # 0x71
	.byte	0                               # 0x0
	.byte	24                              # 0x18
	.byte	7                               # 0x7
	.byte	100                             # 0x64
	.zero	8
	.byte	2                               # 0x2
	.asciz	"Feather Dance\000\000"
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	81                              # 0x51
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\240\000\000\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Growl\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\220\000\000\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Luminous Glow\000\000"
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	162                             # 0xa2
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.asciz	"\000\020\020\000d\000\000\000\000"
	.byte	0                               # 0x0
	.asciz	"Earthquake\000\000\000\000\000"
	.byte	100                             # 0x64
	.byte	100                             # 0x64
	.byte	73                              # 0x49
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	10
	.byte	6                               # 0x6
	.asciz	"Giga Drain\000\000\000\000\000"
	.byte	75                              # 0x4b
	.byte	100                             # 0x64
	.byte	41                              # 0x29
	.byte	2                               # 0x2
	.byte	48                              # 0x30
	.byte	50                              # 0x32
	.zero	9
	.byte	6                               # 0x6
	.asciz	"Blinding Flash\000"
	.byte	120                             # 0x78
	.byte	229                             # 0xe5
	.byte	160                             # 0xa0
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.asciz	"\000\000\013\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Blindstrike\000\000\000\000"
	.byte	75                              # 0x4b
	.byte	218                             # 0xda
	.byte	161                             # 0xa1
	.byte	21                              # 0x15
	.byte	16                              # 0x10
	.asciz	"\000\000\t\000\344\000\000\000\000"
	.byte	6                               # 0x6
	.asciz	"Web Blast\000\000\000\000\000\000"
	.byte	80                              # 0x50
	.byte	228                             # 0xe4
	.byte	97                              # 0x61
	.byte	194                             # 0xc2
	.byte	16                              # 0x10
	.asciz	"\000\000\220\000\262\0072\000\000"
	.byte	6                               # 0x6
	.asciz	"Illusion Field\000"
	.byte	0                               # 0x0
	.byte	101                             # 0x65
	.byte	2                               # 0x2
	.byte	192                             # 0xc0
	.byte	56                              # 0x38
	.asciz	"\n\000\000\000\000\007d\000\000"
	.byte	0                               # 0x0
	.size	MoveList, 1632

	.type	Empty_slot,@object              # @Empty_slot
	.data
	.globl	Empty_slot
	.p2align	2
Empty_slot:
	.byte	0                               # 0x0
	.byte	65                              # 0x41
	.zero	2
	.size	Empty_slot, 4

	.type	Struggle_Slot,@object           # @Struggle_Slot
	.globl	Struggle_Slot
	.p2align	2
Struggle_Slot:
	.byte	1                               # 0x1
	.byte	65                              # 0x41
	.zero	2
	.size	Struggle_Slot, 4

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
	.asciz	"%s%s is already at full health!\n"
	.size	.L.str.8, 33

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
	.globl	AbilityList
	.p2align	4
AbilityList:
	.asciz	"NoAbility\000\000\000\000\000"
	.byte	0                               # 0x0
	.zero	2
	.asciz	"Overgrow\000\000\000\000\000\000"
	.byte	1                               # 0x1
	.ascii	"\005\003"
	.asciz	"Blaze\000\000\000\000\000\000\000\000\000"
	.byte	1                               # 0x1
	.ascii	"\002\003"
	.asciz	"Torrent\000\000\000\000\000\000\000"
	.byte	1                               # 0x1
	.zero	2,3
	.asciz	"Swarm\000\000\000\000\000\000\000\000\000"
	.byte	1                               # 0x1
	.ascii	"\f\003"
	.asciz	"Clear Body\000\000\000\000"
	.byte	2                               # 0x2
	.ascii	"\377\002"
	.asciz	"Big Pecks\000\000\000\000\000"
	.byte	2                               # 0x2
	.zero	2,2
	.asciz	"Hyper Cutter\000\000"
	.byte	2                               # 0x2
	.ascii	"\001\002"
	.asciz	"Aerilate\000\000\000\000\000\000"
	.byte	3                               # 0x3
	.ascii	"\n\206"
	.asciz	"Pixilate\000\000\000\000\000\000"
	.byte	3                               # 0x3
	.ascii	"\f\206"
	.asciz	"Frozen Wing\000\000\000"
	.byte	3                               # 0x3
	.ascii	"Q\240"
	.asciz	"Galvanize\000\000\000\000\000"
	.byte	3                               # 0x3
	.ascii	"\t\f"
	.asciz	"Levitate\000\000\000\000\000\000"
	.byte	4                               # 0x4
	.asciz	"H"
	.asciz	"Water Absorb\000\000"
	.byte	4                               # 0x4
	.zero	2,25
	.asciz	"Motor Drive\000\000\000"
	.byte	4                               # 0x4
	.ascii	"\"\201"
	.size	AbilityList, 270

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"%s%s regained some hp!\n"
	.size	.L.str.10, 24

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
	.asciz	"Roasinaught\000\000\000\000"
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
	.byte	64                              # 0x40
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
	.size	POKEMONDEX, 1176

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"%s restored a little HP using its Leftovers\n"
	.size	.L.str.12, 45

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%s is at %d/%d hp\n\n"
	.size	.L.str.13, 20

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%s hung on with its Focus Sash!\n"
	.size	.L.str.14, 33

	.type	ITEM_FUNC_LIST,@object          # @ITEM_FUNC_LIST
	.data
	.globl	ITEM_FUNC_LIST
	.p2align	4
ITEM_FUNC_LIST:
	.quad	NoItemf
	.quad	Leftoversf
	.quad	Focus_Sashf
	.size	ITEM_FUNC_LIST, 24

	.type	ItemList,@object                # @ItemList
	.globl	ItemList
	.p2align	4
ItemList:
	.asciz	"Nothing\000\000\000\000"
	.byte	0                               # 0x0
	.zero	2
	.asciz	"Leftovers\000\000"
	.byte	1                               # 0x1
	.zero	2
	.asciz	"Focus Sash\000"
	.byte	2                               # 0x2
	.zero	2
	.size	ItemList, 45

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"\033[1;37m\nP%d:\033[0m\n"
	.size	.L.str.15, 18

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Pokemon: %s\n"
	.size	.L.str.16, 13

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Health: %d/%d\n"
	.size	.L.str.17, 15

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Attack: %d\n"
	.size	.L.str.18, 12

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Defense: %d\n"
	.size	.L.str.19, 13

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Special Attack: %d\n"
	.size	.L.str.20, 20

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Special Defense: %d\n"
	.size	.L.str.21, 21

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Speed: %d\n"
	.size	.L.str.22, 11

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Nature: %s\n"
	.size	.L.str.23, 12

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Move 1: %s %d/%.0f\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Move 2: %s %d/%.0f\n"
	.size	.L.str.25, 20

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Move 3: %s %d/%.0f\n"
	.size	.L.str.26, 20

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Move 4: %s %d/%.0f\n"
	.size	.L.str.27, 20

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Item: %s (%s)\n"
	.size	.L.str.28, 15

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Ability: %s\n"
	.size	.L.str.29, 13

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Status: %s\n"
	.size	.L.str.30, 12

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"\n\033[1;37mP1:\033[0m %s %d/%d\n"
	.size	.L.str.31, 26

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"\033[1;37mP2:\033[0m %s %d/%d\n"
	.size	.L.str.32, 25

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\033[1;37mP3:\033[0m %s %d/%d\n"
	.size	.L.str.33, 25

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"\033[1;37mP4:\033[0m %s %d/%d\n"
	.size	.L.str.34, 25

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"\033[1;37mP5:\033[0m %s %d/%d\n"
	.size	.L.str.35, 25

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"\033[1;37mP6:\033[0m %s %d/%d\n"
	.size	.L.str.36, 25

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"\nPartyMember: "
	.size	.L.str.37, 15

	.type	x,@object                       # @x
	.bss
	.globl	x
	.p2align	4
x:
	.zero	32
	.size	x, 32

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"\n"
	.size	.L.str.38, 2

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"P1"
	.size	.L.str.39, 3

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"P2"
	.size	.L.str.40, 3

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"P3"
	.size	.L.str.41, 3

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"P4"
	.size	.L.str.42, 3

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"P5"
	.size	.L.str.43, 3

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"P6"
	.size	.L.str.44, 3

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"The Player has won\n"
	.size	.L.str.45, 20

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"The Enemy has won\n"
	.size	.L.str.46, 19

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Do you want to play again? (y/n): "
	.size	.L.str.47, 35

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Switch-In: "
	.size	.L.str.49, 12

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"/bin/stty echo"
	.size	.L.str.50, 15

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"/bin/stty -echo"
	.size	.L.str.51, 16

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Switch to P2"
	.size	.L.str.52, 13

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"Switch to "
	.size	.L.str.53, 11

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Go! %s!\n"
	.size	.L.str.54, 9

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"That pokemon is already fainted\n"
	.size	.L.str.55, 33

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Switch to P3"
	.size	.L.str.56, 13

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Switch to P4"
	.size	.L.str.57, 13

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"Switch to P5"
	.size	.L.str.58, 13

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Switch to P6"
	.size	.L.str.59, 13

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"View Party"
	.size	.L.str.60, 11

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"View"
	.size	.L.str.61, 5

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"Party"
	.size	.L.str.62, 6

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"\033[1A"
	.size	.L.str.63, 5

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"\033[2K"
	.size	.L.str.64, 5

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"That is not a valid switch. Please Try Again.\n"
	.size	.L.str.65, 47

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%s%s used %s!\n"
	.size	.L.str.66, 15

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"But it missed!\n"
	.size	.L.str.67, 16

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%s%s couldn't move\n"
	.size	.L.str.68, 20

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"It flinched!\n"
	.size	.L.str.69, 14

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"It was paralyzed!\n"
	.size	.L.str.70, 19

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"It is asleep\n"
	.size	.L.str.71, 14

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"It is frozen!\n"
	.size	.L.str.72, 15

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"It did %d damage!\n"
	.size	.L.str.73, 19

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"It was super effective!\n"
	.size	.L.str.74, 25

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"It dosen't affect %s\n"
	.size	.L.str.75, 22

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"It was not very effective!\n"
	.size	.L.str.76, 28

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"It was a critical hit!\n"
	.size	.L.str.77, 24

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"%s%s protected itself!\n"
	.size	.L.str.78, 24

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"It had no effect on %s%s...\n"
	.size	.L.str.79, 29

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"%s%s fainted!\n"
	.size	.L.str.80, 15

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"It hurt itself in its confusion\n"
	.size	.L.str.81, 33

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"%s%s is at %d/%d\n"
	.size	.L.str.82, 18

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"%s%s woke up\n"
	.size	.L.str.83, 14

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"%s%s thawed out\n"
	.size	.L.str.84, 17

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"%s%s is confused!\n"
	.size	.L.str.85, 19

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"%s%s snapped out of its confusion!\n"
	.size	.L.str.86, 36

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"%s, that's enough!\nCome back!\n"
	.size	.L.str.87, 31

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"%s took some damage from its burn!\n"
	.size	.L.str.88, 36

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"%s is hurt poison!\n"
	.size	.L.str.89, 20

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"%s is hurt by poison! (it's badly poisoned)\n"
	.size	.L.str.90, 45

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"\033[1F%s fainted!\n"
	.size	.L.str.91, 17

	.type	Pokemon1,@object                # @Pokemon1
	.data
	.globl	Pokemon1
	.p2align	2
Pokemon1:
	.byte	26                              # 0x1a
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	20                              # 0x14
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	237                             # 0xed
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	50                              # 0x32
	.byte	192                             # 0xc0
	.zero	2
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.zero	2
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.zero	2
	.byte	48                              # 0x30
	.byte	192                             # 0xc0
	.zero	2
	.byte	0                               # 0x0
	.byte	180                             # 0xb4
	.byte	92                              # 0x5c
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	236                             # 0xec
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	Pokemon1, 76

	.type	Pokemon2,@object                # @Pokemon2
	.globl	Pokemon2
	.p2align	2
Pokemon2:
	.byte	48                              # 0x30
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	20                              # 0x14
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	238                             # 0xee
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	44                              # 0x2c
	.byte	192                             # 0xc0
	.zero	2
	.byte	47                              # 0x2f
	.byte	192                             # 0xc0
	.zero	2
	.byte	7                               # 0x7
	.byte	192                             # 0xc0
	.zero	2
	.byte	26                              # 0x1a
	.byte	192                             # 0xc0
	.zero	2
	.byte	0                               # 0x0
	.byte	236                             # 0xec
	.byte	36                              # 0x24
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	Pokemon2, 76

	.type	Pokemon3,@object                # @Pokemon3
	.globl	Pokemon3
	.p2align	2
Pokemon3:
	.byte	15                              # 0xf
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	22                              # 0x16
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	232                             # 0xe8
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	6                               # 0x6
	.byte	192                             # 0xc0
	.zero	2
	.byte	8                               # 0x8
	.byte	192                             # 0xc0
	.zero	2
	.byte	7                               # 0x7
	.byte	192                             # 0xc0
	.zero	2
	.byte	4                               # 0x4
	.byte	192                             # 0xc0
	.zero	2
	.byte	76                              # 0x4c
	.byte	44                              # 0x2c
	.byte	204                             # 0xcc
	.byte	156                             # 0x9c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	Pokemon3, 76

	.type	Pokemon4,@object                # @Pokemon4
	.globl	Pokemon4
	.p2align	2
Pokemon4:
	.byte	32                              # 0x20
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	21                              # 0x15
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	232                             # 0xe8
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	6                               # 0x6
	.byte	192                             # 0xc0
	.zero	2
	.byte	8                               # 0x8
	.byte	192                             # 0xc0
	.zero	2
	.byte	18                              # 0x12
	.byte	192                             # 0xc0
	.zero	2
	.byte	4                               # 0x4
	.byte	192                             # 0xc0
	.zero	2
	.byte	4                               # 0x4
	.byte	212                             # 0xd4
	.byte	156                             # 0x9c
	.byte	36                              # 0x24
	.byte	84                              # 0x54
	.byte	12                              # 0xc
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	Pokemon4, 76

	.type	Pokemon5,@object                # @Pokemon5
	.globl	Pokemon5
	.p2align	2
Pokemon5:
	.byte	28                              # 0x1c
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	20                              # 0x14
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	237                             # 0xed
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	6                               # 0x6
	.byte	192                             # 0xc0
	.zero	2
	.byte	8                               # 0x8
	.byte	192                             # 0xc0
	.zero	2
	.byte	4                               # 0x4
	.byte	192                             # 0xc0
	.zero	2
	.byte	5                               # 0x5
	.byte	192                             # 0xc0
	.zero	2
	.byte	0                               # 0x0
	.byte	180                             # 0xb4
	.byte	92                              # 0x5c
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	236                             # 0xec
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	Pokemon5, 76

	.type	Pokemon6,@object                # @Pokemon6
	.globl	Pokemon6
	.p2align	2
Pokemon6:
	.byte	35                              # 0x23
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	20                              # 0x14
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	238                             # 0xee
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	6                               # 0x6
	.byte	192                             # 0xc0
	.zero	2
	.byte	8                               # 0x8
	.byte	192                             # 0xc0
	.zero	2
	.byte	7                               # 0x7
	.byte	192                             # 0xc0
	.zero	2
	.byte	9                               # 0x9
	.byte	192                             # 0xc0
	.zero	2
	.byte	0                               # 0x0
	.byte	236                             # 0xec
	.byte	36                              # 0x24
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	Pokemon6, 76

	.type	EnemyPokemon1,@object           # @EnemyPokemon1
	.globl	EnemyPokemon1
	.p2align	2
EnemyPokemon1:
	.byte	9                               # 0x9
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	20                              # 0x14
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	237                             # 0xed
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	49                              # 0x31
	.byte	192                             # 0xc0
	.zero	2
	.byte	8                               # 0x8
	.byte	192                             # 0xc0
	.zero	2
	.byte	35                              # 0x23
	.byte	192                             # 0xc0
	.zero	2
	.byte	45                              # 0x2d
	.byte	192                             # 0xc0
	.zero	2
	.byte	0                               # 0x0
	.byte	180                             # 0xb4
	.byte	92                              # 0x5c
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	236                             # 0xec
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	EnemyPokemon1, 76

	.type	EnemyPokemon2,@object           # @EnemyPokemon2
	.globl	EnemyPokemon2
	.p2align	2
EnemyPokemon2:
	.byte	19                              # 0x13
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	20                              # 0x14
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	238                             # 0xee
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	6                               # 0x6
	.byte	192                             # 0xc0
	.zero	2
	.byte	8                               # 0x8
	.byte	192                             # 0xc0
	.zero	2
	.byte	7                               # 0x7
	.byte	192                             # 0xc0
	.zero	2
	.byte	30                              # 0x1e
	.byte	192                             # 0xc0
	.zero	2
	.byte	0                               # 0x0
	.byte	236                             # 0xec
	.byte	36                              # 0x24
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	EnemyPokemon2, 76

	.type	EnemyPokemon3,@object           # @EnemyPokemon3
	.globl	EnemyPokemon3
	.p2align	2
EnemyPokemon3:
	.byte	4                               # 0x4
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	22                              # 0x16
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	232                             # 0xe8
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	6                               # 0x6
	.byte	192                             # 0xc0
	.zero	2
	.byte	8                               # 0x8
	.byte	192                             # 0xc0
	.zero	2
	.byte	7                               # 0x7
	.byte	192                             # 0xc0
	.zero	2
	.byte	4                               # 0x4
	.byte	192                             # 0xc0
	.zero	2
	.byte	76                              # 0x4c
	.byte	44                              # 0x2c
	.byte	204                             # 0xcc
	.byte	156                             # 0x9c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	EnemyPokemon3, 76

	.type	EnemyPokemon4,@object           # @EnemyPokemon4
	.globl	EnemyPokemon4
	.p2align	2
EnemyPokemon4:
	.byte	25                              # 0x19
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	21                              # 0x15
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	232                             # 0xe8
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	6                               # 0x6
	.byte	192                             # 0xc0
	.zero	2
	.byte	8                               # 0x8
	.byte	192                             # 0xc0
	.zero	2
	.byte	18                              # 0x12
	.byte	192                             # 0xc0
	.zero	2
	.byte	14                              # 0xe
	.byte	192                             # 0xc0
	.zero	2
	.byte	4                               # 0x4
	.byte	212                             # 0xd4
	.byte	156                             # 0x9c
	.byte	36                              # 0x24
	.byte	84                              # 0x54
	.byte	12                              # 0xc
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	EnemyPokemon4, 76

	.type	EnemyPokemon5,@object           # @EnemyPokemon5
	.globl	EnemyPokemon5
	.p2align	2
EnemyPokemon5:
	.byte	30                              # 0x1e
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	20                              # 0x14
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	237                             # 0xed
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	6                               # 0x6
	.byte	192                             # 0xc0
	.zero	2
	.byte	8                               # 0x8
	.byte	192                             # 0xc0
	.zero	2
	.byte	4                               # 0x4
	.byte	192                             # 0xc0
	.zero	2
	.byte	5                               # 0x5
	.byte	192                             # 0xc0
	.zero	2
	.byte	0                               # 0x0
	.byte	180                             # 0xb4
	.byte	92                              # 0x5c
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	236                             # 0xec
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	EnemyPokemon5, 76

	.type	EnemyPokemon6,@object           # @EnemyPokemon6
	.globl	EnemyPokemon6
	.p2align	2
EnemyPokemon6:
	.byte	29                              # 0x1d
	.byte	144                             # 0x90
	.byte	1                               # 0x1
	.zero	1
	.long	20                              # 0x14
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	238                             # 0xee
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.zero	1
	.byte	6                               # 0x6
	.byte	192                             # 0xc0
	.zero	2
	.byte	8                               # 0x8
	.byte	192                             # 0xc0
	.zero	2
	.byte	7                               # 0x7
	.byte	192                             # 0xc0
	.zero	2
	.byte	9                               # 0x9
	.byte	192                             # 0xc0
	.zero	2
	.byte	0                               # 0x0
	.byte	236                             # 0xec
	.byte	36                              # 0x24
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	228                             # 0xe4
	.zero	2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	8
	.byte	0                               # 0x0
	.zero	1
	.size	EnemyPokemon6, 76

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
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.zero	16
	.zero	128
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.quad	EnemyPokemon1
	.quad	EnemyPokemon2
	.quad	EnemyPokemon3
	.quad	EnemyPokemon4
	.quad	EnemyPokemon5
	.quad	EnemyPokemon6
	.quad	0
	.long	0                               # 0x0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.zero	16
	.zero	128
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.size	Parties, 462

	.type	.L.str.93,@object               # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"\nHeal? (y/n): "
	.size	.L.str.93, 15

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"Hide Moves? (y/n): "
	.size	.L.str.94, 20

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"Turn on Ai? (y/n): "
	.size	.L.str.95, 20

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Go %s!\n"
	.size	.L.str.96, 8

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"The Enemy sent out %s!\n\n"
	.size	.L.str.97, 25

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"\033[100m\033[3m\033[1mTURN: %d\033[0m\n\n"
	.size	.L.str.98, 29

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Enter your move: "
	.size	.L.str.99, 18

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Move 1"
	.size	.L.str.101, 7

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"There is no move in that slot."
	.size	.L.str.102, 31

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"There no more PP left in that move"
	.size	.L.str.103, 35

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"Move 2"
	.size	.L.str.105, 7

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"Move 3"
	.size	.L.str.107, 7

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"Move 4"
	.size	.L.str.109, 7

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"NoPoke"
	.size	.L.str.110, 7

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"Move Selection Failed. Please retry."
	.size	.L.str.111, 37

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"\033[2A"
	.size	.L.str.112, 5

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"\nEnter enemy's move: "
	.size	.L.str.113, 22

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"\n\n"
	.size	.L.str.114, 3

	.type	EndFirst,@object                # @EndFirst
	.bss
	.globl	EndFirst
EndFirst:
	.byte	0                               # 0x0
	.size	EndFirst, 1

	.type	.L.str.115,@object              # @.str.115
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.115:
	.asciz	"clear"
	.size	.L.str.115, 6

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"%d\n"
	.size	.L.str.116, 4

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"%lu\n"
	.size	.L.str.117, 5

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
	.addrsig_sym strcpy
	.addrsig_sym strcat
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
	.addrsig_sym Parties
