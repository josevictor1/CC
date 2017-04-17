	.text
	.file	"mynano10.ll"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rax
.Lcfi0:
	.cfi_def_cfa_offset 16
	movl	$1, (%rsp)
	movl	$2, 4(%rsp)
	movl	(%rsp), %esi
	movl	$str, %edi
	cmpl	$2, %esi
	je	.LBB0_2
# BB#1:                                 # %IfUnequal
	xorl	%esi, %esi
.LBB0_2:                                # %IfEqual
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	popq	%rcx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	str,@object             # @str
	.section	.rodata,"a",@progbits
	.globl	str
str:
	.asciz	"%d\n"
	.size	str, 4


	.section	".note.GNU-stack","",@progbits
