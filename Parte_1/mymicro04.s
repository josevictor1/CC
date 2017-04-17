	.text
	.file	"mymicro04.ll"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Lcfi0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Lcfi1:
	.cfi_def_cfa_offset 32
.Lcfi2:
	.cfi_offset %rbx, -16
	movl	$0, 12(%rsp)
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	leaq	4(%rsp), %rbx
	cmpl	$4, 8(%rsp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	incl	8(%rsp)
	cmpl	$4, 8(%rsp)
	jg	.LBB0_6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	__isoc99_scanf
	cmpl	$10, 4(%rsp)
	jl	.LBB0_5
# BB#3:                                 #   in Loop: Header=BB0_2 Depth=1
	cmpl	$150, 4(%rsp)
	jg	.LBB0_5
# BB#4:                                 #   in Loop: Header=BB0_2 Depth=1
	incl	(%rsp)
	jmp	.LBB0_5
.LBB0_6:
	movl	(%rsp), %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	12(%rsp), %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.asciz	"Ao total foram digitados %d n\303\272meros no intervalo entre 10 e 150\n"
	.size	.L.str.2, 66


	.section	".note.GNU-stack","",@progbits
