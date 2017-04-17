	.text
	.file	"mymicro01.ll"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_0:
	.long	1091567616              # float 9
.LCPI0_1:
	.long	1126170624              # float 160
.LCPI0_2:
	.long	1084227584              # float 5
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rax
.Lcfi0:
	.cfi_def_cfa_offset 16
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	4(%rsp), %rsi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	movss	4(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_0(%rip), %xmm0
	addss	.LCPI0_1(%rip), %xmm0
	divss	.LCPI0_2(%rip), %xmm0
	movss	%xmm0, (%rsp)
	movss	(%rsp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	popq	%rcx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L.str:
	.asciz	"\tTabela de convers\303\243o: Celsius -> Fahrenheit\n"
	.size	.L.str, 46

	.type	.L.str.1,@object        # @.str.1
	.p2align	4
.L.str.1:
	.asciz	"Digite a temperatura em Celsius: \n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%f"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L.str.3:
	.asciz	"A nova temperatura \303\251: %f F\n"
	.size	.L.str.3, 29


	.section	".note.GNU-stack","",@progbits
