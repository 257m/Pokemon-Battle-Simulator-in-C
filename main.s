	.text
	.file	"main.c"
	.globl	stratt                          # -- Begin function stratt
	.p2align	4, 0x90
	.type	stratt,@function
stratt:                                 # @stratt
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
	movl	%esi, %ebx
	movslq	%edi, %rsi
	leaq	c(%rip), %r14
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movslq	%ebx, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcat_chk@PLT
	movl	%r14d, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
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
	notb	%dil
	shrb	$7, %dil
	movzbl	%dil, %eax
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
	.globl	UTL_ATTACKF                     # -- Begin function UTL_ATTACKF
	.p2align	4, 0x90
	.type	UTL_ATTACKF,@function
UTL_ATTACKF:                            # @UTL_ATTACKF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end7:
	.size	UTL_ATTACKF, .Lfunc_end7-UTL_ATTACKF
	.cfi_endproc
                                        # -- End function
	.globl	UTL_DEFENSEF                    # -- Begin function UTL_DEFENSEF
	.p2align	4, 0x90
	.type	UTL_DEFENSEF,@function
UTL_DEFENSEF:                           # @UTL_DEFENSEF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end8:
	.size	UTL_DEFENSEF, .Lfunc_end8-UTL_DEFENSEF
	.cfi_endproc
                                        # -- End function
	.globl	UTL_SP_DEFF                     # -- Begin function UTL_SP_DEFF
	.p2align	4, 0x90
	.type	UTL_SP_DEFF,@function
UTL_SP_DEFF:                            # @UTL_SP_DEFF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end9:
	.size	UTL_SP_DEFF, .Lfunc_end9-UTL_SP_DEFF
	.cfi_endproc
                                        # -- End function
	.globl	UTL_SP_ATKF                     # -- Begin function UTL_SP_ATKF
	.p2align	4, 0x90
	.type	UTL_SP_ATKF,@function
UTL_SP_ATKF:                            # @UTL_SP_ATKF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end10:
	.size	UTL_SP_ATKF, .Lfunc_end10-UTL_SP_ATKF
	.cfi_endproc
                                        # -- End function
	.globl	UTL_SPEEDF                      # -- Begin function UTL_SPEEDF
	.p2align	4, 0x90
	.type	UTL_SPEEDF,@function
UTL_SPEEDF:                             # @UTL_SPEEDF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end11:
	.size	UTL_SPEEDF, .Lfunc_end11-UTL_SPEEDF
	.cfi_endproc
                                        # -- End function
	.globl	UTL_ACCURACYF                   # -- Begin function UTL_ACCURACYF
	.p2align	4, 0x90
	.type	UTL_ACCURACYF,@function
UTL_ACCURACYF:                          # @UTL_ACCURACYF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end12:
	.size	UTL_ACCURACYF, .Lfunc_end12-UTL_ACCURACYF
	.cfi_endproc
                                        # -- End function
	.globl	UTL_EVASIONF                    # -- Begin function UTL_EVASIONF
	.p2align	4, 0x90
	.type	UTL_EVASIONF,@function
UTL_EVASIONF:                           # @UTL_EVASIONF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end13:
	.size	UTL_EVASIONF, .Lfunc_end13-UTL_EVASIONF
	.cfi_endproc
                                        # -- End function
	.globl	UTL_CRIT_CHANCEF                # -- Begin function UTL_CRIT_CHANCEF
	.p2align	4, 0x90
	.type	UTL_CRIT_CHANCEF,@function
UTL_CRIT_CHANCEF:                       # @UTL_CRIT_CHANCEF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end14:
	.size	UTL_CRIT_CHANCEF, .Lfunc_end14-UTL_CRIT_CHANCEF
	.cfi_endproc
                                        # -- End function
	.globl	LEECH_SEEDF                     # -- Begin function LEECH_SEEDF
	.p2align	4, 0x90
	.type	LEECH_SEEDF,@function
LEECH_SEEDF:                            # @LEECH_SEEDF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end15:
	.size	LEECH_SEEDF, .Lfunc_end15-LEECH_SEEDF
	.cfi_endproc
                                        # -- End function
	.globl	PERISH_SONGF                    # -- Begin function PERISH_SONGF
	.p2align	4, 0x90
	.type	PERISH_SONGF,@function
PERISH_SONGF:                           # @PERISH_SONGF
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end16:
	.size	PERISH_SONGF, .Lfunc_end16-PERISH_SONGF
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
	movl	%esi, %ebx
	movl	%edi, %ebp
	movq	Parties@GOTPCREL(%rip), %r14
	movq	48(%r14), %rax
	testb	$1, %al
	jne	.LBB17_1
# %bb.2:
	testb	$2, %al
	jne	.LBB17_3
.LBB17_4:
	testb	$4, %al
	jne	.LBB17_5
.LBB17_6:
	testb	$8, %al
	jne	.LBB17_7
.LBB17_8:
	testb	$16, %al
	jne	.LBB17_9
.LBB17_10:
	testb	$32, %al
	jne	.LBB17_11
.LBB17_12:
	testb	$64, %al
	jne	.LBB17_13
.LBB17_14:
	testb	%al, %al
	js	.LBB17_15
.LBB17_16:
	testl	$256, %eax                      # imm = 0x100
	jne	.LBB17_17
.LBB17_18:
	testl	$512, %eax                      # imm = 0x200
	jne	.LBB17_20
.LBB17_19:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB17_1:
	.cfi_def_cfa_offset 32
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movsbl	%bpl, %edi
	movzbl	%bl, %esi
	callq	*(%rax)
	movq	48(%r14), %rax
	testb	$2, %al
	je	.LBB17_4
.LBB17_3:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movsbl	%bpl, %edi
	movzbl	%bl, %esi
	callq	*8(%rax)
	movq	48(%r14), %rax
	testb	$4, %al
	je	.LBB17_6
.LBB17_5:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movsbl	%bpl, %edi
	movzbl	%bl, %esi
	callq	*16(%rax)
	movq	48(%r14), %rax
	testb	$8, %al
	je	.LBB17_8
.LBB17_7:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movsbl	%bpl, %edi
	movzbl	%bl, %esi
	callq	*24(%rax)
	movq	48(%r14), %rax
	testb	$16, %al
	je	.LBB17_10
.LBB17_9:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movsbl	%bpl, %edi
	movzbl	%bl, %esi
	callq	*32(%rax)
	movq	48(%r14), %rax
	testb	$32, %al
	je	.LBB17_12
.LBB17_11:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movsbl	%bpl, %edi
	movzbl	%bl, %esi
	callq	*40(%rax)
	movq	48(%r14), %rax
	testb	$64, %al
	je	.LBB17_14
.LBB17_13:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movsbl	%bpl, %edi
	movzbl	%bl, %esi
	callq	*48(%rax)
	movq	48(%r14), %rax
	testb	%al, %al
	jns	.LBB17_16
.LBB17_15:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movsbl	%bpl, %edi
	movzbl	%bl, %esi
	callq	*56(%rax)
	movq	48(%r14), %rax
	testl	$256, %eax                      # imm = 0x100
	je	.LBB17_18
.LBB17_17:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movsbl	%bpl, %edi
	movzbl	%bl, %esi
	callq	*64(%rax)
	movq	48(%r14), %rax
	testl	$512, %eax                      # imm = 0x200
	je	.LBB17_19
.LBB17_20:
	movq	EFFECT_FUNC_LIST@GOTPCREL(%rip), %rax
	movq	72(%rax), %rax
	movsbl	%bpl, %edi
	movzbl	%bl, %esi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmpq	*%rax                           # TAILCALL
.Lfunc_end17:
	.size	ACTIVATE_EFFECTS, .Lfunc_end17-ACTIVATE_EFFECTS
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function CLEAR_EFFECTS
.LCPI18_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI18_1:
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
.LCPI18_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI18_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI18_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI18_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI18_6:
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
	movapd	.LCPI18_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%rax), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI18_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI18_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI18_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI18_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI18_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI18_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB18_1
# %bb.2:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%rax)
	retq
.Lfunc_end18:
	.size	CLEAR_EFFECTS, .Lfunc_end18-CLEAR_EFFECTS
	.cfi_endproc
                                        # -- End function
	.globl	Boost                           # -- Begin function Boost
	.p2align	4, 0x90
	.type	Boost,@function
Boost:                                  # @Boost
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	addb	74(%rdx,%rax), %sil
	movb	%sil, 74(%rdx,%rax)
	movb	$6, %cl
	cmpb	$6, %sil
	jg	.LBB19_2
# %bb.1:
	movb	$-6, %cl
	cmpb	$-7, %sil
	jg	.LBB19_3
.LBB19_2:
	movb	%cl, 74(%rdx,%rax)
.LBB19_3:
	retq
.Lfunc_end19:
	.size	Boost, .Lfunc_end19-Boost
	.cfi_endproc
                                        # -- End function
	.globl	Boostandprint                   # -- Begin function Boostandprint
	.p2align	4, 0x90
	.type	Boostandprint,@function
Boostandprint:                          # @Boostandprint
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 16(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	testb	%cl, %cl
	je	.LBB20_2
# %bb.1:
	movabsq	$9120923167977328, %rax         # imm = 0x20676E69736F70
	movq	%rax, 6(%rsp)
	movabsq	$8030041758188791892, %rax      # imm = 0x6F70706F20656854
	movq	%rax, (%rsp)
.LBB20_2:
	movzbl	%dil, %r8d
	movsbl	74(%rdx,%r8), %eax
	cmpl	$6, %eax
	jl	.LBB20_5
# %bb.3:
	movb	$6, 74(%rdx,%r8)
	movq	(%rdx), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str.1(%rip), %rsi
	jmp	.LBB20_4
.LBB20_5:
	cmpb	$-6, %al
	jg	.LBB20_7
# %bb.6:
	movb	$-6, 74(%rdx,%r8)
	movq	(%rdx), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str.2(%rip), %rsi
.LBB20_4:
	movq	%rsp, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB20_12
.LBB20_7:
	movsbl	%sil, %ecx
	testb	%cl, %cl
	jle	.LBB20_9
# %bb.8:
	movl	%eax, %esi
	addl	%ecx, %esi
	leal	-6(%rsi), %edi
	cmpl	$6, %esi
	movzbl	%dil, %esi
	movzbl	%cl, %ecx
	cmovgl	%esi, %ecx
	movsbl	%cl, %r9d
	addl	%r9d, %eax
	movb	%al, 74(%rdx,%r8)
	movq	(%rdx), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str.3(%rip), %rsi
.LBB20_11:
	movq	%rsp, %rdx
	movl	$1, %edi
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB20_12
.LBB20_9:
	js	.LBB20_10
.LBB20_12:
	movq	%fs:40, %rax
	cmpq	16(%rsp), %rax
	jne	.LBB20_14
# %bb.13:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB20_10:
	.cfi_def_cfa_offset 32
	movl	%eax, %esi
	addl	%ecx, %esi
	leal	6(%rsi), %edi
	cmpl	$-6, %esi
	movzbl	%dil, %esi
	movzbl	%cl, %ecx
	cmovll	%esi, %ecx
	movsbl	%cl, %r9d
	addl	%r9d, %eax
	movb	%al, 74(%rdx,%r8)
	movq	(%rdx), %rcx
	shlq	$4, %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	negl	%r9d
	leaq	.L.str.4(%rip), %rsi
	jmp	.LBB20_11
.LBB20_14:
	callq	__stack_chk_fail@PLT
.Lfunc_end20:
	.size	Boostandprint, .Lfunc_end20-Boostandprint
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
	jb	.LBB21_2
	.p2align	4, 0x90
.LBB21_1:                               # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483600, %eax               # imm = 0x7FFFFFD0
	ja	.LBB21_1
.LBB21_2:
	movl	%eax, %ecx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movzbl	%bl, %ecx
	cmpl	%ecx, %eax
	jae	.LBB21_7
# %bb.3:
	movzbl	%r14b, %eax
	addb	74(%r15,%rax), %bpl
	movb	%bpl, 74(%r15,%rax)
	cmpb	$7, %bpl
	jl	.LBB21_5
# %bb.4:
	movb	$6, 74(%r15,%rax)
	jmp	.LBB21_7
.LBB21_5:
	cmpb	$-7, %bpl
	jg	.LBB21_7
# %bb.6:
	movb	$-6, 74(%r15,%rax)
.LBB21_7:
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
.Lfunc_end21:
	.size	BoostChance, .Lfunc_end21-BoostChance
	.cfi_endproc
                                        # -- End function
	.globl	ResetBoosts                     # -- Begin function ResetBoosts
	.p2align	4, 0x90
	.type	ResetBoosts,@function
ResetBoosts:                            # @ResetBoosts
	.cfi_startproc
# %bb.0:
	movq	$0, 74(%rdi)
	retq
.Lfunc_end22:
	.size	ResetBoosts, .Lfunc_end22-ResetBoosts
	.cfi_endproc
                                        # -- End function
	.globl	StatusImmunity                  # -- Begin function StatusImmunity
	.p2align	4, 0x90
	.type	StatusImmunity,@function
StatusImmunity:                         # @StatusImmunity
	.cfi_startproc
# %bb.0:
	xorb	$1, %sil
	movzbl	%sil, %eax
	cmpb	$1, %dil
	jne	.LBB23_2
# %bb.1:
	movq	%rax, %rcx
	shlq	$6, %rcx
	movq	Parties@GOTPCREL(%rip), %rdx
	movq	(%rdx,%rcx), %rcx
	movq	(%rcx), %rcx
	movzwl	12(%rcx), %ecx
	andl	$31, %ecx
	cmpw	$2, %cx
	jne	.LBB23_2
# %bb.3:
	xorl	%eax, %eax
	retq
.LBB23_2:
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	movq	(%rax), %rax
	movzwl	12(%rax), %eax
	andl	$992, %eax                      # imm = 0x3E0
	cmpw	$64, %ax
	setne	%al
	retq
.Lfunc_end23:
	.size	StatusImmunity, .Lfunc_end23-StatusImmunity
	.cfi_endproc
                                        # -- End function
	.globl	Nothingf                        # -- Begin function Nothingf
	.p2align	4, 0x90
	.type	Nothingf,@function
Nothingf:                               # @Nothingf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end24:
	.size	Nothingf, .Lfunc_end24-Nothingf
	.cfi_endproc
                                        # -- End function
	.globl	Strugglef                       # -- Begin function Strugglef
	.p2align	4, 0x90
	.type	Strugglef,@function
Strugglef:                              # @Strugglef
	.cfi_startproc
# %bb.0:
	movl	%esi, %eax
	movq	Turns@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax,8), %rcx
	movb	1(%rcx), %dl
	leal	1(%rdx), %esi
	andb	$63, %sil
	andb	$-64, %dl
	orb	%sil, %dl
	movb	%dl, 1(%rcx)
	cmpb	$2, %dil
	jne	.LBB25_2
# %bb.1:
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	movl	48(%rdx), %edx
	shrl	$2, %edx
	shlq	$6, %rax
	movq	(%rcx,%rax), %rax
	subl	%edx, 12(%rax)
.LBB25_2:
	retq
.Lfunc_end25:
	.size	Strugglef, .Lfunc_end25-Strugglef
	.cfi_endproc
                                        # -- End function
	.globl	Emberf                          # -- Begin function Emberf
	.p2align	4, 0x90
	.type	Emberf,@function
Emberf:                                 # @Emberf
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpb	$2, %dil
	jne	.LBB26_6
# %bb.1:
	movl	%esi, %ebx
	callq	rand@PLT
	cmpl	$2147483601, %eax               # imm = 0x7FFFFFD1
	jb	.LBB26_3
	.p2align	4, 0x90
.LBB26_2:                               # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483600, %eax               # imm = 0x7FFFFFD0
	ja	.LBB26_2
.LBB26_3:
	movl	%eax, %ecx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	cmpl	$9, %eax
	ja	.LBB26_6
# %bb.4:
	xorb	$1, %bl
	movzbl	%bl, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	cmpb	$0, 73(%rax)
	je	.LBB26_5
.LBB26_6:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB26_5:
	.cfi_def_cfa_offset 16
	movb	$1, 73(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end26:
	.size	Emberf, .Lfunc_end26-Emberf
	.cfi_endproc
                                        # -- End function
	.globl	Thunder_Wavef                   # -- Begin function Thunder_Wavef
	.p2align	4, 0x90
	.type	Thunder_Wavef,@function
Thunder_Wavef:                          # @Thunder_Wavef
	.cfi_startproc
# %bb.0:
	cmpb	$2, %dil
	jne	.LBB27_3
# %bb.1:
	xorb	$1, %sil
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	cmpb	$0, 73(%rax)
	je	.LBB27_2
.LBB27_3:
	retq
.LBB27_2:
	movb	$3, 73(%rax)
	retq
.Lfunc_end27:
	.size	Thunder_Wavef, .Lfunc_end27-Thunder_Wavef
	.cfi_endproc
                                        # -- End function
	.globl	Will_O_Wispf                    # -- Begin function Will_O_Wispf
	.p2align	4, 0x90
	.type	Will_O_Wispf,@function
Will_O_Wispf:                           # @Will_O_Wispf
	.cfi_startproc
# %bb.0:
	cmpb	$2, %dil
	jne	.LBB28_4
# %bb.1:
	xorb	$1, %sil
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	movq	(%rax), %rcx
	movzwl	12(%rcx), %ecx
	andl	$31, %ecx
	cmpw	$2, %cx
	je	.LBB28_4
# %bb.2:
	cmpb	$0, 73(%rax)
	je	.LBB28_3
.LBB28_4:
	retq
.LBB28_3:
	movb	$1, 73(%rax)
	retq
.Lfunc_end28:
	.size	Will_O_Wispf, .Lfunc_end28-Will_O_Wispf
	.cfi_endproc
                                        # -- End function
	.globl	Sporef                          # -- Begin function Sporef
	.p2align	4, 0x90
	.type	Sporef,@function
Sporef:                                 # @Sporef
	.cfi_startproc
# %bb.0:
	cmpb	$2, %dil
	jne	.LBB29_3
# %bb.1:
	xorb	$1, %sil
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	cmpb	$0, 73(%rax)
	je	.LBB29_2
.LBB29_3:
	retq
.LBB29_2:
	movb	$4, 73(%rax)
	retq
.Lfunc_end29:
	.size	Sporef, .Lfunc_end29-Sporef
	.cfi_endproc
                                        # -- End function
	.globl	Toxicf                          # -- Begin function Toxicf
	.p2align	4, 0x90
	.type	Toxicf,@function
Toxicf:                                 # @Toxicf
	.cfi_startproc
# %bb.0:
	cmpb	$3, %dil
	je	.LBB30_8
# %bb.1:
	cmpb	$2, %dil
	jne	.LBB30_11
# %bb.2:
	xorb	$1, %sil
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	movq	(%rax), %rcx
	movzwl	12(%rcx), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	cmpw	$8, %dx
	je	.LBB30_11
# %bb.3:
	cmpw	$17, %dx
	je	.LBB30_11
# %bb.4:
	shrl	$5, %ecx
	andl	$31, %ecx
	cmpw	$8, %cx
	je	.LBB30_11
# %bb.5:
	cmpw	$17, %cx
	je	.LBB30_11
# %bb.6:
	cmpb	$0, 73(%rax)
	jne	.LBB30_11
# %bb.7:
	movb	$5, 73(%rax)
	retq
.LBB30_8:
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	movq	(%rax), %rax
	movzwl	12(%rax), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	cmpw	$8, %cx
	je	.LBB30_10
# %bb.9:
	andl	$992, %eax                      # imm = 0x3E0
	movzwl	%ax, %eax
	cmpl	$256, %eax                      # imm = 0x100
	je	.LBB30_10
.LBB30_11:
	retq
.LBB30_10:
	movq	PlayerHit@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	retq
.Lfunc_end30:
	.size	Toxicf, .Lfunc_end30-Toxicf
	.cfi_endproc
                                        # -- End function
	.globl	Freezef                         # -- Begin function Freezef
	.p2align	4, 0x90
	.type	Freezef,@function
Freezef:                                # @Freezef
	.cfi_startproc
# %bb.0:
	cmpb	$2, %dil
	jne	.LBB31_3
# %bb.1:
	xorb	$1, %sil
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	cmpb	$0, 73(%rax)
	je	.LBB31_2
.LBB31_3:
	retq
.LBB31_2:
	movb	$6, 73(%rax)
	retq
.Lfunc_end31:
	.size	Freezef, .Lfunc_end31-Freezef
	.cfi_endproc
                                        # -- End function
	.globl	SelfBoost                       # -- Begin function SelfBoost
	.p2align	4, 0x90
	.type	SelfBoost,@function
SelfBoost:                              # @SelfBoost
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
	jne	.LBB32_6
# %bb.1:
	movzbl	%sil, %ebx
	movq	%rbx, %r14
	shlq	$6, %r14
	addq	Parties@GOTPCREL(%rip), %r14
	xorl	%ebp, %ebp
	movq	Turns@GOTPCREL(%rip), %r15
	movq	MoveList@GOTPCREL(%rip), %r12
	jmp	.LBB32_2
	.p2align	4, 0x90
.LBB32_4:                               #   in Loop: Header=BB32_2 Depth=1
	andb	$7, %cl
	movzbl	%cl, %edx
	negb	%cl
	testb	$8, %al
	movzbl	%cl, %eax
	cmovel	%edx, %eax
.LBB32_5:                               #   in Loop: Header=BB32_2 Depth=1
	movq	(%r14), %rdx
	movsbl	%al, %esi
	movzbl	%bpl, %edi
	movl	%ebx, %ecx
	callq	Boostandprint@PLT
	addl	$1, %ebp
	cmpl	$8, %ebp
	je	.LBB32_6
.LBB32_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rax
	movzbl	(%rax), %eax
	movl	%ebp, %ecx
	shrl	%ecx
	leaq	(%rax,%rax,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rax, %rdx
	addq	%r12, %rdx
	movzbl	20(%rcx,%rdx), %eax
	movl	%eax, %ecx
	testb	$1, %bpl
	jne	.LBB32_4
# %bb.3:                                #   in Loop: Header=BB32_2 Depth=1
	shrb	$4, %cl
	andb	$7, %cl
	movzbl	%cl, %edx
	negb	%cl
	testb	%al, %al
	movzbl	%cl, %eax
	cmovnsl	%edx, %eax
	jmp	.LBB32_5
.LBB32_6:
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
.Lfunc_end32:
	.size	SelfBoost, .Lfunc_end32-SelfBoost
	.cfi_endproc
                                        # -- End function
	.globl	OtherBoost                      # -- Begin function OtherBoost
	.p2align	4, 0x90
	.type	OtherBoost,@function
OtherBoost:                             # @OtherBoost
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
	jne	.LBB33_6
# %bb.1:
	movzbl	%sil, %r14d
	movl	%r14d, %eax
	xorb	$1, %al
	movzbl	%al, %r15d
	movq	%r15, %rbx
	shlq	$6, %rbx
	addq	Parties@GOTPCREL(%rip), %rbx
	xorl	%ebp, %ebp
	movq	Turns@GOTPCREL(%rip), %r12
	movq	MoveList@GOTPCREL(%rip), %r13
	jmp	.LBB33_2
	.p2align	4, 0x90
.LBB33_4:                               #   in Loop: Header=BB33_2 Depth=1
	andb	$7, %cl
	movzbl	%cl, %edx
	negb	%cl
	testb	$8, %al
	movzbl	%cl, %eax
	cmovel	%edx, %eax
.LBB33_5:                               #   in Loop: Header=BB33_2 Depth=1
	movq	(%rbx), %rdx
	movsbl	%al, %esi
	movzbl	%bpl, %edi
	movl	%r15d, %ecx
	callq	Boostandprint@PLT
	addl	$1, %ebp
	cmpl	$8, %ebp
	je	.LBB33_6
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12,%r14,8), %rax
	movzbl	(%rax), %eax
	movl	%ebp, %ecx
	shrl	%ecx
	leaq	(%rax,%rax,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rax, %rdx
	addq	%r13, %rdx
	movzbl	20(%rcx,%rdx), %eax
	movl	%eax, %ecx
	testb	$1, %bpl
	jne	.LBB33_4
# %bb.3:                                #   in Loop: Header=BB33_2 Depth=1
	shrb	$4, %cl
	andb	$7, %cl
	movzbl	%cl, %edx
	negb	%cl
	testb	%al, %al
	movzbl	%cl, %eax
	cmovnsl	%edx, %eax
	jmp	.LBB33_5
.LBB33_6:
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
.Lfunc_end33:
	.size	OtherBoost, .Lfunc_end33-OtherBoost
	.cfi_endproc
                                        # -- End function
	.globl	OtherStatus                     # -- Begin function OtherStatus
	.p2align	4, 0x90
	.type	OtherStatus,@function
OtherStatus:                            # @OtherStatus
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpb	$2, %dil
	jne	.LBB34_9
# %bb.1:
	movl	%esi, %ebx
	callq	rand@PLT
	cmpl	$2147483601, %eax               # imm = 0x7FFFFFD1
	jb	.LBB34_3
	.p2align	4, 0x90
.LBB34_2:                               # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483600, %eax               # imm = 0x7FFFFFD0
	ja	.LBB34_2
.LBB34_3:
	movl	%eax, %ecx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movzbl	%bl, %ecx
	movq	Turns@GOTPCREL(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movzbl	(%rcx), %edx
	leaq	(%rdx,%rdx,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rdx, %rcx
	movq	MoveList@GOTPCREL(%rip), %r10
	movzbl	21(%r10,%rcx), %esi
	cmpl	%esi, %eax
	jae	.LBB34_9
# %bb.4:
	movb	20(%r10,%rcx), %r8b
	cmpb	$1, %r8b
	sete	%al
	xorb	$1, %bl
	movzbl	%bl, %edi
	movq	%rdi, %rsi
	shlq	$6, %rsi
	movq	Parties@GOTPCREL(%rip), %r9
	movq	(%r9,%rsi), %rsi
	movq	(%rsi), %rsi
	movzwl	12(%rsi), %ebx
	movl	%ebx, %esi
	andl	$31, %esi
	cmpw	$2, %si
	sete	%dl
	testb	%dl, %al
	jne	.LBB34_6
# %bb.5:
	andl	$992, %ebx                      # imm = 0x3E0
	cmpw	$64, %bx
	jne	.LBB34_7
.LBB34_6:
	testb	$4, 24(%r10,%rcx)
	jne	.LBB34_9
.LBB34_7:
	shlq	$6, %rdi
	movq	(%r9,%rdi), %rcx
	cmpb	$0, 73(%rcx)
	je	.LBB34_8
.LBB34_9:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB34_8:
	.cfi_def_cfa_offset 16
	movb	%r8b, 73(%rcx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	OtherStatus, .Lfunc_end34-OtherStatus
	.cfi_endproc
                                        # -- End function
	.globl	NoAbilityf                      # -- Begin function NoAbilityf
	.p2align	4, 0x90
	.type	NoAbilityf,@function
NoAbilityf:                             # @NoAbilityf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end35:
	.size	NoAbilityf, .Lfunc_end35-NoAbilityf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function Overgrowf
.LCPI36_0:
	.quad	0x3ff8000000000000              # double 1.5
	.text
	.globl	Overgrowf
	.p2align	4, 0x90
	.type	Overgrowf,@function
Overgrowf:                              # @Overgrowf
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	je	.LBB36_1
# %bb.5:
	cmpb	$1, %dil
	jne	.LBB36_10
# %bb.6:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB36_10
# %bb.7:
	movq	Turns@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movq	MoveList@GOTPCREL(%rip), %rax
	movzwl	16(%rax,%rcx), %edx
	movzbl	18(%rax,%rcx), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$40960, %eax                    # imm = 0xA000
	jne	.LBB36_10
# %bb.8:
	movq	EnemyTM@GOTPCREL(%rip), %rax
	jmp	.LBB36_9
.LBB36_1:
	cmpb	$1, %dil
	jne	.LBB36_10
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB36_10
# %bb.3:
	movq	Turns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movq	MoveList@GOTPCREL(%rip), %rax
	movzwl	16(%rax,%rcx), %edx
	movzbl	18(%rax,%rcx), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$40960, %eax                    # imm = 0xA000
	jne	.LBB36_10
# %bb.4:
	movq	PlayerTM@GOTPCREL(%rip), %rax
.LBB36_9:
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	mulsd	.LCPI36_0(%rip), %xmm0
	movsd	%xmm0, (%rax)
.LBB36_10:
	retq
.Lfunc_end36:
	.size	Overgrowf, .Lfunc_end36-Overgrowf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function Blazef
.LCPI37_0:
	.quad	0x3ff8000000000000              # double 1.5
	.text
	.globl	Blazef
	.p2align	4, 0x90
	.type	Blazef,@function
Blazef:                                 # @Blazef
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	je	.LBB37_1
# %bb.5:
	cmpb	$1, %dil
	jne	.LBB37_10
# %bb.6:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB37_10
# %bb.7:
	movq	Turns@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movq	MoveList@GOTPCREL(%rip), %rax
	movzwl	16(%rax,%rcx), %edx
	movzbl	18(%rax,%rcx), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$16384, %eax                    # imm = 0x4000
	jne	.LBB37_10
# %bb.8:
	movq	EnemyTM@GOTPCREL(%rip), %rax
	jmp	.LBB37_9
.LBB37_1:
	cmpb	$1, %dil
	jne	.LBB37_10
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB37_10
# %bb.3:
	movq	Turns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movq	MoveList@GOTPCREL(%rip), %rax
	movzwl	16(%rax,%rcx), %edx
	movzbl	18(%rax,%rcx), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$16384, %eax                    # imm = 0x4000
	jne	.LBB37_10
# %bb.4:
	movq	PlayerTM@GOTPCREL(%rip), %rax
.LBB37_9:
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	mulsd	.LCPI37_0(%rip), %xmm0
	movsd	%xmm0, (%rax)
.LBB37_10:
	retq
.Lfunc_end37:
	.size	Blazef, .Lfunc_end37-Blazef
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function Torrentf
.LCPI38_0:
	.quad	0x3ff8000000000000              # double 1.5
	.text
	.globl	Torrentf
	.p2align	4, 0x90
	.type	Torrentf,@function
Torrentf:                               # @Torrentf
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	je	.LBB38_1
# %bb.5:
	cmpb	$1, %dil
	jne	.LBB38_10
# %bb.6:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB38_10
# %bb.7:
	movq	Turns@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movq	MoveList@GOTPCREL(%rip), %rax
	movzwl	16(%rax,%rcx), %edx
	movzbl	18(%rax,%rcx), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$24576, %eax                    # imm = 0x6000
	jne	.LBB38_10
# %bb.8:
	movq	EnemyTM@GOTPCREL(%rip), %rax
	jmp	.LBB38_9
.LBB38_1:
	cmpb	$1, %dil
	jne	.LBB38_10
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB38_10
# %bb.3:
	movq	Turns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movq	MoveList@GOTPCREL(%rip), %rax
	movzwl	16(%rax,%rcx), %edx
	movzbl	18(%rax,%rcx), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$24576, %eax                    # imm = 0x6000
	jne	.LBB38_10
# %bb.4:
	movq	PlayerTM@GOTPCREL(%rip), %rax
.LBB38_9:
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	mulsd	.LCPI38_0(%rip), %xmm0
	movsd	%xmm0, (%rax)
.LBB38_10:
	retq
.Lfunc_end38:
	.size	Torrentf, .Lfunc_end38-Torrentf
	.cfi_endproc
                                        # -- End function
	.globl	Big_Pecksf                      # -- Begin function Big_Pecksf
	.p2align	4, 0x90
	.type	Big_Pecksf,@function
Big_Pecksf:                             # @Big_Pecksf
	.cfi_startproc
# %bb.0:
	movl	%esi, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	leaq	112(%rcx), %rdx
	leaq	48(%rcx), %rdi
	testl	%esi, %esi
	cmovneq	%rdx, %rdi
	movq	(%rdi), %rdx
	orq	$2, %rdx
	movq	%rdx, 48(%rax,%rcx)
	retq
.Lfunc_end39:
	.size	Big_Pecksf, .Lfunc_end39-Big_Pecksf
	.cfi_endproc
                                        # -- End function
	.globl	NoItemf                         # -- Begin function NoItemf
	.p2align	4, 0x90
	.type	NoItemf,@function
NoItemf:                                # @NoItemf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end40:
	.size	NoItemf, .Lfunc_end40-NoItemf
	.cfi_endproc
                                        # -- End function
	.globl	Leftoversf                      # -- Begin function Leftoversf
	.p2align	4, 0x90
	.type	Leftoversf,@function
Leftoversf:                             # @Leftoversf
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testl	%esi, %esi
	je	.LBB41_1
# %bb.6:
	cmpb	$5, %dil
	jne	.LBB41_10
# %bb.7:
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	64(%rbx), %rax
	movb	82(%rax), %cl
	andb	$1, %cl
	je	.LBB41_10
# %bb.8:
	movl	12(%rax), %ecx
	movl	48(%rax), %edx
	cmpl	%edx, %ecx
	jae	.LBB41_10
# %bb.9:
	shrl	$4, %edx
	addl	%ecx, %edx
	movl	%edx, 12(%rax)
	movq	(%rax), %rdx
	leaq	.L.str.7(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	64(%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.8(%rip), %rsi
	jmp	.LBB41_5
.LBB41_1:
	cmpb	$5, %dil
	jne	.LBB41_10
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movb	82(%rax), %cl
	andb	$1, %cl
	je	.LBB41_10
# %bb.3:
	movl	12(%rax), %ecx
	movl	48(%rax), %edx
	cmpl	%edx, %ecx
	jae	.LBB41_10
# %bb.4:
	shrl	$4, %edx
	addl	%ecx, %edx
	movl	%edx, 12(%rax)
	movq	(%rax), %rdx
	leaq	.L.str.5(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.6(%rip), %rsi
.LBB41_5:
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.LBB41_10:
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end41:
	.size	Leftoversf, .Lfunc_end41-Leftoversf
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
	testl	%esi, %esi
	je	.LBB42_1
# %bb.6:
	cmpb	$-1, %dil
	jne	.LBB42_12
# %bb.7:
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	64(%rbx), %rax
	movb	82(%rax), %cl
	andb	$1, %cl
	je	.LBB42_12
# %bb.8:
	movl	12(%rax), %ecx
	movl	48(%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB42_12
# %bb.9:
	movq	Damages@GOTPCREL(%rip), %rdx
	cmpl	%esi, (%rdx)
	jb	.LBB42_12
# %bb.10:
	addl	$-1, %ecx
	movl	%ecx, (%rdx)
	movq	(%rax), %rdx
	leaq	.L.str.10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	64(%rbx), %rax
	jmp	.LBB42_11
.LBB42_1:
	cmpb	$-1, %dil
	jne	.LBB42_12
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movb	82(%rax), %cl
	andb	$1, %cl
	je	.LBB42_12
# %bb.3:
	movl	12(%rax), %ecx
	movl	48(%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB42_12
# %bb.4:
	movq	Damages@GOTPCREL(%rip), %rdx
	cmpl	%esi, 4(%rdx)
	jb	.LBB42_12
# %bb.5:
	addl	$-1, %ecx
	movl	%ecx, 4(%rdx)
	movq	(%rax), %rdx
	leaq	.L.str.9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
.LBB42_11:
	andb	$-2, 82(%rax)
.LBB42_12:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end42:
	.size	Focus_Sashf, .Lfunc_end42-Focus_Sashf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function displaymember
.LCPI43_0:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI43_1:
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
	leaq	.L.str.11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	%ebp, %ebp
	movl	%ebx, %ebx
	shlq	$6, %rbp
	addq	Parties@GOTPCREL(%rip), %rbp
	movq	(%rbp,%rbx,8), %rax
	movq	(%rax), %rdx
	leaq	.L.str.12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	12(%rax), %edx
	movl	48(%rax), %ecx
	leaq	.L.str.13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	52(%rax), %edx
	leaq	.L.str.14(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	56(%rax), %edx
	leaq	.L.str.15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	60(%rax), %edx
	leaq	.L.str.16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	64(%rax), %edx
	leaq	.L.str.17(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movl	68(%rax), %edx
	leaq	.L.str.18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzwl	18(%rax), %eax
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	%rax, %rcx
	movq	NATURE_LIST@GOTPCREL(%rip), %rax
	leaq	(%rax,%rcx), %rdx
	addq	$20, %rdx
	leaq	.L.str.19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	24(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rsi
	addq	%rcx, %rsi
	movq	MoveList@GOTPCREL(%rip), %r14
	leaq	(%r14,%rsi), %rdx
	movzbl	25(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movzwl	16(%r14,%rsi), %esi
	shrl	$7, %esi
	andl	$63, %esi
	cvtsi2ss	%esi, %xmm0
	shrb	$6, %al
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI43_0(%rip), %xmm1
	addsd	.LCPI43_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.20(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rsi
	addq	%rcx, %rsi
	leaq	(%r14,%rsi), %rdx
	movzwl	16(%r14,%rsi), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	29(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI43_0(%rip), %xmm1
	addsd	.LCPI43_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.21(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rsi
	addq	%rcx, %rsi
	leaq	(%r14,%rsi), %rdx
	movzwl	16(%r14,%rsi), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	33(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI43_0(%rip), %xmm1
	addsd	.LCPI43_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.22(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rsi
	addq	%rcx, %rsi
	leaq	(%r14,%rsi), %rdx
	movzwl	16(%r14,%rsi), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	37(%rax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI43_0(%rip), %xmm1
	addsd	.LCPI43_1(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	leaq	.L.str.23(%rip), %rsi
	movl	$1, %edi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	16(%rax), %ecx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$3, %rdx
	addq	ItemList@GOTPCREL(%rip), %rdx
	movzbl	82(%rax), %eax
	andl	$1, %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rax,%rcx,2), %rcx
	addq	Itemtext@GOTPCREL(%rip), %rcx
	leaq	.L.str.24(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	17(%rax), %eax
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	AbilityList@GOTPCREL(%rip), %rdx
	leaq	.L.str.25(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp,%rbx,8), %rax
	movzbl	73(%rax), %eax
	leaq	(%rax,%rax,2), %rdx
	shlq	$2, %rdx
	addq	Statusnames@GOTPCREL(%rip), %rdx
	leaq	.L.str.26(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end43:
	.size	displaymember, .Lfunc_end43-displaymember
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
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %r14d
	movl	%edi, %ebx
	shlq	$6, %rbx
	movq	Parties@GOTPCREL(%rip), %rbp
	movq	(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.27(%rip), %rsi
	xorl	%r15d, %r15d
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.28(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.29(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.30(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.31(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.32(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.33(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.34(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movl	$12624, %eax                    # imm = 0x3150
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB44_10
# %bb.1:
	movl	$12880, %eax                    # imm = 0x3250
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	movl	$1, %r15d
	je	.LBB44_10
# %bb.2:
	movl	$13136, %eax                    # imm = 0x3350
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB44_3
# %bb.4:
	movl	$13392, %eax                    # imm = 0x3450
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB44_5
# %bb.6:
	movl	$13648, %eax                    # imm = 0x3550
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB44_7
# %bb.8:
	movl	$13904, %eax                    # imm = 0x3650
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB44_9
# %bb.11:
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
.LBB44_3:
	.cfi_def_cfa_offset 48
	movl	$2, %r15d
	jmp	.LBB44_10
.LBB44_5:
	movl	$3, %r15d
	jmp	.LBB44_10
.LBB44_7:
	movl	$4, %r15d
	jmp	.LBB44_10
.LBB44_9:
	movl	$5, %r15d
.LBB44_10:
	movzbl	%r14b, %esi
	movl	%r15d, %edi
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
	jmp	displaymember@PLT               # TAILCALL
.Lfunc_end44:
	.size	displayparty, .Lfunc_end44-displayparty
	.cfi_endproc
                                        # -- End function
	.globl	Switcheroo                      # -- Begin function Switcheroo
	.p2align	4, 0x90
	.type	Switcheroo,@function
Switcheroo:                             # @Switcheroo
	.cfi_startproc
# %bb.0:
	movq	Temp@GOTPCREL(%rip), %rax
	movq	%rdi, (%rax)
	movq	(%rdi), %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end45:
	.size	Switcheroo, .Lfunc_end45-Switcheroo
	.cfi_endproc
                                        # -- End function
	.globl	Switcheroo2                     # -- Begin function Switcheroo2
	.p2align	4, 0x90
	.type	Switcheroo2,@function
Switcheroo2:                            # @Switcheroo2
	.cfi_startproc
# %bb.0:
	movq	Temp@GOTPCREL(%rip), %rax
	movq	%rdi, (%rax)
	movq	(%rdi), %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	%rax, 64(%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end46:
	.size	Switcheroo2, .Lfunc_end46-Switcheroo2
	.cfi_endproc
                                        # -- End function
	.globl	Switcheroo3                     # -- Begin function Switcheroo3
	.p2align	4, 0x90
	.type	Switcheroo3,@function
Switcheroo3:                            # @Switcheroo3
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end47:
	.size	Switcheroo3, .Lfunc_end47-Switcheroo3
	.cfi_endproc
                                        # -- End function
	.globl	Switcheroo4                     # -- Begin function Switcheroo4
	.p2align	4, 0x90
	.type	Switcheroo4,@function
Switcheroo4:                            # @Switcheroo4
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 64(%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end48:
	.size	Switcheroo4, .Lfunc_end48-Switcheroo4
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function SwitchIn
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %r13d
	movabsq	$8367802884018501459, %r15      # imm = 0x7420686374697753
	movq	x@GOTPCREL(%rip), %rbx
	movq	Parties@GOTPCREL(%rip), %r12
	leaq	.L.str.43(%rip), %rax
	cltq
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	c(%rip), %r14
	.p2align	4, 0x90
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	movl	$1, %edi
	testl	%r13d, %r13d
	je	.LBB49_2
# %bb.52:                               #   in Loop: Header=BB49_1 Depth=1
	leaq	.L.str.54(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.34(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_56
# %bb.53:                               #   in Loop: Header=BB49_1 Depth=1
	movq	8(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_56
# %bb.54:                               #   in Loop: Header=BB49_1 Depth=1
	movq	8(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_56
# %bb.55:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB49_56
# %bb.61:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_65
# %bb.62:                               #   in Loop: Header=BB49_1 Depth=1
	movq	16(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_65
# %bb.63:                               #   in Loop: Header=BB49_1 Depth=1
	movq	16(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_65
# %bb.64:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB49_65
# %bb.69:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_73
# %bb.70:                               #   in Loop: Header=BB49_1 Depth=1
	movq	24(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_73
# %bb.71:                               #   in Loop: Header=BB49_1 Depth=1
	movq	24(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_73
# %bb.72:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB49_73
# %bb.77:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_81
# %bb.78:                               #   in Loop: Header=BB49_1 Depth=1
	movq	32(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_81
# %bb.79:                               #   in Loop: Header=BB49_1 Depth=1
	movq	32(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_81
# %bb.80:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB49_81
# %bb.85:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_89
# %bb.86:                               #   in Loop: Header=BB49_1 Depth=1
	movq	40(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_89
# %bb.87:                               #   in Loop: Header=BB49_1 Depth=1
	movq	40(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_89
# %bb.88:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB49_89
# %bb.94:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rbx), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%rbx), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_97
# %bb.95:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%rbx), %ecx
	orl	%eax, %ecx
	je	.LBB49_97
# %bb.96:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%rbx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB49_97
# %bb.98:                               #   in Loop: Header=BB49_1 Depth=1
	movl	$1, %r13d
	jmp	.LBB49_51
	.p2align	4, 0x90
.LBB49_56:                              #   in Loop: Header=BB49_1 Depth=1
	movq	8(%r12), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB49_57
.LBB49_93:                              #   in Loop: Header=BB49_1 Depth=1
	movl	$1, %r13d
	jmp	.LBB49_12
	.p2align	4, 0x90
.LBB49_2:                               #   in Loop: Header=BB49_1 Depth=1
	leaq	.L.str.41(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.34(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_5
# %bb.3:                                #   in Loop: Header=BB49_1 Depth=1
	movq	72(%r12), %rax
	movslq	(%rax), %rbp
	movl	$64, %edx
	movq	%r14, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_5
# %bb.4:                                #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB49_5
# %bb.14:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_18
# %bb.15:                               #   in Loop: Header=BB49_1 Depth=1
	movq	80(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_18
# %bb.16:                               #   in Loop: Header=BB49_1 Depth=1
	movq	80(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_18
# %bb.17:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB49_18
# %bb.22:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_26
# %bb.23:                               #   in Loop: Header=BB49_1 Depth=1
	movq	88(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_26
# %bb.24:                               #   in Loop: Header=BB49_1 Depth=1
	movq	88(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_26
# %bb.25:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB49_26
# %bb.30:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_34
# %bb.31:                               #   in Loop: Header=BB49_1 Depth=1
	movq	96(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_34
# %bb.32:                               #   in Loop: Header=BB49_1 Depth=1
	movq	96(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_34
# %bb.33:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB49_34
# %bb.38:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_42
# %bb.39:                               #   in Loop: Header=BB49_1 Depth=1
	movq	104(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_42
# %bb.40:                               #   in Loop: Header=BB49_1 Depth=1
	movq	104(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB49_42
# %bb.41:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB49_42
# %bb.46:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rbx), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%rbx), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB49_49
# %bb.47:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%rbx), %ecx
	orl	%eax, %ecx
	je	.LBB49_49
# %bb.48:                               #   in Loop: Header=BB49_1 Depth=1
	movl	(%rbx), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%rbx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB49_49
# %bb.50:                               #   in Loop: Header=BB49_1 Depth=1
	xorl	%r13d, %r13d
.LBB49_51:                              #   in Loop: Header=BB49_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.53(%rip), %rsi
	jmp	.LBB49_13
	.p2align	4, 0x90
.LBB49_5:                               #   in Loop: Header=BB49_1 Depth=1
	movq	72(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB49_11
	jmp	.LBB49_6
.LBB49_65:                              #   in Loop: Header=BB49_1 Depth=1
	movq	16(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB49_93
	jmp	.LBB49_66
.LBB49_18:                              #   in Loop: Header=BB49_1 Depth=1
	movq	80(%r12), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB49_19
.LBB49_11:                              #   in Loop: Header=BB49_1 Depth=1
	xorl	%r13d, %r13d
.LBB49_12:                              #   in Loop: Header=BB49_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.45(%rip), %rsi
.LBB49_13:                              #   in Loop: Header=BB49_1 Depth=1
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB49_1
.LBB49_73:                              #   in Loop: Header=BB49_1 Depth=1
	movq	24(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB49_93
	jmp	.LBB49_74
.LBB49_26:                              #   in Loop: Header=BB49_1 Depth=1
	movq	88(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB49_11
	jmp	.LBB49_27
.LBB49_81:                              #   in Loop: Header=BB49_1 Depth=1
	movq	32(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB49_93
	jmp	.LBB49_82
.LBB49_34:                              #   in Loop: Header=BB49_1 Depth=1
	movq	96(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB49_11
	jmp	.LBB49_35
.LBB49_89:                              #   in Loop: Header=BB49_1 Depth=1
	movq	40(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB49_93
	jmp	.LBB49_90
.LBB49_42:                              #   in Loop: Header=BB49_1 Depth=1
	movq	104(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB49_11
	jmp	.LBB49_43
.LBB49_97:                              #   in Loop: Header=BB49_1 Depth=1
	xorl	%edi, %edi
	callq	displayparty@PLT
	movl	$1, %r13d
	jmp	.LBB49_1
.LBB49_49:                              #   in Loop: Header=BB49_1 Depth=1
	movl	$1, %edi
	callq	displayparty@PLT
	xorl	%r13d, %r13d
	jmp	.LBB49_1
.LBB49_57:
	movapd	.LCPI49_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI49_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB49_58:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB49_58
# %bb.59:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	8(%r12), %rcx
.LBB49_60:
	movq	Temp@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movq	%rax, (%r12)
	jmp	.LBB49_10
.LBB49_6:
	movapd	.LCPI49_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI49_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB49_7:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB49_7
# %bb.8:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	72(%r12), %rcx
	jmp	.LBB49_9
.LBB49_66:
	movapd	.LCPI49_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI49_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB49_67:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB49_67
# %bb.68:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	16(%r12), %rcx
	jmp	.LBB49_60
.LBB49_19:
	movapd	.LCPI49_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI49_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB49_20:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB49_20
# %bb.21:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	80(%r12), %rcx
.LBB49_9:
	movq	Temp@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movq	%rax, 64(%r12)
.LBB49_10:
	movq	(%rax), %rdx
	leaq	.L.str.44(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
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
	retq
.LBB49_74:
	.cfi_def_cfa_offset 64
	movapd	.LCPI49_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI49_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB49_75:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB49_75
# %bb.76:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	24(%r12), %rcx
	jmp	.LBB49_60
.LBB49_27:
	movapd	.LCPI49_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI49_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB49_28:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB49_28
# %bb.29:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	88(%r12), %rcx
	jmp	.LBB49_9
.LBB49_82:
	movapd	.LCPI49_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI49_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm5          # xmm5 = [8,8]
.LBB49_83:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB49_83
# %bb.84:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	32(%r12), %rcx
	jmp	.LBB49_60
.LBB49_35:
	movapd	.LCPI49_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI49_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm5          # xmm5 = [8,8]
.LBB49_36:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB49_36
# %bb.37:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	96(%r12), %rcx
	jmp	.LBB49_9
.LBB49_90:
	movapd	.LCPI49_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI49_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm5          # xmm5 = [8,8]
.LBB49_91:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB49_91
# %bb.92:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	40(%r12), %rcx
	jmp	.LBB49_60
.LBB49_43:
	movapd	.LCPI49_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI49_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI49_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI49_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI49_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI49_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI49_6(%rip), %xmm5          # xmm5 = [8,8]
.LBB49_44:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rcx
	jne	.LBB49_44
# %bb.45:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	104(%r12), %rcx
	jmp	.LBB49_9
.Lfunc_end49:
	.size	SwitchIn, .Lfunc_end49-SwitchIn
	.cfi_endproc
                                        # -- End function
	.globl	display_move                    # -- Begin function display_move
	.p2align	4, 0x90
	.type	display_move,@function
display_move:                           # @display_move
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	testl	%edi, %edi
	je	.LBB50_1
# %bb.13:
	movq	EnemyCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	movq	(%rax), %rdx
	je	.LBB50_15
# %bb.14:
	movq	Turns@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	addq	MoveList@GOTPCREL(%rip), %rcx
	leaq	.L.str.61(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	EnemyHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB50_18
	jmp	.LBB50_4
.LBB50_1:
	movq	PlayerCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	je	.LBB50_6
# %bb.2:
	movq	Turns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	addq	MoveList@GOTPCREL(%rip), %rcx
	leaq	.L.str.55(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB50_4
.LBB50_18:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB50_4:
	.cfi_def_cfa_offset 16
	leaq	.L.str.56(%rip), %rsi
	jmp	.LBB50_5
.LBB50_15:
	leaq	.L.str.62(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	EnemyPara@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB50_7
# %bb.16:
	movq	EnemySleep@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB50_9
# %bb.17:
	movq	EnemyFrozen@GOTPCREL(%rip), %rax
	jmp	.LBB50_11
.LBB50_6:
	leaq	.L.str.57(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerPara@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB50_8
.LBB50_7:
	leaq	.L.str.58(%rip), %rsi
	jmp	.LBB50_5
.LBB50_8:
	movq	PlayerSleep@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB50_10
.LBB50_9:
	leaq	.L.str.59(%rip), %rsi
	jmp	.LBB50_5
.LBB50_10:
	movq	PlayerFrozen@GOTPCREL(%rip), %rax
.LBB50_11:
	cmpb	$0, (%rax)
	je	.LBB50_18
# %bb.12:
	leaq	.L.str.60(%rip), %rsi
.LBB50_5:
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end50:
	.size	display_move, .Lfunc_end50-display_move
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function move_result
.LCPI51_0:
	.long	0x40000000                      # float 2
.LCPI51_1:
	.long	0x3f000000                      # float 0.5
	.text
	.globl	move_result
	.p2align	4, 0x90
	.type	move_result,@function
move_result:                            # @move_result
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
	testl	%edi, %edi
	je	.LBB51_1
# %bb.14:
	movq	EnemyHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB51_25
# %bb.15:
	movq	EnemyCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB51_25
# %bb.16:
	movq	Turns@GOTPCREL(%rip), %r14
	movq	8(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movq	MoveList@GOTPCREL(%rip), %rbx
	movzbl	18(%rbx,%rcx), %eax
	shll	$16, %eax
	testl	$786432, %eax                   # imm = 0xC0000
	je	.LBB51_25
# %bb.17:
	movq	Damages@GOTPCREL(%rip), %rax
	movl	4(%rax), %edx
	leaq	.L.str.63(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%rbx,%rcx), %eax
	movzbl	18(%rbx,%rcx), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	shrl	$13, %ecx
	andl	$31, %ecx
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movzwl	12(%rax), %eax
	movl	%eax, %edx
	andl	$31, %edx
	imulq	$76, %rcx, %rcx
	addq	TypeChart@GOTPCREL(%rip), %rcx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	shrq	$3, %rax
	andl	$124, %eax
	mulss	(%rax,%rcx), %xmm0
	ucomiss	.LCPI51_0(%rip), %xmm0
	jae	.LBB51_18
# %bb.19:
	movss	.LCPI51_1(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB51_22
# %bb.20:
	leaq	.L.str.65(%rip), %rsi
	jmp	.LBB51_21
.LBB51_1:
	movq	PlayerHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB51_12
# %bb.2:
	movq	PlayerCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB51_12
# %bb.3:
	movq	Turns@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movq	MoveList@GOTPCREL(%rip), %rbx
	movzbl	18(%rbx,%rcx), %eax
	shll	$16, %eax
	testl	$786432, %eax                   # imm = 0xC0000
	je	.LBB51_12
# %bb.4:
	movq	Damages@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	leaq	.L.str.63(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%rbx,%rcx), %eax
	movzbl	18(%rbx,%rcx), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	shrl	$13, %ecx
	andl	$31, %ecx
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	64(%rbx), %rax
	movq	(%rax), %rax
	movzwl	12(%rax), %eax
	movl	%eax, %edx
	andl	$31, %edx
	imulq	$76, %rcx, %rcx
	addq	TypeChart@GOTPCREL(%rip), %rcx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	shrq	$3, %rax
	andl	$124, %eax
	mulss	(%rax,%rcx), %xmm0
	ucomiss	.LCPI51_0(%rip), %xmm0
	jae	.LBB51_5
# %bb.6:
	movss	.LCPI51_1(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB51_9
# %bb.7:
	leaq	.L.str.65(%rip), %rsi
	jmp	.LBB51_8
.LBB51_18:
	leaq	.L.str.64(%rip), %rsi
.LBB51_21:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB51_22:
	movq	EnemyCrit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB51_24
# %bb.23:
	leaq	.L.str.66(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB51_24:
	movq	(%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.69(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB51_25:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB51_28
# %bb.26:
	movq	(%rax), %rdx
	leaq	.L.str.70(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	callq	SwitchIn@PLT
	movq	PlayerDead@GOTPCREL(%rip), %rax
	jmp	.LBB51_27
.LBB51_5:
	leaq	.L.str.64(%rip), %rsi
.LBB51_8:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB51_9:
	movq	PlayerCrit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB51_11
# %bb.10:
	leaq	.L.str.66(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB51_11:
	movq	64(%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.67(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB51_12:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB51_28
# %bb.13:
	movq	(%rax), %rdx
	leaq	.L.str.68(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	xorl	%edi, %edi
	callq	SwitchIn@PLT
	movq	EnemyDead@GOTPCREL(%rip), %rax
.LBB51_27:
	movb	$1, (%rax)
.LBB51_28:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end51:
	.size	move_result, .Lfunc_end51-move_result
	.cfi_endproc
                                        # -- End function
	.globl	DBOG                            # -- Begin function DBOG
	.p2align	4, 0x90
	.type	DBOG,@function
DBOG:                                   # @DBOG
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	movl	%edi, %ecx
	xorb	$1, %cl
	movzbl	%cl, %ecx
	shlq	$6, %rcx
	movq	Parties@GOTPCREL(%rip), %rdx
	movq	(%rdx,%rcx), %rcx
	movl	12(%rcx), %ecx
	movq	Damages@GOTPCREL(%rip), %rdx
	cmpl	(%rdx,%rax,4), %ecx
	jge	.LBB52_2
# %bb.1:
	movl	%ecx, (%rdx,%rax,4)
.LBB52_2:
	retq
.Lfunc_end52:
	.size	DBOG, .Lfunc_end52-DBOG
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function ExecuteMove
.LCPI53_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI53_1:
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
.LCPI53_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI53_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI53_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI53_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI53_6:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
.LCPI53_12:
	.quad	0x3ff8000000000000              # double 1.5
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI53_7:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI53_8:
	.quad	0x3ff0000000000000              # double 1
.LCPI53_9:
	.quad	0x4049000000000000              # double 50
.LCPI53_10:
	.quad	0x4000000000000000              # double 2
.LCPI53_11:
	.quad	0x4059000000000000              # double 100
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testl	%edi, %edi
	je	.LBB53_1
# %bb.73:
	movq	EnemyDead@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB53_138
# %bb.74:
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB53_75
# %bb.133:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rcx
	cmpb	$5, 73(%rcx)
	jne	.LBB53_135
# %bb.134:
	movb	$0, 72(%rcx)
.LBB53_135:
	movq	$0, 138(%rax)
	movapd	.LCPI53_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%rax), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI53_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %edx
	movdqa	.LCPI53_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI53_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI53_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI53_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI53_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB53_136:                             # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rdx
	jne	.LBB53_136
# %bb.137:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%rax)
	movq	EnemySwitchSave@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rsi
	movq	Temp@GOTPCREL(%rip), %rdi
	movq	%rsi, (%rdi)
	movq	%rcx, (%rdx)
	movq	(%rsi), %rcx
	movq	%rcx, 64(%rax)
	movq	(%rcx), %rdx
	leaq	.L.str.76(%rip), %rsi
	jmp	.LBB53_71
.LBB53_1:
	movq	PlayerDead@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB53_2
.LBB53_138:
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
.LBB53_2:
	.cfi_def_cfa_offset 64
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB53_3
# %bb.66:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	cmpb	$5, 73(%rcx)
	jne	.LBB53_68
# %bb.67:
	movb	$0, 72(%rcx)
.LBB53_68:
	movq	$0, 74(%rax)
	movapd	.LCPI53_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%rax), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI53_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %edx
	movdqa	.LCPI53_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI53_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI53_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI53_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI53_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB53_69:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psllq	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movdqa	%xmm3, %xmm1
	psllq	%xmm2, %xmm1
	movsd	%xmm7, %xmm1                    # xmm1 = xmm7[0],xmm1[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm8, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm6, %xmm1
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm2, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	movdqa	%xmm0, %xmm2
	paddq	%xmm9, %xmm2
	movdqa	%xmm3, %xmm7
	psllq	%xmm2, %xmm7
	andnpd	%xmm1, %xmm6
	pshufd	$238, %xmm2, %xmm1              # xmm1 = xmm2[2,3,2,3]
	movdqa	%xmm3, %xmm2
	psllq	%xmm1, %xmm2
	movsd	%xmm7, %xmm2                    # xmm2 = xmm7[0],xmm2[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm4, %xmm1
	movdqa	%xmm3, %xmm7
	psllq	%xmm1, %xmm7
	andnpd	%xmm6, %xmm2
	pshufd	$238, %xmm1, %xmm1              # xmm1 = xmm1[2,3,2,3]
	movdqa	%xmm3, %xmm6
	psllq	%xmm1, %xmm6
	movsd	%xmm7, %xmm6                    # xmm6 = xmm7[0],xmm6[1]
	andnpd	%xmm2, %xmm6
	paddq	%xmm5, %xmm0
	addq	$-8, %rdx
	jne	.LBB53_69
# %bb.70:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%rax)
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rsi
	movq	Temp@GOTPCREL(%rip), %rdi
	movq	%rsi, (%rdi)
	movq	%rcx, (%rdx)
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	movq	(%rcx), %rdx
	leaq	.L.str.73(%rip), %rsi
.LBB53_71:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB53_72:
	leaq	.L.str.34(%rip), %rsi
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
.LBB53_75:
	.cfi_def_cfa_offset 64
	callq	rand@PLT
	cmpl	$2147483601, %eax               # imm = 0x7FFFFFD1
	jb	.LBB53_77
	.p2align	4, 0x90
.LBB53_76:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483600, %eax               # imm = 0x7FFFFFD0
	ja	.LBB53_76
.LBB53_77:
	movl	%eax, %ecx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movq	Turns@GOTPCREL(%rip), %r14
	movq	8(%r14), %rcx
	movzbl	(%rcx), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movq	MoveList@GOTPCREL(%rip), %r15
	movzwl	16(%r15,%rdx), %ecx
	andl	$127, %ecx
	movq	Parties@GOTPCREL(%rip), %r13
	movq	(%r13), %rdx
	movq	64(%r13), %rsi
	movsbl	79(%rsi), %esi
	cvtsi2sd	%esi, %xmm2
	movsbl	80(%rdx), %edx
	testl	%edx, %edx
	js	.LBB53_79
# %bb.78:
	cvtsi2sd	%edx, %xmm3
	mulsd	.LCPI53_7(%rip), %xmm3
	addsd	.LCPI53_8(%rip), %xmm3
	jmp	.LBB53_80
.LBB53_3:
	callq	rand@PLT
	cmpl	$2147483601, %eax               # imm = 0x7FFFFFD1
	jb	.LBB53_5
	.p2align	4, 0x90
.LBB53_4:                               # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483600, %eax               # imm = 0x7FFFFFD0
	ja	.LBB53_4
.LBB53_5:
	movl	%eax, %ecx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movq	Turns@GOTPCREL(%rip), %r14
	movq	(%r14), %rcx
	movzbl	(%rcx), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movq	MoveList@GOTPCREL(%rip), %r15
	movzwl	16(%r15,%rdx), %ecx
	andl	$127, %ecx
	movq	Parties@GOTPCREL(%rip), %r13
	movq	(%r13), %rdx
	movq	64(%r13), %rsi
	movsbl	79(%rdx), %edx
	cvtsi2sd	%edx, %xmm2
	movsbl	80(%rsi), %edx
	testl	%edx, %edx
	js	.LBB53_7
# %bb.6:
	cvtsi2sd	%edx, %xmm3
	mulsd	.LCPI53_7(%rip), %xmm3
	addsd	.LCPI53_8(%rip), %xmm3
	jmp	.LBB53_8
.LBB53_79:
	negl	%edx
	cvtsi2sd	%edx, %xmm0
	mulsd	.LCPI53_7(%rip), %xmm0
	movsd	.LCPI53_8(%rip), %xmm3          # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm0
	divsd	%xmm0, %xmm3
.LBB53_80:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	cvtsi2sd	%ecx, %xmm1
	divsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	testb	%al, %al
	js	.LBB53_82
# %bb.81:
	movsbl	%al, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	mulsd	.LCPI53_7(%rip), %xmm2
	addsd	.LCPI53_8(%rip), %xmm2
	jmp	.LBB53_83
.LBB53_7:
	negl	%edx
	cvtsi2sd	%edx, %xmm0
	mulsd	.LCPI53_7(%rip), %xmm0
	movsd	.LCPI53_8(%rip), %xmm3          # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm0
	divsd	%xmm0, %xmm3
.LBB53_8:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	cvtsi2sd	%ecx, %xmm1
	divsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	testb	%al, %al
	js	.LBB53_10
# %bb.9:
	movsbl	%al, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	mulsd	.LCPI53_7(%rip), %xmm2
	addsd	.LCPI53_8(%rip), %xmm2
	jmp	.LBB53_11
.LBB53_82:
	movsbl	%al, %eax
	negl	%eax
	xorps	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	mulsd	.LCPI53_7(%rip), %xmm3
	movsd	.LCPI53_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB53_83:
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	movq	EnemyHit@GOTPCREL(%rip), %rbp
	seta	(%rbp)
	callq	rand@PLT
	cmpl	$2147483617, %eax               # imm = 0x7FFFFFE1
	jb	.LBB53_85
	.p2align	4, 0x90
.LBB53_84:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483616, %eax               # imm = 0x7FFFFFE0
	ja	.LBB53_84
.LBB53_85:
	andl	$31, %eax
	movq	64(%r13), %rcx
	movb	81(%rcx), %dl
	notb	%dl
	shrb	$7, %dl
	movzbl	%dl, %edx
	cmpl	%edx, %eax
	movq	EnemyCrit@GOTPCREL(%rip), %rbx
	setb	(%rbx)
	movb	73(%rcx), %al
	addb	$-1, %al
	cmpb	$5, %al
	ja	.LBB53_105
# %bb.86:
	movzbl	%al, %eax
	leaq	.LJTI53_1(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmpq	*%rax
.LBB53_89:
	movq	8(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzbl	18(%r15,%rcx), %eax
	andl	$12, %eax
	shll	$16, %eax
	cmpl	$262144, %eax                   # imm = 0x40000
	jne	.LBB53_105
# %bb.90:
	movq	EnemyTM@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	mulsd	.LCPI53_7(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.LBB53_105
.LBB53_10:
	movsbl	%al, %eax
	negl	%eax
	xorps	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	mulsd	.LCPI53_7(%rip), %xmm3
	movsd	.LCPI53_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB53_11:
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	movq	PlayerHit@GOTPCREL(%rip), %rbp
	seta	(%rbp)
	callq	rand@PLT
	cmpl	$2147483617, %eax               # imm = 0x7FFFFFE1
	jb	.LBB53_13
	.p2align	4, 0x90
.LBB53_12:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483616, %eax               # imm = 0x7FFFFFE0
	ja	.LBB53_12
.LBB53_13:
	andl	$31, %eax
	movq	(%r13), %rcx
	movb	81(%rcx), %dl
	notb	%dl
	shrb	$7, %dl
	movzbl	%dl, %edx
	cmpl	%edx, %eax
	movq	PlayerCrit@GOTPCREL(%rip), %rbx
	setb	(%rbx)
	movb	73(%rcx), %al
	addb	$-1, %al
	cmpb	$5, %al
	ja	.LBB53_33
# %bb.14:
	movzbl	%al, %eax
	leaq	.LJTI53_0(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmpq	*%rax
.LBB53_17:
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzbl	18(%r15,%rcx), %eax
	andl	$12, %eax
	shll	$16, %eax
	cmpl	$262144, %eax                   # imm = 0x40000
	jne	.LBB53_33
# %bb.18:
	movq	PlayerTM@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	mulsd	.LCPI53_7(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.LBB53_33
.LBB53_87:
	callq	rand@PLT
	movq	EnemyPara@GOTPCREL(%rip), %rcx
	testb	$3, %al
	sete	(%rcx)
	jne	.LBB53_105
	jmp	.LBB53_88
.LBB53_91:
	movb	72(%rcx), %al
	testb	%al, %al
	je	.LBB53_92
# %bb.93:
	cmpb	$3, %al
	ja	.LBB53_99
# %bb.94:
	callq	rand@PLT
	cmpl	$2147483647, %eax               # imm = 0x7FFFFFFF
	jb	.LBB53_96
.LBB53_95:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	ja	.LBB53_95
.LBB53_96:
	imull	$-1431655765, %eax, %eax        # imm = 0xAAAAAAAB
	movq	64(%r13), %rcx
	cmpl	$1431655766, %eax               # imm = 0x55555556
	jb	.LBB53_99
# %bb.97:
	movb	72(%rcx), %al
	addb	$1, %al
	jmp	.LBB53_98
.LBB53_100:
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	jb	.LBB53_102
	.p2align	4, 0x90
.LBB53_101:                             # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483645, %eax               # imm = 0x7FFFFFFD
	ja	.LBB53_101
.LBB53_102:
	movl	%eax, %ecx
	movl	$3435973837, %edx               # imm = 0xCCCCCCCD
	imulq	%rcx, %rdx
	shrq	$34, %rdx
	leal	(%rdx,%rdx,4), %ecx
	movq	EnemyFrozen@GOTPCREL(%rip), %rdx
	cmpl	%ecx, %eax
	setne	(%rdx)
	je	.LBB53_103
.LBB53_88:
	movq	EnemyCanMove@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	jmp	.LBB53_105
.LBB53_15:
	callq	rand@PLT
	movq	PlayerPara@GOTPCREL(%rip), %rcx
	testb	$3, %al
	sete	(%rcx)
	jne	.LBB53_33
	jmp	.LBB53_16
.LBB53_19:
	movb	72(%rcx), %al
	testb	%al, %al
	je	.LBB53_20
# %bb.21:
	cmpb	$3, %al
	ja	.LBB53_27
# %bb.22:
	callq	rand@PLT
	cmpl	$2147483647, %eax               # imm = 0x7FFFFFFF
	jb	.LBB53_24
.LBB53_23:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	ja	.LBB53_23
.LBB53_24:
	imull	$-1431655765, %eax, %eax        # imm = 0xAAAAAAAB
	movq	(%r13), %rcx
	cmpl	$1431655766, %eax               # imm = 0x55555556
	jb	.LBB53_27
# %bb.25:
	movb	72(%rcx), %al
	addb	$1, %al
	jmp	.LBB53_26
.LBB53_28:
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	jb	.LBB53_30
	.p2align	4, 0x90
.LBB53_29:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483645, %eax               # imm = 0x7FFFFFFD
	ja	.LBB53_29
.LBB53_30:
	movl	%eax, %ecx
	movl	$3435973837, %edx               # imm = 0xCCCCCCCD
	imulq	%rcx, %rdx
	shrq	$34, %rdx
	leal	(%rdx,%rdx,4), %ecx
	movq	PlayerFrozen@GOTPCREL(%rip), %rdx
	cmpl	%ecx, %eax
	setne	(%rdx)
	je	.LBB53_31
.LBB53_16:
	movq	PlayerCanMove@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	jmp	.LBB53_33
.LBB53_99:
	movq	EnemySleep@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movw	$0, 72(%rcx)
	movq	(%rcx), %rdx
	leaq	.L.str.74(%rip), %rsi
	jmp	.LBB53_104
.LBB53_27:
	movq	PlayerSleep@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movw	$0, 72(%rcx)
	movq	(%rcx), %rdx
	leaq	.L.str.71(%rip), %rsi
	jmp	.LBB53_32
.LBB53_92:
	movb	$1, %al
.LBB53_98:
	movq	EnemyCanMove@GOTPCREL(%rip), %rdx
	movb	$0, (%rdx)
	movq	EnemySleep@GOTPCREL(%rip), %rdx
	movb	$1, (%rdx)
	movb	%al, 72(%rcx)
	jmp	.LBB53_105
.LBB53_103:
	movq	64(%r13), %rax
	movb	$0, 73(%rax)
	movq	(%rax), %rdx
	leaq	.L.str.75(%rip), %rsi
.LBB53_104:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB53_105:
	movq	8(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzbl	19(%r15,%rcx), %eax
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %r12
	movl	$3, %edi
	movl	$1, %esi
	callq	*(%r12,%rax,8)
	movl	$1, %edi
	callq	display_move@PLT
	movq	64(%r13), %rdx
	cmpl	$0, 12(%rdx)
	jle	.LBB53_72
# %bb.106:
	cmpb	$0, (%rbp)
	je	.LBB53_72
# %bb.107:
	movq	EnemyCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB53_72
# %bb.108:
	movq	8(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r15,%rcx), %edi
	movzbl	18(%r15,%rcx), %esi
	movl	%esi, %eax
	shll	$16, %eax
	orl	%edi, %eax
	shrb	$2, %sil
	andb	$3, %sil
	cmpb	$2, %sil
	je	.LBB53_127
# %bb.109:
	cmpb	$1, %sil
	je	.LBB53_112
# %bb.110:
	testb	%sil, %sil
	jne	.LBB53_72
# %bb.111:
	movzbl	19(%r15,%rcx), %eax
	movl	$1, %edi
	movl	$1, %esi
	callq	*(%r12,%rax,8)
	movq	64(%r13), %rax
	movzbl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	movl	$1, %esi
	callq	*16(%rbx,%rax,8)
	movq	(%r13), %rax
	movzbl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movl	$-1, %edi
	xorl	%esi, %esi
	callq	*16(%rbx,%rax,8)
	jmp	.LBB53_126
.LBB53_127:
	movq	%rbx, %rbp
	movb	8(%rdx), %bl
	addb	%bl, %bl
	movzbl	%bl, %esi
	imull	$205, %esi, %edi
	shrl	$10, %edi
	addb	$2, %dil
	movq	%rbp, %r9
	movb	(%rbp), %sil
	testb	%sil, %sil
	sete	%r8b
	movsbl	76(%rdx), %ebp
	testl	%ebp, %ebp
	setns	%bl
	orb	%r8b, %bl
	movzbl	%dil, %edi
	movl	60(%rdx), %edx
	testl	%ebp, %ebp
	js	.LBB53_129
# %bb.128:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI53_7(%rip), %xmm0
	addsd	.LCPI53_8(%rip), %xmm0
	jmp	.LBB53_130
.LBB53_112:
	movq	%rbx, %rbp
	movb	8(%rdx), %bl
	addb	%bl, %bl
	movzbl	%bl, %esi
	imull	$205, %esi, %edi
	shrl	$10, %edi
	addb	$2, %dil
	movq	%rbp, %r9
	movb	(%rbp), %sil
	testb	%sil, %sil
	sete	%r8b
	movsbl	74(%rdx), %ebp
	testl	%ebp, %ebp
	setns	%bl
	orb	%r8b, %bl
	movzbl	%dil, %edi
	movl	52(%rdx), %edx
	testl	%ebp, %ebp
	js	.LBB53_114
# %bb.113:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI53_7(%rip), %xmm0
	addsd	.LCPI53_8(%rip), %xmm0
	jmp	.LBB53_115
.LBB53_20:
	movb	$1, %al
.LBB53_26:
	movq	PlayerCanMove@GOTPCREL(%rip), %rdx
	movb	$0, (%rdx)
	movq	PlayerSleep@GOTPCREL(%rip), %rdx
	movb	$1, (%rdx)
	movb	%al, 72(%rcx)
	jmp	.LBB53_33
.LBB53_31:
	movq	(%r13), %rax
	movb	$0, 73(%rax)
	movq	(%rax), %rdx
	leaq	.L.str.72(%rip), %rsi
.LBB53_32:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB53_33:
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzbl	19(%r15,%rcx), %eax
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %r12
	movl	$3, %edi
	movl	$1, %esi
	callq	*(%r12,%rax,8)
	xorl	%edi, %edi
	callq	display_move@PLT
	movq	(%r13), %rdx
	cmpl	$0, 12(%rdx)
	jle	.LBB53_72
# %bb.34:
	cmpb	$0, (%rbp)
	je	.LBB53_72
# %bb.35:
	movq	PlayerCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB53_72
# %bb.36:
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r15,%rcx), %edi
	movzbl	18(%r15,%rcx), %esi
	movl	%esi, %eax
	shll	$16, %eax
	orl	%edi, %eax
	shrb	$2, %sil
	andb	$3, %sil
	cmpb	$2, %sil
	je	.LBB53_55
# %bb.37:
	cmpb	$1, %sil
	je	.LBB53_40
# %bb.38:
	testb	%sil, %sil
	jne	.LBB53_72
# %bb.39:
	movzbl	19(%r15,%rcx), %eax
	movl	$1, %edi
	xorl	%esi, %esi
	callq	*(%r12,%rax,8)
	movq	(%r13), %rax
	movzbl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	xorl	%esi, %esi
	callq	*16(%rbx,%rax,8)
	movq	64(%r13), %rax
	movzbl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movl	$-1, %edi
	movl	$1, %esi
	callq	*16(%rbx,%rax,8)
	jmp	.LBB53_54
.LBB53_55:
	movq	%rbx, %rbp
	movb	8(%rdx), %bl
	addb	%bl, %bl
	movzbl	%bl, %esi
	imull	$205, %esi, %edi
	shrl	$10, %edi
	addb	$2, %dil
	movq	%rbp, %r9
	movb	(%rbp), %sil
	testb	%sil, %sil
	sete	%r8b
	movsbl	76(%rdx), %ebp
	testl	%ebp, %ebp
	setns	%bl
	orb	%r8b, %bl
	movzbl	%dil, %edi
	movl	60(%rdx), %edx
	testl	%ebp, %ebp
	js	.LBB53_57
# %bb.56:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI53_7(%rip), %xmm0
	addsd	.LCPI53_8(%rip), %xmm0
	jmp	.LBB53_58
.LBB53_40:
	movq	%rbx, %rbp
	movb	8(%rdx), %bl
	addb	%bl, %bl
	movzbl	%bl, %esi
	imull	$205, %esi, %edi
	shrl	$10, %edi
	addb	$2, %dil
	movq	%rbp, %r9
	movb	(%rbp), %sil
	testb	%sil, %sil
	sete	%r8b
	movsbl	74(%rdx), %ebp
	testl	%ebp, %ebp
	setns	%bl
	orb	%r8b, %bl
	movzbl	%dil, %edi
	movl	52(%rdx), %edx
	testl	%ebp, %ebp
	js	.LBB53_42
# %bb.41:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI53_7(%rip), %xmm0
	addsd	.LCPI53_8(%rip), %xmm0
	jmp	.LBB53_43
.LBB53_129:
	negl	%ebp
	cvtsi2sd	%ebp, %xmm1
	mulsd	.LCPI53_7(%rip), %xmm1
	movsd	.LCPI53_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB53_130:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	cvtsi2sd	%rdx, %xmm2
	testb	%sil, %sil
	sete	%dl
	testb	%bl, %bl
	jne	.LBB53_132
# %bb.131:
	movsd	.LCPI53_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB53_132:
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	(%r13), %rsi
	movsbl	77(%rsi), %edi
	testl	%edi, %edi
	setle	%bl
	orb	%bl, %dl
	movzbl	15(%r15,%rcx), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	movl	64(%rsi), %ecx
	jmp	.LBB53_118
.LBB53_114:
	negl	%ebp
	cvtsi2sd	%ebp, %xmm1
	mulsd	.LCPI53_7(%rip), %xmm1
	movsd	.LCPI53_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB53_115:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	cvtsi2sd	%rdx, %xmm2
	testb	%sil, %sil
	sete	%dl
	testb	%bl, %bl
	jne	.LBB53_117
# %bb.116:
	movsd	.LCPI53_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB53_117:
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	(%r13), %rsi
	movsbl	75(%rsi), %edi
	testl	%edi, %edi
	setle	%bl
	orb	%bl, %dl
	movzbl	15(%r15,%rcx), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	movl	56(%rsi), %ecx
.LBB53_118:
	testl	%edi, %edi
	js	.LBB53_120
# %bb.119:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edi, %xmm2
	mulsd	.LCPI53_7(%rip), %xmm2
	addsd	.LCPI53_8(%rip), %xmm2
	jmp	.LBB53_121
.LBB53_120:
	negl	%edi
	cvtsi2sd	%edi, %xmm3
	mulsd	.LCPI53_7(%rip), %xmm3
	movsd	.LCPI53_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB53_121:
	movq	%r9, %rbx
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rcx, %xmm1
	testb	%dl, %dl
	jne	.LBB53_123
# %bb.122:
	movsd	.LCPI53_8(%rip), %xmm2          # xmm2 = mem[0],zero
.LBB53_123:
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	divsd	.LCPI53_9(%rip), %xmm0
	addsd	.LCPI53_10(%rip), %xmm0
	movq	EnemySTAB@GOTPCREL(%rip), %rcx
	mulsd	(%rcx), %xmm0
	shrl	$13, %eax
	andl	$31, %eax
	movq	(%rsi), %rcx
	movzwl	12(%rcx), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	shrq	$3, %rcx
	andl	$124, %ecx
	movss	(%rcx,%rax), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
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
	mulsd	(%rsp), %xmm0                   # 8-byte Folded Reload
	divsd	.LCPI53_11(%rip), %xmm0
	movq	EnemyTM@GOTPCREL(%rip), %rax
	mulsd	(%rax), %xmm0
	xorl	%eax, %eax
	cmpb	$0, (%rbx)
	sete	%al
	leaq	.LCPI53_12(%rip), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	Damages@GOTPCREL(%rip), %rbx
	movl	%eax, 4(%rbx)
	movq	8(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzbl	19(%r15,%rcx), %eax
	movl	$1, %edi
	movl	$1, %esi
	callq	*(%r12,%rax,8)
	movq	64(%r13), %rax
	movzbl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rbp
	movl	$1, %edi
	movl	$1, %esi
	callq	*16(%rbp,%rax,8)
	movq	(%r13), %rax
	movzbl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movl	$-1, %edi
	xorl	%esi, %esi
	callq	*16(%rbp,%rax,8)
	movq	(%r13), %rax
	movl	12(%rax), %ecx
	movl	4(%rbx), %edx
	cmpl	%edx, %ecx
	jge	.LBB53_125
# %bb.124:
	movl	%ecx, 4(%rbx)
	movl	%ecx, %edx
.LBB53_125:
	subl	%edx, %ecx
	movl	%ecx, 12(%rax)
.LBB53_126:
	movq	8(%r14), %rax
	movb	1(%rax), %cl
	leal	-1(%rcx), %edx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 1(%rax)
	movl	$1, %edi
	callq	move_result@PLT
	movq	8(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzbl	19(%r15,%rcx), %eax
	movl	$2, %edi
	movl	$1, %esi
	callq	*(%r12,%rax,8)
	jmp	.LBB53_72
.LBB53_57:
	negl	%ebp
	cvtsi2sd	%ebp, %xmm1
	mulsd	.LCPI53_7(%rip), %xmm1
	movsd	.LCPI53_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB53_58:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	cvtsi2sd	%rdx, %xmm2
	testb	%sil, %sil
	sete	%dl
	testb	%bl, %bl
	jne	.LBB53_60
# %bb.59:
	movsd	.LCPI53_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB53_60:
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	64(%r13), %rsi
	movsbl	77(%rsi), %edi
	testl	%edi, %edi
	setle	%bl
	orb	%bl, %dl
	movzbl	15(%r15,%rcx), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	movl	64(%rsi), %ecx
	testl	%edi, %edi
	js	.LBB53_62
# %bb.61:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edi, %xmm2
	mulsd	.LCPI53_7(%rip), %xmm2
	addsd	.LCPI53_8(%rip), %xmm2
	jmp	.LBB53_63
.LBB53_42:
	negl	%ebp
	cvtsi2sd	%ebp, %xmm1
	mulsd	.LCPI53_7(%rip), %xmm1
	movsd	.LCPI53_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB53_43:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	cvtsi2sd	%rdx, %xmm2
	testb	%sil, %sil
	sete	%dl
	testb	%bl, %bl
	jne	.LBB53_45
# %bb.44:
	movsd	.LCPI53_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB53_45:
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	64(%r13), %rsi
	movsbl	75(%rsi), %edi
	testl	%edi, %edi
	setle	%bl
	orb	%bl, %dl
	movzbl	15(%r15,%rcx), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	movl	56(%rsi), %ecx
	testl	%edi, %edi
	js	.LBB53_47
# %bb.46:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edi, %xmm2
	mulsd	.LCPI53_7(%rip), %xmm2
	addsd	.LCPI53_8(%rip), %xmm2
	jmp	.LBB53_48
.LBB53_62:
	negl	%edi
	cvtsi2sd	%edi, %xmm3
	mulsd	.LCPI53_7(%rip), %xmm3
	movsd	.LCPI53_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB53_63:
	movq	%r9, %rbx
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rcx, %xmm1
	testb	%dl, %dl
	jne	.LBB53_65
# %bb.64:
	movsd	.LCPI53_8(%rip), %xmm2          # xmm2 = mem[0],zero
.LBB53_65:
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	divsd	.LCPI53_9(%rip), %xmm0
	addsd	.LCPI53_10(%rip), %xmm0
	movq	STAB@GOTPCREL(%rip), %rcx
	mulsd	(%rcx), %xmm0
	shrl	$13, %eax
	andl	$31, %eax
	movq	(%rsi), %rcx
	movzwl	12(%rcx), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	shrq	$3, %rcx
	andl	$124, %ecx
	movss	(%rcx,%rax), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	jmp	.LBB53_51
.LBB53_47:
	negl	%edi
	cvtsi2sd	%edi, %xmm3
	mulsd	.LCPI53_7(%rip), %xmm3
	movsd	.LCPI53_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB53_48:
	movq	%r9, %rbx
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rcx, %xmm1
	testb	%dl, %dl
	jne	.LBB53_50
# %bb.49:
	movsd	.LCPI53_8(%rip), %xmm2          # xmm2 = mem[0],zero
.LBB53_50:
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	divsd	.LCPI53_9(%rip), %xmm0
	addsd	.LCPI53_10(%rip), %xmm0
	movq	STAB@GOTPCREL(%rip), %rcx
	mulsd	(%rcx), %xmm0
	shrl	$13, %eax
	andl	$31, %eax
	movq	(%rsi), %rcx
	movzwl	12(%rcx), %ecx
	movl	%ecx, %edx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	andl	$31, %edx
	movss	(%rax,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	shrq	$3, %rcx
	andl	$124, %ecx
	mulss	(%rcx,%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
.LBB53_51:
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
	mulsd	(%rsp), %xmm0                   # 8-byte Folded Reload
	divsd	.LCPI53_11(%rip), %xmm0
	movq	PlayerTM@GOTPCREL(%rip), %rax
	mulsd	(%rax), %xmm0
	xorl	%eax, %eax
	cmpb	$0, (%rbx)
	sete	%al
	leaq	.LCPI53_12(%rip), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	Damages@GOTPCREL(%rip), %rbx
	movl	%eax, (%rbx)
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzbl	19(%r15,%rcx), %eax
	movl	$1, %edi
	xorl	%esi, %esi
	callq	*(%r12,%rax,8)
	movq	(%r13), %rax
	movzbl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rbp
	movl	$1, %edi
	xorl	%esi, %esi
	callq	*16(%rbp,%rax,8)
	movq	64(%r13), %rax
	movzbl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movl	$-1, %edi
	movl	$1, %esi
	callq	*16(%rbp,%rax,8)
	movq	64(%r13), %rax
	movl	12(%rax), %ecx
	movl	(%rbx), %edx
	cmpl	%edx, %ecx
	jge	.LBB53_53
# %bb.52:
	movl	%ecx, (%rbx)
	movl	%ecx, %edx
.LBB53_53:
	subl	%edx, %ecx
	movl	%ecx, 12(%rax)
.LBB53_54:
	movq	(%r14), %rax
	movb	1(%rax), %cl
	leal	-1(%rcx), %edx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 1(%rax)
	xorl	%edi, %edi
	callq	move_result@PLT
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzbl	19(%r15,%rcx), %eax
	movl	$2, %edi
	xorl	%esi, %esi
	callq	*(%r12,%rax,8)
	jmp	.LBB53_72
.Lfunc_end53:
	.size	ExecuteMove, .Lfunc_end53-ExecuteMove
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI53_0:
	.long	.LBB53_17-.LJTI53_0
	.long	.LBB53_33-.LJTI53_0
	.long	.LBB53_33-.LJTI53_0
	.long	.LBB53_15-.LJTI53_0
	.long	.LBB53_19-.LJTI53_0
	.long	.LBB53_28-.LJTI53_0
.LJTI53_1:
	.long	.LBB53_89-.LJTI53_1
	.long	.LBB53_105-.LJTI53_1
	.long	.LBB53_105-.LJTI53_1
	.long	.LBB53_87-.LJTI53_1
	.long	.LBB53_91-.LJTI53_1
	.long	.LBB53_100-.LJTI53_1
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function endturn
.LCPI54_0:
	.quad	0x3fb0000000000000              # double 0.0625
.LCPI54_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	endturn
	.p2align	4, 0x90
	.type	endturn,@function
endturn:                                # @endturn
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	Parties@GOTPCREL(%rip), %rbx
	testl	%edi, %edi
	je	.LBB54_6
# %bb.1:
	movq	64(%rbx), %rax
	movb	73(%rax), %cl
	cmpb	$3, %cl
	je	.LBB54_11
# %bb.2:
	cmpb	$2, %cl
	je	.LBB54_14
# %bb.3:
	cmpb	$1, %cl
	jne	.LBB54_27
# %bb.4:
	movl	48(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB54_21
# %bb.5:
	movsd	.LCPI54_1(%rip), %xmm0          # xmm0 = mem[0],zero
	leaq	.L.str.81(%rip), %rsi
	jmp	.LBB54_26
.LBB54_6:
	movq	(%rbx), %rax
	movb	73(%rax), %cl
	cmpb	$3, %cl
	je	.LBB54_16
# %bb.7:
	cmpb	$2, %cl
	je	.LBB54_19
# %bb.8:
	cmpb	$1, %cl
	jne	.LBB54_33
# %bb.9:
	movl	48(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB54_22
# %bb.10:
	movsd	.LCPI54_1(%rip), %xmm0          # xmm0 = mem[0],zero
	jmp	.LBB54_23
.LBB54_11:
	movb	72(%rax), %cl
	cmpb	$15, %cl
	ja	.LBB54_13
# %bb.12:
	addb	$1, %cl
	movb	%cl, 72(%rax)
.LBB54_13:
	movl	48(%rax), %edx
	cvtsi2sd	%rdx, %xmm1
	movzbl	%cl, %ecx
	cvtsi2sd	%ecx, %xmm0
	mulsd	.LCPI54_0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	maxsd	.LCPI54_1(%rip), %xmm0
	leaq	.L.str.83(%rip), %rsi
	jmp	.LBB54_26
.LBB54_14:
	movl	48(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB54_24
# %bb.15:
	movsd	.LCPI54_1(%rip), %xmm0          # xmm0 = mem[0],zero
	jmp	.LBB54_25
.LBB54_16:
	movb	72(%rax), %cl
	cmpb	$15, %cl
	ja	.LBB54_18
# %bb.17:
	addb	$1, %cl
	movb	%cl, 72(%rax)
.LBB54_18:
	movl	48(%rax), %edx
	cvtsi2sd	%rdx, %xmm0
	movzbl	%cl, %ecx
	cvtsi2sd	%ecx, %xmm1
	mulsd	.LCPI54_0(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	maxsd	.LCPI54_1(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	12(%rax), %xmm0
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 12(%rax)
	movq	64(%rbx), %rax
	leaq	.L.str.79(%rip), %rsi
	jmp	.LBB54_32
.LBB54_19:
	movl	48(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB54_30
# %bb.20:
	movsd	.LCPI54_1(%rip), %xmm0          # xmm0 = mem[0],zero
	jmp	.LBB54_31
.LBB54_21:
	shrl	$3, %ecx
	cvtsi2sd	%ecx, %xmm0
	leaq	.L.str.81(%rip), %rsi
	jmp	.LBB54_26
.LBB54_22:
	shrl	$3, %ecx
	cvtsi2sd	%ecx, %xmm0
.LBB54_23:
	cvtsi2sdl	12(%rax), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 12(%rax)
	leaq	.L.str.77(%rip), %rsi
	jmp	.LBB54_32
.LBB54_24:
	shrl	$3, %ecx
	cvtsi2sd	%ecx, %xmm0
.LBB54_25:
	leaq	.L.str.82(%rip), %rsi
.LBB54_26:
	xorps	%xmm1, %xmm1
	cvtsi2sdl	12(%rax), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 12(%rax)
	movq	(%rax), %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	64(%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.8(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB54_27:
	movq	64(%rbx), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB54_29
# %bb.28:
	movzbl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rcx
	movq	16(%rcx,%rax,8), %rax
	movl	$5, %edi
	movl	$1, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmpq	*%rax                           # TAILCALL
.LBB54_29:
	.cfi_def_cfa_offset 16
	movq	(%rax), %rdx
	leaq	.L.str.68(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	xorl	%edi, %edi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	SwitchIn@PLT                    # TAILCALL
.LBB54_30:
	.cfi_def_cfa_offset 16
	shrl	$3, %ecx
	cvtsi2sd	%ecx, %xmm0
.LBB54_31:
	cvtsi2sdl	12(%rax), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 12(%rax)
	leaq	.L.str.78(%rip), %rsi
.LBB54_32:
	movq	(%rax), %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB54_33:
	movq	(%rbx), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB54_35
# %bb.34:
	movzbl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movq	ItemList@GOTPCREL(%rip), %rcx
	movq	16(%rcx,%rax,8), %rax
	movl	$5, %edi
	xorl	%esi, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmpq	*%rax                           # TAILCALL
.LBB54_35:
	.cfi_def_cfa_offset 16
	movq	(%rax), %rdx
	leaq	.L.str.80(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	callq	SwitchIn@PLT
	leaq	.L.str.34(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end54:
	.size	endturn, .Lfunc_end54-endturn
	.cfi_endproc
                                        # -- End function
	.globl	CheckIfAllDead                  # -- Begin function CheckIfAllDead
	.p2align	4, 0x90
	.type	CheckIfAllDead,@function
CheckIfAllDead:                         # @CheckIfAllDead
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rdx
	cmpl	$0, 12(%rdx)
	jle	.LBB55_1
.LBB55_9:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB55_1:
	.cfi_def_cfa_offset 16
	movq	8(%rcx,%rax), %rdx
	cmpl	$0, 12(%rdx)
	jg	.LBB55_9
# %bb.2:
	movq	16(%rcx,%rax), %rdx
	cmpl	$0, 12(%rdx)
	jg	.LBB55_9
# %bb.3:
	movq	24(%rcx,%rax), %rdx
	cmpl	$0, 12(%rdx)
	jg	.LBB55_9
# %bb.4:
	movq	32(%rcx,%rax), %rdx
	cmpl	$0, 12(%rdx)
	jg	.LBB55_9
# %bb.5:
	movq	40(%rcx,%rax), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB55_9
# %bb.6:
	leaq	.L.str.85(%rip), %rax
	leaq	.L.str.84(%rip), %rsi
	testb	%dil, %dil
	cmovneq	%rax, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.86(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.34(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movzwl	(%rbx), %eax
	cmpw	$121, %ax
	je	.LBB55_8
# %bb.7:
	testb	%al, %al
	jne	.LBB55_9
.LBB55_8:
	movq	StatCalc@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	BattleMode@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end55:
	.size	CheckIfAllDead, .Lfunc_end55-CheckIfAllDead
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function Battle
.LCPI56_0:
	.long	31                              # 0x1f
	.long	31                              # 0x1f
	.long	31                              # 0x1f
	.long	31                              # 0x1f
.LCPI56_1:
	.zero	16,63
.LCPI56_2:
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
.LCPI56_3:
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
.LCPI56_4:
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
.LCPI56_5:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI56_9:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff8000000000000              # double 1.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI56_6:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI56_7:
	.quad	0x3ff0000000000000              # double 1
.LCPI56_8:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI56_10:
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	StatCalc@GOTPCREL(%rip), %r14
	cmpb	$0, (%r14)
	je	.LBB56_4
# %bb.1:
	movq	Parties@GOTPCREL(%rip), %r15
	movq	(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %esi
	shrl	$5, %esi
	andl	$31, %esi
	movq	(%rdx), %rcx
	movsbl	14(%rcx), %edi
	leal	(%rsi,%rdi,2), %esi
	movzbl	40(%rdx), %edi
	shrl	$2, %edi
	addl	%esi, %edi
	movd	8(%rdx), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movl	$127, %esi
	movd	%esi, %xmm13
	pand	%xmm13, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pxor	%xmm1, %xmm1
	punpcklbw	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	punpcklwd	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movd	%xmm0, %esi
	imull	%esi, %edi
	movslq	%edi, %rdi
	imulq	$1374389535, %rdi, %rdi         # imm = 0x51EB851F
	movq	%rdi, %rbp
	shrq	$63, %rbp
	shrq	$32, %rdi
	sarl	$5, %edi
	addl	%ebp, %edi
	addl	%esi, %edi
	addl	$10, %edi
	movl	%edi, 48(%rdx)
	movl	%eax, %edi
	shrl	$10, %edi
	andl	$31, %edi
	movsbl	15(%rcx), %ebp
	leal	(%rdi,%rbp,2), %edi
	movzbl	41(%rdx), %ebp
	shrl	$2, %ebp
	addl	%edi, %ebp
	imull	%esi, %ebp
	movslq	%ebp, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$32, %rdi
	sarl	$5, %edi
	shrq	$63, %rsi
	addl	%edi, %esi
	addl	$5, %esi
	cvtsi2ss	%esi, %xmm2
	pshufd	$64, %xmm0, %xmm0               # xmm0 = xmm0[0,0,0,1]
	movq	NATURE_LIST@GOTPCREL(%rip), %r8
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	%rax, %rsi
	mulss	(%r8,%rsi), %xmm2
	cvttss2si	%xmm2, %rax
	movl	%eax, 52(%rdx)
	movl	20(%rdx), %eax
	movl	%eax, %edi
	shrl	$5, %edi
	movl	%eax, %ebp
	shrl	$10, %ebp
	movd	%eax, %xmm2
	shrl	$15, %eax
	movd	%eax, %xmm3
	movd	%ebp, %xmm4
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	%edi, %xmm3
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	punpcklqdq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0]
	movdqa	.LCPI56_0(%rip), %xmm8          # xmm8 = [31,31,31,31]
	pand	%xmm8, %xmm2
	movd	16(%rcx), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm3            # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm3, %xmm3            # xmm3 = xmm3[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm3
	paddd	%xmm3, %xmm3
	movd	42(%rdx), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	psrlw	$2, %xmm4
	movdqa	.LCPI56_1(%rip), %xmm9          # xmm9 = [63,63,63,63,63,63,63,63,63,63,63,63,63,63,63,63]
	pand	%xmm9, %xmm4
	punpcklbw	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
	punpcklwd	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	paddd	%xmm2, %xmm4
	paddd	%xmm3, %xmm4
	packssdw	%xmm4, %xmm4
	packuswb	%xmm0, %xmm0
	movdqa	%xmm4, %xmm2
	pmulhw	%xmm0, %xmm2
	pmullw	%xmm4, %xmm0
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	movdqa	.LCPI56_2(%rip), %xmm3          # xmm3 = [1374389535,1374389535,1374389535,1374389535]
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm0, %xmm4
	pmuludq	%xmm3, %xmm0
	pshufd	$237, %xmm0, %xmm0              # xmm0 = xmm0[1,3,2,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$237, %xmm2, %xmm2              # xmm2 = xmm2[1,3,2,3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pand	%xmm3, %xmm4
	psubd	%xmm4, %xmm0
	movdqa	%xmm0, %xmm2
	psrld	$31, %xmm2
	psrad	$5, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	.LCPI56_3(%rip), %xmm10         # xmm10 = [5,5,5,5]
	paddd	%xmm10, %xmm0
	cvtdq2ps	%xmm0, %xmm0
	movups	4(%r8,%rsi), %xmm2
	mulps	%xmm0, %xmm2
	movaps	.LCPI56_4(%rip), %xmm12         # xmm12 = [2.14748365E+9,2.14748365E+9,2.14748365E+9,2.14748365E+9]
	movaps	%xmm2, %xmm0
	cmpltps	%xmm12, %xmm0
	cvttps2dq	%xmm2, %xmm7
	andps	%xmm0, %xmm7
	subps	%xmm12, %xmm2
	cvttps2dq	%xmm2, %xmm2
	movaps	.LCPI56_5(%rip), %xmm11         # xmm11 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm11, %xmm2
	andnps	%xmm2, %xmm0
	orps	%xmm7, %xmm0
	movups	%xmm0, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rsi
	addq	%rax, %rsi
	movq	MoveList@GOTPCREL(%rip), %r9
	movzwl	16(%r9,%rsi), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ss	%eax, %xmm7
	movb	25(%rdx), %bl
	movl	%ebx, %eax
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm4, %xmm4
	cvtsi2sd	%eax, %xmm4
	movsd	.LCPI56_6(%rip), %xmm0          # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm4
	movsd	.LCPI56_7(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm4
	cvtsd2ss	%xmm4, %xmm4
	mulss	%xmm7, %xmm4
	cvttss2si	%xmm4, %rax
	andb	$63, %al
	andb	$-64, %bl
	orb	%al, %bl
	movb	%bl, 25(%rdx)
	movzbl	28(%rdx), %eax
	leaq	(%rax,%rax,4), %rsi
	leaq	(%rsi,%rsi,4), %rsi
	addq	%rax, %rsi
	movzwl	16(%r9,%rsi), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	29(%rdx), %bl
	movl	%ebx, %eax
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm7, %xmm7
	cvtsi2sd	%eax, %xmm7
	mulsd	%xmm0, %xmm7
	addsd	%xmm2, %xmm7
	cvtsd2ss	%xmm7, %xmm7
	mulss	%xmm4, %xmm7
	cvttss2si	%xmm7, %rax
	andb	$63, %al
	andb	$-64, %bl
	orb	%al, %bl
	movb	%bl, 29(%rdx)
	movzbl	32(%rdx), %eax
	leaq	(%rax,%rax,4), %rsi
	leaq	(%rsi,%rsi,4), %rsi
	addq	%rax, %rsi
	movzwl	16(%r9,%rsi), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	33(%rdx), %bl
	movl	%ebx, %eax
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm7, %xmm7
	cvtsi2sd	%eax, %xmm7
	mulsd	%xmm0, %xmm7
	addsd	%xmm2, %xmm7
	cvtsd2ss	%xmm7, %xmm7
	mulss	%xmm4, %xmm7
	cvttss2si	%xmm7, %rax
	andb	$63, %al
	andb	$-64, %bl
	orb	%al, %bl
	movb	%bl, 33(%rdx)
	movzbl	36(%rdx), %eax
	leaq	(%rax,%rax,4), %rsi
	leaq	(%rsi,%rsi,4), %rsi
	addq	%rax, %rsi
	movzwl	16(%r9,%rsi), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	37(%rdx), %bl
	movl	%ebx, %eax
	shrb	$6, %al
	movzbl	%al, %eax
	xorps	%xmm7, %xmm7
	cvtsi2sd	%eax, %xmm7
	mulsd	%xmm0, %xmm7
	addsd	%xmm2, %xmm7
	cvtsd2ss	%xmm7, %xmm7
	mulss	%xmm4, %xmm7
	cvttss2si	%xmm7, %rax
	andb	$63, %al
	andb	$-64, %bl
	orb	%al, %bl
	movb	%bl, 37(%rdx)
	movq	8(%r15), %rdx
	movzwl	18(%rdx), %ecx
	movl	%ecx, %edi
	shrl	$5, %edi
	andl	$31, %edi
	movq	(%rdx), %rsi
	movsbl	14(%rsi), %ebp
	leal	(%rdi,%rbp,2), %edi
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%edi, %ebp
	movd	8(%rdx), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	pand	%xmm13, %xmm7
	punpcklbw	%xmm7, %xmm7            # xmm7 = xmm7[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklbw	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	%xmm7, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rbp
	imulq	$1374389535, %rbp, %rbp         # imm = 0x51EB851F
	movq	%rbp, %rbx
	shrq	$63, %rbx
	shrq	$32, %rbp
	sarl	$5, %ebp
	addl	%ebx, %ebp
	addl	%edi, %ebp
	addl	$10, %ebp
	movl	%ebp, 48(%rdx)
	movl	%ecx, %eax
	shrl	$10, %eax
	andl	$31, %eax
	movsbl	15(%rsi), %ebp
	leal	(%rax,%rbp,2), %eax
	movzbl	41(%rdx), %ebp
	shrl	$2, %ebp
	addl	%eax, %ebp
	imull	%edi, %ebp
	movslq	%ebp, %rax
	imulq	$1374389535, %rax, %rax         # imm = 0x51EB851F
	movq	%rax, %rdi
	shrq	$32, %rdi
	sarl	$5, %edi
	shrq	$63, %rax
	addl	%edi, %eax
	addl	$5, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
	andl	$31, %ecx
	leaq	(%rcx,%rcx,8), %rax
	leaq	(%rax,%rax,2), %rdi
	addq	%rcx, %rdi
	mulss	(%r8,%rdi), %xmm4
	cvttss2si	%xmm4, %rax
	movl	%eax, 52(%rdx)
	movl	20(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	movl	%eax, %ebp
	shrl	$10, %ebp
	movd	%eax, %xmm4
	shrl	$15, %eax
	movd	%eax, %xmm5
	movd	%ebp, %xmm6
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	%ecx, %xmm5
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	pand	%xmm8, %xmm4
	movd	16(%rsi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm5
	paddd	%xmm5, %xmm5
	movd	42(%rdx), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm9, %xmm6
	punpcklbw	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	paddd	%xmm4, %xmm6
	paddd	%xmm5, %xmm6
	packssdw	%xmm6, %xmm6
	packuswb	%xmm7, %xmm7
	movdqa	%xmm6, %xmm4
	pmulhw	%xmm7, %xmm4
	pmullw	%xmm6, %xmm7
	punpcklwd	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pmuludq	%xmm3, %xmm7
	pshufd	$237, %xmm7, %xmm6              # xmm6 = xmm7[1,3,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	pand	%xmm3, %xmm5
	psubd	%xmm5, %xmm6
	movdqa	%xmm6, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm6
	paddd	%xmm4, %xmm6
	paddd	%xmm10, %xmm6
	cvtdq2ps	%xmm6, %xmm4
	movups	4(%r8,%rdi), %xmm5
	mulps	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	cmpltps	%xmm12, %xmm4
	cvttps2dq	%xmm5, %xmm6
	andps	%xmm4, %xmm6
	subps	%xmm12, %xmm5
	cvttps2dq	%xmm5, %xmm5
	xorps	%xmm11, %xmm5
	andnps	%xmm5, %xmm4
	orps	%xmm6, %xmm4
	movups	%xmm4, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movzbl	28(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	29(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 29(%rdx)
	movzbl	32(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	33(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 33(%rdx)
	movzbl	36(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	37(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 37(%rdx)
	movq	16(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %ecx
	movq	(%rdx), %rsi
	movsbl	14(%rsi), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	movd	8(%rdx), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	pand	%xmm13, %xmm7
	punpcklbw	%xmm7, %xmm7            # xmm7 = xmm7[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklbw	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	%xmm7, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 48(%rdx)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$31, %ecx
	movsbl	15(%rsi), %ebp
	leal	(%rcx,%rbp,2), %ecx
	movzbl	41(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$32, %rdi
	sarl	$5, %edi
	shrq	$63, %rcx
	addl	%edi, %ecx
	addl	$5, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdi
	addq	%rax, %rdi
	mulss	(%r8,%rdi), %xmm4
	cvttss2si	%xmm4, %rax
	movl	%eax, 52(%rdx)
	movl	20(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	movl	%eax, %ebp
	shrl	$10, %ebp
	movd	%eax, %xmm4
	shrl	$15, %eax
	movd	%eax, %xmm5
	movd	%ebp, %xmm6
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	%ecx, %xmm5
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	pand	%xmm8, %xmm4
	movd	16(%rsi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm5
	paddd	%xmm5, %xmm5
	movd	42(%rdx), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm9, %xmm6
	punpcklbw	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	paddd	%xmm4, %xmm6
	paddd	%xmm5, %xmm6
	packssdw	%xmm6, %xmm6
	packuswb	%xmm7, %xmm7
	movdqa	%xmm6, %xmm4
	pmulhw	%xmm7, %xmm4
	pmullw	%xmm6, %xmm7
	punpcklwd	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pmuludq	%xmm3, %xmm7
	pshufd	$237, %xmm7, %xmm6              # xmm6 = xmm7[1,3,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	pand	%xmm3, %xmm5
	psubd	%xmm5, %xmm6
	movdqa	%xmm6, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm6
	paddd	%xmm4, %xmm6
	paddd	%xmm10, %xmm6
	cvtdq2ps	%xmm6, %xmm4
	movups	4(%r8,%rdi), %xmm5
	mulps	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	cmpltps	%xmm12, %xmm4
	cvttps2dq	%xmm5, %xmm6
	andps	%xmm4, %xmm6
	subps	%xmm12, %xmm5
	cvttps2dq	%xmm5, %xmm5
	xorps	%xmm11, %xmm5
	andnps	%xmm5, %xmm4
	orps	%xmm6, %xmm4
	movups	%xmm4, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movzbl	28(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	29(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 29(%rdx)
	movzbl	32(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	33(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 33(%rdx)
	movzbl	36(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	37(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 37(%rdx)
	movq	24(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %ecx
	movq	(%rdx), %rsi
	movsbl	14(%rsi), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	movd	8(%rdx), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	pand	%xmm13, %xmm7
	punpcklbw	%xmm7, %xmm7            # xmm7 = xmm7[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklbw	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	%xmm7, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 48(%rdx)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$31, %ecx
	movsbl	15(%rsi), %ebp
	leal	(%rcx,%rbp,2), %ecx
	movzbl	41(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$32, %rdi
	sarl	$5, %edi
	shrq	$63, %rcx
	addl	%edi, %ecx
	addl	$5, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdi
	addq	%rax, %rdi
	mulss	(%r8,%rdi), %xmm4
	cvttss2si	%xmm4, %rax
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
	movl	%eax, 52(%rdx)
	movl	20(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	movl	%eax, %ebp
	shrl	$10, %ebp
	movd	%eax, %xmm4
	shrl	$15, %eax
	movd	%eax, %xmm5
	movd	%ebp, %xmm6
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	%ecx, %xmm5
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	pand	%xmm8, %xmm4
	movd	16(%rsi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm5
	paddd	%xmm5, %xmm5
	movd	42(%rdx), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm9, %xmm6
	punpcklbw	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	paddd	%xmm4, %xmm6
	paddd	%xmm5, %xmm6
	packssdw	%xmm6, %xmm6
	packuswb	%xmm7, %xmm7
	movdqa	%xmm6, %xmm4
	pmulhw	%xmm7, %xmm4
	pmullw	%xmm6, %xmm7
	punpcklwd	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pmuludq	%xmm3, %xmm7
	pshufd	$237, %xmm7, %xmm6              # xmm6 = xmm7[1,3,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	pand	%xmm3, %xmm5
	psubd	%xmm5, %xmm6
	movdqa	%xmm6, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm6
	paddd	%xmm4, %xmm6
	paddd	%xmm10, %xmm6
	cvtdq2ps	%xmm6, %xmm4
	movups	4(%r8,%rdi), %xmm5
	mulps	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	cmpltps	%xmm12, %xmm4
	cvttps2dq	%xmm5, %xmm6
	andps	%xmm4, %xmm6
	subps	%xmm12, %xmm5
	cvttps2dq	%xmm5, %xmm5
	xorps	%xmm11, %xmm5
	andnps	%xmm5, %xmm4
	orps	%xmm6, %xmm4
	movups	%xmm4, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movq	24(%r15), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	29(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 29(%rax)
	movq	24(%r15), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	33(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	movb	37(%rax), %bl
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 33(%rax)
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movl	%ebx, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %bl
	orb	%cl, %bl
	movb	%bl, 37(%rax)
	movq	32(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %ecx
	movq	(%rdx), %rsi
	movsbl	14(%rsi), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	movd	8(%rdx), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	pand	%xmm13, %xmm7
	punpcklbw	%xmm7, %xmm7            # xmm7 = xmm7[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklbw	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	%xmm7, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 48(%rdx)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$31, %ecx
	movsbl	15(%rsi), %ebp
	leal	(%rcx,%rbp,2), %ecx
	movzbl	41(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$32, %rdi
	sarl	$5, %edi
	shrq	$63, %rcx
	addl	%edi, %ecx
	addl	$5, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdi
	addq	%rax, %rdi
	mulss	(%r8,%rdi), %xmm4
	cvttss2si	%xmm4, %rax
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
	movl	%eax, 52(%rdx)
	movl	20(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	movl	%eax, %ebp
	shrl	$10, %ebp
	movd	%eax, %xmm4
	shrl	$15, %eax
	movd	%eax, %xmm5
	movd	%ebp, %xmm6
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	%ecx, %xmm5
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	pand	%xmm8, %xmm4
	movd	16(%rsi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm5
	paddd	%xmm5, %xmm5
	movd	42(%rdx), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm9, %xmm6
	punpcklbw	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	paddd	%xmm4, %xmm6
	paddd	%xmm5, %xmm6
	packssdw	%xmm6, %xmm6
	packuswb	%xmm7, %xmm7
	movdqa	%xmm6, %xmm4
	pmulhw	%xmm7, %xmm4
	pmullw	%xmm6, %xmm7
	punpcklwd	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pmuludq	%xmm3, %xmm7
	pshufd	$237, %xmm7, %xmm6              # xmm6 = xmm7[1,3,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	pand	%xmm3, %xmm5
	psubd	%xmm5, %xmm6
	movdqa	%xmm6, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm6
	paddd	%xmm4, %xmm6
	paddd	%xmm10, %xmm6
	cvtdq2ps	%xmm6, %xmm4
	movups	4(%r8,%rdi), %xmm5
	mulps	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	cmpltps	%xmm12, %xmm4
	cvttps2dq	%xmm5, %xmm6
	andps	%xmm4, %xmm6
	subps	%xmm12, %xmm5
	cvttps2dq	%xmm5, %xmm5
	xorps	%xmm11, %xmm5
	andnps	%xmm5, %xmm4
	orps	%xmm6, %xmm4
	movups	%xmm4, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movq	32(%r15), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	29(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 29(%rax)
	movq	32(%r15), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	33(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 33(%rax)
	movq	32(%r15), %rax
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	37(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 37(%rax)
	movq	40(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %ecx
	movq	(%rdx), %rsi
	movsbl	14(%rsi), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	movd	8(%rdx), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	pand	%xmm13, %xmm7
	punpcklbw	%xmm7, %xmm7            # xmm7 = xmm7[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklbw	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	%xmm7, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 48(%rdx)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$31, %ecx
	movsbl	15(%rsi), %ebp
	leal	(%rcx,%rbp,2), %ecx
	movzbl	41(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$32, %rdi
	sarl	$5, %edi
	shrq	$63, %rcx
	addl	%edi, %ecx
	addl	$5, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdi
	addq	%rax, %rdi
	mulss	(%r8,%rdi), %xmm4
	cvttss2si	%xmm4, %rax
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
	movl	%eax, 52(%rdx)
	movl	20(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	movl	%eax, %ebp
	shrl	$10, %ebp
	movd	%eax, %xmm4
	shrl	$15, %eax
	movd	%eax, %xmm5
	movd	%ebp, %xmm6
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	%ecx, %xmm5
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	pand	%xmm8, %xmm4
	movd	16(%rsi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm5
	paddd	%xmm5, %xmm5
	movd	42(%rdx), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm9, %xmm6
	punpcklbw	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	paddd	%xmm4, %xmm6
	paddd	%xmm5, %xmm6
	packssdw	%xmm6, %xmm6
	packuswb	%xmm7, %xmm7
	movdqa	%xmm6, %xmm4
	pmulhw	%xmm7, %xmm4
	pmullw	%xmm6, %xmm7
	punpcklwd	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pmuludq	%xmm3, %xmm7
	pshufd	$237, %xmm7, %xmm6              # xmm6 = xmm7[1,3,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	pand	%xmm3, %xmm5
	psubd	%xmm5, %xmm6
	movdqa	%xmm6, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm6
	paddd	%xmm4, %xmm6
	paddd	%xmm10, %xmm6
	cvtdq2ps	%xmm6, %xmm4
	movups	4(%r8,%rdi), %xmm5
	mulps	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	cmpltps	%xmm12, %xmm4
	cvttps2dq	%xmm5, %xmm6
	andps	%xmm4, %xmm6
	subps	%xmm12, %xmm5
	cvttps2dq	%xmm5, %xmm5
	xorps	%xmm11, %xmm5
	andnps	%xmm5, %xmm4
	orps	%xmm6, %xmm4
	movups	%xmm4, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movq	40(%r15), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	29(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 29(%rax)
	movq	40(%r15), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	33(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 33(%rax)
	movq	40(%r15), %rax
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	37(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 37(%rax)
	movq	64(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %ecx
	movq	(%rdx), %rsi
	movsbl	14(%rsi), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	movd	8(%rdx), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	pand	%xmm13, %xmm7
	punpcklbw	%xmm7, %xmm7            # xmm7 = xmm7[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklbw	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	%xmm7, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 48(%rdx)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$31, %ecx
	movsbl	15(%rsi), %ebp
	leal	(%rcx,%rbp,2), %ecx
	movzbl	41(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$32, %rdi
	sarl	$5, %edi
	shrq	$63, %rcx
	addl	%edi, %ecx
	addl	$5, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdi
	addq	%rax, %rdi
	mulss	(%r8,%rdi), %xmm4
	cvttss2si	%xmm4, %rax
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
	movl	%eax, 52(%rdx)
	movl	20(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	movl	%eax, %ebp
	shrl	$10, %ebp
	movd	%eax, %xmm4
	shrl	$15, %eax
	movd	%eax, %xmm5
	movd	%ebp, %xmm6
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	%ecx, %xmm5
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	pand	%xmm8, %xmm4
	movd	16(%rsi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm5
	paddd	%xmm5, %xmm5
	movd	42(%rdx), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm9, %xmm6
	punpcklbw	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	paddd	%xmm4, %xmm6
	paddd	%xmm5, %xmm6
	packssdw	%xmm6, %xmm6
	packuswb	%xmm7, %xmm7
	movdqa	%xmm6, %xmm4
	pmulhw	%xmm7, %xmm4
	pmullw	%xmm6, %xmm7
	punpcklwd	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pmuludq	%xmm3, %xmm7
	pshufd	$237, %xmm7, %xmm6              # xmm6 = xmm7[1,3,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	pand	%xmm3, %xmm5
	psubd	%xmm5, %xmm6
	movdqa	%xmm6, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm6
	paddd	%xmm4, %xmm6
	paddd	%xmm10, %xmm6
	cvtdq2ps	%xmm6, %xmm4
	movups	4(%r8,%rdi), %xmm5
	mulps	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	cmpltps	%xmm12, %xmm4
	cvttps2dq	%xmm5, %xmm6
	andps	%xmm4, %xmm6
	subps	%xmm12, %xmm5
	cvttps2dq	%xmm5, %xmm5
	xorps	%xmm11, %xmm5
	andnps	%xmm5, %xmm4
	orps	%xmm6, %xmm4
	movups	%xmm4, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movq	64(%r15), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	29(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 29(%rax)
	movq	64(%r15), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	33(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 33(%rax)
	movq	64(%r15), %rax
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	37(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 37(%rax)
	movq	72(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %ecx
	movq	(%rdx), %rsi
	movsbl	14(%rsi), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	movd	8(%rdx), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	pand	%xmm13, %xmm7
	punpcklbw	%xmm7, %xmm7            # xmm7 = xmm7[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklbw	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	%xmm7, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 48(%rdx)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$31, %ecx
	movsbl	15(%rsi), %ebp
	leal	(%rcx,%rbp,2), %ecx
	movzbl	41(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$32, %rdi
	sarl	$5, %edi
	shrq	$63, %rcx
	addl	%edi, %ecx
	addl	$5, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdi
	addq	%rax, %rdi
	mulss	(%r8,%rdi), %xmm4
	cvttss2si	%xmm4, %rax
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
	movl	%eax, 52(%rdx)
	movl	20(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	movl	%eax, %ebp
	shrl	$10, %ebp
	movd	%eax, %xmm4
	shrl	$15, %eax
	movd	%eax, %xmm5
	movd	%ebp, %xmm6
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	%ecx, %xmm5
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	pand	%xmm8, %xmm4
	movd	16(%rsi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm5
	paddd	%xmm5, %xmm5
	movd	42(%rdx), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm9, %xmm6
	punpcklbw	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	paddd	%xmm4, %xmm6
	paddd	%xmm5, %xmm6
	packssdw	%xmm6, %xmm6
	packuswb	%xmm7, %xmm7
	movdqa	%xmm6, %xmm4
	pmulhw	%xmm7, %xmm4
	pmullw	%xmm6, %xmm7
	punpcklwd	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pmuludq	%xmm3, %xmm7
	pshufd	$237, %xmm7, %xmm6              # xmm6 = xmm7[1,3,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	pand	%xmm3, %xmm5
	psubd	%xmm5, %xmm6
	movdqa	%xmm6, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm6
	paddd	%xmm4, %xmm6
	paddd	%xmm10, %xmm6
	cvtdq2ps	%xmm6, %xmm4
	movups	4(%r8,%rdi), %xmm5
	mulps	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	cmpltps	%xmm12, %xmm4
	cvttps2dq	%xmm5, %xmm6
	andps	%xmm4, %xmm6
	subps	%xmm12, %xmm5
	cvttps2dq	%xmm5, %xmm5
	xorps	%xmm11, %xmm5
	andnps	%xmm5, %xmm4
	orps	%xmm6, %xmm4
	movups	%xmm4, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movq	72(%r15), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	29(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 29(%rax)
	movq	72(%r15), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	33(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 33(%rax)
	movq	72(%r15), %rax
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	37(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 37(%rax)
	movq	80(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %ecx
	movq	(%rdx), %rsi
	movsbl	14(%rsi), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	movd	8(%rdx), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	pand	%xmm13, %xmm7
	punpcklbw	%xmm7, %xmm7            # xmm7 = xmm7[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklbw	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	%xmm7, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 48(%rdx)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$31, %ecx
	movsbl	15(%rsi), %ebp
	leal	(%rcx,%rbp,2), %ecx
	movzbl	41(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$32, %rdi
	sarl	$5, %edi
	shrq	$63, %rcx
	addl	%edi, %ecx
	addl	$5, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdi
	addq	%rax, %rdi
	mulss	(%r8,%rdi), %xmm4
	cvttss2si	%xmm4, %rax
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
	movl	%eax, 52(%rdx)
	movl	20(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	movl	%eax, %ebp
	shrl	$10, %ebp
	movd	%eax, %xmm4
	shrl	$15, %eax
	movd	%eax, %xmm5
	movd	%ebp, %xmm6
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	%ecx, %xmm5
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	pand	%xmm8, %xmm4
	movd	16(%rsi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm5
	paddd	%xmm5, %xmm5
	movd	42(%rdx), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm9, %xmm6
	punpcklbw	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	paddd	%xmm4, %xmm6
	paddd	%xmm5, %xmm6
	packssdw	%xmm6, %xmm6
	packuswb	%xmm7, %xmm7
	movdqa	%xmm6, %xmm4
	pmulhw	%xmm7, %xmm4
	pmullw	%xmm6, %xmm7
	punpcklwd	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pmuludq	%xmm3, %xmm7
	pshufd	$237, %xmm7, %xmm6              # xmm6 = xmm7[1,3,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	pand	%xmm3, %xmm5
	psubd	%xmm5, %xmm6
	movdqa	%xmm6, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm6
	paddd	%xmm4, %xmm6
	paddd	%xmm10, %xmm6
	cvtdq2ps	%xmm6, %xmm4
	movups	4(%r8,%rdi), %xmm5
	mulps	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	cmpltps	%xmm12, %xmm4
	cvttps2dq	%xmm5, %xmm6
	andps	%xmm4, %xmm6
	subps	%xmm12, %xmm5
	cvttps2dq	%xmm5, %xmm5
	xorps	%xmm11, %xmm5
	andnps	%xmm5, %xmm4
	orps	%xmm6, %xmm4
	movups	%xmm4, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movq	80(%r15), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	29(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 29(%rax)
	movq	80(%r15), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	33(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 33(%rax)
	movq	80(%r15), %rax
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	37(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 37(%rax)
	movq	88(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %ecx
	movq	(%rdx), %rsi
	movsbl	14(%rsi), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	movd	8(%rdx), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	pand	%xmm13, %xmm7
	punpcklbw	%xmm7, %xmm7            # xmm7 = xmm7[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklbw	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	%xmm7, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 48(%rdx)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$31, %ecx
	movsbl	15(%rsi), %ebp
	leal	(%rcx,%rbp,2), %ecx
	movzbl	41(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$32, %rdi
	sarl	$5, %edi
	shrq	$63, %rcx
	addl	%edi, %ecx
	addl	$5, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdi
	addq	%rax, %rdi
	mulss	(%r8,%rdi), %xmm4
	cvttss2si	%xmm4, %rax
	pshufd	$64, %xmm7, %xmm6               # xmm6 = xmm7[0,0,0,1]
	movl	%eax, 52(%rdx)
	movl	20(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	movl	%eax, %ebp
	shrl	$10, %ebp
	movd	%eax, %xmm4
	shrl	$15, %eax
	movd	%eax, %xmm5
	movd	%ebp, %xmm7
	punpckldq	%xmm5, %xmm7            # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	movd	%ecx, %xmm5
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	punpcklqdq	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0]
	pand	%xmm8, %xmm4
	movd	16(%rsi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm5
	paddd	%xmm5, %xmm5
	movd	42(%rdx), %xmm7                 # xmm7 = mem[0],zero,zero,zero
	psrlw	$2, %xmm7
	pand	%xmm9, %xmm7
	punpcklbw	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	paddd	%xmm4, %xmm7
	paddd	%xmm5, %xmm7
	packssdw	%xmm7, %xmm7
	packuswb	%xmm6, %xmm6
	movdqa	%xmm7, %xmm4
	pmulhw	%xmm6, %xmm4
	pmullw	%xmm7, %xmm6
	punpcklwd	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm6, %xmm5
	pmuludq	%xmm3, %xmm6
	pshufd	$237, %xmm6, %xmm6              # xmm6 = xmm6[1,3,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	pand	%xmm3, %xmm5
	psubd	%xmm5, %xmm6
	movdqa	%xmm6, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm6
	paddd	%xmm4, %xmm6
	paddd	%xmm10, %xmm6
	cvtdq2ps	%xmm6, %xmm4
	movups	4(%r8,%rdi), %xmm5
	mulps	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	cmpltps	%xmm12, %xmm4
	cvttps2dq	%xmm5, %xmm6
	andps	%xmm4, %xmm6
	subps	%xmm12, %xmm5
	cvttps2dq	%xmm5, %xmm5
	xorps	%xmm11, %xmm5
	andnps	%xmm5, %xmm4
	orps	%xmm6, %xmm4
	movups	%xmm4, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movq	88(%r15), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	29(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 29(%rax)
	movq	88(%r15), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	33(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 33(%rax)
	movq	88(%r15), %rax
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	37(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 37(%rax)
	movq	96(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %ecx
	movq	(%rdx), %r10
	movsbl	14(%r10), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	movzbl	8(%rdx), %edi
	andl	$127, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 48(%rdx)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rbp
	leaq	(,%rbp,2), %rbx
	addq	%rbp, %rbx
	addq	%rax, %rbx
	movl	20(%rdx), %eax
	movl	%eax, %ebp
	shrl	$5, %ebp
	movl	%eax, %esi
	shrl	$10, %esi
	movd	15(%r10), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	%esi, %xmm5
	movd	%ebp, %xmm6
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	%eax, %xmm5
	movd	%ecx, %xmm7
	punpckldq	%xmm5, %xmm7            # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	punpcklqdq	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0]
	pand	%xmm8, %xmm7
	movd	41(%rdx), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	psrlw	$2, %xmm5
	pand	%xmm9, %xmm5
	punpcklbw	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3],xmm5[4],xmm1[4],xmm5[5],xmm1[5],xmm5[6],xmm1[6],xmm5[7],xmm1[7]
	punpcklwd	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	paddd	%xmm7, %xmm5
	paddd	%xmm4, %xmm5
	movd	%edi, %xmm4
	pshufd	$0, %xmm4, %xmm4                # xmm4 = xmm4[0,0,0,0]
	pshufd	$245, %xmm5, %xmm6              # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm7              # xmm7 = xmm5[0,2,2,3]
	pmuludq	%xmm4, %xmm6
	pshufd	$232, %xmm6, %xmm4              # xmm4 = xmm6[0,2,2,3]
	punpckldq	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	pmuludq	%xmm3, %xmm5
	pshufd	$237, %xmm5, %xmm4              # xmm4 = xmm5[1,3,2,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$237, %xmm6, %xmm5              # xmm5 = xmm6[1,3,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pand	%xmm3, %xmm5
	psubd	%xmm5, %xmm4
	movdqa	%xmm4, %xmm5
	psrld	$31, %xmm5
	psrad	$5, %xmm4
	paddd	%xmm5, %xmm4
	paddd	%xmm10, %xmm4
	cvtdq2ps	%xmm4, %xmm4
	movups	(%r8,%rbx), %xmm5
	mulps	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	cmpltps	%xmm12, %xmm4
	cvttps2dq	%xmm5, %xmm6
	andps	%xmm4, %xmm6
	subps	%xmm12, %xmm5
	cvttps2dq	%xmm5, %xmm5
	xorps	%xmm11, %xmm5
	andnps	%xmm5, %xmm4
	orps	%xmm6, %xmm4
	movups	%xmm4, 52(%rdx)
	shrl	$15, %eax
	andl	$31, %eax
	movsbl	19(%r10), %ecx
	leal	(%rax,%rcx,2), %eax
	movzbl	45(%rdx), %ecx
	shrl	$2, %ecx
	addl	%eax, %ecx
	imull	%edi, %ecx
	movslq	%ecx, %rax
	imulq	$1374389535, %rax, %rax         # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$32, %rcx
	sarl	$5, %ecx
	shrq	$63, %rax
	addl	%ecx, %eax
	addl	$5, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	mulss	16(%r8,%rbx), %xmm4
	cvttss2si	%xmm4, %rax
	movl	%eax, 68(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movq	96(%r15), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	29(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 29(%rax)
	movq	96(%r15), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	33(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 33(%rax)
	movq	96(%r15), %rax
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	37(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 37(%rax)
	movq	104(%r15), %rdx
	movzwl	18(%rdx), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %ecx
	movq	(%rdx), %r10
	movsbl	14(%r10), %edi
	leal	(%rcx,%rdi,2), %ecx
	movzbl	40(%rdx), %ebp
	shrl	$2, %ebp
	addl	%ecx, %ebp
	movzbl	8(%rdx), %edi
	andl	$127, %edi
	imull	%edi, %ebp
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$10, %ecx
	movl	%ecx, 48(%rdx)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$31, %eax
	leaq	(%rax,%rax,8), %rbp
	leaq	(,%rbp,2), %rbx
	addq	%rbp, %rbx
	addq	%rax, %rbx
	movl	20(%rdx), %eax
	movl	%eax, %ebp
	shrl	$5, %ebp
	movl	%eax, %esi
	shrl	$10, %esi
	movd	15(%r10), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	%esi, %xmm5
	movd	%ebp, %xmm6
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	%eax, %xmm5
	movd	%ecx, %xmm7
	punpckldq	%xmm5, %xmm7            # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	punpcklqdq	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0]
	pand	%xmm8, %xmm7
	movd	41(%rdx), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	psrlw	$2, %xmm5
	pand	%xmm9, %xmm5
	punpcklbw	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3],xmm5[4],xmm1[4],xmm5[5],xmm1[5],xmm5[6],xmm1[6],xmm5[7],xmm1[7]
	punpcklwd	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	paddd	%xmm7, %xmm5
	paddd	%xmm4, %xmm5
	movd	%edi, %xmm4
	pshufd	$0, %xmm4, %xmm4                # xmm4 = xmm4[0,0,0,0]
	pshufd	$245, %xmm5, %xmm6              # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm7              # xmm7 = xmm5[0,2,2,3]
	pmuludq	%xmm4, %xmm6
	pshufd	$232, %xmm6, %xmm4              # xmm4 = xmm6[0,2,2,3]
	punpckldq	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	pmuludq	%xmm3, %xmm5
	pshufd	$237, %xmm5, %xmm4              # xmm4 = xmm5[1,3,2,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$237, %xmm6, %xmm5              # xmm5 = xmm6[1,3,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	pcmpgtd	%xmm7, %xmm1
	pand	%xmm3, %xmm1
	psubd	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	psrld	$31, %xmm1
	psrad	$5, %xmm4
	paddd	%xmm1, %xmm4
	paddd	%xmm10, %xmm4
	cvtdq2ps	%xmm4, %xmm1
	movups	(%r8,%rbx), %xmm3
	mulps	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	cmpltps	%xmm12, %xmm1
	cvttps2dq	%xmm3, %xmm4
	andps	%xmm1, %xmm4
	subps	%xmm12, %xmm3
	cvttps2dq	%xmm3, %xmm3
	xorps	%xmm11, %xmm3
	andnps	%xmm3, %xmm1
	orps	%xmm4, %xmm1
	movups	%xmm1, 52(%rdx)
	shrl	$15, %eax
	andl	$31, %eax
	movsbl	19(%r10), %ecx
	leal	(%rax,%rcx,2), %eax
	movzbl	45(%rdx), %ecx
	shrl	$2, %ecx
	addl	%eax, %ecx
	imull	%edi, %ecx
	movslq	%ecx, %rax
	imulq	$1374389535, %rax, %rax         # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$32, %rcx
	sarl	$5, %ecx
	shrq	$63, %rax
	addl	%ecx, %eax
	addl	$5, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	mulss	16(%r8,%rbx), %xmm1
	cvttss2si	%xmm1, %rax
	movl	%eax, 68(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzwl	16(%r9,%rcx), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%ecx, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm1, %xmm3
	cvttss2si	%xmm3, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movq	104(%r15), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm1
	movb	29(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm1, %xmm3
	cvttss2si	%xmm3, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 29(%rax)
	movq	104(%r15), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm1
	movb	33(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm1, %xmm3
	cvttss2si	%xmm3, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 33(%rax)
	movq	104(%r15), %rax
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rcx, %rdx
	movzwl	16(%r9,%rdx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm1
	movb	37(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 37(%rax)
	leaq	.L.str.89(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.34(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	cmpw	$121, (%rbx)
	jne	.LBB56_3
# %bb.2:
	movq	(%r15), %r8
	movl	48(%r8), %ecx
	movl	%ecx, 12(%r8)
	movq	8(%r15), %r9
	movl	48(%r9), %edx
	movl	%edx, 12(%r9)
	movq	16(%r15), %r10
	movl	48(%r10), %esi
	movl	%esi, 12(%r10)
	movq	24(%r15), %r11
	movl	48(%r11), %edi
	movl	%edi, 12(%r11)
	movq	32(%r15), %r12
	movl	48(%r12), %ebp
	movl	%ebp, 12(%r12)
	movq	40(%r15), %r13
	movl	48(%r13), %ebp
	movl	%ebp, 12(%r13)
	movq	64(%r15), %rbp
	movl	48(%rbp), %eax
	movl	%eax, 12(%rbp)
	movq	72(%r15), %rax
	movl	48(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	80(%r15), %rcx
	movl	48(%rcx), %edx
	movl	%edx, 12(%rcx)
	movq	88(%r15), %rdx
	movl	48(%rdx), %esi
	movl	%esi, 12(%rdx)
	movq	96(%r15), %rsi
	movl	48(%rsi), %edi
	movl	%edi, 12(%rsi)
	movq	104(%r15), %rdi
	movl	48(%rdi), %ebx
	movl	%ebx, 12(%rdi)
	movb	$0, 73(%r8)
	movb	$0, 73(%r9)
	movb	$0, 73(%r10)
	movb	$0, 73(%r11)
	movb	$0, 73(%r12)
	movb	$0, 73(%r13)
	movb	$0, 73(%rbp)
	movb	$0, 73(%rax)
	movb	$0, 73(%rcx)
	movb	$0, 73(%rdx)
	movb	$0, 73(%rsi)
	movb	$0, 73(%rdi)
	orb	$1, 82(%r8)
	orb	$1, 82(%r9)
	orb	$1, 82(%r10)
	orb	$1, 82(%r11)
	orb	$1, 82(%r12)
	orb	$1, 82(%r13)
	orb	$1, 82(%rbp)
	orb	$1, 82(%rax)
	movq	80(%r15), %rax
	orb	$1, 82(%rax)
	movq	88(%r15), %rax
	orb	$1, 82(%rax)
	movq	96(%r15), %rax
	orb	$1, 82(%rax)
	movq	104(%r15), %rax
	orb	$1, 82(%rax)
.LBB56_3:
	leaq	.L.str.90(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.91(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movb	$0, (%r14)
	movq	BattleMode@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB56_4:
	movq	Parties@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	movq	(%rax), %rdx
	leaq	.L.str.92(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	64(%r13), %rax
	movq	(%rax), %rdx
	leaq	.L.str.93(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Empty_slot@GOTPCREL(%rip), %rax
	movq	Turns@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, 8(%rcx)
	movq	BattleMode@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB56_193
# %bb.5:
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	leaq	.L.str.34(%rip), %r15
	movq	x@GOTPCREL(%rip), %rbx
	leaq	.L.str.43(%rip), %rcx
	movslq	%ecx, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB56_7
	.p2align	4, 0x90
.LBB56_126:                             #   in Loop: Header=BB56_7 Depth=1
	xorl	%eax, %eax
.LBB56_6:                               #   in Loop: Header=BB56_7 Depth=1
	movq	BattleMode@GOTPCREL(%rip), %rcx
	cmpb	$0, (%rcx)
	je	.LBB56_193
.LBB56_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_8 Depth 2
	testb	%al, %al
	je	.LBB56_125
	.p2align	4, 0x90
.LBB56_8:                               #   Parent Loop BB56_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movl	$1, %edi
	leaq	.L.str.94(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movzwl	(%rbx), %r12d
	cmpw	$49, %r12w
	je	.LBB56_11
# %bb.9:                                #   in Loop: Header=BB56_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3219557, %edx                  # imm = 0x312065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB56_11
# %bb.10:                               #   in Loop: Header=BB56_8 Depth=2
	movq	(%r13), %r14
	movzbl	24(%r14), %ebp
	leaq	(,%rbp,4), %rax
	addq	%rbp, %rax
	leaq	(%rax,%rax,4), %rsi
	addq	%rbp, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_11
# %bb.29:                               #   in Loop: Header=BB56_8 Depth=2
	cmpw	$50, %r12w
	je	.LBB56_32
# %bb.30:                               #   in Loop: Header=BB56_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3285093, %edx                  # imm = 0x322065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB56_32
# %bb.31:                               #   in Loop: Header=BB56_8 Depth=2
	movzbl	28(%r14), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rsi
	addq	%rax, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_32
# %bb.37:                               #   in Loop: Header=BB56_8 Depth=2
	cmpw	$51, %r12w
	je	.LBB56_40
# %bb.38:                               #   in Loop: Header=BB56_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3350629, %edx                  # imm = 0x332065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB56_40
# %bb.39:                               #   in Loop: Header=BB56_8 Depth=2
	movzbl	32(%r14), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rsi
	addq	%rax, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_40
# %bb.44:                               #   in Loop: Header=BB56_8 Depth=2
	cmpw	$52, %r12w
	je	.LBB56_47
# %bb.45:                               #   in Loop: Header=BB56_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3416165, %edx                  # imm = 0x342065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB56_47
# %bb.46:                               #   in Loop: Header=BB56_8 Depth=2
	movzbl	36(%r14), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rsi
	addq	%rax, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_47
# %bb.53:                               #   in Loop: Header=BB56_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	movq	Reset@GOTPCREL(%rip), %r12
	je	.LBB56_57
# %bb.54:                               #   in Loop: Header=BB56_8 Depth=2
	movq	%rbx, %r14
	movq	8(%r13), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_57
# %bb.55:                               #   in Loop: Header=BB56_8 Depth=2
	movq	8(%r13), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_57
# %bb.56:                               #   in Loop: Header=BB56_8 Depth=2
	movl	(%r14), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%r14), %ecx
	orw	%ax, %cx
	je	.LBB56_57
# %bb.60:                               #   in Loop: Header=BB56_8 Depth=2
	movq	(%r14), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r14), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_64
# %bb.61:                               #   in Loop: Header=BB56_8 Depth=2
	movq	16(%r13), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_64
# %bb.62:                               #   in Loop: Header=BB56_8 Depth=2
	movq	16(%r13), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_64
# %bb.63:                               #   in Loop: Header=BB56_8 Depth=2
	movl	(%r14), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%r14), %ecx
	orw	%ax, %cx
	je	.LBB56_64
# %bb.68:                               #   in Loop: Header=BB56_8 Depth=2
	movq	(%r14), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r14), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_72
# %bb.69:                               #   in Loop: Header=BB56_8 Depth=2
	movq	24(%r13), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_72
# %bb.70:                               #   in Loop: Header=BB56_8 Depth=2
	movq	24(%r13), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_72
# %bb.71:                               #   in Loop: Header=BB56_8 Depth=2
	movl	(%r14), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%r14), %ecx
	orw	%ax, %cx
	je	.LBB56_72
# %bb.73:                               #   in Loop: Header=BB56_8 Depth=2
	movq	(%r14), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r14), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_77
# %bb.74:                               #   in Loop: Header=BB56_8 Depth=2
	movq	32(%r13), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_77
# %bb.75:                               #   in Loop: Header=BB56_8 Depth=2
	movq	32(%r13), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_77
# %bb.76:                               #   in Loop: Header=BB56_8 Depth=2
	movl	(%r14), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%r14), %ecx
	orw	%ax, %cx
	je	.LBB56_77
# %bb.78:                               #   in Loop: Header=BB56_8 Depth=2
	movq	(%r14), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r14), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_82
# %bb.79:                               #   in Loop: Header=BB56_8 Depth=2
	movq	40(%r13), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_82
# %bb.80:                               #   in Loop: Header=BB56_8 Depth=2
	movq	40(%r13), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_82
# %bb.81:                               #   in Loop: Header=BB56_8 Depth=2
	movl	(%r14), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%r14), %ecx
	orw	%ax, %cx
	je	.LBB56_82
# %bb.86:                               #   in Loop: Header=BB56_8 Depth=2
	movq	(%r14), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%r14), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_89
# %bb.87:                               #   in Loop: Header=BB56_8 Depth=2
	movq	x@GOTPCREL(%rip), %rcx
	movl	(%rcx), %eax
	movl	$2003134806, %edx               # imm = 0x77656956
	xorl	%edx, %eax
	movzbl	4(%rcx), %ecx
	orl	%eax, %ecx
	je	.LBB56_89
# %bb.88:                               #   in Loop: Header=BB56_8 Depth=2
	movq	x@GOTPCREL(%rip), %rcx
	movl	(%rcx), %eax
	movl	$1953653072, %edx               # imm = 0x74726150
	xorl	%edx, %eax
	movzwl	4(%rcx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB56_89
.LBB56_151:                             #   in Loop: Header=BB56_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.107(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB56_91
	.p2align	4, 0x90
.LBB56_11:                              #   in Loop: Header=BB56_8 Depth=2
	movq	(%r13), %rax
	leaq	24(%rax), %rcx
	movq	Turns@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	cmpb	$0, 24(%rax)
	je	.LBB56_12
# %bb.15:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 25(%rax)
	movq	Reset@GOTPCREL(%rip), %r12
	je	.LBB56_16
.LBB56_20:                              #   in Loop: Header=BB56_8 Depth=2
	cmpb	$1, (%r12)
	je	.LBB56_14
# %bb.21:                               #   in Loop: Header=BB56_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.108(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movzwl	(%rbx), %ebp
	cmpw	$49, %bp
	je	.LBB56_24
# %bb.22:                               #   in Loop: Header=BB56_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3219557, %edx                  # imm = 0x312065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB56_24
# %bb.23:                               #   in Loop: Header=BB56_8 Depth=2
	movq	64(%r13), %r14
	movzbl	24(%r14), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rsi
	addq	%rax, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_24
# %bb.92:                               #   in Loop: Header=BB56_8 Depth=2
	cmpw	$50, %bp
	je	.LBB56_95
# %bb.93:                               #   in Loop: Header=BB56_8 Depth=2
	movq	x@GOTPCREL(%rip), %rcx
	movl	(%rcx), %eax
	movl	$1702260557, %edx               # imm = 0x65766F4D
	xorl	%edx, %eax
	movl	3(%rcx), %ecx
	movl	$3285093, %edx                  # imm = 0x322065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB56_95
# %bb.94:                               #   in Loop: Header=BB56_8 Depth=2
	movzbl	28(%r14), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rsi
	addq	%rax, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	x@GOTPCREL(%rip), %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_95
# %bb.100:                              #   in Loop: Header=BB56_8 Depth=2
	cmpw	$51, %bp
	je	.LBB56_103
# %bb.101:                              #   in Loop: Header=BB56_8 Depth=2
	movq	x@GOTPCREL(%rip), %rcx
	movl	(%rcx), %eax
	movl	$1702260557, %edx               # imm = 0x65766F4D
	xorl	%edx, %eax
	movl	3(%rcx), %ecx
	movl	$3350629, %edx                  # imm = 0x332065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB56_103
# %bb.102:                              #   in Loop: Header=BB56_8 Depth=2
	movzbl	32(%r14), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rsi
	addq	%rax, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	x@GOTPCREL(%rip), %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_103
# %bb.107:                              #   in Loop: Header=BB56_8 Depth=2
	cmpw	$52, %bp
	je	.LBB56_110
# %bb.108:                              #   in Loop: Header=BB56_8 Depth=2
	movq	x@GOTPCREL(%rip), %rcx
	movl	(%rcx), %eax
	movl	$1702260557, %edx               # imm = 0x65766F4D
	xorl	%edx, %eax
	movl	3(%rcx), %ecx
	movl	$3416165, %edx                  # imm = 0x342065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB56_110
# %bb.109:                              #   in Loop: Header=BB56_8 Depth=2
	movzbl	36(%r14), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rsi
	addq	%rax, %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	x@GOTPCREL(%rip), %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_110
# %bb.115:                              #   in Loop: Header=BB56_8 Depth=2
	movq	x@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r14), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_119
# %bb.116:                              #   in Loop: Header=BB56_8 Depth=2
	movq	72(%r13), %rax
	movslq	(%rax), %rbp
	movl	$64, %edx
	leaq	c(%rip), %rbx
	movq	%rbx, %rdi
	movq	48(%rsp), %rsi                  # 8-byte Reload
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_119
# %bb.117:                              #   in Loop: Header=BB56_8 Depth=2
	movq	72(%r13), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_119
# %bb.118:                              #   in Loop: Header=BB56_8 Depth=2
	movl	(%r14), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%r14), %ecx
	orw	%ax, %cx
	je	.LBB56_119
# %bb.127:                              #   in Loop: Header=BB56_8 Depth=2
	movq	(%r14), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r14), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_131
# %bb.128:                              #   in Loop: Header=BB56_8 Depth=2
	movq	80(%r13), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_131
# %bb.129:                              #   in Loop: Header=BB56_8 Depth=2
	movq	80(%r13), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_131
# %bb.130:                              #   in Loop: Header=BB56_8 Depth=2
	movl	(%r14), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%r14), %ecx
	orw	%ax, %cx
	je	.LBB56_131
# %bb.132:                              #   in Loop: Header=BB56_8 Depth=2
	movq	(%r14), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r14), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_136
# %bb.133:                              #   in Loop: Header=BB56_8 Depth=2
	movq	88(%r13), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_136
# %bb.134:                              #   in Loop: Header=BB56_8 Depth=2
	movq	88(%r13), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_136
# %bb.135:                              #   in Loop: Header=BB56_8 Depth=2
	movl	(%r14), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%r14), %ecx
	orw	%ax, %cx
	je	.LBB56_136
# %bb.137:                              #   in Loop: Header=BB56_8 Depth=2
	movq	(%r14), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r14), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_141
# %bb.138:                              #   in Loop: Header=BB56_8 Depth=2
	movq	96(%r13), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_141
# %bb.139:                              #   in Loop: Header=BB56_8 Depth=2
	movq	96(%r13), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_141
# %bb.140:                              #   in Loop: Header=BB56_8 Depth=2
	movl	(%r14), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%r14), %ecx
	orw	%ax, %cx
	je	.LBB56_141
# %bb.142:                              #   in Loop: Header=BB56_8 Depth=2
	movq	(%r14), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r14), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_146
# %bb.143:                              #   in Loop: Header=BB56_8 Depth=2
	movq	104(%r13), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.43(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_146
# %bb.144:                              #   in Loop: Header=BB56_8 Depth=2
	movq	104(%r13), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB56_146
# %bb.145:                              #   in Loop: Header=BB56_8 Depth=2
	movl	(%r14), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%r14), %ecx
	orw	%ax, %cx
	je	.LBB56_146
# %bb.147:                              #   in Loop: Header=BB56_8 Depth=2
	movq	(%r14), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%r14), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB56_150
# %bb.148:                              #   in Loop: Header=BB56_8 Depth=2
	movq	x@GOTPCREL(%rip), %rcx
	movl	(%rcx), %eax
	movl	$2003134806, %edx               # imm = 0x77656956
	xorl	%edx, %eax
	movzbl	4(%rcx), %ecx
	orl	%eax, %ecx
	je	.LBB56_150
# %bb.149:                              #   in Loop: Header=BB56_8 Depth=2
	movq	x@GOTPCREL(%rip), %rcx
	movl	(%rcx), %eax
	movl	$1953653072, %edx               # imm = 0x74726150
	xorl	%edx, %eax
	movzwl	4(%rcx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	jne	.LBB56_151
.LBB56_150:                             #   in Loop: Header=BB56_8 Depth=2
	movl	$1, %edi
	jmp	.LBB56_90
.LBB56_16:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 29(%rax)
	jne	.LBB56_27
# %bb.17:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 33(%rax)
	jne	.LBB56_27
# %bb.18:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 37(%rax)
	jne	.LBB56_27
.LBB56_19:                              #   in Loop: Header=BB56_8 Depth=2
	movq	Turns@GOTPCREL(%rip), %rax
	movq	Struggle_Slot@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB56_20
.LBB56_24:                              #   in Loop: Header=BB56_8 Depth=2
	movq	64(%r13), %rax
	leaq	24(%rax), %rcx
	movq	Turns@GOTPCREL(%rip), %rdx
	movq	%rcx, 8(%rdx)
	cmpb	$0, 24(%rax)
	je	.LBB56_48
# %bb.25:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 25(%rax)
	je	.LBB56_26
.LBB56_122:                             #   in Loop: Header=BB56_8 Depth=2
	cmpb	$0, (%r12)
	jne	.LBB56_14
# %bb.123:                              #   in Loop: Header=BB56_8 Depth=2
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movl	$1, %edi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB56_124
.LBB56_32:                              #   in Loop: Header=BB56_8 Depth=2
	leaq	28(%r14), %rax
	movq	Turns@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	testb	%bpl, %bpl
	je	.LBB56_12
# %bb.33:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 29(%r14)
	movq	Reset@GOTPCREL(%rip), %r12
	jne	.LBB56_20
# %bb.34:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 25(%r14)
	jne	.LBB56_27
# %bb.35:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 33(%r14)
	jne	.LBB56_27
.LBB56_36:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 37(%r14)
	jne	.LBB56_27
	jmp	.LBB56_19
.LBB56_26:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 29(%rax)
	jne	.LBB56_27
# %bb.83:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 33(%rax)
	jne	.LBB56_27
# %bb.84:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 37(%rax)
	jne	.LBB56_27
.LBB56_85:                              #   in Loop: Header=BB56_8 Depth=2
	movq	Turns@GOTPCREL(%rip), %rax
	movq	Struggle_Slot@GOTPCREL(%rip), %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB56_122
.LBB56_95:                              #   in Loop: Header=BB56_8 Depth=2
	leaq	28(%r14), %rax
	movq	Turns@GOTPCREL(%rip), %rcx
	movq	%rax, 8(%rcx)
	cmpb	$0, 28(%r14)
	je	.LBB56_48
# %bb.96:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 29(%r14)
	jne	.LBB56_122
# %bb.97:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 25(%r14)
	jne	.LBB56_27
# %bb.98:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 33(%r14)
	jne	.LBB56_27
.LBB56_99:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 37(%r14)
	jne	.LBB56_27
	jmp	.LBB56_85
.LBB56_40:                              #   in Loop: Header=BB56_8 Depth=2
	leaq	32(%r14), %rax
	movq	Turns@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	testb	%bpl, %bpl
	je	.LBB56_12
# %bb.41:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 33(%r14)
	movq	Reset@GOTPCREL(%rip), %r12
	jne	.LBB56_20
# %bb.42:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 25(%r14)
	jne	.LBB56_27
# %bb.43:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 29(%r14)
	jne	.LBB56_27
	jmp	.LBB56_36
	.p2align	4, 0x90
.LBB56_12:                              #   in Loop: Header=BB56_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.97(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Reset@GOTPCREL(%rip), %r12
	jmp	.LBB56_13
.LBB56_103:                             #   in Loop: Header=BB56_8 Depth=2
	leaq	32(%r14), %rax
	movq	Turns@GOTPCREL(%rip), %rcx
	movq	%rax, 8(%rcx)
	cmpb	$0, 32(%r14)
	je	.LBB56_48
# %bb.104:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 33(%r14)
	jne	.LBB56_122
# %bb.105:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 25(%r14)
	jne	.LBB56_27
# %bb.106:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 29(%r14)
	jne	.LBB56_27
	jmp	.LBB56_99
.LBB56_47:                              #   in Loop: Header=BB56_8 Depth=2
	leaq	36(%r14), %rax
	movq	Turns@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	testb	%bpl, %bpl
	movq	Reset@GOTPCREL(%rip), %r12
	je	.LBB56_48
# %bb.49:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 37(%r14)
	jne	.LBB56_20
# %bb.50:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 25(%r14)
	jne	.LBB56_27
# %bb.51:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 29(%r14)
	jne	.LBB56_27
# %bb.52:                               #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 33(%r14)
	jne	.LBB56_27
	jmp	.LBB56_19
.LBB56_57:                              #   in Loop: Header=BB56_8 Depth=2
	leaq	8(%r13), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	8(%r13), %rax
	leaq	.L.str.105(%rip), %rcx
	cmpq	%rcx, (%rax)
	je	.LBB56_59
# %bb.58:                               #   in Loop: Header=BB56_8 Depth=2
	cmpl	$0, 12(%rax)
	jg	.LBB56_20
.LBB56_59:                              #   in Loop: Header=BB56_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.106(%rip), %rsi
	jmp	.LBB56_28
.LBB56_110:                             #   in Loop: Header=BB56_8 Depth=2
	leaq	36(%r14), %rax
	movq	Turns@GOTPCREL(%rip), %rcx
	movq	%rax, 8(%rcx)
	cmpb	$0, 36(%r14)
	je	.LBB56_48
# %bb.111:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 37(%r14)
	jne	.LBB56_122
# %bb.112:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 25(%r14)
	jne	.LBB56_27
# %bb.113:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 29(%r14)
	jne	.LBB56_27
# %bb.114:                              #   in Loop: Header=BB56_8 Depth=2
	testb	$63, 33(%r14)
	je	.LBB56_85
	.p2align	4, 0x90
.LBB56_27:                              #   in Loop: Header=BB56_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.98(%rip), %rsi
	jmp	.LBB56_28
.LBB56_48:                              #   in Loop: Header=BB56_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.97(%rip), %rsi
.LBB56_28:                              #   in Loop: Header=BB56_8 Depth=2
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB56_13:                              #   in Loop: Header=BB56_8 Depth=2
	movb	$1, (%r12)
.LBB56_14:                              #   in Loop: Header=BB56_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.109(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movb	$0, (%r12)
.LBB56_124:                             #   in Loop: Header=BB56_8 Depth=2
	movq	Retrieve@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	movq	x@GOTPCREL(%rip), %rbx
	jne	.LBB56_8
	jmp	.LBB56_125
.LBB56_119:                             #   in Loop: Header=BB56_8 Depth=2
	leaq	72(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	72(%r13), %rax
.LBB56_120:                             #   in Loop: Header=BB56_8 Depth=2
	leaq	.L.str.105(%rip), %rcx
	cmpq	%rcx, (%rax)
	je	.LBB56_67
.LBB56_121:                             #   in Loop: Header=BB56_8 Depth=2
	cmpl	$0, 12(%rax)
	jg	.LBB56_122
	jmp	.LBB56_67
.LBB56_64:                              #   in Loop: Header=BB56_8 Depth=2
	leaq	16(%r13), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	16(%r13), %rax
.LBB56_65:                              #   in Loop: Header=BB56_8 Depth=2
	leaq	.L.str.105(%rip), %rcx
	cmpq	%rcx, (%rax)
	je	.LBB56_67
# %bb.66:                               #   in Loop: Header=BB56_8 Depth=2
	cmpl	$0, 12(%rax)
	jg	.LBB56_20
.LBB56_67:                              #   in Loop: Header=BB56_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.107(%rip), %rsi
	jmp	.LBB56_28
.LBB56_131:                             #   in Loop: Header=BB56_8 Depth=2
	leaq	80(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	80(%r13), %rax
	jmp	.LBB56_120
.LBB56_72:                              #   in Loop: Header=BB56_8 Depth=2
	leaq	24(%r13), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	24(%r13), %rax
	jmp	.LBB56_65
.LBB56_136:                             #   in Loop: Header=BB56_8 Depth=2
	leaq	88(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	88(%r13), %rax
	jmp	.LBB56_120
.LBB56_77:                              #   in Loop: Header=BB56_8 Depth=2
	leaq	32(%r13), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	32(%r13), %rax
	jmp	.LBB56_65
.LBB56_141:                             #   in Loop: Header=BB56_8 Depth=2
	leaq	96(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	96(%r13), %rax
	jmp	.LBB56_120
.LBB56_82:                              #   in Loop: Header=BB56_8 Depth=2
	leaq	40(%r13), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	40(%r13), %rax
	jmp	.LBB56_65
.LBB56_146:                             #   in Loop: Header=BB56_8 Depth=2
	leaq	104(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	104(%r13), %rax
	leaq	.L.str.105(%rip), %rcx
	cmpq	%rcx, (%rax)
	leaq	.L.str.34(%rip), %r15
	movq	Reset@GOTPCREL(%rip), %r12
	jne	.LBB56_121
	jmp	.LBB56_67
.LBB56_89:                              #   in Loop: Header=BB56_8 Depth=2
	xorl	%edi, %edi
.LBB56_90:                              #   in Loop: Header=BB56_8 Depth=2
	callq	displayparty@PLT
.LBB56_91:                              #   in Loop: Header=BB56_8 Depth=2
	movq	Reset@GOTPCREL(%rip), %r12
	movb	$1, (%r12)
	leaq	.L.str.34(%rip), %r15
	jmp	.LBB56_14
	.p2align	4, 0x90
.LBB56_125:                             #   in Loop: Header=BB56_7 Depth=1
	movq	Execute@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB56_126
# %bb.152:                              #   in Loop: Header=BB56_7 Depth=1
	movq	Damages@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	movq	PlayerHit@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	EnemyHit@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	PlayerTM@GOTPCREL(%rip), %rax
	movabsq	$4607182418800017408, %rcx      # imm = 0x3FF0000000000000
	movq	%rcx, (%rax)
	movq	EnemyTM@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	movq	PlayerSpeedTM@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	movq	EnemySpeedTM@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	movq	PlayerCanMove@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	EnemyCanMove@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	PlayerPara@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	EnemyPara@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	EnemyDead@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	PlayerDead@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	PlayerSleep@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	EnemySleep@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Turns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movq	MoveList@GOTPCREL(%rip), %rax
	movzwl	16(%rax,%rcx), %edx
	movzbl	18(%rax,%rcx), %eax
	shll	$16, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	shrl	$13, %edx
	andl	$31, %edx
	movq	(%r13), %r8
	movq	(%r8), %rsi
	movzwl	12(%rsi), %esi
	movl	%esi, %edi
	andl	$31, %edi
	movsd	.LCPI56_8(%rip), %xmm0          # xmm0 = mem[0],zero
	cmpl	%edi, %edx
	je	.LBB56_154
# %bb.153:                              #   in Loop: Header=BB56_7 Depth=1
	shrl	$5, %esi
	andl	$31, %esi
	xorl	%edi, %edi
	cmpl	%esi, %edx
	sete	%dil
	leaq	.LCPI56_9(%rip), %rcx
	movsd	(%rcx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
.LBB56_154:                             #   in Loop: Header=BB56_7 Depth=1
	movq	STAB@GOTPCREL(%rip), %rcx
	movsd	%xmm0, (%rcx)
	movq	Turns@GOTPCREL(%rip), %rcx
	movq	8(%rcx), %rdx
	movzbl	(%rdx), %edx
	leaq	(%rdx,%rdx,4), %rsi
	leaq	(%rsi,%rsi,4), %rsi
	addq	%rdx, %rsi
	movq	MoveList@GOTPCREL(%rip), %rcx
	movzwl	16(%rcx,%rsi), %edi
	movzbl	18(%rcx,%rsi), %edx
	shll	$16, %edx
	orl	%edi, %edx
	movl	%edx, %esi
	shrl	$13, %esi
	andl	$31, %esi
	movq	64(%r13), %rbp
	movq	(%rbp), %rdi
	movzwl	12(%rdi), %ecx
	movl	%ecx, %edi
	andl	$31, %edi
	movsd	.LCPI56_8(%rip), %xmm0          # xmm0 = mem[0],zero
	cmpl	%edi, %esi
	je	.LBB56_156
# %bb.155:                              #   in Loop: Header=BB56_7 Depth=1
	shrl	$5, %ecx
	andl	$31, %ecx
	xorl	%edi, %edi
	cmpl	%ecx, %esi
	sete	%dil
	leaq	.LCPI56_9(%rip), %rcx
	movsd	(%rcx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
.LBB56_156:                             #   in Loop: Header=BB56_7 Depth=1
	movq	EnemySTAB@GOTPCREL(%rip), %rcx
	movsd	%xmm0, (%rcx)
	cmpb	$3, 73(%r8)
	movsd	.LCPI56_7(%rip), %xmm1          # xmm1 = mem[0],zero
	jne	.LBB56_158
# %bb.157:                              #   in Loop: Header=BB56_7 Depth=1
	movq	PlayerSpeedTM@GOTPCREL(%rip), %rcx
	movabsq	$4602678819172646912, %rsi      # imm = 0x3FE0000000000000
	movq	%rsi, (%rcx)
	movsd	.LCPI56_10(%rip), %xmm1         # xmm1 = mem[0],zero
.LBB56_158:                             #   in Loop: Header=BB56_7 Depth=1
	cmpb	$3, 73(%rbp)
	movsd	.LCPI56_7(%rip), %xmm0          # xmm0 = mem[0],zero
	jne	.LBB56_160
# %bb.159:                              #   in Loop: Header=BB56_7 Depth=1
	movq	EnemySpeedTM@GOTPCREL(%rip), %rcx
	movabsq	$4602678819172646912, %rsi      # imm = 0x3FE0000000000000
	movq	%rsi, (%rcx)
	movsd	.LCPI56_10(%rip), %xmm0         # xmm0 = mem[0],zero
.LBB56_160:                             #   in Loop: Header=BB56_7 Depth=1
	shll	$8, %eax
	sarl	$28, %eax
	shll	$8, %edx
	sarl	$28, %edx
	cmpl	%edx, %eax
	jne	.LBB56_176
# %bb.161:                              #   in Loop: Header=BB56_7 Depth=1
	movl	68(%r8), %eax
	cvtsi2sd	%rax, %xmm2
	movsbl	78(%r8), %r14d
	testl	%r14d, %r14d
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	js	.LBB56_163
# %bb.162:                              #   in Loop: Header=BB56_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	mulsd	.LCPI56_10(%rip), %xmm0
	addsd	.LCPI56_7(%rip), %xmm0
	jmp	.LBB56_164
	.p2align	4, 0x90
.LBB56_176:                             #   in Loop: Header=BB56_7 Depth=1
	setg	%al
	jmp	.LBB56_177
.LBB56_163:                             #   in Loop: Header=BB56_7 Depth=1
	movl	%r14d, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI56_10(%rip), %xmm1
	movsd	.LCPI56_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB56_164:                             #   in Loop: Header=BB56_7 Depth=1
	movsd	%xmm2, 16(%rsp)                 # 8-byte Spill
	mulsd	%xmm2, %xmm0
	callq	floor@PLT
	mulsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	movl	68(%rbp), %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rax, %xmm2
	movsbl	78(%rbp), %ebp
	testl	%ebp, %ebp
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	js	.LBB56_166
# %bb.165:                              #   in Loop: Header=BB56_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI56_10(%rip), %xmm0
	addsd	.LCPI56_7(%rip), %xmm0
	jmp	.LBB56_167
.LBB56_166:                             #   in Loop: Header=BB56_7 Depth=1
	movl	%ebp, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI56_10(%rip), %xmm1
	movsd	.LCPI56_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB56_167:                             #   in Loop: Header=BB56_7 Depth=1
	mulsd	%xmm2, %xmm0
	movsd	%xmm2, 24(%rsp)                 # 8-byte Spill
	callq	floor@PLT
	mulsd	40(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB56_169
	jp	.LBB56_169
# %bb.168:                              #   in Loop: Header=BB56_7 Depth=1
	callq	rand@PLT
	andb	$1, %al
	jmp	.LBB56_177
.LBB56_169:                             #   in Loop: Header=BB56_7 Depth=1
	testb	%r14b, %r14b
	js	.LBB56_171
# %bb.170:                              #   in Loop: Header=BB56_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	mulsd	.LCPI56_10(%rip), %xmm0
	addsd	.LCPI56_7(%rip), %xmm0
	jmp	.LBB56_172
.LBB56_171:                             #   in Loop: Header=BB56_7 Depth=1
	negl	%r14d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r14d, %xmm1
	mulsd	.LCPI56_10(%rip), %xmm1
	movsd	.LCPI56_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB56_172:                             #   in Loop: Header=BB56_7 Depth=1
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	testb	%bpl, %bpl
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	js	.LBB56_174
# %bb.173:                              #   in Loop: Header=BB56_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI56_10(%rip), %xmm0
	addsd	.LCPI56_7(%rip), %xmm0
	jmp	.LBB56_175
.LBB56_174:                             #   in Loop: Header=BB56_7 Depth=1
	negl	%ebp
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebp, %xmm1
	mulsd	.LCPI56_10(%rip), %xmm1
	movsd	.LCPI56_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB56_175:                             #   in Loop: Header=BB56_7 Depth=1
	movsd	24(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	40(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
	.p2align	4, 0x90
.LBB56_177:                             #   in Loop: Header=BB56_7 Depth=1
	movq	PlayerSwitch@GOTPCREL(%rip), %rcx
	movzbl	(%rcx), %ecx
	movq	EnemySwitch@GOTPCREL(%rip), %rdx
	cmpb	(%rdx), %cl
	movzbl	%al, %eax
	cmovnel	%ecx, %eax
	movq	First@GOTPCREL(%rip), %r12
	movb	%al, (%r12)
	movq	(%r13), %rax
	movzbl	17(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movl	$1, %edi
	xorl	%esi, %esi
	movq	AbilityList@GOTPCREL(%rip), %rbp
	callq	*16(%rbp,%rax,8)
	movq	64(%r13), %rax
	movzbl	17(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	movl	$1, %edi
	movl	$1, %esi
	callq	*16(%rbp,%rax,8)
	movq	Turns@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movq	MoveList@GOTPCREL(%rip), %r14
	movzbl	19(%r14,%rcx), %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	MOVE_FUNC_LIST@GOTPCREL(%rip), %r15
	callq	*(%r15,%rax,8)
	movq	8(%rbp), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	addq	%rax, %rcx
	movzbl	19(%r14,%rcx), %eax
	xorl	%edi, %edi
	movl	$1, %esi
	callq	*(%r15,%rax,8)
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	ACTIVATE_EFFECTS@PLT
	xorl	%edi, %edi
	movl	$1, %esi
	callq	ACTIVATE_EFFECTS@PLT
	xorl	%edi, %edi
	cmpb	$0, (%r12)
	sete	%dil
	callq	ExecuteMove@PLT
	movzbl	(%r12), %edi
	callq	ExecuteMove@PLT
	movq	(%r13), %rax
	movl	68(%rax), %ecx
	cvtsi2sd	%rcx, %xmm2
	movsbl	78(%rax), %r14d
	testl	%r14d, %r14d
	js	.LBB56_179
# %bb.178:                              #   in Loop: Header=BB56_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	mulsd	.LCPI56_10(%rip), %xmm0
	addsd	.LCPI56_7(%rip), %xmm0
	jmp	.LBB56_180
	.p2align	4, 0x90
.LBB56_179:                             #   in Loop: Header=BB56_7 Depth=1
	movl	%r14d, %eax
	negl	%eax
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI56_10(%rip), %xmm1
	movsd	.LCPI56_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB56_180:                             #   in Loop: Header=BB56_7 Depth=1
	leaq	.L.str.34(%rip), %r15
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	mulsd	%xmm2, %xmm0
	callq	floor@PLT
	movq	PlayerSpeedTM@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm1                   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	64(%r13), %rax
	movl	68(%rax), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rcx, %xmm2
	movsbl	78(%rax), %ebp
	testl	%ebp, %ebp
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	js	.LBB56_182
# %bb.181:                              #   in Loop: Header=BB56_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI56_10(%rip), %xmm0
	addsd	.LCPI56_7(%rip), %xmm0
	jmp	.LBB56_183
	.p2align	4, 0x90
.LBB56_182:                             #   in Loop: Header=BB56_7 Depth=1
	movl	%ebp, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI56_10(%rip), %xmm1
	movsd	.LCPI56_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB56_183:                             #   in Loop: Header=BB56_7 Depth=1
	mulsd	%xmm2, %xmm0
	movsd	%xmm2, 16(%rsp)                 # 8-byte Spill
	callq	floor@PLT
	movq	EnemySpeedTM@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm1                   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	40(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jne	.LBB56_185
	jp	.LBB56_185
# %bb.184:                              #   in Loop: Header=BB56_7 Depth=1
	callq	rand@PLT
	andb	$1, %al
	jmp	.LBB56_192
	.p2align	4, 0x90
.LBB56_185:                             #   in Loop: Header=BB56_7 Depth=1
	testb	%r14b, %r14b
	movsd	%xmm1, 24(%rsp)                 # 8-byte Spill
	js	.LBB56_187
# %bb.186:                              #   in Loop: Header=BB56_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	mulsd	.LCPI56_10(%rip), %xmm0
	addsd	.LCPI56_7(%rip), %xmm0
	jmp	.LBB56_188
.LBB56_187:                             #   in Loop: Header=BB56_7 Depth=1
	negl	%r14d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r14d, %xmm1
	mulsd	.LCPI56_10(%rip), %xmm1
	movsd	.LCPI56_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB56_188:                             #   in Loop: Header=BB56_7 Depth=1
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	testb	%bpl, %bpl
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	js	.LBB56_190
# %bb.189:                              #   in Loop: Header=BB56_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI56_10(%rip), %xmm0
	addsd	.LCPI56_7(%rip), %xmm0
	jmp	.LBB56_191
.LBB56_190:                             #   in Loop: Header=BB56_7 Depth=1
	negl	%ebp
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebp, %xmm1
	mulsd	.LCPI56_10(%rip), %xmm1
	movsd	.LCPI56_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB56_191:                             #   in Loop: Header=BB56_7 Depth=1
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	24(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
.LBB56_192:                             #   in Loop: Header=BB56_7 Depth=1
	movq	EndFirst@GOTPCREL(%rip), %rbp
	movb	%al, (%rbp)
	xorb	$1, %al
	movzbl	%al, %edi
	callq	endturn@PLT
	movzbl	(%rbp), %edi
	callq	endturn@PLT
	movl	$1, %edi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movb	$1, %al
	jmp	.LBB56_6
.LBB56_193:
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
	retq
.Lfunc_end56:
	.size	Battle, .Lfunc_end56-Battle
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
	leaq	.L.str.110(%rip), %rdi
	callq	system@PLT
	movl	%ebx, %edi
	callq	srand@PLT
	leaq	.L.str.111(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.112(%rip), %rsi
	movl	$26, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	callq	Battle@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end57:
	.size	main, .Lfunc_end57-main
	.cfi_endproc
                                        # -- End function
	.type	c,@object                       # @c
	.local	c
	.comm	c,64,16
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
	.long	0x3f000000                      # float 0.5
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
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
	.size	TypeChart, 1444

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

	.type	StatCalc,@object                # @StatCalc
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

	.type	PlayerSwitch,@object            # @PlayerSwitch
	.globl	PlayerSwitch
PlayerSwitch:
	.byte	0                               # 0x0
	.size	PlayerSwitch, 1

	.type	EnemySwitch,@object             # @EnemySwitch
	.globl	EnemySwitch
EnemySwitch:
	.byte	0                               # 0x0
	.size	EnemySwitch, 1

	.type	PlayerHit,@object               # @PlayerHit
	.globl	PlayerHit
PlayerHit:
	.byte	0                               # 0x0
	.size	PlayerHit, 1

	.type	EnemyHit,@object                # @EnemyHit
	.globl	EnemyHit
EnemyHit:
	.byte	0                               # 0x0
	.size	EnemyHit, 1

	.type	EFFECT_FUNC_LIST,@object        # @EFFECT_FUNC_LIST
	.data
	.globl	EFFECT_FUNC_LIST
	.p2align	4
EFFECT_FUNC_LIST:
	.quad	UTL_ATTACKF
	.quad	UTL_DEFENSEF
	.quad	UTL_SP_ATKF
	.quad	UTL_SP_DEFF
	.quad	UTL_SPEEDF
	.quad	UTL_ACCURACYF
	.quad	UTL_EVASIONF
	.quad	UTL_CRIT_CHANCEF
	.quad	LEECH_SEEDF
	.quad	PERISH_SONGF
	.size	EFFECT_FUNC_LIST, 80

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
	.zero	16
	.quad	EnemyPokemon1
	.quad	EnemyPokemon2
	.quad	EnemyPokemon3
	.quad	EnemyPokemon4
	.quad	EnemyPokemon5
	.quad	EnemyPokemon6
	.zero	16
	.size	Parties, 128

	.type	MoveList,@object                # @MoveList
	.globl	MoveList
	.p2align	4
MoveList:
	.asciz	"Nothing\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.asciz	"Struggle\000\000\000\000\000\000"
	.byte	50                              # 0x32
	.byte	228                             # 0xe4
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.zero	4
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.asciz	"Scratch\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	49                              # 0x31
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	4
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.asciz	"Water Gun\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	108                             # 0x6c
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.zero	4
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.asciz	"Vine Whip\000\000\000\000\000"
	.byte	45                              # 0x2d
	.byte	228                             # 0xe4
	.byte	177                             # 0xb1
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	4
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.asciz	"Ember\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	76                              # 0x4c
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.asciz	"\001\n\000"
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.asciz	"Quick Attack\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	47                              # 0x2f
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.zero	4
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.asciz	"Super Attack\000\000"
	.byte	120                             # 0x78
	.byte	203                             # 0xcb
	.byte	39                              # 0x27
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	4
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.asciz	"Stone Edge\000\000\000\000"
	.byte	100                             # 0x64
	.byte	208                             # 0xd0
	.byte	162                             # 0xa2
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	4
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.asciz	"Gust\000\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	81                              # 0x51
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.zero	4
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.asciz	"Thunder Shock\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	143                             # 0x8f
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.asciz	"\006\000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.asciz	"Thunder Wave\000\000"
	.byte	0                               # 0x0
	.byte	90                              # 0x5a
	.byte	138                             # 0x8a
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.asciz	"\004d\000"
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.asciz	"Swords Dance\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.asciz	" \000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.asciz	"Dragon Dance\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	234                             # 0xea
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.asciz	"\020\000\020"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.asciz	"Will-O-Wisp\000\000\000"
	.byte	0                               # 0x0
	.byte	218                             # 0xda
	.byte	71                              # 0x47
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.asciz	"\001d\000"
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.asciz	"Spore\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	165                             # 0xa5
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.asciz	"\005\000\000"
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.asciz	"Toxic\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	90                              # 0x5a
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.asciz	"\003d\000"
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.asciz	"Freeze\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	60                              # 0x3c
	.byte	197                             # 0xc5
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.asciz	"\006d\000"
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.asciz	"Bulk Up\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	234                             # 0xea
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.asciz	"\021\000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.asciz	"Charm\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	74                              # 0x4a
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.asciz	"\240\000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.asciz	"Leer\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.asciz	"\t\000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.size	MoveList, 546

	.type	Empty_slot,@object              # @Empty_slot
	.globl	Empty_slot
	.p2align	2
Empty_slot:
	.byte	0                               # 0x0
	.byte	69                              # 0x45
	.zero	2
	.size	Empty_slot, 4

	.type	Struggle_Slot,@object           # @Struggle_Slot
	.globl	Struggle_Slot
	.p2align	2
Struggle_Slot:
	.byte	1                               # 0x1
	.byte	69                              # 0x45
	.zero	2
	.size	Struggle_Slot, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"The opposing "
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s%s's %s can't go any higher\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s%s's %s can't go any lower\n"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s%s's %s rose by %d stages\n"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s%s's %s fell by %d stages\n"
	.size	.L.str.4, 29

	.type	Turns,@object                   # @Turns
	.bss
	.globl	Turns
	.p2align	4
Turns:
	.zero	16
	.size	Turns, 16

	.type	MOVE_FUNC_LIST,@object          # @MOVE_FUNC_LIST
	.data
	.globl	MOVE_FUNC_LIST
	.p2align	4
MOVE_FUNC_LIST:
	.quad	Nothingf
	.quad	Strugglef
	.quad	SelfBoost
	.quad	OtherBoost
	.quad	OtherStatus
	.size	MOVE_FUNC_LIST, 40

	.type	PlayerTM,@object                # @PlayerTM
	.bss
	.globl	PlayerTM
	.p2align	3
PlayerTM:
	.quad	0x0000000000000000              # double 0
	.size	PlayerTM, 8

	.type	EnemyTM,@object                 # @EnemyTM
	.globl	EnemyTM
	.p2align	3
EnemyTM:
	.quad	0x0000000000000000              # double 0
	.size	EnemyTM, 8

	.type	AbilityList,@object             # @AbilityList
	.data
	.globl	AbilityList
	.p2align	4
AbilityList:
	.asciz	"NoAbility\000\000"
	.zero	4
	.quad	NoAbilityf
	.asciz	"Overgrow\000\000\000"
	.zero	4
	.quad	Overgrowf
	.asciz	"Blaze\000\000\000\000\000\000"
	.zero	4
	.quad	Blazef
	.asciz	"Torrent\000\000\000\000"
	.zero	4
	.quad	Torrentf
	.asciz	"Big Pecks\000\000"
	.zero	4
	.quad	Big_Pecksf
	.size	AbilityList, 120

	.type	NoPoke,@object                  # @NoPoke
	.globl	NoPoke
NoPoke:
	.asciz	"NoPoke\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.size	NoPoke, 20

	.type	Bulbasaur,@object               # @Bulbasaur
	.globl	Bulbasaur
Bulbasaur:
	.asciz	"Bulbasaur\000\000"
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	45                              # 0x2d
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	65                              # 0x41
	.byte	65                              # 0x41
	.byte	45                              # 0x2d
	.size	Bulbasaur, 20

	.type	Charmander,@object              # @Charmander
	.globl	Charmander
Charmander:
	.asciz	"Charmander\000"
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	39                              # 0x27
	.byte	52                              # 0x34
	.byte	43                              # 0x2b
	.byte	60                              # 0x3c
	.byte	50                              # 0x32
	.byte	65                              # 0x41
	.size	Charmander, 20

	.type	Squirtle,@object                # @Squirtle
	.globl	Squirtle
Squirtle:
	.asciz	"Squirtle\000\000\000"
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	44                              # 0x2c
	.byte	48                              # 0x30
	.byte	65                              # 0x41
	.byte	50                              # 0x32
	.byte	64                              # 0x40
	.byte	43                              # 0x2b
	.size	Squirtle, 20

	.type	Pidgey,@object                  # @Pidgey
	.globl	Pidgey
Pidgey:
	.asciz	"Pidgey\000\000\000\000\000"
	.byte	65                              # 0x41
	.byte	1                               # 0x1
	.byte	40                              # 0x28
	.byte	45                              # 0x2d
	.byte	40                              # 0x28
	.byte	35                              # 0x23
	.byte	35                              # 0x23
	.byte	56                              # 0x38
	.size	Pidgey, 20

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"%s restored a little HP using its Leftovers\n"
	.size	.L.str.5, 45

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s is at %d/%d hp\n\n"
	.size	.L.str.6, 20

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"The opposing %s restored a little HP using its Leftovers\n"
	.size	.L.str.7, 58

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"The opposing %s is at %d/%d hp\n\n"
	.size	.L.str.8, 33

	.type	Damages,@object                 # @Damages
	.bss
	.globl	Damages
	.p2align	2
Damages:
	.zero	8
	.size	Damages, 8

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"%s hung on with its Focus Sash!\n"
	.size	.L.str.9, 33

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"The opposing %s hung on with its Focus Sash!\n"
	.size	.L.str.10, 46

	.type	ItemList,@object                # @ItemList
	.data
	.globl	ItemList
	.p2align	4
ItemList:
	.asciz	"Nothing\000\000\000\000"
	.zero	4
	.quad	NoItemf
	.asciz	"Leftovers\000\000"
	.zero	4
	.quad	Leftoversf
	.asciz	"Focus Sash\000"
	.zero	4
	.quad	Focus_Sashf
	.size	ItemList, 72

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"\033[1;37m\nP%d:\033[0m\n"
	.size	.L.str.11, 18

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Pokemon: %s\n"
	.size	.L.str.12, 13

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Health: %d/%d\n"
	.size	.L.str.13, 15

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Attack: %d\n"
	.size	.L.str.14, 12

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Defense: %d\n"
	.size	.L.str.15, 13

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Special Attack: %d\n"
	.size	.L.str.16, 20

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Special Defense: %d\n"
	.size	.L.str.17, 21

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Speed: %d\n"
	.size	.L.str.18, 11

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Nature: %s\n"
	.size	.L.str.19, 12

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Move1: %s %d/%.0f\n"
	.size	.L.str.20, 19

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Move2: %s %d/%.0f\n"
	.size	.L.str.21, 19

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Move3: %s %d/%.0f\n"
	.size	.L.str.22, 19

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Move4: %s %d/%.0f\n"
	.size	.L.str.23, 19

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Item: %s (%s)\n"
	.size	.L.str.24, 15

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Ability: %s\n"
	.size	.L.str.25, 13

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Status: %s\n"
	.size	.L.str.26, 12

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"\n\033[1;37mP1:\033[0m %s %d/%d\n"
	.size	.L.str.27, 26

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"\033[1;37mP2:\033[0m %s %d/%d\n"
	.size	.L.str.28, 25

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"\033[1;37mP3:\033[0m %s %d/%d\n"
	.size	.L.str.29, 25

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"\033[1;37mP4:\033[0m %s %d/%d\n"
	.size	.L.str.30, 25

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"\033[1;37mP5:\033[0m %s %d/%d\n"
	.size	.L.str.31, 25

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"\033[1;37mP6:\033[0m %s %d/%d\n"
	.size	.L.str.32, 25

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\nPartyMember: "
	.size	.L.str.33, 15

	.type	x,@object                       # @x
	.bss
	.globl	x
	.p2align	4
x:
	.zero	32
	.size	x, 32

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"\n"
	.size	.L.str.34, 2

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"P1"
	.size	.L.str.35, 3

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"P2"
	.size	.L.str.36, 3

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"P3"
	.size	.L.str.37, 3

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"P4"
	.size	.L.str.38, 3

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"P5"
	.size	.L.str.39, 3

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"P6"
	.size	.L.str.40, 3

	.type	Temp,@object                    # @Temp
	.bss
	.globl	Temp
	.p2align	3
Temp:
	.quad	0
	.size	Temp, 8

	.type	.L.str.41,@object               # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"EnemySwitch-In: "
	.size	.L.str.41, 17

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Switch to P2"
	.size	.L.str.42, 13

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Switch to "
	.size	.L.str.43, 11

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Go! %s!\n"
	.size	.L.str.44, 9

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"That pokemon is already fainted\n"
	.size	.L.str.45, 33

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Switch to P3"
	.size	.L.str.46, 13

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Switch to P4"
	.size	.L.str.47, 13

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Switch to P5"
	.size	.L.str.48, 13

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Switch to P6"
	.size	.L.str.49, 13

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"View Party"
	.size	.L.str.50, 11

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"View"
	.size	.L.str.51, 5

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Party"
	.size	.L.str.52, 6

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"That is not a valid switch. Please Try Again.\n"
	.size	.L.str.53, 47

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Switch-In: "
	.size	.L.str.54, 12

	.type	PlayerCanMove,@object           # @PlayerCanMove
	.bss
	.globl	PlayerCanMove
PlayerCanMove:
	.byte	0                               # 0x0
	.size	PlayerCanMove, 1

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"%s used %s!\n"
	.size	.L.str.55, 13

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"But it missed!\n"
	.size	.L.str.56, 16

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"%s couldn't move\n"
	.size	.L.str.57, 18

	.type	PlayerPara,@object              # @PlayerPara
	.bss
	.globl	PlayerPara
PlayerPara:
	.byte	0                               # 0x0
	.size	PlayerPara, 1

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"It was paralyzed!\n"
	.size	.L.str.58, 19

	.type	PlayerSleep,@object             # @PlayerSleep
	.bss
	.globl	PlayerSleep
PlayerSleep:
	.byte	0                               # 0x0
	.size	PlayerSleep, 1

	.type	.L.str.59,@object               # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"It is asleep\n"
	.size	.L.str.59, 14

	.type	PlayerFrozen,@object            # @PlayerFrozen
	.bss
	.globl	PlayerFrozen
PlayerFrozen:
	.byte	0                               # 0x0
	.size	PlayerFrozen, 1

	.type	.L.str.60,@object               # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"It is frozen!\n"
	.size	.L.str.60, 15

	.type	EnemyCanMove,@object            # @EnemyCanMove
	.bss
	.globl	EnemyCanMove
EnemyCanMove:
	.byte	0                               # 0x0
	.size	EnemyCanMove, 1

	.type	.L.str.61,@object               # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"The opposing %s used %s!\n"
	.size	.L.str.61, 26

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"The opposing %s couldn't move\n"
	.size	.L.str.62, 31

	.type	EnemyPara,@object               # @EnemyPara
	.bss
	.globl	EnemyPara
EnemyPara:
	.byte	0                               # 0x0
	.size	EnemyPara, 1

	.type	EnemySleep,@object              # @EnemySleep
	.globl	EnemySleep
EnemySleep:
	.byte	0                               # 0x0
	.size	EnemySleep, 1

	.type	EnemyFrozen,@object             # @EnemyFrozen
	.globl	EnemyFrozen
EnemyFrozen:
	.byte	0                               # 0x0
	.size	EnemyFrozen, 1

	.type	.L.str.63,@object               # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"It did %d damage!\n"
	.size	.L.str.63, 19

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"It was super effective!\n"
	.size	.L.str.64, 25

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"It was not very effective!\n"
	.size	.L.str.65, 28

	.type	PlayerCrit,@object              # @PlayerCrit
	.bss
	.globl	PlayerCrit
PlayerCrit:
	.byte	0                               # 0x0
	.size	PlayerCrit, 1

	.type	.L.str.66,@object               # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"It was a critical hit!\n"
	.size	.L.str.66, 24

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"The opposing %s is at %d/%d hp\n"
	.size	.L.str.67, 32

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"The opposing %s fainted!\n"
	.size	.L.str.68, 26

	.type	EnemyDead,@object               # @EnemyDead
	.bss
	.globl	EnemyDead
EnemyDead:
	.byte	0                               # 0x0
	.size	EnemyDead, 1

	.type	EnemyCrit,@object               # @EnemyCrit
	.globl	EnemyCrit
EnemyCrit:
	.byte	0                               # 0x0
	.size	EnemyCrit, 1

	.type	.L.str.69,@object               # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"Your %s is at %d/%d hp\n"
	.size	.L.str.69, 24

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"Your %s fainted!\n"
	.size	.L.str.70, 18

	.type	PlayerDead,@object              # @PlayerDead
	.bss
	.globl	PlayerDead
PlayerDead:
	.byte	0                               # 0x0
	.size	PlayerDead, 1

	.type	.L.str.71,@object               # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"%s woke up\n"
	.size	.L.str.71, 12

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"%s thawed out\n"
	.size	.L.str.72, 15

	.type	STAB,@object                    # @STAB
	.bss
	.globl	STAB
	.p2align	3
STAB:
	.quad	0x0000000000000000              # double 0
	.size	STAB, 8

	.type	PlayerSwitchSave,@object        # @PlayerSwitchSave
	.globl	PlayerSwitchSave
	.p2align	3
PlayerSwitchSave:
	.quad	0
	.size	PlayerSwitchSave, 8

	.type	.L.str.73,@object               # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"You switched out to %s\n"
	.size	.L.str.73, 24

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"The opposing %s woke up\n"
	.size	.L.str.74, 25

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"The opposing %s thawed out\n"
	.size	.L.str.75, 28

	.type	EnemySTAB,@object               # @EnemySTAB
	.bss
	.globl	EnemySTAB
	.p2align	3
EnemySTAB:
	.quad	0x0000000000000000              # double 0
	.size	EnemySTAB, 8

	.type	EnemySwitchSave,@object         # @EnemySwitchSave
	.globl	EnemySwitchSave
	.p2align	3
EnemySwitchSave:
	.quad	0
	.size	EnemySwitchSave, 8

	.type	.L.str.76,@object               # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"The Enemy switched out to %s\n"
	.size	.L.str.76, 30

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"%s took some damage from its burn!\n"
	.size	.L.str.77, 36

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"%s is hurt poison!\n"
	.size	.L.str.78, 20

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"%s is hurt by poison! (it's badly poisoned)\n"
	.size	.L.str.79, 45

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"\033[1F%s fainted!\n"
	.size	.L.str.80, 17

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"The opposing %s took some damage from its burn!\n\n"
	.size	.L.str.81, 50

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"The opposing %s is hurt by poison!\n\n"
	.size	.L.str.82, 37

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"The opposing %s is hurt by poison! (it's badly poisoned)\n\n"
	.size	.L.str.83, 59

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"The Player has won\n"
	.size	.L.str.84, 20

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"The Enemy has won\n"
	.size	.L.str.85, 19

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"Do you want to play again? (y/n): "
	.size	.L.str.86, 35

	.type	Pokemon1,@object                # @Pokemon1
	.data
	.globl	Pokemon1
	.p2align	3
Pokemon1:
	.quad	Charmander
	.byte	5                               # 0x5
	.zero	3
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
	.byte	13                              # 0xd
	.byte	192                             # 0xc0
	.zero	2
	.byte	4                               # 0x4
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
	.zero	5
	.size	Pokemon1, 88

	.type	Pokemon2,@object                # @Pokemon2
	.globl	Pokemon2
	.p2align	3
Pokemon2:
	.quad	Pidgey
	.byte	5                               # 0x5
	.zero	3
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
	.zero	5
	.size	Pokemon2, 88

	.type	Pokemon3,@object                # @Pokemon3
	.globl	Pokemon3
	.p2align	3
Pokemon3:
	.quad	Bulbasaur
	.byte	5                               # 0x5
	.zero	3
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
	.zero	5
	.size	Pokemon3, 88

	.type	Pokemon4,@object                # @Pokemon4
	.globl	Pokemon4
	.p2align	3
Pokemon4:
	.quad	Squirtle
	.byte	5                               # 0x5
	.zero	3
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
	.zero	5
	.size	Pokemon4, 88

	.type	Pokemon5,@object                # @Pokemon5
	.globl	Pokemon5
	.p2align	3
Pokemon5:
	.quad	Charmander
	.byte	5                               # 0x5
	.zero	3
	.long	0                               # 0x0
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
	.zero	5
	.size	Pokemon5, 88

	.type	Pokemon6,@object                # @Pokemon6
	.globl	Pokemon6
	.p2align	3
Pokemon6:
	.quad	Pidgey
	.byte	5                               # 0x5
	.zero	3
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
	.zero	5
	.size	Pokemon6, 88

	.type	EnemyPokemon1,@object           # @EnemyPokemon1
	.globl	EnemyPokemon1
	.p2align	3
EnemyPokemon1:
	.quad	Charmander
	.byte	5                               # 0x5
	.zero	3
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
	.byte	12                              # 0xc
	.byte	192                             # 0xc0
	.zero	2
	.byte	4                               # 0x4
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
	.zero	5
	.size	EnemyPokemon1, 88

	.type	EnemyPokemon2,@object           # @EnemyPokemon2
	.globl	EnemyPokemon2
	.p2align	3
EnemyPokemon2:
	.quad	Pidgey
	.byte	5                               # 0x5
	.zero	3
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
	.zero	5
	.size	EnemyPokemon2, 88

	.type	EnemyPokemon3,@object           # @EnemyPokemon3
	.globl	EnemyPokemon3
	.p2align	3
EnemyPokemon3:
	.quad	Bulbasaur
	.byte	5                               # 0x5
	.zero	3
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
	.zero	5
	.size	EnemyPokemon3, 88

	.type	EnemyPokemon4,@object           # @EnemyPokemon4
	.globl	EnemyPokemon4
	.p2align	3
EnemyPokemon4:
	.quad	Squirtle
	.byte	5                               # 0x5
	.zero	3
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
	.zero	5
	.size	EnemyPokemon4, 88

	.type	EnemyPokemon5,@object           # @EnemyPokemon5
	.globl	EnemyPokemon5
	.p2align	3
EnemyPokemon5:
	.quad	Charmander
	.byte	5                               # 0x5
	.zero	3
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
	.zero	5
	.size	EnemyPokemon5, 88

	.type	EnemyPokemon6,@object           # @EnemyPokemon6
	.globl	EnemyPokemon6
	.p2align	3
EnemyPokemon6:
	.quad	Pidgey
	.byte	5                               # 0x5
	.zero	3
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
	.zero	5
	.size	EnemyPokemon6, 88

	.type	.L.str.89,@object               # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"\nHeal?:"
	.size	.L.str.89, 8

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"\033[1A"
	.size	.L.str.90, 5

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"\033[2K"
	.size	.L.str.91, 5

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"Go %s!\n"
	.size	.L.str.92, 8

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"The Enemy sent out %s!\n\n"
	.size	.L.str.93, 25

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"Enter your move: "
	.size	.L.str.94, 18

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Move 1"
	.size	.L.str.96, 7

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"There is no move in that slot."
	.size	.L.str.97, 31

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"There no more PP left in that move"
	.size	.L.str.98, 35

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"Move 2"
	.size	.L.str.100, 7

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"Move 3"
	.size	.L.str.102, 7

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"Move 4"
	.size	.L.str.104, 7

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"NoPoke"
	.size	.L.str.105, 7

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"Move Selection Failed. Pilease retry."
	.size	.L.str.106, 38

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"Move Selection Failed. Please retry."
	.size	.L.str.107, 37

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"\nEnter enemy's move: "
	.size	.L.str.108, 22

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"\n\n"
	.size	.L.str.109, 3

	.type	PlayerSpeedTM,@object           # @PlayerSpeedTM
	.bss
	.globl	PlayerSpeedTM
	.p2align	3
PlayerSpeedTM:
	.quad	0x0000000000000000              # double 0
	.size	PlayerSpeedTM, 8

	.type	EnemySpeedTM,@object            # @EnemySpeedTM
	.globl	EnemySpeedTM
	.p2align	3
EnemySpeedTM:
	.quad	0x0000000000000000              # double 0
	.size	EnemySpeedTM, 8

	.type	EndFirst,@object                # @EndFirst
	.globl	EndFirst
EndFirst:
	.byte	0                               # 0x0
	.size	EndFirst, 1

	.type	.L.str.110,@object              # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"clear"
	.size	.L.str.110, 6

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"%d\n"
	.size	.L.str.111, 4

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"%lu\n"
	.size	.L.str.112, 5

	.type	PlayerHpSave,@object            # @PlayerHpSave
	.bss
	.globl	PlayerHpSave
	.p2align	2
PlayerHpSave:
	.long	0                               # 0x0
	.size	PlayerHpSave, 4

	.type	EnemyHpSave,@object             # @EnemyHpSave
	.globl	EnemyHpSave
	.p2align	2
EnemyHpSave:
	.long	0                               # 0x0
	.size	EnemyHpSave, 4

	.type	EFFECT_COUNTER_LIST,@object     # @EFFECT_COUNTER_LIST
	.globl	EFFECT_COUNTER_LIST
EFFECT_COUNTER_LIST:
	.zero	1
	.size	EFFECT_COUNTER_LIST, 1

	.ident	"clang version 12.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UTL_ATTACKF
	.addrsig_sym UTL_DEFENSEF
	.addrsig_sym UTL_SP_DEFF
	.addrsig_sym UTL_SP_ATKF
	.addrsig_sym UTL_SPEEDF
	.addrsig_sym UTL_ACCURACYF
	.addrsig_sym UTL_EVASIONF
	.addrsig_sym UTL_CRIT_CHANCEF
	.addrsig_sym LEECH_SEEDF
	.addrsig_sym PERISH_SONGF
	.addrsig_sym Nothingf
	.addrsig_sym Strugglef
	.addrsig_sym SelfBoost
	.addrsig_sym OtherBoost
	.addrsig_sym OtherStatus
	.addrsig_sym NoAbilityf
	.addrsig_sym Overgrowf
	.addrsig_sym Blazef
	.addrsig_sym Torrentf
	.addrsig_sym Big_Pecksf
	.addrsig_sym NoItemf
	.addrsig_sym Leftoversf
	.addrsig_sym Focus_Sashf
	.addrsig_sym __stack_chk_fail
	.addrsig_sym c
	.addrsig_sym NATURE_LIST
	.addrsig_sym Stagenames
	.addrsig_sym Itemtext
	.addrsig_sym Statusnames
	.addrsig_sym Parties
	.addrsig_sym MoveList
	.addrsig_sym Empty_slot
	.addrsig_sym Struggle_Slot
	.addrsig_sym AbilityList
	.addrsig_sym Bulbasaur
	.addrsig_sym Charmander
	.addrsig_sym Squirtle
	.addrsig_sym Pidgey
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
