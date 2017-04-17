	.text
	.file	"mymicro11.ll"
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
	movl	16(%rsp), %edi
	callq	verifica
	movl	%eax, 12(%rsp)
	cmpl	$1, %eax
	jne	.LBB0_2
# BB#1:
	movl	$.L.str.2, %edi
	jmp	.LBB0_5
.LBB0_2:
	cmpl	$0, 12(%rsp)
	je	.LBB0_3
# BB#4:
	movl	$.L.str.4, %edi
	jmp	.LBB0_5
.LBB0_3:
	movl	$.L.str.3, %edi
.LBB0_5:
	xorl	%eax, %eax
	callq	printf
	movl	20(%rsp), %eax
	addq	$24, %rsp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.globl	verifica
	.p2align	4, 0x90
	.type	verifica,@function
verifica:                               # @verifica
	.cfi_startproc
# BB#0:
	movl	%edi, -4(%rsp)
	testl	%edi, %edi
	jle	.LBB1_2
# BB#1:
	movl	$1, -8(%rsp)
	movl	-8(%rsp), %eax
	retq
.LBB1_2:
	cmpl	$0, -4(%rsp)
	js	.LBB1_3
# BB#4:
	movl	$0, -8(%rsp)
	movl	-8(%rsp), %eax
	retq
.LBB1_3:
	movl	$-1, -8(%rsp)
	movl	-8(%rsp), %eax
	retq
.Lfunc_end1:
	.size	verifica, .Lfunc_end1-verifica
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L.str:
	.asciz	"Digite um n\303\272mero: \n"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L.str.2:
	.asciz	"N\303\272mero positivo\n"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Zero\n"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L.str.4:
	.asciz	"N\303\272mero negativo\n"
	.size	.L.str.4, 18


	.section	".note.GNU-stack","",@progbits
