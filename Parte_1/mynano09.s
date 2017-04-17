	.text
	.file	"mynano09.ll"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rax
.Lcfi0:
	.cfi_def_cfa_offset 16
	movl	$0, 4(%rsp)
	movl	$1, (%rsp)
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB0_2
# BB#1:
	movl	(%rsp), %esi
	movl	$.str, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB0_3
.LBB0_2:
	movl	$.str.1, %edi
	xorl	%eax, %eax
	callq	printf
.LBB0_3:
	movl	4(%rsp), %eax
	popq	%rcx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.str,@object            # @.str
	.section	.rodata,"a",@progbits
	.globl	.str
.str:
	.asciz	"%d"
	.size	.str, 3

	.type	.str.1,@object          # @.str.1
	.globl	.str.1
.str.1:
	.asciz	"0"
	.size	.str.1, 2


	.section	".note.GNU-stack","",@progbits
