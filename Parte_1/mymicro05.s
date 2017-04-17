	.text
	.file	"mymicro05.ll"
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
	subq	$72, %rsp
.Lcfi2:
	.cfi_def_cfa_offset 96
.Lcfi3:
	.cfi_offset %rbx, -24
.Lcfi4:
	.cfi_offset %r14, -16
	movl	$0, 28(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 20(%rsp)
	movl	$1, 16(%rsp)
	leaq	32(%rsp), %r14
	leaq	15(%rsp), %rbx
	cmpl	$4, 16(%rsp)
	jle	.LBB0_2
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	incl	24(%rsp)
	incl	16(%rsp)
	cmpl	$4, 16(%rsp)
	jg	.LBB0_7
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	__isoc99_scanf
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	callq	getchar
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	__isoc99_scanf
	cmpb	$72, 15(%rsp)
	je	.LBB0_3
# BB#4:                                 #   in Loop: Header=BB0_2 Depth=1
	cmpb	$77, 15(%rsp)
	jne	.LBB0_6
# BB#5:                                 #   in Loop: Header=BB0_2 Depth=1
	incl	20(%rsp)
	incl	16(%rsp)
	cmpl	$4, 16(%rsp)
	jle	.LBB0_2
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	incl	16(%rsp)
	cmpl	$4, 16(%rsp)
	jle	.LBB0_2
.LBB0_7:
	movl	24(%rsp), %esi
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	movl	20(%rsp), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf
	movl	28(%rsp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Digite o nome: \n"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"H - Homem ou M - Mulher: \n"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%c"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Sexo s\303\263 pode ser H ou M!\n"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Foram inseridos %d Homens\n"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Foram inseridos %d Mulheres\n"
	.size	.L.str.6, 29


	.section	".note.GNU-stack","",@progbits
