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
	movzbl	%dil, %eax
	movsbl	74(%rdx,%rax), %ecx
	cmpl	$6, %ecx
	jl	.LBB20_5
# %bb.3:
	movb	$6, 74(%rdx,%rax)
	movq	(%rdx), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str.1(%rip), %rsi
	jmp	.LBB20_4
.LBB20_5:
	cmpb	$-6, %cl
	jg	.LBB20_7
# %bb.6:
	movb	$-6, 74(%rdx,%rax)
	movq	(%rdx), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %r8
	addq	Stagenames@GOTPCREL(%rip), %r8
	leaq	.L.str.2(%rip), %rsi
.LBB20_4:
	movq	%rsp, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB20_12
.LBB20_7:
	movsbl	%sil, %esi
	testb	%sil, %sil
	jle	.LBB20_9
# %bb.8:
	movl	%ecx, %edi
	addl	%esi, %edi
	leal	-6(%rdi), %r8d
	cmpl	$6, %edi
	movzbl	%r8b, %edi
	movzbl	%sil, %esi
	cmovgl	%edi, %esi
	movsbl	%sil, %r9d
	addl	%r9d, %ecx
	movb	%cl, 74(%rdx,%rax)
	movq	(%rdx), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %r8
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
	movl	%ecx, %edi
	addl	%esi, %edi
	leal	6(%rdi), %r8d
	cmpl	$-6, %edi
	movzbl	%r8b, %edi
	movzbl	%sil, %esi
	cmovll	%edi, %esi
	movsbl	%sil, %r9d
	addl	%r9d, %ecx
	movb	%cl, 74(%rdx,%rax)
	movq	(%rdx), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,2), %r8
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
	.globl	Nothingf                        # -- Begin function Nothingf
	.p2align	4, 0x90
	.type	Nothingf,@function
Nothingf:                               # @Nothingf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end23:
	.size	Nothingf, .Lfunc_end23-Nothingf
	.cfi_endproc
                                        # -- End function
	.globl	Strugglef                       # -- Begin function Strugglef
	.p2align	4, 0x90
	.type	Strugglef,@function
Strugglef:                              # @Strugglef
	.cfi_startproc
# %bb.0:
	movq	YourTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movb	1(%rax), %cl
	leal	1(%rcx), %edx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 1(%rax)
	cmpb	$2, %dil
	jne	.LBB24_2
# %bb.1:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	48(%rcx), %ecx
	shrl	$2, %ecx
	movzbl	%sil, %edx
	shlq	$6, %rdx
	movq	(%rax,%rdx), %rax
	subl	%ecx, 12(%rax)
.LBB24_2:
	retq
.Lfunc_end24:
	.size	Strugglef, .Lfunc_end24-Strugglef
	.cfi_endproc
                                        # -- End function
	.globl	Scratchf                        # -- Begin function Scratchf
	.p2align	4, 0x90
	.type	Scratchf,@function
Scratchf:                               # @Scratchf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end25:
	.size	Scratchf, .Lfunc_end25-Scratchf
	.cfi_endproc
                                        # -- End function
	.globl	Water_Gunf                      # -- Begin function Water_Gunf
	.p2align	4, 0x90
	.type	Water_Gunf,@function
Water_Gunf:                             # @Water_Gunf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end26:
	.size	Water_Gunf, .Lfunc_end26-Water_Gunf
	.cfi_endproc
                                        # -- End function
	.globl	Vine_Whipf                      # -- Begin function Vine_Whipf
	.p2align	4, 0x90
	.type	Vine_Whipf,@function
Vine_Whipf:                             # @Vine_Whipf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end27:
	.size	Vine_Whipf, .Lfunc_end27-Vine_Whipf
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
	jne	.LBB28_6
# %bb.1:
	movl	%esi, %ebx
	callq	rand@PLT
	cmpl	$2147483601, %eax               # imm = 0x7FFFFFD1
	jb	.LBB28_3
	.p2align	4, 0x90
.LBB28_2:                               # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483600, %eax               # imm = 0x7FFFFFD0
	ja	.LBB28_2
.LBB28_3:
	movl	%eax, %ecx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	cmpl	$9, %eax
	ja	.LBB28_6
# %bb.4:
	xorb	$1, %bl
	movzbl	%bl, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	cmpb	$0, 73(%rax)
	je	.LBB28_5
.LBB28_6:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB28_5:
	.cfi_def_cfa_offset 16
	movb	$1, 73(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end28:
	.size	Emberf, .Lfunc_end28-Emberf
	.cfi_endproc
                                        # -- End function
	.globl	Quick_Attackf                   # -- Begin function Quick_Attackf
	.p2align	4, 0x90
	.type	Quick_Attackf,@function
Quick_Attackf:                          # @Quick_Attackf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end29:
	.size	Quick_Attackf, .Lfunc_end29-Quick_Attackf
	.cfi_endproc
                                        # -- End function
	.globl	Super_Attackf                   # -- Begin function Super_Attackf
	.p2align	4, 0x90
	.type	Super_Attackf,@function
Super_Attackf:                          # @Super_Attackf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end30:
	.size	Super_Attackf, .Lfunc_end30-Super_Attackf
	.cfi_endproc
                                        # -- End function
	.globl	Stone_Edgef                     # -- Begin function Stone_Edgef
	.p2align	4, 0x90
	.type	Stone_Edgef,@function
Stone_Edgef:                            # @Stone_Edgef
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end31:
	.size	Stone_Edgef, .Lfunc_end31-Stone_Edgef
	.cfi_endproc
                                        # -- End function
	.globl	Gustf                           # -- Begin function Gustf
	.p2align	4, 0x90
	.type	Gustf,@function
Gustf:                                  # @Gustf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end32:
	.size	Gustf, .Lfunc_end32-Gustf
	.cfi_endproc
                                        # -- End function
	.globl	Thunder_Shockf                  # -- Begin function Thunder_Shockf
	.p2align	4, 0x90
	.type	Thunder_Shockf,@function
Thunder_Shockf:                         # @Thunder_Shockf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end33:
	.size	Thunder_Shockf, .Lfunc_end33-Thunder_Shockf
	.cfi_endproc
                                        # -- End function
	.globl	Thunder_Wavef                   # -- Begin function Thunder_Wavef
	.p2align	4, 0x90
	.type	Thunder_Wavef,@function
Thunder_Wavef:                          # @Thunder_Wavef
	.cfi_startproc
# %bb.0:
	cmpb	$2, %dil
	jne	.LBB34_3
# %bb.1:
	xorb	$1, %sil
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	cmpb	$0, 73(%rax)
	je	.LBB34_2
.LBB34_3:
	retq
.LBB34_2:
	movb	$3, 73(%rax)
	retq
.Lfunc_end34:
	.size	Thunder_Wavef, .Lfunc_end34-Thunder_Wavef
	.cfi_endproc
                                        # -- End function
	.globl	Swords_Dancef                   # -- Begin function Swords_Dancef
	.p2align	4, 0x90
	.type	Swords_Dancef,@function
Swords_Dancef:                          # @Swords_Dancef
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 16(%rsp)
	cmpb	$2, %dil
	jne	.LBB35_7
# %bb.1:
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movb	74(%rax), %cl
	cmpb	$6, %cl
	jl	.LBB35_4
# %bb.2:
	movb	$6, 74(%rax)
	movq	(%rax), %rcx
	leaq	.L.str.1(%rip), %rsi
	jmp	.LBB35_3
.LBB35_4:
	cmpb	$-6, %cl
	jg	.LBB35_6
# %bb.5:
	movb	$-6, 74(%rax)
	movq	(%rax), %rcx
	leaq	.L.str.2(%rip), %rsi
.LBB35_3:
	movq	Stagenames@GOTPCREL(%rip), %r8
	movq	%rsp, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB35_7
.LBB35_6:
	leal	-4(%rcx), %edx
	cmpb	$4, %cl
	movzbl	%dl, %edx
	movl	$2, %esi
	cmovgl	%edx, %esi
	movsbl	%sil, %r9d
	addb	%r9b, %cl
	movb	%cl, 74(%rax)
	movq	(%rax), %rcx
	leaq	.L.str.3(%rip), %rsi
	movq	Stagenames@GOTPCREL(%rip), %r8
	movq	%rsp, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB35_7:
	movq	%fs:40, %rax
	cmpq	16(%rsp), %rax
	jne	.LBB35_9
# %bb.8:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB35_9:
	.cfi_def_cfa_offset 32
	callq	__stack_chk_fail@PLT
.Lfunc_end35:
	.size	Swords_Dancef, .Lfunc_end35-Swords_Dancef
	.cfi_endproc
                                        # -- End function
	.globl	Dragon_Dancef                   # -- Begin function Dragon_Dancef
	.p2align	4, 0x90
	.type	Dragon_Dancef,@function
Dragon_Dancef:                          # @Dragon_Dancef
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	cmpb	$2, %dil
	jne	.LBB36_13
# %bb.1:
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	leaq	(%rcx,%rax), %rbx
	movq	(%rcx,%rax), %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movb	74(%rax), %cl
	cmpb	$6, %cl
	jl	.LBB36_4
# %bb.2:
	movb	$6, 74(%rax)
	movq	(%rax), %rcx
	leaq	.L.str.1(%rip), %rsi
	jmp	.LBB36_3
.LBB36_4:
	cmpb	$-6, %cl
	jg	.LBB36_6
# %bb.5:
	movb	$-6, 74(%rax)
	movq	(%rax), %rcx
	leaq	.L.str.2(%rip), %rsi
.LBB36_3:
	movq	Stagenames@GOTPCREL(%rip), %r8
	movq	%rsp, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB36_7
.LBB36_6:
	addb	$1, %cl
	movb	%cl, 74(%rax)
	movq	(%rax), %rcx
	leaq	.L.str.3(%rip), %rsi
	movq	Stagenames@GOTPCREL(%rip), %r8
	movq	%rsp, %rdx
	movl	$1, %edi
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB36_7:
	movq	(%rbx), %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movb	78(%rax), %cl
	cmpb	$6, %cl
	jl	.LBB36_10
# %bb.8:
	movb	$6, 78(%rax)
	movq	(%rax), %rcx
	movq	Stagenames@GOTPCREL(%rip), %r8
	addq	$60, %r8
	leaq	.L.str.1(%rip), %rsi
	jmp	.LBB36_9
.LBB36_10:
	cmpb	$-6, %cl
	jg	.LBB36_12
# %bb.11:
	movb	$-6, 78(%rax)
	movq	(%rax), %rcx
	movq	Stagenames@GOTPCREL(%rip), %r8
	addq	$60, %r8
	leaq	.L.str.2(%rip), %rsi
.LBB36_9:
	movq	%rsp, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB36_13
.LBB36_12:
	addb	$1, %cl
	movb	%cl, 78(%rax)
	movq	(%rax), %rcx
	movq	Stagenames@GOTPCREL(%rip), %r8
	addq	$60, %r8
	leaq	.L.str.3(%rip), %rsi
	movq	%rsp, %rdx
	movl	$1, %edi
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB36_13:
	movq	%fs:40, %rax
	cmpq	24(%rsp), %rax
	jne	.LBB36_15
# %bb.14:
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB36_15:
	.cfi_def_cfa_offset 48
	callq	__stack_chk_fail@PLT
.Lfunc_end36:
	.size	Dragon_Dancef, .Lfunc_end36-Dragon_Dancef
	.cfi_endproc
                                        # -- End function
	.globl	Will_O_Wispf                    # -- Begin function Will_O_Wispf
	.p2align	4, 0x90
	.type	Will_O_Wispf,@function
Will_O_Wispf:                           # @Will_O_Wispf
	.cfi_startproc
# %bb.0:
	cmpb	$2, %dil
	jne	.LBB37_4
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
	je	.LBB37_4
# %bb.2:
	cmpb	$0, 73(%rax)
	je	.LBB37_3
.LBB37_4:
	retq
.LBB37_3:
	movb	$1, 73(%rax)
	retq
.Lfunc_end37:
	.size	Will_O_Wispf, .Lfunc_end37-Will_O_Wispf
	.cfi_endproc
                                        # -- End function
	.globl	Sporef                          # -- Begin function Sporef
	.p2align	4, 0x90
	.type	Sporef,@function
Sporef:                                 # @Sporef
	.cfi_startproc
# %bb.0:
	cmpb	$2, %dil
	jne	.LBB38_3
# %bb.1:
	xorb	$1, %sil
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	cmpb	$0, 73(%rax)
	je	.LBB38_2
.LBB38_3:
	retq
.LBB38_2:
	movb	$4, 73(%rax)
	retq
.Lfunc_end38:
	.size	Sporef, .Lfunc_end38-Sporef
	.cfi_endproc
                                        # -- End function
	.globl	Toxicf                          # -- Begin function Toxicf
	.p2align	4, 0x90
	.type	Toxicf,@function
Toxicf:                                 # @Toxicf
	.cfi_startproc
# %bb.0:
	cmpb	$3, %dil
	je	.LBB39_8
# %bb.1:
	cmpb	$2, %dil
	jne	.LBB39_11
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
	je	.LBB39_11
# %bb.3:
	cmpw	$17, %dx
	je	.LBB39_11
# %bb.4:
	shrl	$5, %ecx
	andl	$31, %ecx
	cmpw	$8, %cx
	je	.LBB39_11
# %bb.5:
	cmpw	$17, %cx
	je	.LBB39_11
# %bb.6:
	cmpb	$0, 73(%rax)
	jne	.LBB39_11
# %bb.7:
	movb	$5, 73(%rax)
	retq
.LBB39_8:
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	movq	(%rax), %rax
	movzwl	12(%rax), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	cmpw	$8, %cx
	je	.LBB39_10
# %bb.9:
	andl	$992, %eax                      # imm = 0x3E0
	movzwl	%ax, %eax
	cmpl	$256, %eax                      # imm = 0x100
	je	.LBB39_10
.LBB39_11:
	retq
.LBB39_10:
	movq	PlayerHit@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	retq
.Lfunc_end39:
	.size	Toxicf, .Lfunc_end39-Toxicf
	.cfi_endproc
                                        # -- End function
	.globl	Freezef                         # -- Begin function Freezef
	.p2align	4, 0x90
	.type	Freezef,@function
Freezef:                                # @Freezef
	.cfi_startproc
# %bb.0:
	cmpb	$2, %dil
	jne	.LBB40_3
# %bb.1:
	xorb	$1, %sil
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rax
	cmpb	$0, 73(%rax)
	je	.LBB40_2
.LBB40_3:
	retq
.LBB40_2:
	movb	$6, 73(%rax)
	retq
.Lfunc_end40:
	.size	Freezef, .Lfunc_end40-Freezef
	.cfi_endproc
                                        # -- End function
	.globl	Bulk_Upf                        # -- Begin function Bulk_Upf
	.p2align	4, 0x90
	.type	Bulk_Upf,@function
Bulk_Upf:                               # @Bulk_Upf
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	cmpb	$2, %dil
	jne	.LBB41_13
# %bb.1:
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	leaq	(%rcx,%rax), %rbx
	movq	(%rcx,%rax), %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movb	74(%rax), %cl
	cmpb	$6, %cl
	jl	.LBB41_4
# %bb.2:
	movb	$6, 74(%rax)
	movq	(%rax), %rcx
	leaq	.L.str.1(%rip), %rsi
	jmp	.LBB41_3
.LBB41_4:
	cmpb	$-6, %cl
	jg	.LBB41_6
# %bb.5:
	movb	$-6, 74(%rax)
	movq	(%rax), %rcx
	leaq	.L.str.2(%rip), %rsi
.LBB41_3:
	movq	Stagenames@GOTPCREL(%rip), %r8
	movq	%rsp, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB41_7
.LBB41_6:
	addb	$1, %cl
	movb	%cl, 74(%rax)
	movq	(%rax), %rcx
	leaq	.L.str.3(%rip), %rsi
	movq	Stagenames@GOTPCREL(%rip), %r8
	movq	%rsp, %rdx
	movl	$1, %edi
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB41_7:
	movq	(%rbx), %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movb	75(%rax), %cl
	cmpb	$6, %cl
	jl	.LBB41_10
# %bb.8:
	movb	$6, 75(%rax)
	movq	(%rax), %rcx
	movq	Stagenames@GOTPCREL(%rip), %r8
	addq	$15, %r8
	leaq	.L.str.1(%rip), %rsi
	jmp	.LBB41_9
.LBB41_10:
	cmpb	$-6, %cl
	jg	.LBB41_12
# %bb.11:
	movb	$-6, 75(%rax)
	movq	(%rax), %rcx
	movq	Stagenames@GOTPCREL(%rip), %r8
	addq	$15, %r8
	leaq	.L.str.2(%rip), %rsi
.LBB41_9:
	movq	%rsp, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB41_13
.LBB41_12:
	addb	$1, %cl
	movb	%cl, 75(%rax)
	movq	(%rax), %rcx
	movq	Stagenames@GOTPCREL(%rip), %r8
	addq	$15, %r8
	leaq	.L.str.3(%rip), %rsi
	movq	%rsp, %rdx
	movl	$1, %edi
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB41_13:
	movq	%fs:40, %rax
	cmpq	24(%rsp), %rax
	jne	.LBB41_15
# %bb.14:
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB41_15:
	.cfi_def_cfa_offset 48
	callq	__stack_chk_fail@PLT
.Lfunc_end41:
	.size	Bulk_Upf, .Lfunc_end41-Bulk_Upf
	.cfi_endproc
                                        # -- End function
	.globl	Charmf                          # -- Begin function Charmf
	.p2align	4, 0x90
	.type	Charmf,@function
Charmf:                                 # @Charmf
	.cfi_startproc
# %bb.0:
	cmpb	$2, %dil
	jne	.LBB42_1
# %bb.2:
	xorb	$1, %sil
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax), %rdx
	xorl	%edi, %edi
	movl	$-2, %esi
	movl	$1, %ecx
	jmp	Boostandprint@PLT               # TAILCALL
.LBB42_1:
	retq
.Lfunc_end42:
	.size	Charmf, .Lfunc_end42-Charmf
	.cfi_endproc
                                        # -- End function
	.globl	Leerf                           # -- Begin function Leerf
	.p2align	4, 0x90
	.type	Leerf,@function
Leerf:                                  # @Leerf
	.cfi_startproc
# %bb.0:
	cmpb	$2, %dil
	jne	.LBB43_2
# %bb.1:
	xorb	$1, %sil
	movzbl	%sil, %eax
	shlq	$6, %rax
	movq	Parties@GOTPCREL(%rip), %rcx
	testb	$2, 48(%rcx,%rax)
	jne	.LBB43_2
# %bb.3:
	movq	(%rcx,%rax), %rdx
	movl	$1, %edi
	movl	$-1, %esi
	movl	$1, %ecx
	jmp	Boostandprint@PLT               # TAILCALL
.LBB43_2:
	retq
.Lfunc_end43:
	.size	Leerf, .Lfunc_end43-Leerf
	.cfi_endproc
                                        # -- End function
	.globl	NoAbilityf                      # -- Begin function NoAbilityf
	.p2align	4, 0x90
	.type	NoAbilityf,@function
NoAbilityf:                             # @NoAbilityf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end44:
	.size	NoAbilityf, .Lfunc_end44-NoAbilityf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function Overgrowf
.LCPI45_0:
	.quad	0x3ff8000000000000              # double 1.5
	.text
	.globl	Overgrowf
	.p2align	4, 0x90
	.type	Overgrowf,@function
Overgrowf:                              # @Overgrowf
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	je	.LBB45_1
# %bb.5:
	cmpb	$1, %dil
	jne	.LBB45_10
# %bb.6:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB45_10
# %bb.7:
	movq	EnemyTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	MoveList@GOTPCREL(%rip), %rcx
	movzwl	16(%rcx,%rax), %edx
	movzbl	18(%rcx,%rax), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$40960, %eax                    # imm = 0xA000
	jne	.LBB45_10
# %bb.8:
	movq	EnemyTM@GOTPCREL(%rip), %rax
	jmp	.LBB45_9
.LBB45_1:
	cmpb	$1, %dil
	jne	.LBB45_10
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB45_10
# %bb.3:
	movq	YourTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	MoveList@GOTPCREL(%rip), %rcx
	movzwl	16(%rcx,%rax), %edx
	movzbl	18(%rcx,%rax), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$40960, %eax                    # imm = 0xA000
	jne	.LBB45_10
# %bb.4:
	movq	PlayerTM@GOTPCREL(%rip), %rax
.LBB45_9:
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	mulsd	.LCPI45_0(%rip), %xmm0
	movsd	%xmm0, (%rax)
.LBB45_10:
	retq
.Lfunc_end45:
	.size	Overgrowf, .Lfunc_end45-Overgrowf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function Blazef
.LCPI46_0:
	.quad	0x3ff8000000000000              # double 1.5
	.text
	.globl	Blazef
	.p2align	4, 0x90
	.type	Blazef,@function
Blazef:                                 # @Blazef
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	je	.LBB46_1
# %bb.5:
	cmpb	$1, %dil
	jne	.LBB46_10
# %bb.6:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB46_10
# %bb.7:
	movq	EnemyTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	MoveList@GOTPCREL(%rip), %rcx
	movzwl	16(%rcx,%rax), %edx
	movzbl	18(%rcx,%rax), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$16384, %eax                    # imm = 0x4000
	jne	.LBB46_10
# %bb.8:
	movq	EnemyTM@GOTPCREL(%rip), %rax
	jmp	.LBB46_9
.LBB46_1:
	cmpb	$1, %dil
	jne	.LBB46_10
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB46_10
# %bb.3:
	movq	YourTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	MoveList@GOTPCREL(%rip), %rcx
	movzwl	16(%rcx,%rax), %edx
	movzbl	18(%rcx,%rax), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$16384, %eax                    # imm = 0x4000
	jne	.LBB46_10
# %bb.4:
	movq	PlayerTM@GOTPCREL(%rip), %rax
.LBB46_9:
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	mulsd	.LCPI46_0(%rip), %xmm0
	movsd	%xmm0, (%rax)
.LBB46_10:
	retq
.Lfunc_end46:
	.size	Blazef, .Lfunc_end46-Blazef
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function Torrentf
.LCPI47_0:
	.quad	0x3ff8000000000000              # double 1.5
	.text
	.globl	Torrentf
	.p2align	4, 0x90
	.type	Torrentf,@function
Torrentf:                               # @Torrentf
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	je	.LBB47_1
# %bb.5:
	cmpb	$1, %dil
	jne	.LBB47_10
# %bb.6:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB47_10
# %bb.7:
	movq	EnemyTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	MoveList@GOTPCREL(%rip), %rcx
	movzwl	16(%rcx,%rax), %edx
	movzbl	18(%rcx,%rax), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$24576, %eax                    # imm = 0x6000
	jne	.LBB47_10
# %bb.8:
	movq	EnemyTM@GOTPCREL(%rip), %rax
	jmp	.LBB47_9
.LBB47_1:
	cmpb	$1, %dil
	jne	.LBB47_10
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	48(%rax), %ecx
	movl	$2863311531, %edx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	cmpl	%edx, 12(%rax)
	ja	.LBB47_10
# %bb.3:
	movq	YourTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	MoveList@GOTPCREL(%rip), %rcx
	movzwl	16(%rcx,%rax), %edx
	movzbl	18(%rcx,%rax), %eax
	shll	$16, %eax
	orl	%edx, %eax
	andl	$253952, %eax                   # imm = 0x3E000
	cmpl	$24576, %eax                    # imm = 0x6000
	jne	.LBB47_10
# %bb.4:
	movq	PlayerTM@GOTPCREL(%rip), %rax
.LBB47_9:
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	mulsd	.LCPI47_0(%rip), %xmm0
	movsd	%xmm0, (%rax)
.LBB47_10:
	retq
.Lfunc_end47:
	.size	Torrentf, .Lfunc_end47-Torrentf
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
.Lfunc_end48:
	.size	Big_Pecksf, .Lfunc_end48-Big_Pecksf
	.cfi_endproc
                                        # -- End function
	.globl	NoItemf                         # -- Begin function NoItemf
	.p2align	4, 0x90
	.type	NoItemf,@function
NoItemf:                                # @NoItemf
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end49:
	.size	NoItemf, .Lfunc_end49-NoItemf
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
	je	.LBB50_1
# %bb.6:
	cmpb	$5, %dil
	jne	.LBB50_10
# %bb.7:
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	64(%rbx), %rax
	movb	82(%rax), %cl
	andb	$1, %cl
	je	.LBB50_10
# %bb.8:
	movl	12(%rax), %ecx
	movl	48(%rax), %edx
	cmpl	%edx, %ecx
	jae	.LBB50_10
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
	jmp	.LBB50_5
.LBB50_1:
	cmpb	$5, %dil
	jne	.LBB50_10
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movb	82(%rax), %cl
	andb	$1, %cl
	je	.LBB50_10
# %bb.3:
	movl	12(%rax), %ecx
	movl	48(%rax), %edx
	cmpl	%edx, %ecx
	jae	.LBB50_10
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
.LBB50_5:
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.LBB50_10:
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end50:
	.size	Leftoversf, .Lfunc_end50-Leftoversf
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
	je	.LBB51_1
# %bb.6:
	cmpb	$-1, %dil
	jne	.LBB51_12
# %bb.7:
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	64(%rbx), %rax
	movb	82(%rax), %cl
	andb	$1, %cl
	je	.LBB51_12
# %bb.8:
	movl	12(%rax), %ecx
	movl	48(%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB51_12
# %bb.9:
	movq	Damage@GOTPCREL(%rip), %rdx
	cmpl	%esi, (%rdx)
	jb	.LBB51_12
# %bb.10:
	addl	$-1, %ecx
	movl	%ecx, (%rdx)
	movq	(%rax), %rdx
	leaq	.L.str.10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	64(%rbx), %rax
	jmp	.LBB51_11
.LBB51_1:
	cmpb	$-1, %dil
	jne	.LBB51_12
# %bb.2:
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movb	82(%rax), %cl
	andb	$1, %cl
	je	.LBB51_12
# %bb.3:
	movl	12(%rax), %ecx
	movl	48(%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB51_12
# %bb.4:
	movq	EnemyDamage@GOTPCREL(%rip), %rdx
	cmpl	%esi, (%rdx)
	jb	.LBB51_12
# %bb.5:
	addl	$-1, %ecx
	movl	%ecx, (%rdx)
	movq	(%rax), %rdx
	leaq	.L.str.9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbx), %rax
.LBB51_11:
	andb	$-2, 82(%rax)
.LBB51_12:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end51:
	.size	Focus_Sashf, .Lfunc_end51-Focus_Sashf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function displaymember
.LCPI52_0:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI52_1:
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rsi
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
	mulsd	.LCPI52_0(%rip), %xmm1
	addsd	.LCPI52_1(%rip), %xmm1
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r14,%rcx), %rdx
	movzwl	16(%r14,%rcx), %ecx
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
	mulsd	.LCPI52_0(%rip), %xmm1
	addsd	.LCPI52_1(%rip), %xmm1
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r14,%rcx), %rdx
	movzwl	16(%r14,%rcx), %ecx
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
	mulsd	.LCPI52_0(%rip), %xmm1
	addsd	.LCPI52_1(%rip), %xmm1
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r14,%rcx), %rdx
	movzwl	16(%r14,%rcx), %ecx
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
	mulsd	.LCPI52_0(%rip), %xmm1
	addsd	.LCPI52_1(%rip), %xmm1
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
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end52:
	.size	displaymember, .Lfunc_end52-displaymember
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
	leaq	.L.str.25(%rip), %rsi
	xorl	%r15d, %r15d
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.26(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.27(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.28(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.29(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%rbp,%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.30(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.31(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.32(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movl	$12624, %eax                    # imm = 0x3150
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB53_10
# %bb.1:
	movl	$12880, %eax                    # imm = 0x3250
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	movl	$1, %r15d
	je	.LBB53_10
# %bb.2:
	movl	$13136, %eax                    # imm = 0x3350
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB53_3
# %bb.4:
	movl	$13392, %eax                    # imm = 0x3450
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB53_5
# %bb.6:
	movl	$13648, %eax                    # imm = 0x3550
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB53_7
# %bb.8:
	movl	$13904, %eax                    # imm = 0x3650
	xorl	(%rbx), %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB53_9
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
.LBB53_3:
	.cfi_def_cfa_offset 48
	movl	$2, %r15d
	jmp	.LBB53_10
.LBB53_5:
	movl	$3, %r15d
	jmp	.LBB53_10
.LBB53_7:
	movl	$4, %r15d
	jmp	.LBB53_10
.LBB53_9:
	movl	$5, %r15d
.LBB53_10:
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
.Lfunc_end53:
	.size	displayparty, .Lfunc_end53-displayparty
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
.Lfunc_end54:
	.size	Switcheroo, .Lfunc_end54-Switcheroo
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
.Lfunc_end55:
	.size	Switcheroo2, .Lfunc_end55-Switcheroo2
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
.Lfunc_end56:
	.size	Switcheroo3, .Lfunc_end56-Switcheroo3
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
.Lfunc_end57:
	.size	Switcheroo4, .Lfunc_end57-Switcheroo4
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function SwitchIn
.LCPI58_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI58_1:
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
.LCPI58_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI58_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI58_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI58_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI58_6:
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
	leaq	.L.str.41(%rip), %rax
	cltq
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	c(%rip), %r14
	.p2align	4, 0x90
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	movl	$1, %edi
	testl	%r13d, %r13d
	je	.LBB58_2
# %bb.52:                               #   in Loop: Header=BB58_1 Depth=1
	leaq	.L.str.52(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.32(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_56
# %bb.53:                               #   in Loop: Header=BB58_1 Depth=1
	movq	8(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.41(%rip), %rax
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
	je	.LBB58_56
# %bb.54:                               #   in Loop: Header=BB58_1 Depth=1
	movq	8(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB58_56
# %bb.55:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB58_56
# %bb.61:                               #   in Loop: Header=BB58_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_65
# %bb.62:                               #   in Loop: Header=BB58_1 Depth=1
	movq	16(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.41(%rip), %rax
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
	je	.LBB58_65
# %bb.63:                               #   in Loop: Header=BB58_1 Depth=1
	movq	16(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB58_65
# %bb.64:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB58_65
# %bb.69:                               #   in Loop: Header=BB58_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_73
# %bb.70:                               #   in Loop: Header=BB58_1 Depth=1
	movq	24(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.41(%rip), %rax
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
	je	.LBB58_73
# %bb.71:                               #   in Loop: Header=BB58_1 Depth=1
	movq	24(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB58_73
# %bb.72:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB58_73
# %bb.77:                               #   in Loop: Header=BB58_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_81
# %bb.78:                               #   in Loop: Header=BB58_1 Depth=1
	movq	32(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.41(%rip), %rax
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
	je	.LBB58_81
# %bb.79:                               #   in Loop: Header=BB58_1 Depth=1
	movq	32(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB58_81
# %bb.80:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB58_81
# %bb.85:                               #   in Loop: Header=BB58_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_89
# %bb.86:                               #   in Loop: Header=BB58_1 Depth=1
	movq	40(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.41(%rip), %rax
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
	je	.LBB58_89
# %bb.87:                               #   in Loop: Header=BB58_1 Depth=1
	movq	40(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB58_89
# %bb.88:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB58_89
# %bb.94:                               #   in Loop: Header=BB58_1 Depth=1
	movq	(%rbx), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%rbx), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_97
# %bb.95:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%rbx), %ecx
	orl	%eax, %ecx
	je	.LBB58_97
# %bb.96:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%rbx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB58_97
# %bb.98:                               #   in Loop: Header=BB58_1 Depth=1
	movl	$1, %r13d
	jmp	.LBB58_51
	.p2align	4, 0x90
.LBB58_56:                              #   in Loop: Header=BB58_1 Depth=1
	movq	8(%r12), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB58_57
.LBB58_93:                              #   in Loop: Header=BB58_1 Depth=1
	movl	$1, %r13d
	jmp	.LBB58_12
	.p2align	4, 0x90
.LBB58_2:                               #   in Loop: Header=BB58_1 Depth=1
	leaq	.L.str.39(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.32(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_5
# %bb.3:                                #   in Loop: Header=BB58_1 Depth=1
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
	je	.LBB58_5
# %bb.4:                                #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB58_5
# %bb.14:                               #   in Loop: Header=BB58_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_18
# %bb.15:                               #   in Loop: Header=BB58_1 Depth=1
	movq	80(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.41(%rip), %rax
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
	je	.LBB58_18
# %bb.16:                               #   in Loop: Header=BB58_1 Depth=1
	movq	80(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB58_18
# %bb.17:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB58_18
# %bb.22:                               #   in Loop: Header=BB58_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_26
# %bb.23:                               #   in Loop: Header=BB58_1 Depth=1
	movq	88(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.41(%rip), %rax
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
	je	.LBB58_26
# %bb.24:                               #   in Loop: Header=BB58_1 Depth=1
	movq	88(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB58_26
# %bb.25:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB58_26
# %bb.30:                               #   in Loop: Header=BB58_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_34
# %bb.31:                               #   in Loop: Header=BB58_1 Depth=1
	movq	96(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.41(%rip), %rax
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
	je	.LBB58_34
# %bb.32:                               #   in Loop: Header=BB58_1 Depth=1
	movq	96(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB58_34
# %bb.33:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB58_34
# %bb.38:                               #   in Loop: Header=BB58_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_42
# %bb.39:                               #   in Loop: Header=BB58_1 Depth=1
	movq	104(%r12), %rax
	movslq	(%rax), %rbp
	leaq	.L.str.41(%rip), %rax
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
	je	.LBB58_42
# %bb.40:                               #   in Loop: Header=BB58_1 Depth=1
	movq	104(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB58_42
# %bb.41:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB58_42
# %bb.46:                               #   in Loop: Header=BB58_1 Depth=1
	movq	(%rbx), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%rbx), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB58_49
# %bb.47:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%rbx), %ecx
	orl	%eax, %ecx
	je	.LBB58_49
# %bb.48:                               #   in Loop: Header=BB58_1 Depth=1
	movl	(%rbx), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%rbx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB58_49
# %bb.50:                               #   in Loop: Header=BB58_1 Depth=1
	xorl	%r13d, %r13d
.LBB58_51:                              #   in Loop: Header=BB58_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.51(%rip), %rsi
	jmp	.LBB58_13
	.p2align	4, 0x90
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	movq	72(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB58_11
	jmp	.LBB58_6
.LBB58_65:                              #   in Loop: Header=BB58_1 Depth=1
	movq	16(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB58_93
	jmp	.LBB58_66
.LBB58_18:                              #   in Loop: Header=BB58_1 Depth=1
	movq	80(%r12), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB58_19
.LBB58_11:                              #   in Loop: Header=BB58_1 Depth=1
	xorl	%r13d, %r13d
.LBB58_12:                              #   in Loop: Header=BB58_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.43(%rip), %rsi
.LBB58_13:                              #   in Loop: Header=BB58_1 Depth=1
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB58_1
.LBB58_73:                              #   in Loop: Header=BB58_1 Depth=1
	movq	24(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB58_93
	jmp	.LBB58_74
.LBB58_26:                              #   in Loop: Header=BB58_1 Depth=1
	movq	88(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB58_11
	jmp	.LBB58_27
.LBB58_81:                              #   in Loop: Header=BB58_1 Depth=1
	movq	32(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB58_93
	jmp	.LBB58_82
.LBB58_34:                              #   in Loop: Header=BB58_1 Depth=1
	movq	96(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB58_11
	jmp	.LBB58_35
.LBB58_89:                              #   in Loop: Header=BB58_1 Depth=1
	movq	40(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB58_93
	jmp	.LBB58_90
.LBB58_42:                              #   in Loop: Header=BB58_1 Depth=1
	movq	104(%r12), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB58_11
	jmp	.LBB58_43
.LBB58_97:                              #   in Loop: Header=BB58_1 Depth=1
	xorl	%edi, %edi
	callq	displayparty@PLT
	movl	$1, %r13d
	jmp	.LBB58_1
.LBB58_49:                              #   in Loop: Header=BB58_1 Depth=1
	movl	$1, %edi
	callq	displayparty@PLT
	xorl	%r13d, %r13d
	jmp	.LBB58_1
.LBB58_57:
	movapd	.LCPI58_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI58_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI58_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI58_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI58_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI58_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI58_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB58_58:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB58_58
# %bb.59:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	8(%r12), %rcx
.LBB58_60:
	movq	Temp@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movq	%rax, (%r12)
	jmp	.LBB58_10
.LBB58_6:
	movapd	.LCPI58_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI58_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI58_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI58_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI58_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI58_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI58_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB58_7:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB58_7
# %bb.8:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	72(%r12), %rcx
	jmp	.LBB58_9
.LBB58_66:
	movapd	.LCPI58_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI58_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI58_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI58_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI58_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI58_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI58_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB58_67:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB58_67
# %bb.68:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	16(%r12), %rcx
	jmp	.LBB58_60
.LBB58_19:
	movapd	.LCPI58_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI58_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI58_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI58_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI58_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI58_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI58_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB58_20:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB58_20
# %bb.21:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	80(%r12), %rcx
.LBB58_9:
	movq	Temp@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movq	%rax, 64(%r12)
.LBB58_10:
	movq	(%rax), %rdx
	leaq	.L.str.42(%rip), %rsi
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
.LBB58_74:
	.cfi_def_cfa_offset 64
	movapd	.LCPI58_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI58_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI58_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI58_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI58_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI58_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI58_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB58_75:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB58_75
# %bb.76:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	24(%r12), %rcx
	jmp	.LBB58_60
.LBB58_27:
	movapd	.LCPI58_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI58_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI58_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI58_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI58_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI58_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI58_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB58_28:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB58_28
# %bb.29:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	88(%r12), %rcx
	jmp	.LBB58_9
.LBB58_82:
	movapd	.LCPI58_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI58_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI58_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI58_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI58_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI58_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI58_6(%rip), %xmm5          # xmm5 = [8,8]
.LBB58_83:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB58_83
# %bb.84:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	32(%r12), %rcx
	jmp	.LBB58_60
.LBB58_35:
	movapd	.LCPI58_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI58_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI58_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI58_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI58_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI58_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI58_6(%rip), %xmm5          # xmm5 = [8,8]
.LBB58_36:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB58_36
# %bb.37:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	96(%r12), %rcx
	jmp	.LBB58_9
.LBB58_90:
	movapd	.LCPI58_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI58_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI58_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI58_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI58_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI58_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI58_6(%rip), %xmm5          # xmm5 = [8,8]
.LBB58_91:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB58_91
# %bb.92:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	40(%r12), %rcx
	jmp	.LBB58_60
.LBB58_43:
	movapd	.LCPI58_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%r12), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI58_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %ecx
	movdqa	.LCPI58_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI58_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI58_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI58_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI58_6(%rip), %xmm5          # xmm5 = [8,8]
.LBB58_44:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB58_44
# %bb.45:
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	pand	%xmm6, %xmm0
	movq	%xmm0, 48(%r12)
	leaq	104(%r12), %rcx
	jmp	.LBB58_9
.Lfunc_end58:
	.size	SwitchIn, .Lfunc_end58-SwitchIn
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
	je	.LBB59_1
# %bb.13:
	movq	EnemyCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	movq	(%rax), %rdx
	je	.LBB59_15
# %bb.14:
	movq	EnemyTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rcx
	addq	MoveList@GOTPCREL(%rip), %rcx
	leaq	.L.str.59(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	EnemyHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB59_18
	jmp	.LBB59_4
.LBB59_1:
	movq	PlayerCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	je	.LBB59_6
# %bb.2:
	movq	YourTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rcx
	addq	MoveList@GOTPCREL(%rip), %rcx
	leaq	.L.str.53(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB59_4
.LBB59_18:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB59_4:
	.cfi_def_cfa_offset 16
	leaq	.L.str.54(%rip), %rsi
	jmp	.LBB59_5
.LBB59_15:
	leaq	.L.str.60(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	EnemyPara@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB59_7
# %bb.16:
	movq	EnemySleep@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB59_9
# %bb.17:
	movq	EnemyFrozen@GOTPCREL(%rip), %rax
	jmp	.LBB59_11
.LBB59_6:
	leaq	.L.str.55(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerPara@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB59_8
.LBB59_7:
	leaq	.L.str.56(%rip), %rsi
	jmp	.LBB59_5
.LBB59_8:
	movq	PlayerSleep@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB59_10
.LBB59_9:
	leaq	.L.str.57(%rip), %rsi
	jmp	.LBB59_5
.LBB59_10:
	movq	PlayerFrozen@GOTPCREL(%rip), %rax
.LBB59_11:
	cmpb	$0, (%rax)
	je	.LBB59_18
# %bb.12:
	leaq	.L.str.58(%rip), %rsi
.LBB59_5:
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end59:
	.size	display_move, .Lfunc_end59-display_move
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function move_result
.LCPI60_0:
	.long	0x40000000                      # float 2
.LCPI60_1:
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
	je	.LBB60_1
# %bb.14:
	movq	EnemyHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB60_25
# %bb.15:
	movq	EnemyCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB60_25
# %bb.16:
	movq	EnemyTurn@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	MoveList@GOTPCREL(%rip), %rbx
	movzbl	18(%rbx,%rax), %eax
	shll	$16, %eax
	testl	$786432, %eax                   # imm = 0xC0000
	je	.LBB60_25
# %bb.17:
	movq	EnemyDamage@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	leaq	.L.str.61(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%rbx,%rax), %ecx
	movzbl	18(%rbx,%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	shrl	$13, %eax
	andl	$31, %eax
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	movq	(%rcx), %rcx
	movzwl	12(%rcx), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	shrq	$3, %rcx
	andl	$124, %ecx
	mulss	(%rcx,%rax), %xmm0
	ucomiss	.LCPI60_0(%rip), %xmm0
	jae	.LBB60_18
# %bb.19:
	movss	.LCPI60_1(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB60_22
# %bb.20:
	leaq	.L.str.63(%rip), %rsi
	jmp	.LBB60_21
.LBB60_1:
	movq	PlayerHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB60_12
# %bb.2:
	movq	PlayerCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB60_12
# %bb.3:
	movq	YourTurn@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	MoveList@GOTPCREL(%rip), %rbx
	movzbl	18(%rbx,%rax), %eax
	shll	$16, %eax
	testl	$786432, %eax                   # imm = 0xC0000
	je	.LBB60_12
# %bb.4:
	movq	Damage@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	leaq	.L.str.61(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%rbx,%rax), %ecx
	movzbl	18(%rbx,%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	shrl	$13, %eax
	andl	$31, %eax
	movq	Parties@GOTPCREL(%rip), %rbx
	movq	64(%rbx), %rcx
	movq	(%rcx), %rcx
	movzwl	12(%rcx), %ecx
	movl	%ecx, %edx
	andl	$31, %edx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	shrq	$3, %rcx
	andl	$124, %ecx
	mulss	(%rcx,%rax), %xmm0
	ucomiss	.LCPI60_0(%rip), %xmm0
	jae	.LBB60_5
# %bb.6:
	movss	.LCPI60_1(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB60_9
# %bb.7:
	leaq	.L.str.63(%rip), %rsi
	jmp	.LBB60_8
.LBB60_18:
	leaq	.L.str.62(%rip), %rsi
.LBB60_21:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB60_22:
	movq	EnemyCrit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB60_24
# %bb.23:
	leaq	.L.str.64(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB60_24:
	movq	(%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.67(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB60_25:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB60_28
# %bb.26:
	movq	(%rax), %rdx
	leaq	.L.str.68(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	callq	SwitchIn@PLT
	movq	PlayerDead@GOTPCREL(%rip), %rax
	jmp	.LBB60_27
.LBB60_5:
	leaq	.L.str.62(%rip), %rsi
.LBB60_8:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB60_9:
	movq	PlayerCrit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB60_11
# %bb.10:
	leaq	.L.str.64(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB60_11:
	movq	64(%rbx), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	48(%rax), %r8d
	leaq	.L.str.65(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB60_12:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB60_28
# %bb.13:
	movq	(%rax), %rdx
	leaq	.L.str.66(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	xorl	%edi, %edi
	callq	SwitchIn@PLT
	movq	EnemyDead@GOTPCREL(%rip), %rax
.LBB60_27:
	movb	$1, (%rax)
.LBB60_28:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end60:
	.size	move_result, .Lfunc_end60-move_result
	.cfi_endproc
                                        # -- End function
	.globl	DBOG                            # -- Begin function DBOG
	.p2align	4, 0x90
	.type	DBOG,@function
DBOG:                                   # @DBOG
	.cfi_startproc
# %bb.0:
	testl	%edi, %edi
	je	.LBB61_1
# %bb.2:
	movq	EnemyDamage@GOTPCREL(%rip), %rax
	jmp	.LBB61_3
.LBB61_1:
	movq	Damage@GOTPCREL(%rip), %rax
.LBB61_3:
	xorb	$1, %dil
	movzbl	%dil, %ecx
	shlq	$6, %rcx
	movq	Parties@GOTPCREL(%rip), %rdx
	movq	(%rdx,%rcx), %rcx
	movl	12(%rcx), %ecx
	cmpl	(%rax), %ecx
	jae	.LBB61_5
# %bb.4:
	movl	%ecx, (%rax)
.LBB61_5:
	retq
.Lfunc_end61:
	.size	DBOG, .Lfunc_end61-DBOG
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function ExecuteMove
.LCPI62_0:
	.zero	8
	.quad	-1                              # 0xffffffffffffffff
.LCPI62_1:
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
.LCPI62_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI62_3:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI62_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI62_5:
	.quad	6                               # 0x6
	.quad	6                               # 0x6
.LCPI62_6:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
.LCPI62_12:
	.quad	0x3ff8000000000000              # double 1.5
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI62_7:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI62_8:
	.quad	0x3ff0000000000000              # double 1
.LCPI62_9:
	.quad	0x4049000000000000              # double 50
.LCPI62_10:
	.quad	0x4000000000000000              # double 2
.LCPI62_11:
	.quad	0x4059000000000000              # double 100
	.text
	.globl	ExecuteMove
	.p2align	4, 0x90
	.type	ExecuteMove,@function
ExecuteMove:                            # @ExecuteMove
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	testl	%edi, %edi
	je	.LBB62_1
# %bb.73:
	movq	EnemyDead@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB62_138
# %bb.74:
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB62_75
# %bb.133:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	64(%rax), %rcx
	cmpb	$5, 73(%rcx)
	jne	.LBB62_135
# %bb.134:
	movb	$0, 72(%rcx)
.LBB62_135:
	movq	$0, 138(%rax)
	movapd	.LCPI62_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%rax), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI62_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %edx
	movdqa	.LCPI62_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI62_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI62_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI62_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI62_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB62_136:                             # =>This Inner Loop Header: Depth=1
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
	jne	.LBB62_136
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
	leaq	.L.str.74(%rip), %rsi
	jmp	.LBB62_71
.LBB62_1:
	movq	PlayerDead@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB62_2
.LBB62_138:
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB62_2:
	.cfi_def_cfa_offset 64
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB62_3
# %bb.66:
	movq	Parties@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	cmpb	$5, 73(%rcx)
	jne	.LBB62_68
# %bb.67:
	movb	$0, 72(%rcx)
.LBB62_68:
	movq	$0, 74(%rax)
	movapd	.LCPI62_0(%rip), %xmm6          # xmm6 = <u,18446744073709551615>
	movlpd	48(%rax), %xmm6                 # xmm6 = mem[0],xmm6[1]
	movdqa	.LCPI62_1(%rip), %xmm0          # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$64, %edx
	movdqa	.LCPI62_2(%rip), %xmm3          # xmm3 = [1,1]
	movdqa	.LCPI62_3(%rip), %xmm8          # xmm8 = [2,2]
	movdqa	.LCPI62_4(%rip), %xmm9          # xmm9 = [4,4]
	movdqa	.LCPI62_5(%rip), %xmm4          # xmm4 = [6,6]
	movdqa	.LCPI62_6(%rip), %xmm5          # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB62_69:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB62_69
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
	leaq	.L.str.71(%rip), %rsi
.LBB62_71:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB62_72:
	leaq	.L.str.32(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.LBB62_75:
	.cfi_def_cfa_offset 64
	callq	rand@PLT
	cmpl	$2147483601, %eax               # imm = 0x7FFFFFD1
	jb	.LBB62_77
	.p2align	4, 0x90
.LBB62_76:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483600, %eax               # imm = 0x7FFFFFD0
	ja	.LBB62_76
.LBB62_77:
	movl	%eax, %ecx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movq	EnemyTurn@GOTPCREL(%rip), %r14
	movq	(%r14), %rcx
	movzbl	(%rcx), %ecx
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	MoveList@GOTPCREL(%rip), %r15
	movzwl	16(%r15,%rcx), %ecx
	andl	$127, %ecx
	movq	Parties@GOTPCREL(%rip), %r13
	movq	(%r13), %rdx
	movq	64(%r13), %rsi
	movsbl	79(%rsi), %esi
	cvtsi2sd	%esi, %xmm2
	movsbl	80(%rdx), %edx
	testl	%edx, %edx
	js	.LBB62_79
# %bb.78:
	cvtsi2sd	%edx, %xmm3
	mulsd	.LCPI62_7(%rip), %xmm3
	addsd	.LCPI62_8(%rip), %xmm3
	jmp	.LBB62_80
.LBB62_3:
	callq	rand@PLT
	cmpl	$2147483601, %eax               # imm = 0x7FFFFFD1
	jb	.LBB62_5
	.p2align	4, 0x90
.LBB62_4:                               # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483600, %eax               # imm = 0x7FFFFFD0
	ja	.LBB62_4
.LBB62_5:
	movl	%eax, %ecx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movq	YourTurn@GOTPCREL(%rip), %r14
	movq	(%r14), %rcx
	movzbl	(%rcx), %ecx
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	MoveList@GOTPCREL(%rip), %r15
	movzwl	16(%r15,%rcx), %ecx
	andl	$127, %ecx
	movq	Parties@GOTPCREL(%rip), %r13
	movq	(%r13), %rdx
	movq	64(%r13), %rsi
	movsbl	79(%rdx), %edx
	cvtsi2sd	%edx, %xmm2
	movsbl	80(%rsi), %edx
	testl	%edx, %edx
	js	.LBB62_7
# %bb.6:
	cvtsi2sd	%edx, %xmm3
	mulsd	.LCPI62_7(%rip), %xmm3
	addsd	.LCPI62_8(%rip), %xmm3
	jmp	.LBB62_8
.LBB62_79:
	negl	%edx
	cvtsi2sd	%edx, %xmm0
	mulsd	.LCPI62_7(%rip), %xmm0
	movsd	.LCPI62_8(%rip), %xmm3          # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm0
	divsd	%xmm0, %xmm3
.LBB62_80:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	cvtsi2sd	%ecx, %xmm1
	divsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	testb	%al, %al
	js	.LBB62_82
# %bb.81:
	movsbl	%al, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	mulsd	.LCPI62_7(%rip), %xmm2
	addsd	.LCPI62_8(%rip), %xmm2
	jmp	.LBB62_83
.LBB62_7:
	negl	%edx
	cvtsi2sd	%edx, %xmm0
	mulsd	.LCPI62_7(%rip), %xmm0
	movsd	.LCPI62_8(%rip), %xmm3          # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm0
	divsd	%xmm0, %xmm3
.LBB62_8:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	cvtsi2sd	%ecx, %xmm1
	divsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	testb	%al, %al
	js	.LBB62_10
# %bb.9:
	movsbl	%al, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	mulsd	.LCPI62_7(%rip), %xmm2
	addsd	.LCPI62_8(%rip), %xmm2
	jmp	.LBB62_11
.LBB62_82:
	movsbl	%al, %eax
	negl	%eax
	xorps	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	mulsd	.LCPI62_7(%rip), %xmm3
	movsd	.LCPI62_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB62_83:
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	movq	EnemyHit@GOTPCREL(%rip), %rbx
	seta	(%rbx)
	callq	rand@PLT
	cmpl	$2147483617, %eax               # imm = 0x7FFFFFE1
	jb	.LBB62_85
	.p2align	4, 0x90
.LBB62_84:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483616, %eax               # imm = 0x7FFFFFE0
	ja	.LBB62_84
.LBB62_85:
	andl	$31, %eax
	movq	64(%r13), %rcx
	movb	81(%rcx), %dl
	notb	%dl
	shrb	$7, %dl
	movzbl	%dl, %edx
	cmpl	%edx, %eax
	movq	EnemyCrit@GOTPCREL(%rip), %r12
	setb	(%r12)
	movb	73(%rcx), %al
	addb	$-1, %al
	cmpb	$5, %al
	ja	.LBB62_105
# %bb.86:
	movzbl	%al, %eax
	leaq	.LJTI62_1(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmpq	*%rax
.LBB62_89:
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzbl	18(%r15,%rax), %eax
	andl	$12, %eax
	shll	$16, %eax
	cmpl	$262144, %eax                   # imm = 0x40000
	jne	.LBB62_105
# %bb.90:
	movq	EnemyTM@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	mulsd	.LCPI62_7(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.LBB62_105
.LBB62_10:
	movsbl	%al, %eax
	negl	%eax
	xorps	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	mulsd	.LCPI62_7(%rip), %xmm3
	movsd	.LCPI62_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB62_11:
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	movq	PlayerHit@GOTPCREL(%rip), %rbx
	seta	(%rbx)
	callq	rand@PLT
	cmpl	$2147483617, %eax               # imm = 0x7FFFFFE1
	jb	.LBB62_13
	.p2align	4, 0x90
.LBB62_12:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483616, %eax               # imm = 0x7FFFFFE0
	ja	.LBB62_12
.LBB62_13:
	andl	$31, %eax
	movq	(%r13), %rcx
	movb	81(%rcx), %dl
	notb	%dl
	shrb	$7, %dl
	movzbl	%dl, %edx
	cmpl	%edx, %eax
	movq	PlayerCrit@GOTPCREL(%rip), %r12
	setb	(%r12)
	movb	73(%rcx), %al
	addb	$-1, %al
	cmpb	$5, %al
	ja	.LBB62_33
# %bb.14:
	movzbl	%al, %eax
	leaq	.LJTI62_0(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmpq	*%rax
.LBB62_17:
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzbl	18(%r15,%rax), %eax
	andl	$12, %eax
	shll	$16, %eax
	cmpl	$262144, %eax                   # imm = 0x40000
	jne	.LBB62_33
# %bb.18:
	movq	PlayerTM@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	mulsd	.LCPI62_7(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.LBB62_33
.LBB62_87:
	callq	rand@PLT
	movq	EnemyPara@GOTPCREL(%rip), %rcx
	testb	$3, %al
	sete	(%rcx)
	jne	.LBB62_105
	jmp	.LBB62_88
.LBB62_91:
	movb	72(%rcx), %al
	testb	%al, %al
	je	.LBB62_92
# %bb.93:
	cmpb	$3, %al
	ja	.LBB62_99
# %bb.94:
	callq	rand@PLT
	cmpl	$2147483647, %eax               # imm = 0x7FFFFFFF
	jb	.LBB62_96
.LBB62_95:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	ja	.LBB62_95
.LBB62_96:
	imull	$-1431655765, %eax, %eax        # imm = 0xAAAAAAAB
	movq	64(%r13), %rcx
	cmpl	$1431655766, %eax               # imm = 0x55555556
	jb	.LBB62_99
# %bb.97:
	movb	72(%rcx), %al
	addb	$1, %al
	jmp	.LBB62_98
.LBB62_100:
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	jb	.LBB62_102
	.p2align	4, 0x90
.LBB62_101:                             # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483645, %eax               # imm = 0x7FFFFFFD
	ja	.LBB62_101
.LBB62_102:
	movl	%eax, %ecx
	movl	$3435973837, %edx               # imm = 0xCCCCCCCD
	imulq	%rcx, %rdx
	shrq	$34, %rdx
	leal	(%rdx,%rdx,4), %ecx
	movq	EnemyFrozen@GOTPCREL(%rip), %rdx
	cmpl	%ecx, %eax
	setne	(%rdx)
	je	.LBB62_103
.LBB62_88:
	movq	EnemyCanMove@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	jmp	.LBB62_105
.LBB62_15:
	callq	rand@PLT
	movq	PlayerPara@GOTPCREL(%rip), %rcx
	testb	$3, %al
	sete	(%rcx)
	jne	.LBB62_33
	jmp	.LBB62_16
.LBB62_19:
	movb	72(%rcx), %al
	testb	%al, %al
	je	.LBB62_20
# %bb.21:
	cmpb	$3, %al
	ja	.LBB62_27
# %bb.22:
	callq	rand@PLT
	cmpl	$2147483647, %eax               # imm = 0x7FFFFFFF
	jb	.LBB62_24
.LBB62_23:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	ja	.LBB62_23
.LBB62_24:
	imull	$-1431655765, %eax, %eax        # imm = 0xAAAAAAAB
	movq	(%r13), %rcx
	cmpl	$1431655766, %eax               # imm = 0x55555556
	jb	.LBB62_27
# %bb.25:
	movb	72(%rcx), %al
	addb	$1, %al
	jmp	.LBB62_26
.LBB62_28:
	callq	rand@PLT
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	jb	.LBB62_30
	.p2align	4, 0x90
.LBB62_29:                              # =>This Inner Loop Header: Depth=1
	callq	rand@PLT
	cmpl	$2147483645, %eax               # imm = 0x7FFFFFFD
	ja	.LBB62_29
.LBB62_30:
	movl	%eax, %ecx
	movl	$3435973837, %edx               # imm = 0xCCCCCCCD
	imulq	%rcx, %rdx
	shrq	$34, %rdx
	leal	(%rdx,%rdx,4), %ecx
	movq	PlayerFrozen@GOTPCREL(%rip), %rdx
	cmpl	%ecx, %eax
	setne	(%rdx)
	je	.LBB62_31
.LBB62_16:
	movq	PlayerCanMove@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	jmp	.LBB62_33
.LBB62_99:
	movq	EnemySleep@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movw	$0, 72(%rcx)
	movq	(%rcx), %rdx
	leaq	.L.str.72(%rip), %rsi
	jmp	.LBB62_104
.LBB62_27:
	movq	PlayerSleep@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movw	$0, 72(%rcx)
	movq	(%rcx), %rdx
	leaq	.L.str.69(%rip), %rsi
	jmp	.LBB62_32
.LBB62_92:
	movb	$1, %al
.LBB62_98:
	movq	EnemyCanMove@GOTPCREL(%rip), %rdx
	movb	$0, (%rdx)
	movq	EnemySleep@GOTPCREL(%rip), %rdx
	movb	$1, (%rdx)
	movb	%al, 72(%rcx)
	jmp	.LBB62_105
.LBB62_103:
	movq	64(%r13), %rax
	movb	$0, 73(%rax)
	movq	(%rax), %rdx
	leaq	.L.str.73(%rip), %rsi
.LBB62_104:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB62_105:
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movl	$3, %edi
	movl	$1, %esi
	callq	*19(%r15,%rax)
	movl	$1, %edi
	callq	display_move@PLT
	movq	64(%r13), %rdx
	cmpl	$0, 12(%rdx)
	jle	.LBB62_72
# %bb.106:
	cmpb	$0, (%rbx)
	je	.LBB62_72
# %bb.107:
	movq	EnemyCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB62_72
# %bb.108:
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rcx
	movzwl	16(%r15,%rcx), %edi
	movzbl	18(%r15,%rcx), %esi
	movl	%esi, %eax
	shll	$16, %eax
	orl	%edi, %eax
	shrb	$2, %sil
	andb	$3, %sil
	cmpb	$2, %sil
	je	.LBB62_127
# %bb.109:
	cmpb	$1, %sil
	je	.LBB62_112
# %bb.110:
	testb	%sil, %sil
	jne	.LBB62_72
# %bb.111:
	movl	$1, %edi
	movl	$1, %esi
	callq	*19(%r15,%rcx)
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
	jmp	.LBB62_126
.LBB62_127:
	movb	8(%rdx), %bl
	addb	%bl, %bl
	movzbl	%bl, %esi
	imull	$205, %esi, %esi
	shrl	$10, %esi
	addb	$2, %sil
	movb	(%r12), %r9b
	testb	%r9b, %r9b
	sete	%r8b
	movsbl	76(%rdx), %edi
	testl	%edi, %edi
	setns	%bl
	orb	%r8b, %bl
	movzbl	%sil, %r8d
	movl	60(%rdx), %edx
	testl	%edi, %edi
	js	.LBB62_129
# %bb.128:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edi, %xmm0
	mulsd	.LCPI62_7(%rip), %xmm0
	addsd	.LCPI62_8(%rip), %xmm0
	jmp	.LBB62_130
.LBB62_112:
	movb	8(%rdx), %bl
	addb	%bl, %bl
	movzbl	%bl, %esi
	imull	$205, %esi, %esi
	shrl	$10, %esi
	addb	$2, %sil
	movb	(%r12), %r9b
	testb	%r9b, %r9b
	sete	%r8b
	movsbl	74(%rdx), %edi
	testl	%edi, %edi
	setns	%bl
	orb	%r8b, %bl
	movzbl	%sil, %r8d
	movl	52(%rdx), %edx
	testl	%edi, %edi
	js	.LBB62_114
# %bb.113:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edi, %xmm0
	mulsd	.LCPI62_7(%rip), %xmm0
	addsd	.LCPI62_8(%rip), %xmm0
	jmp	.LBB62_115
.LBB62_20:
	movb	$1, %al
.LBB62_26:
	movq	PlayerCanMove@GOTPCREL(%rip), %rdx
	movb	$0, (%rdx)
	movq	PlayerSleep@GOTPCREL(%rip), %rdx
	movb	$1, (%rdx)
	movb	%al, 72(%rcx)
	jmp	.LBB62_33
.LBB62_31:
	movq	(%r13), %rax
	movb	$0, 73(%rax)
	movq	(%rax), %rdx
	leaq	.L.str.70(%rip), %rsi
.LBB62_32:
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB62_33:
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movl	$3, %edi
	movl	$1, %esi
	callq	*19(%r15,%rax)
	xorl	%edi, %edi
	callq	display_move@PLT
	movq	(%r13), %rdx
	cmpl	$0, 12(%rdx)
	jle	.LBB62_72
# %bb.34:
	cmpb	$0, (%rbx)
	je	.LBB62_72
# %bb.35:
	movq	PlayerCanMove@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB62_72
# %bb.36:
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rcx
	movzwl	16(%r15,%rcx), %edi
	movzbl	18(%r15,%rcx), %esi
	movl	%esi, %eax
	shll	$16, %eax
	orl	%edi, %eax
	shrb	$2, %sil
	andb	$3, %sil
	cmpb	$2, %sil
	je	.LBB62_55
# %bb.37:
	cmpb	$1, %sil
	je	.LBB62_40
# %bb.38:
	testb	%sil, %sil
	jne	.LBB62_72
# %bb.39:
	movl	$1, %edi
	xorl	%esi, %esi
	callq	*19(%r15,%rcx)
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
	jmp	.LBB62_54
.LBB62_55:
	movb	8(%rdx), %bl
	addb	%bl, %bl
	movzbl	%bl, %esi
	imull	$205, %esi, %esi
	shrl	$10, %esi
	addb	$2, %sil
	movb	(%r12), %r9b
	testb	%r9b, %r9b
	sete	%r8b
	movsbl	76(%rdx), %edi
	testl	%edi, %edi
	setns	%bl
	orb	%r8b, %bl
	movzbl	%sil, %r8d
	movl	60(%rdx), %edx
	testl	%edi, %edi
	js	.LBB62_57
# %bb.56:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edi, %xmm0
	mulsd	.LCPI62_7(%rip), %xmm0
	addsd	.LCPI62_8(%rip), %xmm0
	jmp	.LBB62_58
.LBB62_40:
	movb	8(%rdx), %bl
	addb	%bl, %bl
	movzbl	%bl, %esi
	imull	$205, %esi, %esi
	shrl	$10, %esi
	addb	$2, %sil
	movb	(%r12), %r9b
	testb	%r9b, %r9b
	sete	%r8b
	movsbl	74(%rdx), %edi
	testl	%edi, %edi
	setns	%bl
	orb	%r8b, %bl
	movzbl	%sil, %r8d
	movl	52(%rdx), %edx
	testl	%edi, %edi
	js	.LBB62_42
# %bb.41:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edi, %xmm0
	mulsd	.LCPI62_7(%rip), %xmm0
	addsd	.LCPI62_8(%rip), %xmm0
	jmp	.LBB62_43
.LBB62_129:
	negl	%edi
	cvtsi2sd	%edi, %xmm1
	mulsd	.LCPI62_7(%rip), %xmm1
	movsd	.LCPI62_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB62_130:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r8d, %xmm1
	cvtsi2sd	%rdx, %xmm2
	testb	%r9b, %r9b
	sete	%dl
	testb	%bl, %bl
	jne	.LBB62_132
# %bb.131:
	movsd	.LCPI62_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB62_132:
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
	jmp	.LBB62_118
.LBB62_114:
	negl	%edi
	cvtsi2sd	%edi, %xmm1
	mulsd	.LCPI62_7(%rip), %xmm1
	movsd	.LCPI62_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB62_115:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r8d, %xmm1
	cvtsi2sd	%rdx, %xmm2
	testb	%r9b, %r9b
	sete	%dl
	testb	%bl, %bl
	jne	.LBB62_117
# %bb.116:
	movsd	.LCPI62_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB62_117:
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
.LBB62_118:
	testl	%edi, %edi
	js	.LBB62_120
# %bb.119:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edi, %xmm2
	mulsd	.LCPI62_7(%rip), %xmm2
	addsd	.LCPI62_8(%rip), %xmm2
	jmp	.LBB62_121
.LBB62_120:
	negl	%edi
	cvtsi2sd	%edi, %xmm3
	mulsd	.LCPI62_7(%rip), %xmm3
	movsd	.LCPI62_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB62_121:
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rcx, %xmm1
	testb	%dl, %dl
	jne	.LBB62_123
# %bb.122:
	movsd	.LCPI62_8(%rip), %xmm2          # xmm2 = mem[0],zero
.LBB62_123:
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	divsd	.LCPI62_9(%rip), %xmm0
	addsd	.LCPI62_10(%rip), %xmm0
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
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
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
	mulsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	divsd	.LCPI62_11(%rip), %xmm0
	movq	EnemyTM@GOTPCREL(%rip), %rax
	mulsd	(%rax), %xmm0
	xorl	%eax, %eax
	cmpb	$0, (%r12)
	sete	%al
	leaq	.LCPI62_12(%rip), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	EnemyDamage@GOTPCREL(%rip), %r12
	movl	%eax, (%r12)
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movl	$1, %edi
	movl	$1, %esi
	callq	*19(%r15,%rax)
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
	movq	(%r13), %rax
	movl	12(%rax), %ecx
	movl	(%r12), %edx
	cmpl	%edx, %ecx
	jae	.LBB62_125
# %bb.124:
	movl	%ecx, (%r12)
	movl	%ecx, %edx
.LBB62_125:
	subl	%edx, %ecx
	movl	%ecx, 12(%rax)
.LBB62_126:
	movq	(%r14), %rax
	movb	1(%rax), %cl
	leal	-1(%rcx), %edx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 1(%rax)
	movl	$1, %edi
	callq	move_result@PLT
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movl	$2, %edi
	movl	$1, %esi
	callq	*19(%r15,%rax)
	jmp	.LBB62_72
.LBB62_57:
	negl	%edi
	cvtsi2sd	%edi, %xmm1
	mulsd	.LCPI62_7(%rip), %xmm1
	movsd	.LCPI62_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB62_58:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r8d, %xmm1
	cvtsi2sd	%rdx, %xmm2
	testb	%r9b, %r9b
	sete	%dl
	testb	%bl, %bl
	jne	.LBB62_60
# %bb.59:
	movsd	.LCPI62_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB62_60:
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
	js	.LBB62_62
# %bb.61:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edi, %xmm2
	mulsd	.LCPI62_7(%rip), %xmm2
	addsd	.LCPI62_8(%rip), %xmm2
	jmp	.LBB62_63
.LBB62_42:
	negl	%edi
	cvtsi2sd	%edi, %xmm1
	mulsd	.LCPI62_7(%rip), %xmm1
	movsd	.LCPI62_8(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB62_43:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r8d, %xmm1
	cvtsi2sd	%rdx, %xmm2
	testb	%r9b, %r9b
	sete	%dl
	testb	%bl, %bl
	jne	.LBB62_45
# %bb.44:
	movsd	.LCPI62_8(%rip), %xmm0          # xmm0 = mem[0],zero
.LBB62_45:
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
	js	.LBB62_47
# %bb.46:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edi, %xmm2
	mulsd	.LCPI62_7(%rip), %xmm2
	addsd	.LCPI62_8(%rip), %xmm2
	jmp	.LBB62_48
.LBB62_62:
	negl	%edi
	cvtsi2sd	%edi, %xmm3
	mulsd	.LCPI62_7(%rip), %xmm3
	movsd	.LCPI62_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB62_63:
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rcx, %xmm1
	testb	%dl, %dl
	jne	.LBB62_65
# %bb.64:
	movsd	.LCPI62_8(%rip), %xmm2          # xmm2 = mem[0],zero
.LBB62_65:
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	divsd	.LCPI62_9(%rip), %xmm0
	addsd	.LCPI62_10(%rip), %xmm0
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
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	jmp	.LBB62_51
.LBB62_47:
	negl	%edi
	cvtsi2sd	%edi, %xmm3
	mulsd	.LCPI62_7(%rip), %xmm3
	movsd	.LCPI62_8(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm2
.LBB62_48:
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rcx, %xmm1
	testb	%dl, %dl
	jne	.LBB62_50
# %bb.49:
	movsd	.LCPI62_8(%rip), %xmm2          # xmm2 = mem[0],zero
.LBB62_50:
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	divsd	.LCPI62_9(%rip), %xmm0
	addsd	.LCPI62_10(%rip), %xmm0
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
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
.LBB62_51:
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
	mulsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	divsd	.LCPI62_11(%rip), %xmm0
	movq	PlayerTM@GOTPCREL(%rip), %rax
	mulsd	(%rax), %xmm0
	xorl	%eax, %eax
	cmpb	$0, (%r12)
	sete	%al
	leaq	.LCPI62_12(%rip), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	Damage@GOTPCREL(%rip), %r12
	movl	%eax, (%r12)
	movq	(%r14), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movl	$1, %edi
	xorl	%esi, %esi
	callq	*19(%r15,%rax)
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
	movq	64(%r13), %rax
	movl	12(%rax), %ecx
	movl	(%r12), %edx
	cmpl	%edx, %ecx
	jae	.LBB62_53
# %bb.52:
	movl	%ecx, (%r12)
	movl	%ecx, %edx
.LBB62_53:
	subl	%edx, %ecx
	movl	%ecx, 12(%rax)
.LBB62_54:
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movl	$2, %edi
	xorl	%esi, %esi
	callq	*19(%r15,%rax)
	jmp	.LBB62_72
.Lfunc_end62:
	.size	ExecuteMove, .Lfunc_end62-ExecuteMove
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI62_0:
	.long	.LBB62_17-.LJTI62_0
	.long	.LBB62_33-.LJTI62_0
	.long	.LBB62_15-.LJTI62_0
	.long	.LBB62_19-.LJTI62_0
	.long	.LBB62_33-.LJTI62_0
	.long	.LBB62_28-.LJTI62_0
.LJTI62_1:
	.long	.LBB62_89-.LJTI62_1
	.long	.LBB62_105-.LJTI62_1
	.long	.LBB62_87-.LJTI62_1
	.long	.LBB62_91-.LJTI62_1
	.long	.LBB62_105-.LJTI62_1
	.long	.LBB62_100-.LJTI62_1
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function endturn
.LCPI63_0:
	.quad	0x3fb0000000000000              # double 0.0625
.LCPI63_1:
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
	je	.LBB63_6
# %bb.1:
	movq	64(%rbx), %rax
	movb	73(%rax), %cl
	cmpb	$5, %cl
	je	.LBB63_11
# %bb.2:
	cmpb	$2, %cl
	je	.LBB63_14
# %bb.3:
	cmpb	$1, %cl
	jne	.LBB63_27
# %bb.4:
	movl	48(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB63_21
# %bb.5:
	movsd	.LCPI63_1(%rip), %xmm0          # xmm0 = mem[0],zero
	leaq	.L.str.79(%rip), %rsi
	jmp	.LBB63_26
.LBB63_6:
	movq	(%rbx), %rax
	movb	73(%rax), %cl
	cmpb	$5, %cl
	je	.LBB63_16
# %bb.7:
	cmpb	$2, %cl
	je	.LBB63_19
# %bb.8:
	cmpb	$1, %cl
	jne	.LBB63_33
# %bb.9:
	movl	48(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB63_22
# %bb.10:
	movsd	.LCPI63_1(%rip), %xmm0          # xmm0 = mem[0],zero
	jmp	.LBB63_23
.LBB63_11:
	movb	72(%rax), %cl
	cmpb	$15, %cl
	ja	.LBB63_13
# %bb.12:
	addb	$1, %cl
	movb	%cl, 72(%rax)
.LBB63_13:
	movl	48(%rax), %edx
	cvtsi2sd	%rdx, %xmm1
	movzbl	%cl, %ecx
	cvtsi2sd	%ecx, %xmm0
	mulsd	.LCPI63_0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	maxsd	.LCPI63_1(%rip), %xmm0
	leaq	.L.str.81(%rip), %rsi
	jmp	.LBB63_26
.LBB63_14:
	movl	48(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB63_24
# %bb.15:
	movsd	.LCPI63_1(%rip), %xmm0          # xmm0 = mem[0],zero
	jmp	.LBB63_25
.LBB63_16:
	movb	72(%rax), %cl
	cmpb	$15, %cl
	ja	.LBB63_18
# %bb.17:
	addb	$1, %cl
	movb	%cl, 72(%rax)
.LBB63_18:
	movl	48(%rax), %edx
	cvtsi2sd	%rdx, %xmm0
	movzbl	%cl, %ecx
	cvtsi2sd	%ecx, %xmm1
	mulsd	.LCPI63_0(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	maxsd	.LCPI63_1(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	12(%rax), %xmm0
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 12(%rax)
	movq	64(%rbx), %rax
	leaq	.L.str.77(%rip), %rsi
	jmp	.LBB63_32
.LBB63_19:
	movl	48(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB63_30
# %bb.20:
	movsd	.LCPI63_1(%rip), %xmm0          # xmm0 = mem[0],zero
	jmp	.LBB63_31
.LBB63_21:
	shrl	$3, %ecx
	cvtsi2sd	%ecx, %xmm0
	leaq	.L.str.79(%rip), %rsi
	jmp	.LBB63_26
.LBB63_22:
	shrl	$3, %ecx
	cvtsi2sd	%ecx, %xmm0
.LBB63_23:
	cvtsi2sdl	12(%rax), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 12(%rax)
	leaq	.L.str.75(%rip), %rsi
	jmp	.LBB63_32
.LBB63_24:
	shrl	$3, %ecx
	cvtsi2sd	%ecx, %xmm0
.LBB63_25:
	leaq	.L.str.80(%rip), %rsi
.LBB63_26:
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
.LBB63_27:
	movq	64(%rbx), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB63_29
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
.LBB63_29:
	.cfi_def_cfa_offset 16
	movq	(%rax), %rdx
	leaq	.L.str.66(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	xorl	%edi, %edi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	SwitchIn@PLT                    # TAILCALL
.LBB63_30:
	.cfi_def_cfa_offset 16
	shrl	$3, %ecx
	cvtsi2sd	%ecx, %xmm0
.LBB63_31:
	cvtsi2sdl	12(%rax), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 12(%rax)
	leaq	.L.str.76(%rip), %rsi
.LBB63_32:
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
.LBB63_33:
	movq	(%rbx), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB63_35
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
.LBB63_35:
	.cfi_def_cfa_offset 16
	movq	(%rax), %rdx
	leaq	.L.str.78(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	callq	SwitchIn@PLT
	leaq	.L.str.32(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT                # TAILCALL
.Lfunc_end63:
	.size	endturn, .Lfunc_end63-endturn
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function Battle
.LCPI64_0:
	.long	31                              # 0x1f
	.long	31                              # 0x1f
	.long	31                              # 0x1f
	.long	31                              # 0x1f
.LCPI64_1:
	.zero	16,63
.LCPI64_2:
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
.LCPI64_3:
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
.LCPI64_4:
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
.LCPI64_5:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI64_9:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff8000000000000              # double 1.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI64_6:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI64_7:
	.quad	0x3ff0000000000000              # double 1
.LCPI64_8:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI64_10:
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
	je	.LBB64_4
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
	movd	8(%rdx), %xmm2                  # xmm2 = mem[0],zero,zero,zero
	movl	$127, %esi
	movd	%esi, %xmm13
	pand	%xmm13, %xmm2
	punpcklbw	%xmm2, %xmm2            # xmm2 = xmm2[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	pshufd	$64, %xmm2, %xmm1               # xmm1 = xmm2[0,0,0,1]
	movd	%xmm2, %esi
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
	xorps	%xmm2, %xmm2
	cvtsi2ss	%esi, %xmm2
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
	movdqa	.LCPI64_0(%rip), %xmm8          # xmm8 = [31,31,31,31]
	pand	%xmm8, %xmm2
	movd	16(%rcx), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm3            # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm3, %xmm3            # xmm3 = xmm3[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm3
	paddd	%xmm3, %xmm3
	movd	42(%rdx), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	psrlw	$2, %xmm4
	movdqa	.LCPI64_1(%rip), %xmm9          # xmm9 = [63,63,63,63,63,63,63,63,63,63,63,63,63,63,63,63]
	pand	%xmm9, %xmm4
	punpcklbw	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	paddd	%xmm2, %xmm4
	paddd	%xmm3, %xmm4
	packssdw	%xmm4, %xmm4
	packuswb	%xmm1, %xmm1
	movdqa	%xmm4, %xmm2
	pmulhw	%xmm1, %xmm2
	pmullw	%xmm4, %xmm1
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movdqa	.LCPI64_2(%rip), %xmm3          # xmm3 = [1374389535,1374389535,1374389535,1374389535]
	pshufd	$245, %xmm1, %xmm2              # xmm2 = xmm1[1,1,3,3]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm1, %xmm4
	pmuludq	%xmm3, %xmm1
	pshufd	$237, %xmm1, %xmm1              # xmm1 = xmm1[1,3,2,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$237, %xmm2, %xmm2              # xmm2 = xmm2[1,3,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	pand	%xmm3, %xmm4
	psubd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm2
	psrld	$31, %xmm2
	psrad	$5, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	.LCPI64_3(%rip), %xmm10         # xmm10 = [5,5,5,5]
	paddd	%xmm10, %xmm1
	cvtdq2ps	%xmm1, %xmm1
	movups	4(%r8,%rsi), %xmm2
	mulps	%xmm1, %xmm2
	movaps	.LCPI64_4(%rip), %xmm12         # xmm12 = [2.14748365E+9,2.14748365E+9,2.14748365E+9,2.14748365E+9]
	movaps	%xmm2, %xmm1
	cmpltps	%xmm12, %xmm1
	cvttps2dq	%xmm2, %xmm7
	andps	%xmm1, %xmm7
	subps	%xmm12, %xmm2
	cvttps2dq	%xmm2, %xmm2
	movaps	.LCPI64_5(%rip), %xmm11         # xmm11 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm11, %xmm2
	andnps	%xmm2, %xmm1
	orps	%xmm7, %xmm1
	movups	%xmm1, 56(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	MoveList@GOTPCREL(%rip), %r9
	movzwl	16(%r9,%rax), %eax
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
	movsd	.LCPI64_6(%rip), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm4
	movsd	.LCPI64_7(%rip), %xmm2          # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm4
	cvtsd2ss	%xmm4, %xmm4
	mulss	%xmm7, %xmm4
	cvttss2si	%xmm4, %rax
	andb	$63, %al
	andb	$-64, %bl
	orb	%al, %bl
	movb	%bl, 25(%rdx)
	movzbl	28(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm7
	addsd	%xmm2, %xmm7
	cvtsd2ss	%xmm7, %xmm7
	mulss	%xmm4, %xmm7
	cvttss2si	%xmm7, %rax
	andb	$63, %al
	andb	$-64, %bl
	orb	%al, %bl
	movb	%bl, 29(%rdx)
	movzbl	32(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm7
	addsd	%xmm2, %xmm7
	cvtsd2ss	%xmm7, %xmm7
	mulss	%xmm4, %xmm7
	cvttss2si	%xmm7, %rax
	andb	$63, %al
	andb	$-64, %bl
	orb	%al, %bl
	movb	%bl, 33(%rdx)
	movzbl	36(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm7
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
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
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
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movzbl	28(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 29(%rdx)
	movzbl	32(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 33(%rdx)
	movzbl	36(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
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
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
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
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movzbl	28(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 29(%rdx)
	movzbl	32(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 33(%rdx)
	movzbl	36(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
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
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
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
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
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
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movb	33(%rax), %bl
	movb	37(%rax), %dl
	movl	%ebx, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %bl
	orb	%cl, %bl
	movb	%bl, 33(%rax)
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movl	%edx, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	mulss	%xmm4, %xmm5
	cvttss2si	%xmm5, %rcx
	andb	$63, %cl
	andb	$-64, %dl
	orb	%cl, %dl
	movb	%dl, 37(%rax)
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
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
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
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
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
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
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
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
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
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
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
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
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
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
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
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
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
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
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
	pshufd	$64, %xmm7, %xmm7               # xmm7 = xmm7[0,0,0,1]
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
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
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
	pshufd	$64, %xmm7, %xmm6               # xmm6 = xmm7[0,0,0,1]
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
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
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
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
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
	mulsd	%xmm1, %xmm5
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
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
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
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm3, %xmm0
	psubd	%xmm0, %xmm4
	movdqa	%xmm4, %xmm0
	psrld	$31, %xmm0
	psrad	$5, %xmm4
	paddd	%xmm0, %xmm4
	paddd	%xmm10, %xmm4
	cvtdq2ps	%xmm4, %xmm0
	movups	(%r8,%rbx), %xmm3
	mulps	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	cmpltps	%xmm12, %xmm0
	cvttps2dq	%xmm3, %xmm4
	andps	%xmm0, %xmm4
	subps	%xmm12, %xmm3
	cvttps2dq	%xmm3, %xmm3
	xorps	%xmm11, %xmm3
	andnps	%xmm3, %xmm0
	orps	%xmm4, %xmm0
	movups	%xmm0, 52(%rdx)
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
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	mulss	16(%r8,%rbx), %xmm0
	cvttss2si	%xmm0, %rax
	movl	%eax, 68(%rdx)
	movzbl	24(%rdx), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	16(%r9,%rax), %eax
	shrl	$7, %eax
	andl	$63, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movb	25(%rdx), %al
	movl	%eax, %ecx
	shrb	$6, %cl
	movzbl	%cl, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%ecx, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm0, %xmm3
	cvttss2si	%xmm3, %rcx
	andb	$63, %cl
	andb	$-64, %al
	orb	%cl, %al
	movb	%al, 25(%rdx)
	movq	104(%r15), %rax
	movzbl	28(%rax), %ecx
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movb	29(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm0, %xmm3
	cvttss2si	%xmm3, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 29(%rax)
	movq	104(%r15), %rax
	movzbl	32(%rax), %ecx
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movb	33(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm0, %xmm3
	cvttss2si	%xmm3, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 33(%rax)
	movq	104(%r15), %rax
	movzbl	36(%rax), %ecx
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	16(%r9,%rcx), %ecx
	shrl	$7, %ecx
	andl	$63, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movb	37(%rax), %cl
	movl	%ecx, %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %rdx
	andb	$63, %dl
	andb	$-64, %cl
	orb	%dl, %cl
	movb	%cl, 37(%rax)
	leaq	.L.str.82(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.32(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	cmpw	$121, (%rbx)
	jne	.LBB64_3
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
.LBB64_3:
	leaq	.L.str.84(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.85(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movb	$0, (%r14)
	movq	BattleMode@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB64_4:
	movq	Parties@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	movq	(%rax), %rdx
	leaq	.L.str.86(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	64(%r13), %rax
	movq	(%rax), %rdx
	leaq	.L.str.87(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Empty_slot@GOTPCREL(%rip), %rax
	movq	YourTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemyTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	BattleMode@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB64_190
# %bb.5:
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	movq	x@GOTPCREL(%rip), %rbx
	movq	Reset@GOTPCREL(%rip), %r14
	leaq	.L.str.41(%rip), %rcx
	movslq	%ecx, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB64_7
	.p2align	4, 0x90
.LBB64_124:                             #   in Loop: Header=BB64_7 Depth=1
	xorl	%eax, %eax
.LBB64_6:                               #   in Loop: Header=BB64_7 Depth=1
	movq	BattleMode@GOTPCREL(%rip), %rcx
	cmpb	$0, (%rcx)
	je	.LBB64_190
.LBB64_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_8 Depth 2
	testb	%al, %al
	je	.LBB64_123
	.p2align	4, 0x90
.LBB64_8:                               #   Parent Loop BB64_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movl	$1, %edi
	leaq	.L.str.88(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.32(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movzwl	(%rbx), %r15d
	cmpw	$49, %r15w
	je	.LBB64_11
# %bb.9:                                #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3219557, %edx                  # imm = 0x312065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB64_11
# %bb.10:                               #   in Loop: Header=BB64_8 Depth=2
	movq	(%r13), %r12
	movzbl	24(%r12), %ebp
	leaq	(,%rbp,8), %rax
	addq	%rbp, %rax
	leaq	(%rax,%rax,2), %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_11
# %bb.31:                               #   in Loop: Header=BB64_8 Depth=2
	cmpw	$50, %r15w
	je	.LBB64_34
# %bb.32:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3285093, %edx                  # imm = 0x322065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB64_34
# %bb.33:                               #   in Loop: Header=BB64_8 Depth=2
	movzbl	28(%r12), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_34
# %bb.39:                               #   in Loop: Header=BB64_8 Depth=2
	cmpw	$51, %r15w
	je	.LBB64_42
# %bb.40:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3350629, %edx                  # imm = 0x332065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB64_42
# %bb.41:                               #   in Loop: Header=BB64_8 Depth=2
	movzbl	32(%r12), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_42
# %bb.46:                               #   in Loop: Header=BB64_8 Depth=2
	cmpw	$52, %r15w
	je	.LBB64_49
# %bb.47:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3416165, %edx                  # imm = 0x342065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB64_49
# %bb.48:                               #   in Loop: Header=BB64_8 Depth=2
	movzbl	36(%r12), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_49
# %bb.54:                               #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_58
# %bb.55:                               #   in Loop: Header=BB64_8 Depth=2
	movq	8(%r13), %rax
	movslq	(%rax), %r15
	leaq	.L.str.41(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbp
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_58
# %bb.56:                               #   in Loop: Header=BB64_8 Depth=2
	movq	8(%r13), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_58
# %bb.57:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB64_58
# %bb.61:                               #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_65
# %bb.62:                               #   in Loop: Header=BB64_8 Depth=2
	movq	16(%r13), %rax
	movslq	(%rax), %r15
	leaq	.L.str.41(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbp
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_65
# %bb.63:                               #   in Loop: Header=BB64_8 Depth=2
	movq	16(%r13), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_65
# %bb.64:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB64_65
# %bb.69:                               #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_73
# %bb.70:                               #   in Loop: Header=BB64_8 Depth=2
	movq	24(%r13), %rax
	movslq	(%rax), %r15
	leaq	.L.str.41(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbp
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_73
# %bb.71:                               #   in Loop: Header=BB64_8 Depth=2
	movq	24(%r13), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_73
# %bb.72:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB64_73
# %bb.74:                               #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_78
# %bb.75:                               #   in Loop: Header=BB64_8 Depth=2
	movq	32(%r13), %rax
	movslq	(%rax), %r15
	leaq	.L.str.41(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbp
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_78
# %bb.76:                               #   in Loop: Header=BB64_8 Depth=2
	movq	32(%r13), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_78
# %bb.77:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB64_78
# %bb.79:                               #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_83
# %bb.80:                               #   in Loop: Header=BB64_8 Depth=2
	movq	40(%r13), %rax
	movslq	(%rax), %r15
	leaq	.L.str.41(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbp
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_83
# %bb.81:                               #   in Loop: Header=BB64_8 Depth=2
	movq	40(%r13), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_83
# %bb.82:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB64_83
# %bb.84:                               #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%rbx), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_87
# %bb.85:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%rbx), %ecx
	orl	%eax, %ecx
	je	.LBB64_87
# %bb.86:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%rbx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	jne	.LBB64_68
.LBB64_87:                              #   in Loop: Header=BB64_8 Depth=2
	xorl	%edi, %edi
	callq	displayparty@PLT
	jmp	.LBB64_14
	.p2align	4, 0x90
.LBB64_11:                              #   in Loop: Header=BB64_8 Depth=2
	movq	(%r13), %rax
	leaq	24(%rax), %rcx
	movq	YourTurn@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	cmpb	$0, 24(%rax)
	je	.LBB64_12
# %bb.16:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 25(%rax)
	je	.LBB64_17
.LBB64_21:                              #   in Loop: Header=BB64_8 Depth=2
	cmpb	$1, (%r14)
	je	.LBB64_15
# %bb.22:                               #   in Loop: Header=BB64_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.102(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.32(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movzwl	(%rbx), %ebp
	cmpw	$49, %bp
	je	.LBB64_25
# %bb.23:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3219557, %edx                  # imm = 0x312065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB64_25
# %bb.24:                               #   in Loop: Header=BB64_8 Depth=2
	movq	64(%r13), %r15
	movzbl	24(%r15), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_25
# %bb.89:                               #   in Loop: Header=BB64_8 Depth=2
	cmpw	$50, %bp
	je	.LBB64_92
# %bb.90:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3285093, %edx                  # imm = 0x322065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB64_92
# %bb.91:                               #   in Loop: Header=BB64_8 Depth=2
	movzbl	28(%r15), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_92
# %bb.97:                               #   in Loop: Header=BB64_8 Depth=2
	cmpw	$51, %bp
	je	.LBB64_100
# %bb.98:                               #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3350629, %edx                  # imm = 0x332065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB64_100
# %bb.99:                               #   in Loop: Header=BB64_8 Depth=2
	movzbl	32(%r15), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_100
# %bb.104:                              #   in Loop: Header=BB64_8 Depth=2
	cmpw	$52, %bp
	je	.LBB64_107
# %bb.105:                              #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%rbx), %ecx
	movl	$3416165, %edx                  # imm = 0x342065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB64_107
# %bb.106:                              #   in Loop: Header=BB64_8 Depth=2
	movzbl	36(%r15), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rsi
	addq	MoveList@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_107
# %bb.113:                              #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_117
# %bb.114:                              #   in Loop: Header=BB64_8 Depth=2
	movq	72(%r13), %rax
	movslq	(%rax), %r15
	movl	$64, %edx
	leaq	c(%rip), %rbp
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi                  # 8-byte Reload
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_117
# %bb.115:                              #   in Loop: Header=BB64_8 Depth=2
	movq	72(%r13), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_117
# %bb.116:                              #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB64_117
# %bb.125:                              #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_129
# %bb.126:                              #   in Loop: Header=BB64_8 Depth=2
	movq	80(%r13), %rax
	movslq	(%rax), %r15
	leaq	.L.str.41(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbp
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_129
# %bb.127:                              #   in Loop: Header=BB64_8 Depth=2
	movq	80(%r13), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_129
# %bb.128:                              #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB64_129
# %bb.130:                              #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_134
# %bb.131:                              #   in Loop: Header=BB64_8 Depth=2
	movq	88(%r13), %rax
	movslq	(%rax), %r15
	leaq	.L.str.41(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbp
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_134
# %bb.132:                              #   in Loop: Header=BB64_8 Depth=2
	movq	88(%r13), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_134
# %bb.133:                              #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB64_134
# %bb.135:                              #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_139
# %bb.136:                              #   in Loop: Header=BB64_8 Depth=2
	movq	96(%r13), %rax
	movslq	(%rax), %r15
	leaq	.L.str.41(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbp
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_139
# %bb.137:                              #   in Loop: Header=BB64_8 Depth=2
	movq	96(%r13), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_139
# %bb.138:                              #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB64_139
# %bb.140:                              #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%rbx), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_144
# %bb.141:                              #   in Loop: Header=BB64_8 Depth=2
	movq	104(%r13), %rax
	movslq	(%rax), %r15
	leaq	.L.str.41(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	leaq	c(%rip), %rbp
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_144
# %bb.142:                              #   in Loop: Header=BB64_8 Depth=2
	movq	104(%r13), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB64_144
# %bb.143:                              #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB64_144
# %bb.145:                              #   in Loop: Header=BB64_8 Depth=2
	movq	(%rbx), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%rbx), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB64_148
# %bb.146:                              #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%rbx), %ecx
	orl	%eax, %ecx
	je	.LBB64_148
# %bb.147:                              #   in Loop: Header=BB64_8 Depth=2
	movl	(%rbx), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%rbx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	jne	.LBB64_68
.LBB64_148:                             #   in Loop: Header=BB64_8 Depth=2
	movl	$1, %edi
	callq	displayparty@PLT
	jmp	.LBB64_14
.LBB64_17:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 29(%rax)
	jne	.LBB64_112
# %bb.18:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 33(%rax)
	jne	.LBB64_112
# %bb.19:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 37(%rax)
	jne	.LBB64_112
.LBB64_20:                              #   in Loop: Header=BB64_8 Depth=2
	movq	YourTurn@GOTPCREL(%rip), %rax
	movq	Struggle_Slot@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB64_21
.LBB64_25:                              #   in Loop: Header=BB64_8 Depth=2
	movq	64(%r13), %rax
	leaq	24(%rax), %rcx
	movq	EnemyTurn@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	cmpb	$0, 24(%rax)
	je	.LBB64_12
# %bb.26:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 25(%rax)
	je	.LBB64_27
.LBB64_120:                             #   in Loop: Header=BB64_8 Depth=2
	cmpb	$0, (%r14)
	jne	.LBB64_15
# %bb.121:                              #   in Loop: Header=BB64_8 Depth=2
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movl	$1, %edi
	leaq	.L.str.32(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB64_122
.LBB64_34:                              #   in Loop: Header=BB64_8 Depth=2
	leaq	28(%r12), %rax
	movq	YourTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	testb	%bpl, %bpl
	je	.LBB64_12
# %bb.35:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 29(%r12)
	jne	.LBB64_21
# %bb.36:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 25(%r12)
	jne	.LBB64_112
# %bb.37:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 33(%r12)
	jne	.LBB64_112
.LBB64_38:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 37(%r12)
	jne	.LBB64_112
	jmp	.LBB64_20
.LBB64_27:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 29(%rax)
	jne	.LBB64_112
# %bb.28:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 33(%rax)
	jne	.LBB64_112
# %bb.29:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 37(%rax)
	jne	.LBB64_112
.LBB64_30:                              #   in Loop: Header=BB64_8 Depth=2
	movq	EnemyTurn@GOTPCREL(%rip), %rax
	movq	Struggle_Slot@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB64_120
.LBB64_92:                              #   in Loop: Header=BB64_8 Depth=2
	leaq	28(%r15), %rax
	movq	EnemyTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	cmpb	$0, 28(%r15)
	je	.LBB64_12
# %bb.93:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 29(%r15)
	jne	.LBB64_120
# %bb.94:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 25(%r15)
	jne	.LBB64_112
# %bb.95:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 33(%r15)
	jne	.LBB64_112
.LBB64_96:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 37(%r15)
	jne	.LBB64_112
	jmp	.LBB64_30
.LBB64_42:                              #   in Loop: Header=BB64_8 Depth=2
	leaq	32(%r12), %rax
	movq	YourTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	testb	%bpl, %bpl
	je	.LBB64_12
# %bb.43:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 33(%r12)
	jne	.LBB64_21
# %bb.44:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 25(%r12)
	jne	.LBB64_112
# %bb.45:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 29(%r12)
	jne	.LBB64_112
	jmp	.LBB64_38
.LBB64_100:                             #   in Loop: Header=BB64_8 Depth=2
	leaq	32(%r15), %rax
	movq	EnemyTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	cmpb	$0, 32(%r15)
	je	.LBB64_12
# %bb.101:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 33(%r15)
	jne	.LBB64_120
# %bb.102:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 25(%r15)
	jne	.LBB64_112
# %bb.103:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 29(%r15)
	jne	.LBB64_112
	jmp	.LBB64_96
.LBB64_49:                              #   in Loop: Header=BB64_8 Depth=2
	leaq	36(%r12), %rax
	movq	YourTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	testb	%bpl, %bpl
	je	.LBB64_12
# %bb.50:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 37(%r12)
	jne	.LBB64_21
# %bb.51:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 25(%r12)
	jne	.LBB64_112
# %bb.52:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 29(%r12)
	jne	.LBB64_112
# %bb.53:                               #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 33(%r12)
	jne	.LBB64_112
	jmp	.LBB64_20
.LBB64_58:                              #   in Loop: Header=BB64_8 Depth=2
	leaq	8(%r13), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	8(%r13), %rax
	leaq	.L.str.99(%rip), %rcx
	cmpq	%rcx, (%rax)
	je	.LBB64_60
# %bb.59:                               #   in Loop: Header=BB64_8 Depth=2
	cmpl	$0, 12(%rax)
	jg	.LBB64_21
.LBB64_60:                              #   in Loop: Header=BB64_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.100(%rip), %rsi
	jmp	.LBB64_13
.LBB64_107:                             #   in Loop: Header=BB64_8 Depth=2
	leaq	36(%r15), %rax
	movq	EnemyTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	cmpb	$0, 36(%r15)
	je	.LBB64_12
# %bb.108:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 37(%r15)
	jne	.LBB64_120
# %bb.109:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 25(%r15)
	jne	.LBB64_112
# %bb.110:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 29(%r15)
	jne	.LBB64_112
# %bb.111:                              #   in Loop: Header=BB64_8 Depth=2
	testb	$63, 33(%r15)
	je	.LBB64_30
	.p2align	4, 0x90
.LBB64_112:                             #   in Loop: Header=BB64_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.92(%rip), %rsi
	jmp	.LBB64_13
	.p2align	4, 0x90
.LBB64_12:                              #   in Loop: Header=BB64_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.91(%rip), %rsi
.LBB64_13:                              #   in Loop: Header=BB64_8 Depth=2
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB64_14:                              #   in Loop: Header=BB64_8 Depth=2
	movb	$1, (%r14)
.LBB64_15:                              #   in Loop: Header=BB64_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.103(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movb	$0, (%r14)
.LBB64_122:                             #   in Loop: Header=BB64_8 Depth=2
	movq	Retrieve@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB64_8
	jmp	.LBB64_123
.LBB64_117:                             #   in Loop: Header=BB64_8 Depth=2
	leaq	72(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	72(%r13), %rax
.LBB64_118:                             #   in Loop: Header=BB64_8 Depth=2
	leaq	.L.str.99(%rip), %rcx
	cmpq	%rcx, (%rax)
	je	.LBB64_68
# %bb.119:                              #   in Loop: Header=BB64_8 Depth=2
	cmpl	$0, 12(%rax)
	jg	.LBB64_120
	jmp	.LBB64_68
.LBB64_65:                              #   in Loop: Header=BB64_8 Depth=2
	leaq	16(%r13), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	16(%r13), %rax
.LBB64_66:                              #   in Loop: Header=BB64_8 Depth=2
	leaq	.L.str.99(%rip), %rcx
	cmpq	%rcx, (%rax)
	je	.LBB64_68
# %bb.67:                               #   in Loop: Header=BB64_8 Depth=2
	cmpl	$0, 12(%rax)
	jg	.LBB64_21
.LBB64_68:                              #   in Loop: Header=BB64_8 Depth=2
	movl	$1, %edi
	leaq	.L.str.101(%rip), %rsi
	jmp	.LBB64_13
.LBB64_129:                             #   in Loop: Header=BB64_8 Depth=2
	leaq	80(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	80(%r13), %rax
	jmp	.LBB64_118
.LBB64_73:                              #   in Loop: Header=BB64_8 Depth=2
	leaq	24(%r13), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	24(%r13), %rax
	jmp	.LBB64_66
.LBB64_134:                             #   in Loop: Header=BB64_8 Depth=2
	leaq	88(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	88(%r13), %rax
	jmp	.LBB64_118
.LBB64_78:                              #   in Loop: Header=BB64_8 Depth=2
	leaq	32(%r13), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	32(%r13), %rax
	jmp	.LBB64_66
.LBB64_139:                             #   in Loop: Header=BB64_8 Depth=2
	leaq	96(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	96(%r13), %rax
	jmp	.LBB64_118
.LBB64_83:                              #   in Loop: Header=BB64_8 Depth=2
	leaq	40(%r13), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	40(%r13), %rax
	jmp	.LBB64_66
.LBB64_144:                             #   in Loop: Header=BB64_8 Depth=2
	leaq	104(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	104(%r13), %rax
	jmp	.LBB64_118
	.p2align	4, 0x90
.LBB64_123:                             #   in Loop: Header=BB64_7 Depth=1
	movq	Execute@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB64_124
# %bb.149:                              #   in Loop: Header=BB64_7 Depth=1
	movq	Damage@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	EnemyDamage@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
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
	movq	YourTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	MoveList@GOTPCREL(%rip), %rdx
	movzwl	16(%rdx,%rax), %ecx
	movzbl	18(%rdx,%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, %edx
	shrl	$13, %edx
	andl	$31, %edx
	movq	(%r13), %r8
	movq	(%r8), %rsi
	movzwl	12(%rsi), %esi
	movl	%esi, %edi
	andl	$31, %edi
	movsd	.LCPI64_8(%rip), %xmm0          # xmm0 = mem[0],zero
	cmpl	%edi, %edx
	je	.LBB64_151
# %bb.150:                              #   in Loop: Header=BB64_7 Depth=1
	shrl	$5, %esi
	andl	$31, %esi
	xorl	%edi, %edi
	cmpl	%esi, %edx
	sete	%dil
	leaq	.LCPI64_9(%rip), %rcx
	movsd	(%rcx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
.LBB64_151:                             #   in Loop: Header=BB64_7 Depth=1
	movq	STAB@GOTPCREL(%rip), %rcx
	movsd	%xmm0, (%rcx)
	movq	EnemyTurn@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	movzbl	(%rdx), %edx
	leaq	(%rdx,%rdx,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movq	MoveList@GOTPCREL(%rip), %rcx
	movzwl	16(%rcx,%rdx), %esi
	movzbl	18(%rcx,%rdx), %edx
	shll	$16, %edx
	orl	%esi, %edx
	movl	%edx, %esi
	shrl	$13, %esi
	andl	$31, %esi
	movq	64(%r13), %rbp
	movq	(%rbp), %rdi
	movzwl	12(%rdi), %ecx
	movl	%ecx, %edi
	andl	$31, %edi
	movsd	.LCPI64_8(%rip), %xmm0          # xmm0 = mem[0],zero
	cmpl	%edi, %esi
	je	.LBB64_153
# %bb.152:                              #   in Loop: Header=BB64_7 Depth=1
	shrl	$5, %ecx
	andl	$31, %ecx
	xorl	%edi, %edi
	cmpl	%ecx, %esi
	sete	%dil
	leaq	.LCPI64_9(%rip), %rcx
	movsd	(%rcx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
.LBB64_153:                             #   in Loop: Header=BB64_7 Depth=1
	movq	EnemySTAB@GOTPCREL(%rip), %rcx
	movsd	%xmm0, (%rcx)
	cmpb	$3, 73(%r8)
	movsd	.LCPI64_7(%rip), %xmm1          # xmm1 = mem[0],zero
	jne	.LBB64_155
# %bb.154:                              #   in Loop: Header=BB64_7 Depth=1
	movq	PlayerSpeedTM@GOTPCREL(%rip), %rcx
	movabsq	$4602678819172646912, %rsi      # imm = 0x3FE0000000000000
	movq	%rsi, (%rcx)
	movsd	.LCPI64_10(%rip), %xmm1         # xmm1 = mem[0],zero
.LBB64_155:                             #   in Loop: Header=BB64_7 Depth=1
	cmpb	$3, 73(%rbp)
	movsd	.LCPI64_7(%rip), %xmm0          # xmm0 = mem[0],zero
	jne	.LBB64_157
# %bb.156:                              #   in Loop: Header=BB64_7 Depth=1
	movq	EnemySpeedTM@GOTPCREL(%rip), %rcx
	movabsq	$4602678819172646912, %rsi      # imm = 0x3FE0000000000000
	movq	%rsi, (%rcx)
	movsd	.LCPI64_10(%rip), %xmm0         # xmm0 = mem[0],zero
.LBB64_157:                             #   in Loop: Header=BB64_7 Depth=1
	shll	$8, %eax
	sarl	$28, %eax
	shll	$8, %edx
	sarl	$28, %edx
	cmpl	%edx, %eax
	jne	.LBB64_173
# %bb.158:                              #   in Loop: Header=BB64_7 Depth=1
	movl	68(%r8), %eax
	cvtsi2sd	%rax, %xmm2
	movsbl	78(%r8), %r15d
	testl	%r15d, %r15d
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	js	.LBB64_160
# %bb.159:                              #   in Loop: Header=BB64_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	mulsd	.LCPI64_10(%rip), %xmm0
	addsd	.LCPI64_7(%rip), %xmm0
	jmp	.LBB64_161
	.p2align	4, 0x90
.LBB64_173:                             #   in Loop: Header=BB64_7 Depth=1
	setg	%al
	jmp	.LBB64_174
.LBB64_160:                             #   in Loop: Header=BB64_7 Depth=1
	movl	%r15d, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI64_10(%rip), %xmm1
	movsd	.LCPI64_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB64_161:                             #   in Loop: Header=BB64_7 Depth=1
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
	js	.LBB64_163
# %bb.162:                              #   in Loop: Header=BB64_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI64_10(%rip), %xmm0
	addsd	.LCPI64_7(%rip), %xmm0
	jmp	.LBB64_164
.LBB64_163:                             #   in Loop: Header=BB64_7 Depth=1
	movl	%ebp, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI64_10(%rip), %xmm1
	movsd	.LCPI64_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB64_164:                             #   in Loop: Header=BB64_7 Depth=1
	mulsd	%xmm2, %xmm0
	movsd	%xmm2, 24(%rsp)                 # 8-byte Spill
	callq	floor@PLT
	mulsd	40(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB64_166
	jp	.LBB64_166
# %bb.165:                              #   in Loop: Header=BB64_7 Depth=1
	callq	rand@PLT
	andb	$1, %al
	jmp	.LBB64_174
.LBB64_166:                             #   in Loop: Header=BB64_7 Depth=1
	testb	%r15b, %r15b
	js	.LBB64_168
# %bb.167:                              #   in Loop: Header=BB64_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	mulsd	.LCPI64_10(%rip), %xmm0
	addsd	.LCPI64_7(%rip), %xmm0
	jmp	.LBB64_169
.LBB64_168:                             #   in Loop: Header=BB64_7 Depth=1
	negl	%r15d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r15d, %xmm1
	mulsd	.LCPI64_10(%rip), %xmm1
	movsd	.LCPI64_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB64_169:                             #   in Loop: Header=BB64_7 Depth=1
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	testb	%bpl, %bpl
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	js	.LBB64_171
# %bb.170:                              #   in Loop: Header=BB64_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI64_10(%rip), %xmm0
	addsd	.LCPI64_7(%rip), %xmm0
	jmp	.LBB64_172
.LBB64_171:                             #   in Loop: Header=BB64_7 Depth=1
	negl	%ebp
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebp, %xmm1
	mulsd	.LCPI64_10(%rip), %xmm1
	movsd	.LCPI64_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB64_172:                             #   in Loop: Header=BB64_7 Depth=1
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
.LBB64_174:                             #   in Loop: Header=BB64_7 Depth=1
	movq	PlayerSwitch@GOTPCREL(%rip), %rcx
	movzbl	(%rcx), %ecx
	movq	EnemySwitch@GOTPCREL(%rip), %rdx
	cmpb	(%rdx), %cl
	movzbl	%al, %eax
	cmovnel	%ecx, %eax
	movq	First@GOTPCREL(%rip), %r15
	movb	%al, (%r15)
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
	movq	YourTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	MoveList@GOTPCREL(%rip), %rbp
	callq	*19(%rbp,%rax)
	movq	EnemyTurn@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,2), %rax
	xorl	%edi, %edi
	movl	$1, %esi
	callq	*19(%rbp,%rax)
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	ACTIVATE_EFFECTS@PLT
	xorl	%edi, %edi
	movl	$1, %esi
	callq	ACTIVATE_EFFECTS@PLT
	xorl	%edi, %edi
	cmpb	$0, (%r15)
	sete	%dil
	callq	ExecuteMove@PLT
	movzbl	(%r15), %edi
	callq	ExecuteMove@PLT
	movq	(%r13), %rax
	movl	68(%rax), %ecx
	cvtsi2sd	%rcx, %xmm2
	movsbl	78(%rax), %r15d
	testl	%r15d, %r15d
	js	.LBB64_176
# %bb.175:                              #   in Loop: Header=BB64_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	mulsd	.LCPI64_10(%rip), %xmm0
	addsd	.LCPI64_7(%rip), %xmm0
	jmp	.LBB64_177
	.p2align	4, 0x90
.LBB64_176:                             #   in Loop: Header=BB64_7 Depth=1
	movl	%r15d, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI64_10(%rip), %xmm1
	movsd	.LCPI64_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB64_177:                             #   in Loop: Header=BB64_7 Depth=1
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
	js	.LBB64_179
# %bb.178:                              #   in Loop: Header=BB64_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI64_10(%rip), %xmm0
	addsd	.LCPI64_7(%rip), %xmm0
	jmp	.LBB64_180
	.p2align	4, 0x90
.LBB64_179:                             #   in Loop: Header=BB64_7 Depth=1
	movl	%ebp, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI64_10(%rip), %xmm1
	movsd	.LCPI64_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB64_180:                             #   in Loop: Header=BB64_7 Depth=1
	mulsd	%xmm2, %xmm0
	movsd	%xmm2, 16(%rsp)                 # 8-byte Spill
	callq	floor@PLT
	movq	EnemySpeedTM@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm1                   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	40(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jne	.LBB64_182
	jp	.LBB64_182
# %bb.181:                              #   in Loop: Header=BB64_7 Depth=1
	callq	rand@PLT
	andb	$1, %al
	jmp	.LBB64_189
	.p2align	4, 0x90
.LBB64_182:                             #   in Loop: Header=BB64_7 Depth=1
	testb	%r15b, %r15b
	movsd	%xmm1, 24(%rsp)                 # 8-byte Spill
	js	.LBB64_184
# %bb.183:                              #   in Loop: Header=BB64_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	mulsd	.LCPI64_10(%rip), %xmm0
	addsd	.LCPI64_7(%rip), %xmm0
	jmp	.LBB64_185
.LBB64_184:                             #   in Loop: Header=BB64_7 Depth=1
	negl	%r15d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r15d, %xmm1
	mulsd	.LCPI64_10(%rip), %xmm1
	movsd	.LCPI64_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB64_185:                             #   in Loop: Header=BB64_7 Depth=1
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	testb	%bpl, %bpl
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	js	.LBB64_187
# %bb.186:                              #   in Loop: Header=BB64_7 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	mulsd	.LCPI64_10(%rip), %xmm0
	addsd	.LCPI64_7(%rip), %xmm0
	jmp	.LBB64_188
.LBB64_187:                             #   in Loop: Header=BB64_7 Depth=1
	negl	%ebp
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebp, %xmm1
	mulsd	.LCPI64_10(%rip), %xmm1
	movsd	.LCPI64_7(%rip), %xmm0          # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
.LBB64_188:                             #   in Loop: Header=BB64_7 Depth=1
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
.LBB64_189:                             #   in Loop: Header=BB64_7 Depth=1
	movq	EndFirst@GOTPCREL(%rip), %rbp
	movb	%al, (%rbp)
	xorb	$1, %al
	movzbl	%al, %edi
	callq	endturn@PLT
	movzbl	(%rbp), %edi
	callq	endturn@PLT
	movl	$1, %edi
	leaq	.L.str.32(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movb	$1, %al
	jmp	.LBB64_6
.LBB64_190:
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
.Lfunc_end64:
	.size	Battle, .Lfunc_end64-Battle
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
	leaq	.L.str.104(%rip), %rdi
	callq	system@PLT
	movl	%ebx, %edi
	callq	srand@PLT
	leaq	.L.str.105(%rip), %rsi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.106(%rip), %rsi
	movl	$4, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	callq	Battle@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end65:
	.size	main, .Lfunc_end65-main
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
	.asciz	"Attack\000\000\000\000\000\000\000\000"
	.asciz	"Defense\000\000\000\000\000\000\000"
	.asciz	"Special Attack"
	.ascii	"Special Defense"
	.asciz	"Speed\000\000\000\000\000\000\000\000\000"
	.asciz	"Accuracy\000\000\000\000\000\000"
	.asciz	"Evasion\000\000\000\000\000\000\000"
	.asciz	"Crit Chance\000\000\000"
	.size	Stagenames, 120

	.type	Itemtext,@object                # @Itemtext
	.globl	Itemtext
	.p2align	4
Itemtext:
	.asciz	"Not Usable"
	.asciz	"Usable\000\000\000\000"
	.size	Itemtext, 22

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

	.type	Skip,@object                    # @Skip
	.globl	Skip
Skip:
	.byte	0                               # 0x0
	.size	Skip, 1

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

	.type	YourTurn,@object                # @YourTurn
	.bss
	.globl	YourTurn
	.p2align	3
YourTurn:
	.quad	0
	.size	YourTurn, 8

	.type	MoveList,@object                # @MoveList
	.data
	.globl	MoveList
	.p2align	4
MoveList:
	.asciz	"Nothing\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.quad	Nothingf
	.asciz	"Struggle\000\000\000\000\000\000"
	.byte	50                              # 0x32
	.byte	228                             # 0xe4
	.byte	32                              # 0x20
	.byte	4                               # 0x4
	.quad	Strugglef
	.asciz	"Scratch\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	49                              # 0x31
	.byte	4                               # 0x4
	.quad	Scratchf
	.asciz	"Water Gun\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	108                             # 0x6c
	.byte	8                               # 0x8
	.quad	Water_Gunf
	.asciz	"Vine Whip\000\000\000\000\000"
	.byte	45                              # 0x2d
	.byte	228                             # 0xe4
	.byte	177                             # 0xb1
	.byte	4                               # 0x4
	.quad	Vine_Whipf
	.asciz	"Ember\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	76                              # 0x4c
	.byte	8                               # 0x8
	.quad	Emberf
	.asciz	"Quick Attack\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	47                              # 0x2f
	.byte	20                              # 0x14
	.quad	Quick_Attackf
	.asciz	"Super Attack\000\000"
	.byte	120                             # 0x78
	.byte	203                             # 0xcb
	.byte	39                              # 0x27
	.byte	4                               # 0x4
	.quad	Super_Attackf
	.asciz	"Stone Edge\000\000\000\000"
	.byte	100                             # 0x64
	.byte	208                             # 0xd0
	.byte	162                             # 0xa2
	.byte	5                               # 0x5
	.quad	Stone_Edgef
	.asciz	"Gust\000\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	228                             # 0xe4
	.byte	81                              # 0x51
	.byte	9                               # 0x9
	.quad	Gustf
	.asciz	"Thunder Shock\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	143                             # 0x8f
	.byte	8                               # 0x8
	.quad	Thunder_Shockf
	.asciz	"Thunder Wave\000\000"
	.byte	0                               # 0x0
	.byte	90                              # 0x5a
	.byte	138                             # 0x8a
	.byte	0                               # 0x0
	.quad	Thunder_Wavef
	.asciz	"Swords Dance\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.quad	Swords_Dancef
	.asciz	"Dragon Dance\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	234                             # 0xea
	.byte	1                               # 0x1
	.quad	Dragon_Dancef
	.asciz	"Will-O-Wisp\000\000\000"
	.byte	0                               # 0x0
	.byte	218                             # 0xda
	.byte	71                              # 0x47
	.byte	0                               # 0x0
	.quad	Will_O_Wispf
	.asciz	"Spore\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	165                             # 0xa5
	.byte	0                               # 0x0
	.quad	Sporef
	.asciz	"Toxic\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	90                              # 0x5a
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.quad	Toxicf
	.asciz	"Freeze\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	60                              # 0x3c
	.byte	197                             # 0xc5
	.byte	0                               # 0x0
	.quad	Freezef
	.asciz	"Bulk Up\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	234                             # 0xea
	.byte	0                               # 0x0
	.quad	Bulk_Upf
	.asciz	"Charm\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	74                              # 0x4a
	.byte	2                               # 0x2
	.quad	Charmf
	.asciz	"Leer\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.quad	Leerf
	.size	MoveList, 567

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

	.type	PlayerTM,@object                # @PlayerTM
	.bss
	.globl	PlayerTM
	.p2align	3
PlayerTM:
	.quad	0x0000000000000000              # double 0
	.size	PlayerTM, 8

	.type	EnemyTurn,@object               # @EnemyTurn
	.globl	EnemyTurn
	.p2align	3
EnemyTurn:
	.quad	0
	.size	EnemyTurn, 8

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
	.byte	10                              # 0xa
	.byte	0                               # 0x0
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

	.type	EnemyDamage,@object             # @EnemyDamage
	.bss
	.globl	EnemyDamage
	.p2align	2
EnemyDamage:
	.long	0                               # 0x0
	.size	EnemyDamage, 4

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"%s hung on with its Focus Sash!\n"
	.size	.L.str.9, 33

	.type	Damage,@object                  # @Damage
	.bss
	.globl	Damage
	.p2align	2
Damage:
	.long	0                               # 0x0
	.size	Damage, 4

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
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
	.asciz	"Item: %s (%s)"
	.size	.L.str.24, 14

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\n\033[1;37mP1:\033[0m %s %d/%d\n"
	.size	.L.str.25, 26

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"\033[1;37mP2:\033[0m %s %d/%d\n"
	.size	.L.str.26, 25

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"\033[1;37mP3:\033[0m %s %d/%d\n"
	.size	.L.str.27, 25

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"\033[1;37mP4:\033[0m %s %d/%d\n"
	.size	.L.str.28, 25

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"\033[1;37mP5:\033[0m %s %d/%d\n"
	.size	.L.str.29, 25

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"\033[1;37mP6:\033[0m %s %d/%d\n"
	.size	.L.str.30, 25

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"\nPartyMember: "
	.size	.L.str.31, 15

	.type	x,@object                       # @x
	.bss
	.globl	x
	.p2align	4
x:
	.zero	32
	.size	x, 32

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"\n"
	.size	.L.str.32, 2

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"P1"
	.size	.L.str.33, 3

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"P2"
	.size	.L.str.34, 3

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"P3"
	.size	.L.str.35, 3

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"P4"
	.size	.L.str.36, 3

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"P5"
	.size	.L.str.37, 3

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"P6"
	.size	.L.str.38, 3

	.type	Temp,@object                    # @Temp
	.bss
	.globl	Temp
	.p2align	3
Temp:
	.quad	0
	.size	Temp, 8

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"EnemySwitch-In: "
	.size	.L.str.39, 17

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Switch to P2"
	.size	.L.str.40, 13

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Switch to "
	.size	.L.str.41, 11

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Go! %s!\n"
	.size	.L.str.42, 9

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"That pokemon is already fainted\n"
	.size	.L.str.43, 33

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Switch to P3"
	.size	.L.str.44, 13

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Switch to P4"
	.size	.L.str.45, 13

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Switch to P5"
	.size	.L.str.46, 13

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Switch to P6"
	.size	.L.str.47, 13

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"View Party"
	.size	.L.str.48, 11

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"View"
	.size	.L.str.49, 5

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Party"
	.size	.L.str.50, 6

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"That is not a valid switch. Please Try Again.\n"
	.size	.L.str.51, 47

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Switch-In: "
	.size	.L.str.52, 12

	.type	PlayerCanMove,@object           # @PlayerCanMove
	.bss
	.globl	PlayerCanMove
PlayerCanMove:
	.byte	0                               # 0x0
	.size	PlayerCanMove, 1

	.type	.L.str.53,@object               # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"%s used %s!\n"
	.size	.L.str.53, 13

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"But it missed!\n"
	.size	.L.str.54, 16

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"%s couldn't move\n"
	.size	.L.str.55, 18

	.type	PlayerPara,@object              # @PlayerPara
	.bss
	.globl	PlayerPara
PlayerPara:
	.byte	0                               # 0x0
	.size	PlayerPara, 1

	.type	.L.str.56,@object               # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"It was paralyzed!\n"
	.size	.L.str.56, 19

	.type	PlayerSleep,@object             # @PlayerSleep
	.bss
	.globl	PlayerSleep
PlayerSleep:
	.byte	0                               # 0x0
	.size	PlayerSleep, 1

	.type	.L.str.57,@object               # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"It is asleep\n"
	.size	.L.str.57, 14

	.type	PlayerFrozen,@object            # @PlayerFrozen
	.bss
	.globl	PlayerFrozen
PlayerFrozen:
	.byte	0                               # 0x0
	.size	PlayerFrozen, 1

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"It is frozen!\n"
	.size	.L.str.58, 15

	.type	EnemyCanMove,@object            # @EnemyCanMove
	.bss
	.globl	EnemyCanMove
EnemyCanMove:
	.byte	0                               # 0x0
	.size	EnemyCanMove, 1

	.type	.L.str.59,@object               # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"The opposing %s used %s!\n"
	.size	.L.str.59, 26

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"The opposing %s couldn't move\n"
	.size	.L.str.60, 31

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

	.type	.L.str.61,@object               # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"It did %d damage!\n"
	.size	.L.str.61, 19

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"It was super effective!\n"
	.size	.L.str.62, 25

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"It was not very effective!\n"
	.size	.L.str.63, 28

	.type	PlayerCrit,@object              # @PlayerCrit
	.bss
	.globl	PlayerCrit
PlayerCrit:
	.byte	0                               # 0x0
	.size	PlayerCrit, 1

	.type	.L.str.64,@object               # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"It was a critical hit!\n"
	.size	.L.str.64, 24

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"The opposing %s is at %d/%d hp\n"
	.size	.L.str.65, 32

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"The opposing %s fainted!\n"
	.size	.L.str.66, 26

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

	.type	.L.str.67,@object               # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"Your %s is at %d/%d hp\n"
	.size	.L.str.67, 24

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"Your %s fainted!\n"
	.size	.L.str.68, 18

	.type	PlayerDead,@object              # @PlayerDead
	.bss
	.globl	PlayerDead
PlayerDead:
	.byte	0                               # 0x0
	.size	PlayerDead, 1

	.type	.L.str.69,@object               # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"%s woke up\n"
	.size	.L.str.69, 12

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"%s thawed out\n"
	.size	.L.str.70, 15

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

	.type	.L.str.71,@object               # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"You switched out to %s\n"
	.size	.L.str.71, 24

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"The opposing %s woke up\n"
	.size	.L.str.72, 25

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"The opposing %s thawed out\n"
	.size	.L.str.73, 28

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

	.type	.L.str.74,@object               # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"The Enemy switched out to %s\n"
	.size	.L.str.74, 30

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"%s took some damage from its burn!\n"
	.size	.L.str.75, 36

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"%s is hurt poison!\n"
	.size	.L.str.76, 20

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"%s is hurt by poison! (it's badly poisoned)\n"
	.size	.L.str.77, 45

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"\033[1F%s fainted!\n"
	.size	.L.str.78, 17

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"The opposing %s took some damage from its burn!\n\n"
	.size	.L.str.79, 50

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"The opposing %s is hurt by poison!\n\n"
	.size	.L.str.80, 37

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"The opposing %s is hurt by poison! (it's badly poisoned)\n\n"
	.size	.L.str.81, 59

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
	.byte	2                               # 0x2
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

	.type	.L.str.82,@object               # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"\nHeal?:"
	.size	.L.str.82, 8

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"\033[1A"
	.size	.L.str.84, 5

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"\033[2K"
	.size	.L.str.85, 5

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"Go %s!\n"
	.size	.L.str.86, 8

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"The Enemy sent out %s!\n\n"
	.size	.L.str.87, 25

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"Enter your move: "
	.size	.L.str.88, 18

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"Move 1"
	.size	.L.str.90, 7

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"There is no move in that slot."
	.size	.L.str.91, 31

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"There no more PP left in that move"
	.size	.L.str.92, 35

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"Move 2"
	.size	.L.str.94, 7

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Move 3"
	.size	.L.str.96, 7

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"Move 4"
	.size	.L.str.98, 7

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"NoPoke"
	.size	.L.str.99, 7

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"Move Selection Failed. Pilease retry."
	.size	.L.str.100, 38

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Move Selection Failed. Please retry."
	.size	.L.str.101, 37

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"\nEnter enemy's move: "
	.size	.L.str.102, 22

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"\n\n"
	.size	.L.str.103, 3

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

	.type	.L.str.104,@object              # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"clear"
	.size	.L.str.104, 6

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"%d\n"
	.size	.L.str.105, 4

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"%lu\n"
	.size	.L.str.106, 5

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
	.addrsig_sym Scratchf
	.addrsig_sym Water_Gunf
	.addrsig_sym Vine_Whipf
	.addrsig_sym Emberf
	.addrsig_sym Quick_Attackf
	.addrsig_sym Super_Attackf
	.addrsig_sym Stone_Edgef
	.addrsig_sym Gustf
	.addrsig_sym Thunder_Shockf
	.addrsig_sym Thunder_Wavef
	.addrsig_sym Swords_Dancef
	.addrsig_sym Dragon_Dancef
	.addrsig_sym Will_O_Wispf
	.addrsig_sym Sporef
	.addrsig_sym Toxicf
	.addrsig_sym Freezef
	.addrsig_sym Bulk_Upf
	.addrsig_sym Charmf
	.addrsig_sym Leerf
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
	.addrsig_sym Parties
	.addrsig_sym MoveList
	.addrsig_sym Empty_slot
	.addrsig_sym Struggle_Slot
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
