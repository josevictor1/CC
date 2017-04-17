	.text
	.file	"mynano08.ll"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi0:
	.cfi_def_cfa_offset 16
	movl	$1, 4(%rsp)
	xorl	%eax, %eax
	movl	$str, %edi
	testb	%al, %al
	jne	.LBB0_3
# BB#1:                                 # %IfEqual
	movl	$1, %esi
	jmp	.LBB0_2
.LBB0_3:                                # %IfUnequal
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
