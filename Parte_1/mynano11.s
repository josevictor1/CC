	.text
	.file	"mynano11.ll"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Lcfi1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Lcfi2:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Lcfi3:
	.cfi_def_cfa_offset 48
.Lcfi4:
	.cfi_offset %rbx, -32
.Lcfi5:
	.cfi_offset %r14, -24
.Lcfi6:
	.cfi_offset %rbp, -16
	movl	$1, 4(%rsp)
	movl	$2, 8(%rsp)
	movl	$5, 12(%rsp)
	cmpl	$4, 4(%rsp)
	jg	.LBB0_3
# BB#1:                                 # %IfGreater.preheader
	movl	8(%rsp), %ebp
	movl	$5, %r14d
	.p2align	4, 0x90
.LBB0_2:                                # %IfGreater
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %ebx
	addl	%ebp, %ebx
	movl	$str, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	printf
	movl	%ebx, 4(%rsp)
	cmpl	%ebx, %r14d
	jg	.LBB0_2
.LBB0_3:                                # %Else
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
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
