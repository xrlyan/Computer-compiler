	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.string_const0: .string "enter i ="
	.string_const1: .string "out of bound!"
	.int_rformat: .string "%d"
	.comm _gp, 404, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $.string_const0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $400, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $400, %rbx
	movl (%rbx), %r9d
	movl $0, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movq $_gp,%rbx
	addq $400, %rbx
	movl (%rbx), %r10d
	movl $100, %r11d
	movl %r10d, %eax
	movl %r11d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovge %eax, %ebx
	movl %ebx, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	orl  %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L2
	movl $.string_const1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	jmp .L1
.L2:
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $400, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $400, %rcx
	movl (%rcx), %r9d
	movl $2, %r10d
	imull %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $5, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $5, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rcx
	addq $0, %rcx
	movq $_gp,%rdx
	addq $400, %rdx
	movl (%rdx), %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
.L1:	nop
	leave
	ret
