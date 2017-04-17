	.text
	.file	"mymicro03.ll"
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
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%rsp, %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	cmpl	$100, (%rsp)
	jl	.LBB0_4
# BB#1:
	cmpl	$200, (%rsp)
	jg	.LBB0_3
# BB#2:
	movl	$.L.str.2, %edi
	jmp	.LBB0_5
.LBB0_4:
	movl	$.L.str.4, %edi
	jmp	.LBB0_5
.LBB0_3:
	movl	$.L.str.3, %edi
.LBB0_5:
	xorl	%eax, %eax
	callq	printf
	movl	4(%rsp), %eax
	popq	%rcx
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
	.asciz	"O n\303\272mero est\303\241 no intervalo entre 100 e 200*\n"
	.size	.L.str.2, 47

	.type	.L.str.3,@object        # @.str.3
	.p2align	4
.L.str.3:
	.asciz	"O n\303\272mero n\303\243o est\303\241 no intervalo entre 100 e 200*\n"
	.size	.L.str.3, 52

	.type	.L.str.4,@object        # @.str.4
	.p2align	4
.L.str.4:
	.asciz	"O n\303\272mero n\303\243o est\303\241 no intervalo entre 100 e 200\n"
	.size	.L.str.4, 51


	.section	".note.GNU-stack","",@progbits
