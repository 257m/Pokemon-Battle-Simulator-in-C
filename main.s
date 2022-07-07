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
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%esi, %ebx
	movq	c@GOTPCREL(%rip), %r14
	movb	$0, (%r14)
	movq	d@GOTPCREL(%rip), %r15
	movb	$0, (%r15)
	movslq	%edi, %rsi
	movl	$64, %edx
	movq	%r14, %rdi
	callq	__strcpy_chk@PLT
	movslq	%ebx, %rsi
	movl	$64, %edx
	movq	%r15, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__strcat_chk@PLT
	movl	%r14d, %eax
	popq	%rbx
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function Battle
.LCPI1_0:
	.zero	16,63
.LCPI1_1:
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
	.long	1374389535                      # 0x51eb851f
.LCPI1_2:
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
.LCPI1_3:
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
	.long	0x4f000000                      # float 2.14748365E+9
.LCPI1_4:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI1_5:
	.long	0x3fc00000                      # float 1.5
.LCPI1_7:
	.long	0x42c80000                      # float 100
.LCPI1_8:
	.long	0x40000000                      # float 2
.LCPI1_9:
	.long	0x3f000000                      # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.LCPI1_6:
	.long	0x3f800000                      # float 1
	.long	0x3fc00000                      # float 1.5
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	StatCalc@GOTPCREL(%rip), %r14
	cmpb	$0, (%r14)
	je	.LBB1_4
# %bb.1:
	movq	PlayerParty@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movzbl	24(%rax), %edx
	movq	(%rax), %rcx
	movsbl	14(%rcx), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	96(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	movl	8(%rax), %edx
	imull	%edx, %esi
	movslq	%esi, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	sarl	$5, %esi
	addl	%edi, %esi
	addl	%edx, %esi
	addl	$10, %esi
	movl	%esi, 104(%rax)
	movq	16(%rax), %rsi
	movd	25(%rax), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movd	15(%rcx), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm2            # xmm2 = xmm2[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm2, %xmm2            # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm2
	paddd	%xmm2, %xmm2
	movd	97(%rax), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	psrlw	$2, %xmm4
	movdqa	.LCPI1_0(%rip), %xmm8           # xmm8 = [63,63,63,63,63,63,63,63,63,63,63,63,63,63,63,63]
	pand	%xmm8, %xmm4
	punpcklbw	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	paddd	%xmm1, %xmm4
	paddd	%xmm2, %xmm4
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	pshufd	$245, %xmm4, %xmm2              # xmm2 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm5              # xmm5 = xmm4[0,2,2,3]
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3]
	punpckldq	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1]
	movdqa	.LCPI1_1(%rip), %xmm1           # xmm1 = [1374389535,1374389535,1374389535,1374389535]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm6              # xmm6 = xmm4[1,3,2,3]
	pmuludq	%xmm1, %xmm2
	pshufd	$237, %xmm2, %xmm2              # xmm2 = xmm2[1,3,2,3]
	punpckldq	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm5, %xmm2
	pand	%xmm1, %xmm2
	psubd	%xmm2, %xmm6
	movdqa	%xmm6, %xmm2
	psrld	$31, %xmm2
	psrad	$5, %xmm6
	paddd	%xmm2, %xmm6
	movdqa	.LCPI1_2(%rip), %xmm9           # xmm9 = [5,5,5,5]
	paddd	%xmm9, %xmm6
	cvtdq2ps	%xmm6, %xmm2
	movups	(%rsi), %xmm5
	mulps	%xmm2, %xmm5
	movaps	.LCPI1_3(%rip), %xmm2           # xmm2 = [2.14748365E+9,2.14748365E+9,2.14748365E+9,2.14748365E+9]
	movaps	%xmm5, %xmm6
	cmpltps	%xmm2, %xmm6
	cvttps2dq	%xmm5, %xmm7
	andps	%xmm6, %xmm7
	subps	%xmm2, %xmm5
	cvttps2dq	%xmm5, %xmm3
	movaps	.LCPI1_4(%rip), %xmm5           # xmm5 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm5, %xmm3
	andnps	%xmm3, %xmm6
	orps	%xmm7, %xmm6
	movups	%xmm6, 108(%rax)
	movzbl	29(%rax), %edi
	movsbl	19(%rcx), %ecx
	leal	(%rdi,%rcx,2), %ecx
	movzbl	101(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	16(%rsi), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	8(%r15), %rax
	movzbl	24(%rax), %edx
	movq	(%rax), %rcx
	movsbl	14(%rcx), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	96(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	movl	8(%rax), %edx
	imull	%edx, %esi
	movslq	%esi, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	sarl	$5, %esi
	addl	%edi, %esi
	addl	%edx, %esi
	addl	$10, %esi
	movl	%esi, 104(%rax)
	movq	16(%rax), %rsi
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rcx), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm6, %xmm6            # xmm6 = xmm6[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm6, %xmm6            # xmm6 = xmm6[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm6
	paddd	%xmm6, %xmm6
	movd	97(%rax), %xmm7                 # xmm7 = mem[0],zero,zero,zero
	psrlw	$2, %xmm7
	pand	%xmm8, %xmm7
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	paddd	%xmm3, %xmm7
	paddd	%xmm6, %xmm7
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm7, %xmm6              # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm3, %xmm7
	pshufd	$232, %xmm7, %xmm4              # xmm4 = xmm7[0,2,2,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm3              # xmm3 = xmm6[0,2,2,3]
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	pmuludq	%xmm1, %xmm7
	pshufd	$237, %xmm7, %xmm3              # xmm3 = xmm7[1,3,2,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm6              # xmm6 = xmm6[1,3,2,3]
	punpckldq	%xmm6, %xmm3            # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1]
	pxor	%xmm6, %xmm6
	pcmpgtd	%xmm4, %xmm6
	pand	%xmm1, %xmm6
	psubd	%xmm6, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movups	(%rsi), %xmm4
	mulps	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	cmpltps	%xmm2, %xmm3
	cvttps2dq	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	subps	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	xorps	%xmm5, %xmm4
	andnps	%xmm4, %xmm3
	orps	%xmm6, %xmm3
	movups	%xmm3, 108(%rax)
	movzbl	29(%rax), %edi
	movsbl	19(%rcx), %ecx
	leal	(%rdi,%rcx,2), %ecx
	movzbl	101(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	16(%rsi), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	16(%r15), %rax
	movzbl	24(%rax), %edx
	movq	(%rax), %rcx
	movsbl	14(%rcx), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	96(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	movl	8(%rax), %edx
	imull	%edx, %esi
	movslq	%esi, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	sarl	$5, %esi
	addl	%edi, %esi
	addl	%edx, %esi
	addl	$10, %esi
	movl	%esi, 104(%rax)
	movq	16(%rax), %rsi
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rcx), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	97(%rax), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm8, %xmm6
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm7              # xmm7 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm3              # xmm3 = xmm6[1,3,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm7, %xmm4
	pand	%xmm1, %xmm4
	psubd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movups	(%rsi), %xmm4
	mulps	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	cmpltps	%xmm2, %xmm3
	cvttps2dq	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	subps	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	xorps	%xmm5, %xmm4
	andnps	%xmm4, %xmm3
	orps	%xmm6, %xmm3
	movups	%xmm3, 108(%rax)
	movzbl	29(%rax), %edi
	movsbl	19(%rcx), %ecx
	leal	(%rdi,%rcx,2), %ecx
	movzbl	101(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	16(%rsi), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	24(%r15), %rax
	movzbl	24(%rax), %edx
	movq	(%rax), %rcx
	movsbl	14(%rcx), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	96(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	movl	8(%rax), %edx
	imull	%edx, %esi
	movslq	%esi, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	sarl	$5, %esi
	addl	%edi, %esi
	addl	%edx, %esi
	addl	$10, %esi
	movl	%esi, 104(%rax)
	movq	16(%rax), %rsi
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rcx), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	97(%rax), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm8, %xmm6
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm7              # xmm7 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm3              # xmm3 = xmm6[1,3,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm7, %xmm4
	pand	%xmm1, %xmm4
	psubd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movups	(%rsi), %xmm4
	mulps	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	cmpltps	%xmm2, %xmm3
	cvttps2dq	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	subps	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	xorps	%xmm5, %xmm4
	andnps	%xmm4, %xmm3
	orps	%xmm6, %xmm3
	movups	%xmm3, 108(%rax)
	movzbl	29(%rax), %edi
	movsbl	19(%rcx), %ecx
	leal	(%rdi,%rcx,2), %ecx
	movzbl	101(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	16(%rsi), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	32(%r15), %rax
	movzbl	24(%rax), %edx
	movq	(%rax), %rcx
	movsbl	14(%rcx), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	96(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	movl	8(%rax), %edx
	imull	%edx, %esi
	movslq	%esi, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	sarl	$5, %esi
	addl	%edi, %esi
	addl	%edx, %esi
	addl	$10, %esi
	movl	%esi, 104(%rax)
	movq	16(%rax), %rsi
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rcx), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	97(%rax), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm8, %xmm6
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm7              # xmm7 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm3              # xmm3 = xmm6[1,3,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm7, %xmm4
	pand	%xmm1, %xmm4
	psubd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movups	(%rsi), %xmm4
	mulps	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	cmpltps	%xmm2, %xmm3
	cvttps2dq	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	subps	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	xorps	%xmm5, %xmm4
	andnps	%xmm4, %xmm3
	orps	%xmm6, %xmm3
	movups	%xmm3, 108(%rax)
	movzbl	29(%rax), %edi
	movsbl	19(%rcx), %ecx
	leal	(%rdi,%rcx,2), %ecx
	movzbl	101(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	16(%rsi), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	40(%r15), %rax
	movzbl	24(%rax), %edx
	movq	(%rax), %rcx
	movsbl	14(%rcx), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	96(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	movl	8(%rax), %edx
	imull	%edx, %esi
	movslq	%esi, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	sarl	$5, %esi
	addl	%edi, %esi
	addl	%edx, %esi
	addl	$10, %esi
	movl	%esi, 104(%rax)
	movq	16(%rax), %rsi
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rcx), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	97(%rax), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm8, %xmm6
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm7              # xmm7 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm3              # xmm3 = xmm6[1,3,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm7, %xmm4
	pand	%xmm1, %xmm4
	psubd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movups	(%rsi), %xmm4
	mulps	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	cmpltps	%xmm2, %xmm3
	cvttps2dq	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	subps	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	xorps	%xmm5, %xmm4
	andnps	%xmm4, %xmm3
	orps	%xmm6, %xmm3
	movups	%xmm3, 108(%rax)
	movzbl	29(%rax), %edi
	movsbl	19(%rcx), %ecx
	leal	(%rdi,%rcx,2), %ecx
	movzbl	101(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	16(%rsi), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	EnemyParty@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rax
	movzbl	24(%rax), %edx
	movq	(%rax), %rcx
	movsbl	14(%rcx), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	96(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	movl	8(%rax), %edx
	imull	%edx, %esi
	movslq	%esi, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	sarl	$5, %esi
	addl	%edi, %esi
	addl	%edx, %esi
	addl	$10, %esi
	movl	%esi, 104(%rax)
	movq	16(%rax), %rsi
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rcx), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	97(%rax), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm8, %xmm6
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm7              # xmm7 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm3              # xmm3 = xmm6[1,3,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm7, %xmm4
	pand	%xmm1, %xmm4
	psubd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movups	(%rsi), %xmm4
	mulps	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	cmpltps	%xmm2, %xmm3
	cvttps2dq	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	subps	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	xorps	%xmm5, %xmm4
	andnps	%xmm4, %xmm3
	orps	%xmm6, %xmm3
	movups	%xmm3, 108(%rax)
	movzbl	29(%rax), %edi
	movsbl	19(%rcx), %ecx
	leal	(%rdi,%rcx,2), %ecx
	movzbl	101(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	16(%rsi), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	8(%rbp), %rax
	movzbl	24(%rax), %edx
	movq	(%rax), %rcx
	movsbl	14(%rcx), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	96(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	movl	8(%rax), %edx
	imull	%edx, %esi
	movslq	%esi, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	sarl	$5, %esi
	addl	%edi, %esi
	addl	%edx, %esi
	addl	$10, %esi
	movl	%esi, 104(%rax)
	movq	16(%rax), %rsi
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rcx), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	97(%rax), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm8, %xmm6
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm7              # xmm7 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm3              # xmm3 = xmm6[1,3,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm7, %xmm4
	pand	%xmm1, %xmm4
	psubd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movups	(%rsi), %xmm4
	mulps	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	cmpltps	%xmm2, %xmm3
	cvttps2dq	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	subps	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	xorps	%xmm5, %xmm4
	andnps	%xmm4, %xmm3
	orps	%xmm6, %xmm3
	movups	%xmm3, 108(%rax)
	movzbl	29(%rax), %edi
	movsbl	19(%rcx), %ecx
	leal	(%rdi,%rcx,2), %ecx
	movzbl	101(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	16(%rsi), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	16(%rbp), %rax
	movzbl	24(%rax), %edx
	movq	(%rax), %rcx
	movsbl	14(%rcx), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	96(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	movl	8(%rax), %edx
	imull	%edx, %esi
	movslq	%esi, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	sarl	$5, %esi
	addl	%edi, %esi
	addl	%edx, %esi
	addl	$10, %esi
	movl	%esi, 104(%rax)
	movq	16(%rax), %rsi
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rcx), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	97(%rax), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm8, %xmm6
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm7              # xmm7 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm3              # xmm3 = xmm6[1,3,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm7, %xmm4
	pand	%xmm1, %xmm4
	psubd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movups	(%rsi), %xmm4
	mulps	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	cmpltps	%xmm2, %xmm3
	cvttps2dq	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	subps	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	xorps	%xmm5, %xmm4
	andnps	%xmm4, %xmm3
	orps	%xmm6, %xmm3
	movups	%xmm3, 108(%rax)
	movzbl	29(%rax), %edi
	movsbl	19(%rcx), %ecx
	leal	(%rdi,%rcx,2), %ecx
	movzbl	101(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	16(%rsi), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	24(%rbp), %rax
	movzbl	24(%rax), %edx
	movq	(%rax), %rcx
	movsbl	14(%rcx), %esi
	leal	(%rdx,%rsi,2), %edx
	movzbl	96(%rax), %esi
	shrl	$2, %esi
	addl	%edx, %esi
	movl	8(%rax), %edx
	imull	%edx, %esi
	movslq	%esi, %rsi
	imulq	$1374389535, %rsi, %rsi         # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	sarl	$5, %esi
	addl	%edi, %esi
	addl	%edx, %esi
	addl	$10, %esi
	movl	%esi, 104(%rax)
	movq	16(%rax), %rsi
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rcx), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	97(%rax), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm8, %xmm6
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm7              # xmm7 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm3              # xmm3 = xmm6[1,3,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm7, %xmm4
	pand	%xmm1, %xmm4
	psubd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movups	(%rsi), %xmm4
	mulps	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	cmpltps	%xmm2, %xmm3
	cvttps2dq	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	subps	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	xorps	%xmm5, %xmm4
	andnps	%xmm4, %xmm3
	orps	%xmm6, %xmm3
	movups	%xmm3, 108(%rax)
	movzbl	29(%rax), %edi
	movsbl	19(%rcx), %ecx
	leal	(%rdi,%rcx,2), %ecx
	movzbl	101(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	16(%rsi), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	32(%rbp), %rax
	movzbl	24(%rax), %ecx
	movq	(%rax), %rsi
	movsbl	14(%rsi), %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	96(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	movl	8(%rax), %edx
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$63, %rdi
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%edi, %ecx
	addl	%edx, %ecx
	addl	$10, %ecx
	movl	%ecx, 104(%rax)
	movq	16(%rax), %rcx
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rsi), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	97(%rax), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm8, %xmm6
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm7              # xmm7 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm3              # xmm3 = xmm6[1,3,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm7, %xmm4
	pand	%xmm1, %xmm4
	psubd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$5, %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movups	(%rcx), %xmm4
	mulps	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	cmpltps	%xmm2, %xmm3
	cvttps2dq	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	subps	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	xorps	%xmm5, %xmm4
	andnps	%xmm4, %xmm3
	orps	%xmm6, %xmm3
	movups	%xmm3, 108(%rax)
	movq	32(%rbp), %rax
	movzbl	29(%rax), %ecx
	movq	(%rax), %rdx
	movsbl	19(%rdx), %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	101(%rax), %edx
	shrl	$2, %edx
	addl	%ecx, %edx
	imull	8(%rax), %edx
	movslq	%edx, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	movq	16(%rax), %rcx
	mulss	16(%rcx), %xmm3
	cvttss2si	%xmm3, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	44(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	60(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	76(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ecx, %xmm3
	mulss	92(%rax), %xmm3
	cvttss2si	%xmm3, %ecx
	movb	%cl, 88(%rax)
	movq	40(%rbp), %rax
	movzbl	24(%rax), %ecx
	movq	(%rax), %rsi
	movsbl	14(%rsi), %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	96(%rax), %edi
	shrl	$2, %edi
	addl	%ecx, %edi
	movl	8(%rax), %edx
	imull	%edx, %edi
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$63, %rdi
	shrq	$32, %rcx
	sarl	$5, %ecx
	addl	%edi, %ecx
	addl	%edx, %ecx
	addl	$10, %ecx
	movl	%ecx, 104(%rax)
	movq	16(%rax), %rcx
	movd	25(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	15(%rsi), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm4
	paddd	%xmm4, %xmm4
	movd	97(%rax), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrlw	$2, %xmm6
	pand	%xmm8, %xmm6
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	pshufd	$245, %xmm6, %xmm4              # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm7              # xmm7 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm3              # xmm3 = xmm6[1,3,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm1, %xmm0
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	psrld	$31, %xmm0
	psrad	$5, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm9, %xmm3
	cvtdq2ps	%xmm3, %xmm0
	movups	(%rcx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cmpltps	%xmm2, %xmm0
	cvttps2dq	%xmm1, %xmm3
	andps	%xmm0, %xmm3
	subps	%xmm2, %xmm1
	cvttps2dq	%xmm1, %xmm1
	xorps	%xmm5, %xmm1
	andnps	%xmm1, %xmm0
	orps	%xmm3, %xmm0
	movups	%xmm0, 108(%rax)
	movq	40(%rbp), %rax
	movzbl	29(%rax), %ecx
	movq	(%rax), %rdx
	movsbl	19(%rdx), %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	101(%rax), %edx
	shrl	$2, %edx
	addl	%ecx, %edx
	imull	8(%rax), %edx
	movslq	%edx, %rcx
	imulq	$1374389535, %rcx, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	shrq	$63, %rcx
	addl	%edx, %ecx
	addl	$5, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movq	16(%rax), %rcx
	mulss	16(%rcx), %xmm0
	cvttss2si	%xmm0, %rcx
	movl	%ecx, 124(%rax)
	movq	32(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	mulss	44(%rax), %xmm0
	cvttss2si	%xmm0, %ecx
	movb	%cl, 40(%rax)
	movq	48(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	mulss	60(%rax), %xmm0
	cvttss2si	%xmm0, %ecx
	movb	%cl, 56(%rax)
	movq	64(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	mulss	76(%rax), %xmm0
	cvttss2si	%xmm0, %ecx
	movb	%cl, 72(%rax)
	movq	80(%rax), %rcx
	movzbl	22(%rcx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	mulss	92(%rax), %xmm0
	cvttss2si	%xmm0, %ecx
	movb	%cl, 88(%rax)
	leaq	.L.str.1(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	x@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	cmpw	$121, (%rbx)
	jne	.LBB1_3
# %bb.2:
	movq	(%r15), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	8(%r15), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	16(%r15), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	24(%r15), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	32(%r15), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	40(%r15), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	8(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	16(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	24(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	32(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	40(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, 12(%rax)
.LBB1_3:
	leaq	.L.str.4(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	leaq	.L.str.5(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movb	$0, (%r14)
	movq	BattleMode@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB1_4:
	movq	PlayerParty@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	(%rax), %rdx
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	EnemyParty@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	movq	(%rax), %rdx
	leaq	.L.str.7(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Empty_slot@GOTPCREL(%rip), %rax
	movq	YourTurn@GOTPCREL(%rip), %r14
	movq	%rax, (%r14)
	movq	EnemyTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	BattleMode@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB1_240
# %bb.5:
	movq	x@GOTPCREL(%rip), %r12
	leaq	.L.str.19(%rip), %rax
	cltq
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.11(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	Reset@GOTPCREL(%rip), %rbx
	movb	$1, (%rbx)
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.83(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movb	$0, (%rbx)
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movq	Retrieve@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB1_96
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movl	$1, %edi
	leaq	.L.str.8(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%r12, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r12, %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r12,%rax)
	movzwl	(%r12), %ebx
	cmpw	$49, %bx
	je	.LBB1_45
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3219557, %edx                  # imm = 0x312065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB1_45
# %bb.11:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r15), %rbp
	movq	32(%rbp), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_45
# %bb.12:                               #   in Loop: Header=BB1_8 Depth=1
	cmpw	$50, %bx
	je	.LBB1_90
# %bb.13:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3285093, %edx                  # imm = 0x322065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB1_90
# %bb.14:                               #   in Loop: Header=BB1_8 Depth=1
	movq	48(%rbp), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_90
# %bb.15:                               #   in Loop: Header=BB1_8 Depth=1
	cmpw	$51, %bx
	je	.LBB1_105
# %bb.16:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3350629, %edx                  # imm = 0x332065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB1_105
# %bb.17:                               #   in Loop: Header=BB1_8 Depth=1
	movq	64(%rbp), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_105
# %bb.18:                               #   in Loop: Header=BB1_8 Depth=1
	cmpw	$52, %bx
	je	.LBB1_132
# %bb.19:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3416165, %edx                  # imm = 0x342065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB1_132
# %bb.20:                               #   in Loop: Header=BB1_8 Depth=1
	movq	80(%rbp), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_132
# %bb.21:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	movq	%r15, %rbx
	je	.LBB1_202
# %bb.22:                               #   in Loop: Header=BB1_8 Depth=1
	movq	8(%rbx), %rax
	movslq	(%rax), %r13
	movq	c@GOTPCREL(%rip), %rbx
	movb	$0, (%rbx)
	movq	d@GOTPCREL(%rip), %rbp
	movb	$0, (%rbp)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	EnemyParty@GOTPCREL(%rip), %r13
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	PlayerParty@GOTPCREL(%rip), %rbx
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_202
# %bb.23:                               #   in Loop: Header=BB1_8 Depth=1
	movq	8(%rbx), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_202
# %bb.24:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_202
# %bb.25:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_212
# %bb.26:                               #   in Loop: Header=BB1_8 Depth=1
	movq	16(%rbx), %rax
	movslq	(%rax), %r13
	movq	c@GOTPCREL(%rip), %rbx
	movb	$0, (%rbx)
	movq	d@GOTPCREL(%rip), %rbp
	movb	$0, (%rbp)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	EnemyParty@GOTPCREL(%rip), %r13
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	PlayerParty@GOTPCREL(%rip), %rbx
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_212
# %bb.27:                               #   in Loop: Header=BB1_8 Depth=1
	movq	16(%rbx), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_212
# %bb.28:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_212
# %bb.29:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_214
# %bb.30:                               #   in Loop: Header=BB1_8 Depth=1
	movq	24(%rbx), %rax
	movslq	(%rax), %r13
	movq	c@GOTPCREL(%rip), %rbx
	movb	$0, (%rbx)
	movq	d@GOTPCREL(%rip), %rbp
	movb	$0, (%rbp)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	EnemyParty@GOTPCREL(%rip), %r13
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	PlayerParty@GOTPCREL(%rip), %rbx
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_214
# %bb.31:                               #   in Loop: Header=BB1_8 Depth=1
	movq	24(%rbx), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_214
# %bb.32:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_214
# %bb.33:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_216
# %bb.34:                               #   in Loop: Header=BB1_8 Depth=1
	movq	32(%rbx), %rax
	movslq	(%rax), %r13
	movq	c@GOTPCREL(%rip), %rbx
	movb	$0, (%rbx)
	movq	d@GOTPCREL(%rip), %rbp
	movb	$0, (%rbp)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	EnemyParty@GOTPCREL(%rip), %r13
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	PlayerParty@GOTPCREL(%rip), %rbx
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_216
# %bb.35:                               #   in Loop: Header=BB1_8 Depth=1
	movq	32(%rbx), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_216
# %bb.36:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_216
# %bb.37:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_218
# %bb.38:                               #   in Loop: Header=BB1_8 Depth=1
	movq	40(%rbx), %rax
	movslq	(%rax), %r13
	movq	c@GOTPCREL(%rip), %rbx
	movb	$0, (%rbx)
	movq	d@GOTPCREL(%rip), %rbp
	movb	$0, (%rbp)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	EnemyParty@GOTPCREL(%rip), %r13
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebx, %rsi
	movq	PlayerParty@GOTPCREL(%rip), %rbx
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_218
# %bb.39:                               #   in Loop: Header=BB1_8 Depth=1
	movq	40(%rbx), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_218
# %bb.40:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_218
# %bb.41:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%r12), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_220
# %bb.42:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%r12), %ecx
	orl	%eax, %ecx
	je	.LBB1_220
# %bb.43:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%r12), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB1_220
.LBB1_44:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.11(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB1_239
	.p2align	4, 0x90
.LBB1_45:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r15), %rax
	leaq	32(%rax), %rcx
	movq	%rcx, (%r14)
	movq	Nothing@GOTPCREL(%rip), %rcx
	cmpq	%rcx, 32(%rax)
	je	.LBB1_6
# %bb.46:                               #   in Loop: Header=BB1_8 Depth=1
	cmpb	$0, 40(%rax)
	je	.LBB1_6
.LBB1_47:                               #   in Loop: Header=BB1_8 Depth=1
	movq	Reset@GOTPCREL(%rip), %rbx
	cmpb	$1, (%rbx)
	je	.LBB1_7
# %bb.48:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.78(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%r12, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r12, %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r12,%rax)
	movzwl	(%r12), %ebx
	cmpw	$49, %bx
	je	.LBB1_92
# %bb.49:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3219557, %edx                  # imm = 0x312065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB1_92
# %bb.50:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r13), %rbp
	movq	32(%rbp), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_92
# %bb.51:                               #   in Loop: Header=BB1_8 Depth=1
	cmpw	$50, %bx
	je	.LBB1_107
# %bb.52:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3285093, %edx                  # imm = 0x322065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB1_107
# %bb.53:                               #   in Loop: Header=BB1_8 Depth=1
	movq	48(%rbp), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_107
# %bb.54:                               #   in Loop: Header=BB1_8 Depth=1
	cmpw	$51, %bx
	je	.LBB1_134
# %bb.55:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3350629, %edx                  # imm = 0x332065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB1_134
# %bb.56:                               #   in Loop: Header=BB1_8 Depth=1
	movq	64(%rbp), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_134
# %bb.57:                               #   in Loop: Header=BB1_8 Depth=1
	cmpw	$52, %bx
	je	.LBB1_205
# %bb.58:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$1702260557, %ecx               # imm = 0x65766F4D
	xorl	%ecx, %eax
	movl	3(%r12), %ecx
	movl	$3416165, %edx                  # imm = 0x342065
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.LBB1_205
# %bb.59:                               #   in Loop: Header=BB1_8 Depth=1
	movq	80(%rbp), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_205
# %bb.60:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_209
# %bb.61:                               #   in Loop: Header=BB1_8 Depth=1
	movq	8(%r13), %rax
	movslq	(%rax), %r13
	movq	c@GOTPCREL(%rip), %rbp
	movb	$0, (%rbp)
	movq	d@GOTPCREL(%rip), %rbx
	movb	$0, (%rbx)
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	EnemyParty@GOTPCREL(%rip), %r13
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_209
# %bb.62:                               #   in Loop: Header=BB1_8 Depth=1
	movq	8(%r13), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_209
# %bb.63:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_209
# %bb.64:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_213
# %bb.65:                               #   in Loop: Header=BB1_8 Depth=1
	movq	16(%r13), %rax
	movslq	(%rax), %r13
	movq	c@GOTPCREL(%rip), %rbp
	movb	$0, (%rbp)
	movq	d@GOTPCREL(%rip), %rbx
	movb	$0, (%rbx)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	EnemyParty@GOTPCREL(%rip), %r13
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_213
# %bb.66:                               #   in Loop: Header=BB1_8 Depth=1
	movq	16(%r13), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_213
# %bb.67:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_213
# %bb.68:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_215
# %bb.69:                               #   in Loop: Header=BB1_8 Depth=1
	movq	24(%r13), %rax
	movslq	(%rax), %r13
	movq	c@GOTPCREL(%rip), %rbp
	movb	$0, (%rbp)
	movq	d@GOTPCREL(%rip), %rbx
	movb	$0, (%rbx)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	EnemyParty@GOTPCREL(%rip), %r13
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_215
# %bb.70:                               #   in Loop: Header=BB1_8 Depth=1
	movq	24(%r13), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_215
# %bb.71:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_215
# %bb.72:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_217
# %bb.73:                               #   in Loop: Header=BB1_8 Depth=1
	movq	32(%r13), %rax
	movslq	(%rax), %r13
	movq	c@GOTPCREL(%rip), %rbp
	movb	$0, (%rbp)
	movq	d@GOTPCREL(%rip), %rbx
	movb	$0, (%rbx)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	EnemyParty@GOTPCREL(%rip), %r13
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_217
# %bb.74:                               #   in Loop: Header=BB1_8 Depth=1
	movq	32(%r13), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_217
# %bb.75:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_217
# %bb.76:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8367802884018501459, %rcx      # imm = 0x7420686374697753
	xorq	%rcx, %rax
	movq	5(%r12), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_219
# %bb.77:                               #   in Loop: Header=BB1_8 Depth=1
	movq	40(%r13), %rax
	movslq	(%rax), %r13
	movq	c@GOTPCREL(%rip), %rbp
	movb	$0, (%rbp)
	movq	d@GOTPCREL(%rip), %rbx
	movb	$0, (%rbx)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%rbp, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	EnemyParty@GOTPCREL(%rip), %r13
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	__strcat_chk@PLT
	movslq	%ebp, %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_219
# %bb.78:                               #   in Loop: Header=BB1_8 Depth=1
	movq	40(%r13), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_219
# %bb.79:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_219
# %bb.80:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%r12), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB1_83
# %bb.81:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%r12), %ecx
	orl	%eax, %ecx
	je	.LBB1_83
# %bb.82:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%r12), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	jne	.LBB1_44
.LBB1_83:                               #   in Loop: Header=BB1_8 Depth=1
	movq	EnemyParty@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.79(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r13), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.80(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r13), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.35(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r13), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.36(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r13), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.37(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r13), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.38(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.81(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%r12, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r12, %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r12,%rax)
	movl	(%r12), %eax
	movl	$12624, %ecx                    # imm = 0x3150
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	leaq	.L.str.82(%rip), %rsi
	je	.LBB1_236
# %bb.84:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_232
# %bb.85:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_233
# %bb.86:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_234
# %bb.87:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_235
# %bb.88:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	jne	.LBB1_239
# %bb.89:                               #   in Loop: Header=BB1_8 Depth=1
	movq	EnemyParty@GOTPCREL(%rip), %rax
	leaq	40(%rax), %r13
	leaq	.L.str.77(%rip), %rsi
	jmp	.LBB1_236
.LBB1_90:                               #   in Loop: Header=BB1_8 Depth=1
	leaq	48(%rbp), %rax
	movq	%rax, (%r14)
	movq	Nothing@GOTPCREL(%rip), %rax
	cmpq	%rax, 48(%rbp)
	je	.LBB1_6
# %bb.91:                               #   in Loop: Header=BB1_8 Depth=1
	cmpb	$0, 56(%rbp)
	jne	.LBB1_47
	jmp	.LBB1_6
.LBB1_92:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%r13), %rax
	leaq	32(%rax), %rcx
	movq	EnemyTurn@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movq	Nothing@GOTPCREL(%rip), %rcx
	cmpq	%rcx, 32(%rax)
	je	.LBB1_6
# %bb.93:                               #   in Loop: Header=BB1_8 Depth=1
	cmpb	$0, 40(%rax)
	je	.LBB1_6
.LBB1_94:                               #   in Loop: Header=BB1_8 Depth=1
	movq	Reset@GOTPCREL(%rip), %rbx
	cmpb	$0, (%rbx)
	jne	.LBB1_7
# %bb.95:                               #   in Loop: Header=BB1_8 Depth=1
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	jmp	.LBB1_97
.LBB1_96:                               #   in Loop: Header=BB1_8 Depth=1
	movq	Execute@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB1_109
.LBB1_97:                               #   in Loop: Header=BB1_8 Depth=1
	movq	Damage@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	EnemyDamage@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	(%r14), %rax
	movq	(%rax), %rcx
	movzbl	23(%rcx), %edx
	movq	(%r15), %rax
	movq	(%rax), %rsi
	movsbl	12(%rsi), %edi
	movss	.LCPI1_5(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cmpl	%edi, %edx
	movq	EnemyTurn@GOTPCREL(%rip), %rbp
	je	.LBB1_99
# %bb.98:                               #   in Loop: Header=BB1_8 Depth=1
	movsbl	13(%rsi), %esi
	xorl	%edi, %edi
	cmpl	%esi, %edx
	sete	%dil
	leaq	.LCPI1_6(%rip), %rdx
	movss	(%rdx,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
.LBB1_99:                               #   in Loop: Header=BB1_8 Depth=1
	movq	STAB@GOTPCREL(%rip), %rdx
	movss	%xmm0, (%rdx)
	movq	(%rbp), %rdx
	movq	(%rdx), %rsi
	movzbl	23(%rsi), %edi
	movq	(%r13), %rdx
	movq	(%rdx), %rbp
	movsbl	12(%rbp), %ebx
	movss	.LCPI1_5(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cmpl	%ebx, %edi
	je	.LBB1_101
# %bb.100:                              #   in Loop: Header=BB1_8 Depth=1
	movsbl	13(%rbp), %ebp
	xorl	%ebx, %ebx
	cmpl	%ebp, %edi
	sete	%bl
	leaq	.LCPI1_6(%rip), %rdi
	movss	(%rdi,%rbx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
.LBB1_101:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemySTAB@GOTPCREL(%rip), %rdi
	movss	%xmm0, (%rdi)
	movzbl	25(%rcx), %ecx
	movzbl	25(%rsi), %ebx
	cmpb	%bl, %cl
	jne	.LBB1_110
# %bb.102:                              #   in Loop: Header=BB1_8 Depth=1
	movl	124(%rax), %ecx
	movl	124(%rdx), %edx
	movb	$1, %al
	cmpl	%edx, %ecx
	movq	EnemyTurn@GOTPCREL(%rip), %rbp
	ja	.LBB1_113
# %bb.103:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	%edx, %ecx
	jb	.LBB1_112
# %bb.104:                              #   in Loop: Header=BB1_8 Depth=1
	callq	rand@PLT
	notb	%al
	andb	$1, %al
	jmp	.LBB1_113
.LBB1_105:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	64(%rbp), %rax
	movq	%rax, (%r14)
	movq	Nothing@GOTPCREL(%rip), %rax
	cmpq	%rax, 64(%rbp)
	je	.LBB1_6
# %bb.106:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$0, 72(%rbp)
	jne	.LBB1_47
	jmp	.LBB1_6
.LBB1_107:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	48(%rbp), %rax
	movq	EnemyTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	Nothing@GOTPCREL(%rip), %rax
	cmpq	%rax, 48(%rbp)
	je	.LBB1_6
.LBB1_108:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$0, 40(%rbp)
	jne	.LBB1_94
	jmp	.LBB1_6
.LBB1_109:                              #   in Loop: Header=BB1_8 Depth=1
	movq	Display@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	movq	EnemyTurn@GOTPCREL(%rip), %rbp
	jne	.LBB1_159
	jmp	.LBB1_201
.LBB1_110:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$1, %al
	movq	EnemyTurn@GOTPCREL(%rip), %rbp
	jg	.LBB1_113
# %bb.111:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	%bl, %cl
	jge	.LBB1_114
.LBB1_112:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
.LBB1_113:                              #   in Loop: Header=BB1_8 Depth=1
	movq	First@GOTPCREL(%rip), %rcx
	movb	%al, (%rcx)
.LBB1_114:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movzbl	(%rax), %ecx
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	testb	%cl, %cl
	je	.LBB1_120
# %bb.115:                              #   in Loop: Header=BB1_8 Depth=1
	testb	%al, %al
	jne	.LBB1_120
# %bb.116:                              #   in Loop: Header=BB1_8 Depth=1
	movq	First@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
.LBB1_117:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemySwitchSave@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movq	Temp@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movq	(%r13), %rcx
	movq	%rcx, (%rax)
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	EnemyHit@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB1_118:                              #   in Loop: Header=BB1_8 Depth=1
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB1_128
# %bb.119:                              #   in Loop: Header=BB1_8 Depth=1
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movq	Temp@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movq	(%r15), %rcx
	movq	%rcx, (%rax)
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	PlayerHit@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	jmp	.LBB1_158
.LBB1_120:                              #   in Loop: Header=BB1_8 Depth=1
	testb	%cl, %cl
	jne	.LBB1_123
# %bb.121:                              #   in Loop: Header=BB1_8 Depth=1
	testb	%al, %al
	je	.LBB1_123
# %bb.122:                              #   in Loop: Header=BB1_8 Depth=1
	movq	First@GOTPCREL(%rip), %rcx
	movb	$1, (%rcx)
	jmp	.LBB1_124
.LBB1_123:                              #   in Loop: Header=BB1_8 Depth=1
	movq	First@GOTPCREL(%rip), %rdx
	cmpb	$0, (%rdx)
	je	.LBB1_143
.LBB1_124:                              #   in Loop: Header=BB1_8 Depth=1
	testb	%al, %al
	je	.LBB1_135
# %bb.125:                              #   in Loop: Header=BB1_8 Depth=1
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movq	Temp@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movq	(%r15), %rcx
	movq	%rcx, (%rax)
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	PlayerHit@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB1_126:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB1_139
# %bb.127:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemySwitchSave@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movq	Temp@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movq	(%r13), %rcx
	movq	%rcx, (%rax)
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	EnemyHit@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	jmp	.LBB1_158
.LBB1_128:                              #   in Loop: Header=BB1_8 Depth=1
	callq	rand@PLT
	cltq
	imulq	$1374389535, %rax, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movq	(%r14), %rcx
	movq	(%rcx), %rcx
	movzbl	21(%rcx), %edx
	cmpl	%edx, %eax
	movq	PlayerHit@GOTPCREL(%rip), %rax
	setl	(%rax)
	movzbl	24(%rcx), %eax
	cmpb	$2, %al
	je	.LBB1_148
# %bb.129:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$1, %al
	jne	.LBB1_158
# %bb.130:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r15), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB1_158
# %bb.131:                              #   in Loop: Header=BB1_8 Depth=1
	movl	8(%rax), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	imulq	$1717986919, %rdx, %rdx         # imm = 0x66666667
	movq	%rdx, %rsi
	sarq	$33, %rsi
	shrq	$63, %rdx
	addl	%esi, %edx
	addl	$2, %edx
	imull	108(%rax), %edx
	movzbl	20(%rcx), %eax
	imull	%edx, %eax
	movq	(%r13), %rsi
	xorl	%edx, %edx
	divl	112(%rsi)
                                        # kill: def $eax killed $eax def $rax
	imulq	$1374389535, %rax, %rax         # imm = 0x51EB851F
	shrq	$36, %rax
	addl	$2, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	STAB@GOTPCREL(%rip), %rax
	mulss	(%rax), %xmm0
	movzbl	23(%rcx), %eax
	movq	(%rsi), %rcx
	movsbq	12(%rcx), %rdx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movsbq	13(%rcx), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 12(%rsp)                 # 4-byte Spill
	jmp	.LBB1_150
.LBB1_132:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	80(%rbp), %rax
	movq	%rax, (%r14)
	movq	Nothing@GOTPCREL(%rip), %rax
	cmpq	%rax, 80(%rbp)
	je	.LBB1_6
# %bb.133:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$0, 88(%rbp)
	jne	.LBB1_47
	jmp	.LBB1_6
.LBB1_134:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	64(%rbp), %rax
	movq	EnemyTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	Nothing@GOTPCREL(%rip), %rax
	cmpq	%rax, 64(%rbp)
	jne	.LBB1_108
	jmp	.LBB1_6
.LBB1_135:                              #   in Loop: Header=BB1_8 Depth=1
	callq	rand@PLT
	cltq
	imulq	$1374389535, %rax, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movq	(%r14), %rcx
	movq	(%rcx), %rcx
	movzbl	21(%rcx), %edx
	cmpl	%edx, %eax
	movq	PlayerHit@GOTPCREL(%rip), %rax
	setl	(%rax)
	movzbl	24(%rcx), %eax
	cmpb	$2, %al
	je	.LBB1_151
# %bb.136:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$1, %al
	jne	.LBB1_126
# %bb.137:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r15), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB1_126
# %bb.138:                              #   in Loop: Header=BB1_8 Depth=1
	movl	8(%rax), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	imulq	$1717986919, %rdx, %rdx         # imm = 0x66666667
	movq	%rdx, %rsi
	sarq	$33, %rsi
	shrq	$63, %rdx
	addl	%esi, %edx
	addl	$2, %edx
	imull	108(%rax), %edx
	movzbl	20(%rcx), %eax
	imull	%edx, %eax
	movq	(%r13), %rsi
	xorl	%edx, %edx
	divl	112(%rsi)
                                        # kill: def $eax killed $eax def $rax
	imulq	$1374389535, %rax, %rax         # imm = 0x51EB851F
	shrq	$36, %rax
	addl	$2, %eax
	cvtsi2ss	%eax, %xmm0
	movq	STAB@GOTPCREL(%rip), %rax
	mulss	(%rax), %xmm0
	movzbl	23(%rcx), %eax
	movq	(%rsi), %rcx
	movsbq	12(%rcx), %rdx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movsbq	13(%rcx), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 12(%rsp)                 # 4-byte Spill
	jmp	.LBB1_153
.LBB1_139:                              #   in Loop: Header=BB1_8 Depth=1
	callq	rand@PLT
	cltq
	imulq	$1374389535, %rax, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movq	(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	21(%rcx), %edx
	cmpl	%edx, %eax
	movq	EnemyHit@GOTPCREL(%rip), %rax
	setl	(%rax)
	movzbl	24(%rcx), %eax
	cmpb	$2, %al
	je	.LBB1_154
# %bb.140:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$1, %al
	jne	.LBB1_158
# %bb.141:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r13), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB1_158
# %bb.142:                              #   in Loop: Header=BB1_8 Depth=1
	movl	8(%rax), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	imulq	$1717986919, %rdx, %rdx         # imm = 0x66666667
	movq	%rdx, %rsi
	sarq	$33, %rsi
	shrq	$63, %rdx
	addl	%esi, %edx
	addl	$2, %edx
	imull	108(%rax), %edx
	movzbl	20(%rcx), %eax
	imull	%edx, %eax
	movq	(%r15), %rsi
	xorl	%edx, %edx
	divl	112(%rsi)
	jmp	.LBB1_156
.LBB1_143:                              #   in Loop: Header=BB1_8 Depth=1
	testb	%cl, %cl
	jne	.LBB1_117
# %bb.144:                              #   in Loop: Header=BB1_8 Depth=1
	callq	rand@PLT
	cltq
	imulq	$1374389535, %rax, %rcx         # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movq	(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	21(%rcx), %edx
	cmpl	%edx, %eax
	movq	EnemyHit@GOTPCREL(%rip), %rax
	setl	(%rax)
	movzbl	24(%rcx), %eax
	cmpb	$2, %al
	je	.LBB1_206
# %bb.145:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$1, %al
	jne	.LBB1_118
# %bb.146:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r13), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB1_118
# %bb.147:                              #   in Loop: Header=BB1_8 Depth=1
	movl	8(%rax), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	imulq	$1717986919, %rdx, %rdx         # imm = 0x66666667
	movq	%rdx, %rsi
	sarq	$33, %rsi
	shrq	$63, %rdx
	addl	%esi, %edx
	addl	$2, %edx
	imull	108(%rax), %edx
	movzbl	20(%rcx), %eax
	imull	%edx, %eax
	movq	(%r15), %rsi
	xorl	%edx, %edx
	divl	112(%rsi)
	jmp	.LBB1_208
.LBB1_148:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r15), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB1_158
# %bb.149:                              #   in Loop: Header=BB1_8 Depth=1
	movl	8(%rax), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	imulq	$1717986919, %rdx, %rdx         # imm = 0x66666667
	movq	%rdx, %rsi
	sarq	$33, %rsi
	shrq	$63, %rdx
	addl	%esi, %edx
	addl	$2, %edx
	imull	116(%rax), %edx
	movzbl	20(%rcx), %eax
	imull	%edx, %eax
	movq	(%r13), %rsi
	xorl	%edx, %edx
	divl	120(%rsi)
                                        # kill: def $eax killed $eax def $rax
	imulq	$1374389535, %rax, %rax         # imm = 0x51EB851F
	shrq	$36, %rax
	addl	$2, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	STAB@GOTPCREL(%rip), %rax
	mulss	(%rax), %xmm0
	movzbl	23(%rcx), %eax
	movq	(%rsi), %rcx
	movsbq	12(%rcx), %rdx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	mulss	(%rax,%rdx,4), %xmm0
	movsbq	13(%rcx), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
.LBB1_150:                              #   in Loop: Header=BB1_8 Depth=1
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
	cvtsi2ss	%eax, %xmm0
	mulss	12(%rsp), %xmm0                 # 4-byte Folded Reload
	divss	.LCPI1_7(%rip), %xmm0
	movq	PlayerHit@GOTPCREL(%rip), %rax
	movsbl	(%rax), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movq	Damage@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movq	(%r13), %rcx
	subl	%eax, 12(%rcx)
	movq	(%r14), %rax
	jmp	.LBB1_157
.LBB1_151:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r15), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB1_126
# %bb.152:                              #   in Loop: Header=BB1_8 Depth=1
	movl	8(%rax), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	imulq	$1717986919, %rdx, %rdx         # imm = 0x66666667
	movq	%rdx, %rsi
	sarq	$33, %rsi
	shrq	$63, %rdx
	addl	%esi, %edx
	addl	$2, %edx
	imull	116(%rax), %edx
	movzbl	20(%rcx), %eax
	imull	%edx, %eax
	movq	(%r13), %rsi
	xorl	%edx, %edx
	divl	120(%rsi)
                                        # kill: def $eax killed $eax def $rax
	imulq	$1374389535, %rax, %rax         # imm = 0x51EB851F
	shrq	$36, %rax
	addl	$2, %eax
	cvtsi2ss	%eax, %xmm0
	movq	STAB@GOTPCREL(%rip), %rax
	mulss	(%rax), %xmm0
	movzbl	23(%rcx), %eax
	movq	(%rsi), %rcx
	movsbq	12(%rcx), %rdx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	mulss	(%rax,%rdx,4), %xmm0
	movsbq	13(%rcx), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
.LBB1_153:                              #   in Loop: Header=BB1_8 Depth=1
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
	cvtsi2ss	%eax, %xmm0
	mulss	12(%rsp), %xmm0                 # 4-byte Folded Reload
	divss	.LCPI1_7(%rip), %xmm0
	movq	PlayerHit@GOTPCREL(%rip), %rax
	movsbl	(%rax), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movq	Damage@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movq	(%r13), %rcx
	subl	%eax, 12(%rcx)
	movq	(%r14), %rax
	addb	$-1, 8(%rax)
	jmp	.LBB1_126
.LBB1_154:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r13), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB1_158
# %bb.155:                              #   in Loop: Header=BB1_8 Depth=1
	movl	8(%rax), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	imulq	$1717986919, %rdx, %rdx         # imm = 0x66666667
	movq	%rdx, %rsi
	sarq	$33, %rsi
	shrq	$63, %rdx
	addl	%esi, %edx
	addl	$2, %edx
	imull	116(%rax), %edx
	movzbl	20(%rcx), %eax
	imull	%edx, %eax
	movq	(%r15), %rsi
	xorl	%edx, %edx
	divl	120(%rsi)
.LBB1_156:                              #   in Loop: Header=BB1_8 Depth=1
                                        # kill: def $eax killed $eax def $rax
	imulq	$1374389535, %rax, %rax         # imm = 0x51EB851F
	shrq	$36, %rax
	addl	$2, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	EnemySTAB@GOTPCREL(%rip), %rax
	mulss	(%rax), %xmm0
	movzbl	23(%rcx), %eax
	movq	(%rsi), %rcx
	movsbq	12(%rcx), %rdx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	mulss	(%rax,%rdx,4), %xmm0
	movsbq	13(%rcx), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
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
	cvtsi2ss	%eax, %xmm0
	mulss	12(%rsp), %xmm0                 # 4-byte Folded Reload
	divss	.LCPI1_7(%rip), %xmm0
	movq	EnemyHit@GOTPCREL(%rip), %rax
	movsbl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movq	EnemyDamage@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movq	(%r15), %rcx
	subl	%eax, 12(%rcx)
	movq	(%rbp), %rax
.LBB1_157:                              #   in Loop: Header=BB1_8 Depth=1
	addb	$-1, 8(%rax)
.LBB1_158:                              #   in Loop: Header=BB1_8 Depth=1
	movq	Execute@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Display@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB1_159:                              #   in Loop: Header=BB1_8 Depth=1
	movq	First@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB1_162
# %bb.160:                              #   in Loop: Header=BB1_8 Depth=1
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	movq	(%r15), %rax
	movq	(%rax), %rdx
	je	.LBB1_164
# %bb.161:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.90(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB1_175
.LBB1_162:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	movq	(%r13), %rax
	movq	(%rax), %rdx
	je	.LBB1_169
# %bb.163:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.97(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB1_186
.LBB1_164:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r14), %rax
	movq	(%rax), %rcx
	movl	$1, %edi
	leaq	.L.str.84(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB1_174
# %bb.165:                              #   in Loop: Header=BB1_8 Depth=1
	movq	Damage@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.85(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movq	(%rax), %rax
	movzbl	23(%rax), %eax
	movq	(%r13), %rcx
	movq	(%rcx), %rcx
	movsbq	12(%rcx), %rdx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movsbq	13(%rcx), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	ucomiss	.LCPI1_8(%rip), %xmm0
	leaq	.L.str.86(%rip), %rsi
	jae	.LBB1_167
# %bb.166:                              #   in Loop: Header=BB1_8 Depth=1
	movss	.LCPI1_9(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	leaq	.L.str.87(%rip), %rsi
	jb	.LBB1_168
.LBB1_167:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB1_168:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r13), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.88(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB1_175
.LBB1_169:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rbp), %rax
	movq	(%rax), %rcx
	movl	$1, %edi
	leaq	.L.str.92(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	EnemyHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB1_185
# %bb.170:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemyDamage@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.85(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp), %rax
	movq	(%rax), %rax
	movzbl	23(%rax), %eax
	movq	(%r15), %rcx
	movq	(%rcx), %rcx
	movsbq	12(%rcx), %rdx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movsbq	13(%rcx), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	ucomiss	.LCPI1_8(%rip), %xmm0
	leaq	.L.str.86(%rip), %rsi
	jae	.LBB1_172
# %bb.171:                              #   in Loop: Header=BB1_8 Depth=1
	movss	.LCPI1_9(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	leaq	.L.str.87(%rip), %rsi
	jb	.LBB1_173
.LBB1_172:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB1_173:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r15), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.96(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB1_186
.LBB1_174:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.89(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB1_175:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r13), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB1_198
# %bb.176:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemySwitch@GOTPCREL(%rip), %rcx
	cmpb	$0, (%rcx)
	movq	(%rax), %rdx
	je	.LBB1_178
# %bb.177:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.95(%rip), %rsi
	jmp	.LBB1_189
.LBB1_178:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rbp), %rax
	movq	(%rax), %rcx
	movl	$1, %edi
	leaq	.L.str.92(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	EnemyHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB1_183
# %bb.179:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemyDamage@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.85(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%rbp), %rax
	movq	(%rax), %rax
	movzbl	23(%rax), %eax
	movq	(%r15), %rcx
	movq	(%rcx), %rcx
	movsbq	12(%rcx), %rdx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movsbq	13(%rcx), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	ucomiss	.LCPI1_8(%rip), %xmm0
	leaq	.L.str.86(%rip), %rsi
	jae	.LBB1_181
# %bb.180:                              #   in Loop: Header=BB1_8 Depth=1
	movss	.LCPI1_9(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	leaq	.L.str.87(%rip), %rsi
	jb	.LBB1_182
.LBB1_181:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB1_182:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r15), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.93(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB1_184
.LBB1_183:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.89(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB1_184:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r15), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB1_200
	jmp	.LBB1_190
.LBB1_185:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.89(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB1_186:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r15), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB1_190
# %bb.187:                              #   in Loop: Header=BB1_8 Depth=1
	movq	PlayerSwitch@GOTPCREL(%rip), %rcx
	cmpb	$0, (%rcx)
	movq	(%rax), %rdx
	je	.LBB1_191
# %bb.188:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.99(%rip), %rsi
.LBB1_189:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB1_200
.LBB1_190:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.94(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	jmp	.LBB1_199
.LBB1_191:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r14), %rax
	movq	(%rax), %rcx
	movl	$1, %edi
	leaq	.L.str.84(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerHit@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB1_196
# %bb.192:                              #   in Loop: Header=BB1_8 Depth=1
	movq	Damage@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.85(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movq	(%rax), %rax
	movzbl	23(%rax), %eax
	movq	(%r13), %rcx
	movq	(%rcx), %rcx
	movsbq	12(%rcx), %rdx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	movss	(%rax,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movsbq	13(%rcx), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	ucomiss	.LCPI1_8(%rip), %xmm0
	leaq	.L.str.86(%rip), %rsi
	jae	.LBB1_194
# %bb.193:                              #   in Loop: Header=BB1_8 Depth=1
	movss	.LCPI1_9(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	leaq	.L.str.87(%rip), %rsi
	jb	.LBB1_195
.LBB1_194:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB1_195:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r13), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.98(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB1_197
.LBB1_196:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.89(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB1_197:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r13), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB1_200
.LBB1_198:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.91(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	xorl	%edi, %edi
.LBB1_199:                              #   in Loop: Header=BB1_8 Depth=1
	callq	SwitchIn@PLT
.LBB1_200:                              #   in Loop: Header=BB1_8 Depth=1
	movq	Display@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	Retrieve@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
.LBB1_201:                              #   in Loop: Header=BB1_8 Depth=1
	movq	BattleMode@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_8
	jmp	.LBB1_240
.LBB1_202:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	8(%rbx), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	8(%rbx), %rax
.LBB1_203:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	.L.str.21(%rip), %rcx
	cmpq	%rcx, (%rax)
	je	.LBB1_6
# %bb.204:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, 12(%rax)
	jg	.LBB1_47
	jmp	.LBB1_6
.LBB1_205:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	80(%rbp), %rax
	movq	EnemyTurn@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	Nothing@GOTPCREL(%rip), %rax
	cmpq	%rax, 80(%rbp)
	jne	.LBB1_108
	jmp	.LBB1_6
.LBB1_206:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%r13), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB1_118
# %bb.207:                              #   in Loop: Header=BB1_8 Depth=1
	movl	8(%rax), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	imulq	$1717986919, %rdx, %rdx         # imm = 0x66666667
	movq	%rdx, %rsi
	sarq	$33, %rsi
	shrq	$63, %rdx
	addl	%esi, %edx
	addl	$2, %edx
	imull	116(%rax), %edx
	movzbl	20(%rcx), %eax
	imull	%edx, %eax
	movq	(%r15), %rsi
	xorl	%edx, %edx
	divl	120(%rsi)
.LBB1_208:                              #   in Loop: Header=BB1_8 Depth=1
                                        # kill: def $eax killed $eax def $rax
	imulq	$1374389535, %rax, %rax         # imm = 0x51EB851F
	shrq	$36, %rax
	addl	$2, %eax
	cvtsi2ss	%eax, %xmm0
	movq	EnemySTAB@GOTPCREL(%rip), %rax
	mulss	(%rax), %xmm0
	movzbl	23(%rcx), %eax
	movq	(%rsi), %rcx
	movsbq	12(%rcx), %rdx
	imulq	$76, %rax, %rax
	addq	TypeChart@GOTPCREL(%rip), %rax
	mulss	(%rax,%rdx,4), %xmm0
	movsbq	13(%rcx), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
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
	cvtsi2ss	%eax, %xmm0
	mulss	12(%rsp), %xmm0                 # 4-byte Folded Reload
	divss	.LCPI1_7(%rip), %xmm0
	movq	EnemyHit@GOTPCREL(%rip), %rax
	movsbl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movq	EnemyDamage@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movq	(%r15), %rcx
	subl	%eax, 12(%rcx)
	movq	(%rbp), %rax
	addb	$-1, 8(%rax)
	jmp	.LBB1_118
.LBB1_209:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	8(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	8(%r13), %rax
.LBB1_210:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	.L.str.21(%rip), %rcx
	cmpq	%rcx, (%rax)
	je	.LBB1_6
# %bb.211:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, 12(%rax)
	jg	.LBB1_94
	jmp	.LBB1_6
.LBB1_212:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	16(%rbx), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	16(%rbx), %rax
	jmp	.LBB1_203
.LBB1_213:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	16(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	16(%r13), %rax
	jmp	.LBB1_210
.LBB1_214:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	24(%rbx), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	24(%rbx), %rax
	jmp	.LBB1_203
.LBB1_215:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	24(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	24(%r13), %rax
	jmp	.LBB1_210
.LBB1_216:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	32(%rbx), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	32(%rbx), %rax
	jmp	.LBB1_203
.LBB1_217:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	32(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	32(%r13), %rax
	jmp	.LBB1_210
.LBB1_218:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	40(%rbx), %rax
	movq	PlayerSwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerSwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	40(%rbx), %rax
	jmp	.LBB1_203
.LBB1_219:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	40(%r13), %rax
	movq	EnemySwitchSave@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemySwitch@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	40(%r13), %rax
	jmp	.LBB1_210
.LBB1_220:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r15, %rbp
	movq	(%r15), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.33(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.34(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.35(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.36(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.37(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.38(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.39(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%r12, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%r12, %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%r12,%rax)
	movl	(%r12), %eax
	movl	$12624, %ecx                    # imm = 0x3150
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_227
# %bb.221:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_228
# %bb.222:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_229
# %bb.223:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_230
# %bb.224:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	je	.LBB1_231
# %bb.225:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%r12), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%r12), %ecx
	orw	%ax, %cx
	jne	.LBB1_239
# %bb.226:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.77(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	%r15, %rbp
	movq	40(%r15), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r15), %rax
	jmp	.LBB1_237
.LBB1_227:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.41(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	%r15, %rbp
	movq	(%r15), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.42(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.43(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.44(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.45(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.46(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.47(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.48(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.49(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movq	32(%rax), %rdx
	movzbl	22(%rdx), %ecx
	cvtsi2ss	%ecx, %xmm0
	movzbl	40(%rax), %ecx
	mulss	44(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$1, %edi
	leaq	.L.str.50(%rip), %rsi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movq	48(%rax), %rdx
	movzbl	22(%rdx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	56(%rax), %ecx
	mulss	60(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$1, %edi
	leaq	.L.str.51(%rip), %rsi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movq	64(%rax), %rdx
	movzbl	22(%rdx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	72(%rax), %ecx
	mulss	76(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$1, %edi
	leaq	.L.str.52(%rip), %rsi
	movb	$1, %al
	callq	__printf_chk@PLT
	movq	(%r15), %rax
	movq	80(%rax), %rdx
	movzbl	22(%rdx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movzbl	88(%rax), %ecx
	mulss	92(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$1, %edi
	leaq	.L.str.53(%rip), %rsi
	movb	$1, %al
	callq	__printf_chk@PLT
	jmp	.LBB1_239
.LBB1_228:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.54(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	%r15, %rbp
	movq	8(%r15), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.55(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.56(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.44(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.45(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.46(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.47(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.48(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.57(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.58(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.59(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.60(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r15), %rax
	movq	80(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.61(%rip), %rsi
	jmp	.LBB1_238
.LBB1_229:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.62(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	%r15, %rbp
	movq	16(%r15), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r15), %rax
	jmp	.LBB1_237
.LBB1_230:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.75(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	%r15, %rbp
	movq	24(%r15), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r15), %rax
	jmp	.LBB1_237
.LBB1_231:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	leaq	.L.str.76(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	%r15, %rbp
	movq	32(%r15), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r15), %rax
	jmp	.LBB1_237
.LBB1_232:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemyParty@GOTPCREL(%rip), %rax
	leaq	8(%rax), %r13
	leaq	.L.str.54(%rip), %rsi
	jmp	.LBB1_236
.LBB1_233:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemyParty@GOTPCREL(%rip), %rax
	leaq	16(%rax), %r13
	leaq	.L.str.62(%rip), %rsi
	jmp	.LBB1_236
.LBB1_234:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemyParty@GOTPCREL(%rip), %rax
	leaq	24(%rax), %r13
	leaq	.L.str.75(%rip), %rsi
	jmp	.LBB1_236
.LBB1_235:                              #   in Loop: Header=BB1_8 Depth=1
	movq	EnemyParty@GOTPCREL(%rip), %rax
	leaq	32(%rax), %r13
	leaq	.L.str.76(%rip), %rsi
.LBB1_236:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r13), %rax
.LBB1_237:                              #   in Loop: Header=BB1_8 Depth=1
	movq	80(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.74(%rip), %rsi
.LBB1_238:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	callq	__printf_chk@PLT
.LBB1_239:                              #   in Loop: Header=BB1_8 Depth=1
	movq	Reset@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	EnemyParty@GOTPCREL(%rip), %r13
	movq	%rax, %rbx
	jmp	.LBB1_7
.LBB1_240:
	xorl	%eax, %eax
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
.Lfunc_end1:
	.size	Battle, .Lfunc_end1-Battle
	.cfi_endproc
                                        # -- End function
	.globl	Switcheroo                      # -- Begin function Switcheroo
	.p2align	4, 0x90
	.type	Switcheroo,@function
Switcheroo:                             # @Switcheroo
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	Switcheroo, .Lfunc_end2-Switcheroo
	.cfi_endproc
                                        # -- End function
	.globl	Switcheroo2                     # -- Begin function Switcheroo2
	.p2align	4, 0x90
	.type	Switcheroo2,@function
Switcheroo2:                            # @Switcheroo2
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemyParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	Switcheroo2, .Lfunc_end3-Switcheroo2
	.cfi_endproc
                                        # -- End function
	.globl	Switcheroo3                     # -- Begin function Switcheroo3
	.p2align	4, 0x90
	.type	Switcheroo3,@function
Switcheroo3:                            # @Switcheroo3
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	(%rax), %rax
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	(%rdi), %rsi
	movq	%rdx, (%rsi)
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	Switcheroo3, .Lfunc_end4-Switcheroo3
	.cfi_endproc
                                        # -- End function
	.globl	Switcheroo4                     # -- Begin function Switcheroo4
	.p2align	4, 0x90
	.type	Switcheroo4,@function
Switcheroo4:                            # @Switcheroo4
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	(%rax), %rax
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	EnemyParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	(%rdi), %rsi
	movq	%rdx, (%rsi)
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	Switcheroo4, .Lfunc_end5-Switcheroo4
	.cfi_endproc
                                        # -- End function
	.globl	SwitchIn                        # -- Begin function SwitchIn
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
	movabsq	$8367802884018501459, %r15      # imm = 0x7420686374697753
	testl	%edi, %edi
	sete	%bpl
	movq	x@GOTPCREL(%rip), %rbx
	movq	EnemyParty@GOTPCREL(%rip), %r14
	movq	c@GOTPCREL(%rip), %r13
	movq	d@GOTPCREL(%rip), %r12
	leaq	.L.str.19(%rip), %rax
	cltq
	movq	%rax, (%rsp)                    # 8-byte Spill
	.p2align	4, 0x90
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movl	$1, %edi
	testb	$1, %bpl
	je	.LBB6_25
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	leaq	.L.str.100(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_52
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movq	8(%r14), %rax
	movq	%r14, %rbp
	movslq	(%rax), %r14
	movb	$0, (%r13)
	movb	$0, (%r12)
	movl	$64, %edx
	movq	%r13, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbp, %r14
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__strcat_chk@PLT
	movslq	%r13d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_52
# %bb.4:                                #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_52
# %bb.5:                                #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_53
# %bb.6:                                #   in Loop: Header=BB6_1 Depth=1
	movq	16(%r14), %rax
	movslq	(%rax), %rbp
	movb	$0, (%r13)
	movb	$0, (%r12)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__strcat_chk@PLT
	movslq	%r13d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_53
# %bb.7:                                #   in Loop: Header=BB6_1 Depth=1
	movq	16(%r14), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_53
# %bb.8:                                #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_53
# %bb.9:                                #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_57
# %bb.10:                               #   in Loop: Header=BB6_1 Depth=1
	movq	24(%r14), %rax
	movslq	(%rax), %rbp
	movb	$0, (%r13)
	movb	$0, (%r12)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__strcat_chk@PLT
	movslq	%r13d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_57
# %bb.11:                               #   in Loop: Header=BB6_1 Depth=1
	movq	24(%r14), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_57
# %bb.12:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_57
# %bb.13:                               #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_59
# %bb.14:                               #   in Loop: Header=BB6_1 Depth=1
	movq	32(%r14), %rax
	movslq	(%rax), %rbp
	movb	$0, (%r13)
	movb	$0, (%r12)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__strcat_chk@PLT
	movslq	%r13d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_59
# %bb.15:                               #   in Loop: Header=BB6_1 Depth=1
	movq	32(%r14), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_59
# %bb.16:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_59
# %bb.17:                               #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_61
# %bb.18:                               #   in Loop: Header=BB6_1 Depth=1
	movq	40(%r14), %rax
	movslq	(%rax), %rbp
	movb	$0, (%r13)
	movb	$0, (%r12)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__strcat_chk@PLT
	movslq	%r13d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_61
# %bb.19:                               #   in Loop: Header=BB6_1 Depth=1
	movq	40(%r14), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_61
# %bb.20:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_61
# %bb.21:                               #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%rbx), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_63
# %bb.22:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%rbx), %ecx
	orl	%eax, %ecx
	je	.LBB6_63
# %bb.23:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%rbx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB6_63
# %bb.24:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.104(%rip), %rsi
	jmp	.LBB6_55
	.p2align	4, 0x90
.LBB6_25:                               #   in Loop: Header=BB6_1 Depth=1
	leaq	.L.str.105(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14161849074589800, %rdx        # imm = 0x3250206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	movq	PlayerParty@GOTPCREL(%rip), %rbp
	je	.LBB6_49
# %bb.26:                               #   in Loop: Header=BB6_1 Depth=1
	movq	8(%rbp), %rax
	movslq	(%rax), %rbp
	movb	$0, (%r13)
	movb	$0, (%r12)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	PlayerParty@GOTPCREL(%rip), %rbp
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__strcat_chk@PLT
	movslq	%r13d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_49
# %bb.27:                               #   in Loop: Header=BB6_1 Depth=1
	movq	8(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_49
# %bb.28:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_49
# %bb.29:                               #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14443324051300456, %rdx        # imm = 0x3350206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_56
# %bb.30:                               #   in Loop: Header=BB6_1 Depth=1
	movq	16(%rbp), %rax
	movslq	(%rax), %rbp
	movb	$0, (%r13)
	movb	$0, (%r12)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	PlayerParty@GOTPCREL(%rip), %rbp
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__strcat_chk@PLT
	movslq	%r13d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_56
# %bb.31:                               #   in Loop: Header=BB6_1 Depth=1
	movq	16(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_56
# %bb.32:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_56
# %bb.33:                               #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$14724799028011112, %rdx        # imm = 0x3450206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_58
# %bb.34:                               #   in Loop: Header=BB6_1 Depth=1
	movq	24(%rbp), %rax
	movslq	(%rax), %rbp
	movb	$0, (%r13)
	movb	$0, (%r12)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	PlayerParty@GOTPCREL(%rip), %rbp
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__strcat_chk@PLT
	movslq	%r13d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_58
# %bb.35:                               #   in Loop: Header=BB6_1 Depth=1
	movq	24(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_58
# %bb.36:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_58
# %bb.37:                               #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15006274004721768, %rdx        # imm = 0x3550206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_60
# %bb.38:                               #   in Loop: Header=BB6_1 Depth=1
	movq	32(%rbp), %rax
	movslq	(%rax), %rbp
	movb	$0, (%r13)
	movb	$0, (%r12)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	PlayerParty@GOTPCREL(%rip), %rbp
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__strcat_chk@PLT
	movslq	%r13d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_60
# %bb.39:                               #   in Loop: Header=BB6_1 Depth=1
	movq	32(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_60
# %bb.40:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_60
# %bb.41:                               #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rax
	xorq	%r15, %rax
	movq	5(%rbx), %rcx
	movabsq	$15287748981432424, %rdx        # imm = 0x3650206F742068
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_62
# %bb.42:                               #   in Loop: Header=BB6_1 Depth=1
	movq	40(%rbp), %rax
	movslq	(%rax), %rbp
	movb	$0, (%r13)
	movb	$0, (%r12)
	leaq	.L.str.19(%rip), %rax
	movslq	%eax, %rsi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	PlayerParty@GOTPCREL(%rip), %rbp
	callq	__strcpy_chk@PLT
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__strcat_chk@PLT
	movslq	%r13d, %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_62
# %bb.43:                               #   in Loop: Header=BB6_1 Depth=1
	movq	40(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB6_62
# %bb.44:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_62
# %bb.45:                               #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rax
	movabsq	$8241956893437028694, %rcx      # imm = 0x7261502077656956
	xorq	%rcx, %rax
	movq	3(%rbx), %rcx
	movabsq	$34186506789724279, %rdx        # imm = 0x79747261502077
	xorq	%rdx, %rcx
	orq	%rax, %rcx
	je	.LBB6_70
# %bb.46:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$2003134806, %ecx               # imm = 0x77656956
	xorl	%ecx, %eax
	movzbl	4(%rbx), %ecx
	orl	%eax, %ecx
	je	.LBB6_70
# %bb.47:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$1953653072, %ecx               # imm = 0x74726150
	xorl	%ecx, %eax
	movzwl	4(%rbx), %ecx
	xorl	$121, %ecx
	orl	%eax, %ecx
	je	.LBB6_70
# %bb.48:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%ebp, %ebp
	movl	$1, %edi
	leaq	.L.str.104(%rip), %rsi
	jmp	.LBB6_51
	.p2align	4, 0x90
.LBB6_49:                               #   in Loop: Header=BB6_1 Depth=1
	movq	8(%rbp), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB6_89
.LBB6_50:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%ebp, %ebp
	movl	$1, %edi
	leaq	.L.str.102(%rip), %rsi
.LBB6_51:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_52:                               #   in Loop: Header=BB6_1 Depth=1
	movq	8(%r14), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB6_54
	jmp	.LBB6_91
.LBB6_53:                               #   in Loop: Header=BB6_1 Depth=1
	movq	16(%r14), %rax
	cmpl	$0, 12(%rax)
	jg	.LBB6_92
.LBB6_54:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.102(%rip), %rsi
.LBB6_55:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movb	$1, %bpl
	jmp	.LBB6_1
.LBB6_56:                               #   in Loop: Header=BB6_1 Depth=1
	movq	16(%rbp), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB6_50
	jmp	.LBB6_95
.LBB6_57:                               #   in Loop: Header=BB6_1 Depth=1
	movq	24(%r14), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB6_54
	jmp	.LBB6_96
.LBB6_58:                               #   in Loop: Header=BB6_1 Depth=1
	movq	24(%rbp), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB6_50
	jmp	.LBB6_97
.LBB6_59:                               #   in Loop: Header=BB6_1 Depth=1
	movq	32(%r14), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB6_54
	jmp	.LBB6_98
.LBB6_60:                               #   in Loop: Header=BB6_1 Depth=1
	movq	32(%rbp), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB6_50
	jmp	.LBB6_99
.LBB6_61:                               #   in Loop: Header=BB6_1 Depth=1
	movq	40(%r14), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB6_54
	jmp	.LBB6_100
.LBB6_62:                               #   in Loop: Header=BB6_1 Depth=1
	movq	40(%rbp), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB6_50
	jmp	.LBB6_101
.LBB6_63:                               #   in Loop: Header=BB6_1 Depth=1
	movq	(%r14), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.79(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.80(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.35(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.36(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.37(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.38(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.81(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movl	(%rbx), %eax
	movl	$12624, %ecx                    # imm = 0x3150
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_77
# %bb.64:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_78
# %bb.65:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_80
# %bb.66:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_82
# %bb.67:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_84
# %bb.68:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	movb	$1, %bpl
	jne	.LBB6_1
# %bb.69:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.77(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%r14), %rax
	jmp	.LBB6_88
.LBB6_70:                               #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbp), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.79(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%rbp), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.80(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.35(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.36(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%rbp), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.37(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	40(%rbp), %rax
	movq	(%rax), %rdx
	movl	12(%rax), %ecx
	movl	104(%rax), %r8d
	movl	$1, %edi
	leaq	.L.str.38(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movl	$1, %edi
	leaq	.L.str.81(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movl	$31, %esi
	callq	fgets@PLT
	movq	%rbx, %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcspn@PLT
	movb	$0, (%rbx,%rax)
	movl	(%rbx), %eax
	movl	$12624, %ecx                    # imm = 0x3150
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_79
# %bb.71:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$12880, %ecx                    # imm = 0x3250
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_81
# %bb.72:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13136, %ecx                    # imm = 0x3350
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_83
# %bb.73:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13392, %ecx                    # imm = 0x3450
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_86
# %bb.74:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13648, %ecx                    # imm = 0x3550
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	orw	%ax, %cx
	je	.LBB6_87
# %bb.75:                               #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	movl	$13904, %ecx                    # imm = 0x3650
	xorl	%ecx, %eax
	movzbl	2(%rbx), %ecx
	xorl	%ebp, %ebp
	orw	%ax, %cx
	jne	.LBB6_1
# %bb.76:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%ebp, %ebp
	movl	$1, %edi
	leaq	.L.str.77(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	jmp	.LBB6_88
.LBB6_77:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.82(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	(%r14), %rax
	jmp	.LBB6_85
.LBB6_78:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.54(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	8(%r14), %rax
	jmp	.LBB6_85
.LBB6_79:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%ebp, %ebp
	movl	$1, %edi
	leaq	.L.str.82(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LBB6_88
.LBB6_80:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.62(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	16(%r14), %rax
	jmp	.LBB6_85
.LBB6_81:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%ebp, %ebp
	movl	$1, %edi
	leaq	.L.str.54(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	jmp	.LBB6_88
.LBB6_82:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.75(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	24(%r14), %rax
	jmp	.LBB6_85
.LBB6_83:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%ebp, %ebp
	movl	$1, %edi
	leaq	.L.str.62(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	jmp	.LBB6_88
.LBB6_84:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %edi
	leaq	.L.str.76(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	32(%r14), %rax
.LBB6_85:                               #   in Loop: Header=BB6_1 Depth=1
	movq	80(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.103(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movb	$1, %bpl
	jmp	.LBB6_1
.LBB6_86:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%ebp, %ebp
	movl	$1, %edi
	leaq	.L.str.75(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	jmp	.LBB6_88
.LBB6_87:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%ebp, %ebp
	movl	$1, %edi
	leaq	.L.str.76(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.63(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %edx
	movl	104(%rax), %ecx
	movl	$1, %edi
	leaq	.L.str.64(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movl	108(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.65(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movl	112(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.66(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movl	116(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.67(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movl	120(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.68(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movl	124(%rax), %edx
	movl	$1, %edi
	leaq	.L.str.69(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdx
	addq	$21, %rdx
	movl	$1, %edi
	leaq	.L.str.70(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.71(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.72(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movq	64(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	movq	PlayerParty@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
.LBB6_88:                               #   in Loop: Header=BB6_1 Depth=1
	movq	80(%rax), %rdx
	movl	$1, %edi
	leaq	.L.str.103(%rip), %rsi
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	jmp	.LBB6_1
.LBB6_89:
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%rbp), %rcx
	movq	%rcx, 8(%rbp)
.LBB6_90:
	movq	%rax, (%rbp)
	jmp	.LBB6_94
.LBB6_91:
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%r14), %rcx
	movq	%rcx, 8(%r14)
	jmp	.LBB6_93
.LBB6_92:
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%r14), %rcx
	movq	%rcx, 16(%r14)
.LBB6_93:
	movq	%rax, (%r14)
.LBB6_94:
	movq	(%rax), %rdx
	leaq	.L.str.101(%rip), %rsi
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
.LBB6_95:
	.cfi_def_cfa_offset 64
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%rbp), %rcx
	movq	%rcx, 16(%rbp)
	jmp	.LBB6_90
.LBB6_96:
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%r14), %rcx
	movq	%rcx, 24(%r14)
	jmp	.LBB6_93
.LBB6_97:
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%rbp), %rcx
	movq	%rcx, 24(%rbp)
	jmp	.LBB6_90
.LBB6_98:
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%r14), %rcx
	movq	%rcx, 32(%r14)
	jmp	.LBB6_93
.LBB6_99:
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%rbp), %rcx
	movq	%rcx, 32(%rbp)
	jmp	.LBB6_90
.LBB6_100:
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%r14), %rcx
	movq	%rcx, 40(%r14)
	jmp	.LBB6_93
.LBB6_101:
	movq	Temp@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%rbp), %rcx
	movq	%rcx, 40(%rbp)
	jmp	.LBB6_90
.Lfunc_end6:
	.size	SwitchIn, .Lfunc_end6-SwitchIn
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	callq	time@PLT
	movl	%eax, %edi
	callq	srand@PLT
	xorl	%edi, %edi
	callq	time@PLT
	leaq	.L.str.106(%rip), %rsi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	__printf_chk@PLT
	callq	Battle@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
	.cfi_endproc
                                        # -- End function
	.type	c,@object                       # @c
	.bss
	.globl	c
	.p2align	4
c:
	.zero	64
	.size	c, 64

	.type	d,@object                       # @d
	.globl	d
	.p2align	4
d:
	.zero	64
	.size	d, 64

	.type	NoPoke,@object                  # @NoPoke
	.data
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

	.type	Bulbasaur,@object               # @Bulbasaur
	.globl	Bulbasaur
Bulbasaur:
	.asciz	"Bulbasaur\000\000"
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	45                              # 0x2d
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	65                              # 0x41
	.byte	65                              # 0x41
	.byte	45                              # 0x2d
	.size	Bulbasaur, 20

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

	.type	TypeChart,@object               # @TypeChart
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

	.type	Nothing,@object                 # @Nothing
	.globl	Nothing
	.p2align	2
Nothing:
	.asciz	"Nothing\000\000\000\000\000\000\000\000\000\000\000\000"
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	2
	.zero	36
	.size	Nothing, 64

	.type	Scratch,@object                 # @Scratch
	.globl	Scratch
	.p2align	2
Scratch:
	.asciz	"Scratch\000\000\000\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	35                              # 0x23
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	2
	.zero	36
	.size	Scratch, 64

	.type	Water_Gun,@object               # @Water_Gun
	.globl	Water_Gun
	.p2align	2
Water_Gun:
	.asciz	"Water Gun\000\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	25                              # 0x19
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.zero	2
	.zero	36
	.size	Water_Gun, 64

	.type	Vine_Whip,@object               # @Vine_Whip
	.globl	Vine_Whip
	.p2align	2
Vine_Whip:
	.asciz	"Vine Whip\000\000\000\000\000\000\000\000\000\000"
	.byte	45                              # 0x2d
	.byte	100                             # 0x64
	.byte	35                              # 0x23
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	2
	.zero	36
	.size	Vine_Whip, 64

	.type	Ember,@object                   # @Ember
	.globl	Ember
	.p2align	2
Ember:
	.asciz	"Ember\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	25                              # 0x19
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.zero	2
	.long	0x3dcccccd                      # float 0.100000001
	.zero	32
	.size	Ember, 64

	.type	Quick_Attack,@object            # @Quick_Attack
	.globl	Quick_Attack
	.p2align	2
Quick_Attack:
	.asciz	"Quick Attack\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	30                              # 0x1e
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	2
	.zero	36
	.size	Quick_Attack, 64

	.type	Super_Attack,@object            # @Super_Attack
	.globl	Super_Attack
	.p2align	2
Super_Attack:
	.asciz	"Super Attack\000\000\000\000\000\000\000"
	.byte	120                             # 0x78
	.byte	70                              # 0x46
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	2
	.zero	36
	.size	Super_Attack, 64

	.type	Stone_Edge,@object              # @Stone_Edge
	.globl	Stone_Edge
	.p2align	2
Stone_Edge:
	.asciz	"Stone Edge\000\000\000\000\000\000\000\000\000"
	.byte	100                             # 0x64
	.byte	80                              # 0x50
	.byte	5                               # 0x5
	.byte	13                              # 0xd
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	2
	.zero	36
	.size	Stone_Edge, 64

	.type	Gust,@object                    # @Gust
	.globl	Gust
	.p2align	2
Gust:
	.asciz	"Gust\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.byte	40                              # 0x28
	.byte	100                             # 0x64
	.byte	35                              # 0x23
	.byte	10                              # 0xa
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.zero	2
	.zero	36
	.size	Gust, 64

	.type	Hardy,@object                   # @Hardy
	.globl	Hardy
	.p2align	2
Hardy:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.byte	0                               # 0x0
	.asciz	"Hardy\000\000"
	.zero	3
	.size	Hardy, 32

	.type	Lonely,@object                  # @Lonely
	.globl	Lonely
	.p2align	2
Lonely:
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.byte	1                               # 0x1
	.asciz	"Lonely\000"
	.zero	3
	.size	Lonely, 32

	.type	Brave,@object                   # @Brave
	.globl	Brave
	.p2align	2
Brave:
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.byte	2                               # 0x2
	.asciz	"Brave\000\000"
	.zero	3
	.size	Brave, 32

	.type	Adamant,@object                 # @Adamant
	.globl	Adamant
	.p2align	2
Adamant:
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.byte	3                               # 0x3
	.asciz	"Adamant"
	.zero	3
	.size	Adamant, 32

	.type	Naughty,@object                 # @Naughty
	.globl	Naughty
	.p2align	2
Naughty:
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.byte	4                               # 0x4
	.asciz	"Naughty"
	.zero	3
	.size	Naughty, 32

	.type	Bold,@object                    # @Bold
	.globl	Bold
	.p2align	2
Bold:
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.byte	5                               # 0x5
	.asciz	"Bold\000\000\000"
	.zero	3
	.size	Bold, 32

	.type	Docile,@object                  # @Docile
	.globl	Docile
	.p2align	2
Docile:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.byte	6                               # 0x6
	.asciz	"Docile\000"
	.zero	3
	.size	Docile, 32

	.type	Relaxed,@object                 # @Relaxed
	.globl	Relaxed
	.p2align	2
Relaxed:
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.byte	7                               # 0x7
	.asciz	"Relaxed"
	.zero	3
	.size	Relaxed, 32

	.type	Impish,@object                  # @Impish
	.globl	Impish
	.p2align	2
Impish:
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.byte	8                               # 0x8
	.asciz	"Impish\000"
	.zero	3
	.size	Impish, 32

	.type	Lax,@object                     # @Lax
	.globl	Lax
	.p2align	2
Lax:
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.byte	9                               # 0x9
	.asciz	"Lax\000\000\000\000"
	.zero	3
	.size	Lax, 32

	.type	Timid,@object                   # @Timid
	.globl	Timid
	.p2align	2
Timid:
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.byte	10                              # 0xa
	.asciz	"Timid\000\000"
	.zero	3
	.size	Timid, 32

	.type	Hasty,@object                   # @Hasty
	.globl	Hasty
	.p2align	2
Hasty:
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.byte	11                              # 0xb
	.asciz	"Hasty\000\000"
	.zero	3
	.size	Hasty, 32

	.type	Serious,@object                 # @Serious
	.globl	Serious
	.p2align	2
Serious:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.byte	12                              # 0xc
	.asciz	"Serious"
	.zero	3
	.size	Serious, 32

	.type	Jolly,@object                   # @Jolly
	.globl	Jolly
	.p2align	2
Jolly:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.byte	13                              # 0xd
	.asciz	"Jolly\000\000"
	.zero	3
	.size	Jolly, 32

	.type	Naive,@object                   # @Naive
	.globl	Naive
	.p2align	2
Naive:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f8ccccd                      # float 1.10000002
	.byte	14                              # 0xe
	.asciz	"Naive\000\000"
	.zero	3
	.size	Naive, 32

	.type	Modest,@object                  # @Modest
	.globl	Modest
	.p2align	2
Modest:
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.byte	15                              # 0xf
	.asciz	"Modest\000"
	.zero	3
	.size	Modest, 32

	.type	Mild,@object                    # @Mild
	.globl	Mild
	.p2align	2
Mild:
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.byte	16                              # 0x10
	.asciz	"Mild\000\000\000"
	.zero	3
	.size	Mild, 32

	.type	Quiet,@object                   # @Quiet
	.globl	Quiet
	.p2align	2
Quiet:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.byte	17                              # 0x11
	.asciz	"Quiet\000\000"
	.zero	3
	.size	Quiet, 32

	.type	Bashful,@object                 # @Bashful
	.globl	Bashful
	.p2align	2
Bashful:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.byte	18                              # 0x12
	.asciz	"Bashful"
	.zero	3
	.size	Bashful, 32

	.type	Rash,@object                    # @Rash
	.globl	Rash
	.p2align	2
Rash:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.byte	19                              # 0x13
	.asciz	"Rash\000\000\000"
	.zero	3
	.size	Rash, 32

	.type	Calm,@object                    # @Calm
	.globl	Calm
	.p2align	2
Calm:
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.byte	20                              # 0x14
	.asciz	"Calm\000\000\000"
	.zero	3
	.size	Calm, 32

	.type	Gentle,@object                  # @Gentle
	.globl	Gentle
	.p2align	2
Gentle:
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.byte	21                              # 0x15
	.asciz	"Gentle\000"
	.zero	3
	.size	Gentle, 32

	.type	Sassy,@object                   # @Sassy
	.globl	Sassy
	.p2align	2
Sassy:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f666666                      # float 0.899999976
	.byte	22                              # 0x16
	.asciz	"Sassy\000\000"
	.zero	3
	.size	Sassy, 32

	.type	Careful,@object                 # @Careful
	.globl	Careful
	.p2align	2
Careful:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f666666                      # float 0.899999976
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.byte	23                              # 0x17
	.asciz	"Careful"
	.zero	3
	.size	Careful, 32

	.type	Quirky,@object                  # @Quirky
	.globl	Quirky
	.p2align	2
Quirky:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f800000                      # float 1
	.byte	24                              # 0x18
	.asciz	"Quirky\000"
	.zero	3
	.size	Quirky, 32

	.type	Pokemon1,@object                # @Pokemon1
	.globl	Pokemon1
	.p2align	3
Pokemon1:
	.quad	Charmander
	.long	5                               # 0x5
	.long	20                              # 0x14
	.quad	Jolly
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Vine_Whip
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Ember
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	Pokemon1, 128

	.type	Pokemon2,@object                # @Pokemon2
	.globl	Pokemon2
	.p2align	3
Pokemon2:
	.quad	Pidgey
	.long	5                               # 0x5
	.long	20                              # 0x14
	.quad	Naive
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Super_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Gust
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	Pokemon2, 128

	.type	Pokemon3,@object                # @Pokemon3
	.globl	Pokemon3
	.p2align	3
Pokemon3:
	.quad	Bulbasaur
	.long	5                               # 0x5
	.long	22                              # 0x16
	.quad	Impish
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Super_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Vine_Whip
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	Pokemon3, 128

	.type	Pokemon4,@object                # @Pokemon4
	.globl	Pokemon4
	.p2align	3
Pokemon4:
	.quad	Squirtle
	.long	5                               # 0x5
	.long	21                              # 0x15
	.quad	Impish
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Super_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Vine_Whip
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	Pokemon4, 128

	.type	Pokemon5,@object                # @Pokemon5
	.globl	Pokemon5
	.p2align	3
Pokemon5:
	.quad	Charmander
	.long	5                               # 0x5
	.long	20                              # 0x14
	.quad	Jolly
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Vine_Whip
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Ember
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	Pokemon5, 128

	.type	Pokemon6,@object                # @Pokemon6
	.globl	Pokemon6
	.p2align	3
Pokemon6:
	.quad	Pidgey
	.long	5                               # 0x5
	.long	20                              # 0x14
	.quad	Naive
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Super_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Gust
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	Pokemon6, 128

	.type	EnemyPokemon1,@object           # @EnemyPokemon1
	.globl	EnemyPokemon1
	.p2align	3
EnemyPokemon1:
	.quad	Charmander
	.long	5                               # 0x5
	.long	20                              # 0x14
	.quad	Jolly
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Vine_Whip
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Ember
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	EnemyPokemon1, 128

	.type	EnemyPokemon2,@object           # @EnemyPokemon2
	.globl	EnemyPokemon2
	.p2align	3
EnemyPokemon2:
	.quad	Pidgey
	.long	5                               # 0x5
	.long	20                              # 0x14
	.quad	Naive
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Super_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Gust
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	EnemyPokemon2, 128

	.type	EnemyPokemon3,@object           # @EnemyPokemon3
	.globl	EnemyPokemon3
	.p2align	3
EnemyPokemon3:
	.quad	Bulbasaur
	.long	5                               # 0x5
	.long	22                              # 0x16
	.quad	Impish
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Super_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Vine_Whip
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	EnemyPokemon3, 128

	.type	EnemyPokemon4,@object           # @EnemyPokemon4
	.globl	EnemyPokemon4
	.p2align	3
EnemyPokemon4:
	.quad	Squirtle
	.long	5                               # 0x5
	.long	21                              # 0x15
	.quad	Impish
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Super_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Vine_Whip
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	EnemyPokemon4, 128

	.type	EnemyPokemon5,@object           # @EnemyPokemon5
	.globl	EnemyPokemon5
	.p2align	3
EnemyPokemon5:
	.quad	Charmander
	.long	5                               # 0x5
	.long	20                              # 0x14
	.quad	Jolly
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Vine_Whip
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Ember
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	EnemyPokemon5, 128

	.type	EnemyPokemon6,@object           # @EnemyPokemon6
	.globl	EnemyPokemon6
	.p2align	3
EnemyPokemon6:
	.quad	Pidgey
	.long	5                               # 0x5
	.long	20                              # 0x14
	.quad	Naive
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.byte	31                              # 0x1f
	.zero	2
	.quad	Quick_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Stone_Edge
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Super_Attack
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
	.quad	Gust
	.byte	0                               # 0x0
	.zero	3
	.long	0x3fcccccd                      # float 1.60000002
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
	.size	EnemyPokemon6, 128

	.type	Empty_slot,@object              # @Empty_slot
	.globl	Empty_slot
	.p2align	3
Empty_slot:
	.quad	Nothing
	.byte	0                               # 0x0
	.zero	3
	.long	0x00000000                      # float 0
	.size	Empty_slot, 16

	.type	PlayerParty,@object             # @PlayerParty
	.globl	PlayerParty
	.p2align	3
PlayerParty:
	.quad	Pokemon1
	.quad	Pokemon2
	.quad	Pokemon3
	.quad	Pokemon4
	.quad	Pokemon5
	.quad	Pokemon6
	.size	PlayerParty, 48

	.type	EnemyParty,@object              # @EnemyParty
	.globl	EnemyParty
	.p2align	3
EnemyParty:
	.quad	EnemyPokemon1
	.quad	EnemyPokemon2
	.quad	EnemyPokemon3
	.quad	EnemyPokemon4
	.quad	EnemyPokemon5
	.quad	EnemyPokemon6
	.size	EnemyParty, 48

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

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\nHeal?:"
	.size	.L.str.1, 8

	.type	x,@object                       # @x
	.bss
	.globl	x
	.p2align	4
x:
	.zero	32
	.size	x, 32

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\033[1A"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\033[2K"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Go %s!\n"
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"The Enemy sent out %s!\n\n"
	.size	.L.str.7, 25

	.type	YourTurn,@object                # @YourTurn
	.bss
	.globl	YourTurn
	.p2align	3
YourTurn:
	.quad	0
	.size	YourTurn, 8

	.type	EnemyTurn,@object               # @EnemyTurn
	.globl	EnemyTurn
	.p2align	3
EnemyTurn:
	.quad	0
	.size	EnemyTurn, 8

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Enter your move: "
	.size	.L.str.8, 18

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Move 1"
	.size	.L.str.10, 7

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Move Selection Failed. Please retry."
	.size	.L.str.11, 37

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Move 2"
	.size	.L.str.13, 7

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Move 3"
	.size	.L.str.15, 7

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Move 4"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Switch to P2"
	.size	.L.str.18, 13

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Switch to "
	.size	.L.str.19, 11

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"P2"
	.size	.L.str.20, 3

	.type	PlayerSwitchSave,@object        # @PlayerSwitchSave
	.bss
	.globl	PlayerSwitchSave
	.p2align	3
PlayerSwitchSave:
	.quad	0
	.size	PlayerSwitchSave, 8

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"NoPoke"
	.size	.L.str.21, 7

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Switch to P3"
	.size	.L.str.22, 13

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"P3"
	.size	.L.str.23, 3

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Switch to P4"
	.size	.L.str.24, 13

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"P4"
	.size	.L.str.25, 3

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Switch to P5"
	.size	.L.str.26, 13

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"P5"
	.size	.L.str.27, 3

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Switch to P6"
	.size	.L.str.28, 13

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"P6"
	.size	.L.str.29, 3

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"View Party"
	.size	.L.str.30, 11

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"View"
	.size	.L.str.31, 5

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Party"
	.size	.L.str.32, 6

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\n\033[1;37mP1:\033[0m %s %d/%d\n"
	.size	.L.str.33, 26

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"\033[1;37mP2:\033[0m %s %d/%d\n"
	.size	.L.str.34, 25

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"P3: %s %d/%d\n"
	.size	.L.str.35, 14

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"P4: %s %d/%d\n"
	.size	.L.str.36, 14

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"P5: %s %d/%d\n"
	.size	.L.str.37, 14

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"P6: %s %d/%d\n"
	.size	.L.str.38, 14

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"\nPartyMember: "
	.size	.L.str.39, 15

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"P1"
	.size	.L.str.40, 3

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"\033[1;37m\nP1:\033[0m\n"
	.size	.L.str.41, 17

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Pokemon:c%s\n"
	.size	.L.str.42, 13

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Health:c%d/%d\n"
	.size	.L.str.43, 15

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Attack: %d\n"
	.size	.L.str.44, 12

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Defense: %d\n"
	.size	.L.str.45, 13

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Special Attack: %d\n"
	.size	.L.str.46, 20

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Special Defense: %d\n"
	.size	.L.str.47, 21

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Speed: %d\n"
	.size	.L.str.48, 11

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Nature: %s\n"
	.size	.L.str.49, 12

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Move1: %s %d/%.0f\n"
	.size	.L.str.50, 19

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Move2: %s %d/%.0f\n"
	.size	.L.str.51, 19

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Move3: %s %d/%.0f\n"
	.size	.L.str.52, 19

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"Move4: %s %d/%.0f\n"
	.size	.L.str.53, 19

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"\033[1;37mP2:\033[0m\n"
	.size	.L.str.54, 16

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Pokemon: %s\n"
	.size	.L.str.55, 13

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Health: %d/%d\n"
	.size	.L.str.56, 15

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Nature :%s\n"
	.size	.L.str.57, 12

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"Move1: %s\n"
	.size	.L.str.58, 11

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Move2 :%s\n"
	.size	.L.str.59, 11

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"Move3: %s\n"
	.size	.L.str.60, 11

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"Move4: %s"
	.size	.L.str.61, 10

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"\033[1;37mP3:\033[0m\n"
	.size	.L.str.62, 16

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"Pokemon:%s\n"
	.size	.L.str.63, 12

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"Health:%d/%d\n"
	.size	.L.str.64, 14

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"Attack:%d\n"
	.size	.L.str.65, 11

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"Defense:%d\n"
	.size	.L.str.66, 12

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"Special Attack:%d\n"
	.size	.L.str.67, 19

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"Special Defense:%d\n"
	.size	.L.str.68, 20

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"Speed:%d\n"
	.size	.L.str.69, 10

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"Nature:%s\n"
	.size	.L.str.70, 11

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"Move1:%s\n"
	.size	.L.str.71, 10

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"Move2:%s\n"
	.size	.L.str.72, 10

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"Move3:%s\n"
	.size	.L.str.73, 10

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"Move4:%s"
	.size	.L.str.74, 9

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"\033[1;37mP4:\033[0m\n"
	.size	.L.str.75, 16

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"\033[1;37mP5:\033[0m\n"
	.size	.L.str.76, 16

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"\033[1;37mP6:\033[0m\n"
	.size	.L.str.77, 16

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"\nEnter enemy's move: "
	.size	.L.str.78, 22

	.type	EnemySwitchSave,@object         # @EnemySwitchSave
	.bss
	.globl	EnemySwitchSave
	.p2align	3
EnemySwitchSave:
	.quad	0
	.size	EnemySwitchSave, 8

	.type	.L.str.79,@object               # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"P1: %s %d/%d\n"
	.size	.L.str.79, 14

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"P2: %s %d/%d\n"
	.size	.L.str.80, 14

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"PartyMember?"
	.size	.L.str.81, 13

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"\033[1;37mP1:\033[0m\n"
	.size	.L.str.82, 16

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"\n\n"
	.size	.L.str.83, 3

	.type	Damage,@object                  # @Damage
	.bss
	.globl	Damage
	.p2align	2
Damage:
	.long	0                               # 0x0
	.size	Damage, 4

	.type	EnemyDamage,@object             # @EnemyDamage
	.globl	EnemyDamage
	.p2align	2
EnemyDamage:
	.long	0                               # 0x0
	.size	EnemyDamage, 4

	.type	STAB,@object                    # @STAB
	.globl	STAB
	.p2align	2
STAB:
	.long	0x00000000                      # float 0
	.size	STAB, 4

	.type	EnemySTAB,@object               # @EnemySTAB
	.globl	EnemySTAB
	.p2align	2
EnemySTAB:
	.long	0x00000000                      # float 0
	.size	EnemySTAB, 4

	.type	.L.str.84,@object               # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"\n%s used %s!\n"
	.size	.L.str.84, 14

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"It did %d damage!\n"
	.size	.L.str.85, 19

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"It was super effective!\n"
	.size	.L.str.86, 25

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"It was not very effective!\n"
	.size	.L.str.87, 28

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"The opposing %s is at %d/%d hp\n"
	.size	.L.str.88, 32

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"But it missed!\n"
	.size	.L.str.89, 16

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"\nYou switched out to %s\n"
	.size	.L.str.90, 25

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"The opposing %s fainted!\n"
	.size	.L.str.91, 26

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"\nThe opposing %s used %s!\n"
	.size	.L.str.92, 27

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"Your %s is at %d/%d hp\n\n"
	.size	.L.str.93, 25

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"Your %s fainted!\n"
	.size	.L.str.94, 18

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"The Enemy switched out to %s\n\n"
	.size	.L.str.95, 31

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Your %s is at %d/%d hp\n"
	.size	.L.str.96, 24

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"\nThe Enemy switched out to %s\n"
	.size	.L.str.97, 31

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"The opposing %s is at %d/%d hp\n\n"
	.size	.L.str.98, 33

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"You switched out to %s\n\n"
	.size	.L.str.99, 25

	.type	Temp,@object                    # @Temp
	.bss
	.globl	Temp
	.p2align	3
Temp:
	.quad	0
	.size	Temp, 8

	.type	.L.str.100,@object              # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"EnemySwitch-In: "
	.size	.L.str.100, 17

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Go! %s!\n"
	.size	.L.str.101, 9

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"That pokemon is already fainted\n"
	.size	.L.str.102, 33

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"Move4:%s\n"
	.size	.L.str.103, 10

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"That is not a valid switch. Please Try Again.\n"
	.size	.L.str.104, 47

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"Switch-In: "
	.size	.L.str.105, 12

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"%d\n"
	.size	.L.str.106, 4

	.ident	"clang version 12.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym c
	.addrsig_sym d
	.addrsig_sym Charmander
	.addrsig_sym Bulbasaur
	.addrsig_sym Squirtle
	.addrsig_sym Pidgey
	.addrsig_sym Nothing
	.addrsig_sym Vine_Whip
	.addrsig_sym Ember
	.addrsig_sym Quick_Attack
	.addrsig_sym Super_Attack
	.addrsig_sym Stone_Edge
	.addrsig_sym Gust
	.addrsig_sym Impish
	.addrsig_sym Jolly
	.addrsig_sym Naive
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
	.addrsig_sym Empty_slot
	.addrsig_sym PlayerParty
	.addrsig_sym EnemyParty
	.addrsig_sym x
