	.text
	.file	"mynano12.ll"
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
	movl	$1, 12(%rsp)
	movl	$2, 16(%rsp)
	movl	$5, 8(%rsp)
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	12(%rsp), %esi
	movl	$.str, %edi
	xorl	%eax, %eax
	callq	printf
	decl	8(%rsp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	12(%rsp), %eax
	jle	.LBB0_5
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	12(%rsp), %eax
	cmpl	16(%rsp), %eax
	je	.LBB0_3
# BB#4:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	$.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	decl	8(%rsp)
	jmp	.LBB0_1
.LBB0_5:
	movl	20(%rsp), %eax
	addq	$24, %rsp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.str,@object            # @.str
	.section	.rodata,"a",@progbits
	.globl	.str
.str:
	.asciz	"%d\n"
	.size	.str, 4

	.type	.str.1,@object          # @.str.1
	.globl	.str.1
.str.1:
	.asciz	"0\n"
	.size	.str.1, 3


	.section	".note.GNU-stack","",@progbits
