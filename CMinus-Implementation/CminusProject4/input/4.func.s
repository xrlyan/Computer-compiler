	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 8, 4
	.text
	.globl t
	.type t,@function
t:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp
	movq $_gp,%rbx
	addq $4, %rbx
	movl $5, %ecx
	movl %ecx, (%rbx)
	movq %rbp,%rbx
	subq $4, %rbx
	movl $2, %ecx
	movl %ecx, (%rbx)
	movq %rbp,%rbx
	subq $4, %rbx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq %rbp,%rbx
	subq $4, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movl %ecx, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $0, %rbx
	movl $1, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	push %rbx
	call t
	pop %rbx
	movl %eax, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
