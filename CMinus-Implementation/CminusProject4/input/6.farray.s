	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 48, 4
	.text
	.globl t
	.type t,@function
t:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	movq %rbp,%rbx
	subq $4, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
.L2:
	movq %rbp,%rcx
	subq $4, %rcx
	movl (%rcx), %r8d
	movl $10, %ecx
	movl %r8d, %eax
	movl %ecx, %r9d
	cmpl  %r9d, %eax
	movl $0, %r9d
	movl $1, %eax
	cmovl %eax, %r9d
	movl %r9d, %r8d
	movl $0, %eax
	cmpl %eax, %r8d
	je .L1
	movq %rbp,%rcx
	subq $48, %rcx
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movq $_gp,%r8
	addq $4, %r8
	movq %rbp,%r10
	subq $4, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %r8
	movl (%r8), %r10d
	movl %r10d, (%rcx)
	movq %rbp,%rcx
	subq $4, %rcx
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r10d
	movl $1, %r8d
	addl %r8d, %r10d
	movl %r10d, (%rcx)
	jmp .L2
.L1:
	movq %rbp,%rcx
	subq $48, %rcx
	movl $3, %r8d
	imull $4, %r8d
	movslq %r8d, %r8
	addq %r8, %rcx
	movl (%rcx), %r10d
	movl %r10d, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rcx
	addq $0, %rcx
	movl $1, %r8d
	movl %r8d, (%rcx)
.L4:
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r10d
	movl $11, %r8d
	movl %r10d, %eax
	movl %r8d, %r11d
	cmpl  %r11d, %eax
	movl $0, %r11d
	movl $1, %eax
	cmovl %eax, %r11d
	movl %r11d, %r10d
	movl $0, %eax
	cmpl %eax, %r10d
	je .L3
	movq $_gp,%r8
	addq $4, %r8
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %r8
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r12d
	movl %r12d, (%r8)
	movq $_gp,%r8
	addq $0, %r8
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r12d
	movl $1, %r10d
	addl %r10d, %r12d
	movl %r12d, (%r8)
	jmp .L4
.L3:
	movq $_gp,%r8
	addq $0, %r8
	push %r8
	call t
	pop %r8
	movl %eax, (%r8)
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
