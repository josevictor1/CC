	.text
	.file	"mymicro07.ll"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%r14
.Lcfi0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Lcfi1:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Lcfi2:
	.cfi_def_cfa_offset 48
.Lcfi3:
	.cfi_offset %rbx, -24
.Lcfi4:
	.cfi_offset %r14, -16
	movl	$0, 20(%rsp)
	movl	$1, 16(%rsp)
	leaq	12(%rsp), %r14
	leaq	11(%rsp), %rbx
	cmpl	$1, 16(%rsp)
	je	.LBB0_2
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$0, 16(%rsp)
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$1, 16(%rsp)
	jne	.LBB0_11
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	__isoc99_scanf
	cmpl	$0, 12(%rsp)
	jle	.LBB0_4
# BB#3:                                 #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.2, %edi
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, 12(%rsp)
	jne	.LBB0_6
# BB#5:                                 #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, 12(%rsp)
	js	.LBB0_7
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	callq	getchar
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	__isoc99_scanf
	cmpb	$83, 11(%rsp)
	jne	.LBB0_1
	jmp	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.4, %edi
	jmp	.LBB0_8
.LBB0_11:
	movl	20(%rsp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Digite um n\303\272mero: "
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Positivo"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"O n\303\272mero \303\251 igual a  0"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Negativo"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Deseja finalizar? (S/N) "
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c"
	.size	.L.str.6, 3


	.section	".note.GNU-stack","",@progbits
