	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 40, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $0, %rbx
	movl $3, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $4, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rcx
	addq $0, %rcx
	movl $3, %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
