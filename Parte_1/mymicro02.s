	.text
	.file	"mymicro02.ll"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Lcfi0:
	.cfi_def_cfa_offset 32
	movl	$0, 20(%rsp)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	16(%rsp), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	12(%rsp), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	movl	16(%rsp), %eax
	cmpl	12(%rsp), %eax
	jle	.LBB0_2
# BB#1:
	movl	16(%rsp), %esi
	movl	12(%rsp), %edx
	movl	$.L.str.3, %edi
	jmp	.LBB0_3
.LBB0_2:
	movl	16(%rsp), %esi
	movl	12(%rsp), %edx
	movl	$.L.str.4, %edi
.LBB0_3:
	xorl	%eax, %eax
	callq	printf
	movl	20(%rsp), %eax
	addq	$24, %rsp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L.str:
	.asciz	"Digite o primeiro n\303\272mero: \n"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L.str.2:
	.asciz	"Digite o segundo n\303\272mero: \n"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
	.p2align	4
.L.str.3:
	.asciz	"O Primeiro n\303\272mero %d \303\251 maior que o segundo %d\n"
	.size	.L.str.3, 49

	.type	.L.str.4,@object        # @.str.4
	.p2align	4
.L.str.4:
	.asciz	"O segundo n\303\272mero %d \303\251 maior que o primeiro %d\n"
	.size	.L.str.4, 49


	.section	".note.GNU-stack","",@progbits
