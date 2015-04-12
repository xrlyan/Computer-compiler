	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.string_const0: .string "enter x:"
	.string_const1: .string "enter y:"
	.string_const2: .string "enter x:"
	.string_const3: .string "enter y:"
	.int_rformat: .string "%d"
	.comm _gp, 8, 4
	.text
	.globl gcd
	.type gcd,@function
gcd:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movl $0, %ebx
	movl %ecx, %eax
	movl %ebx, %r8d
	cmpl  %r8d, %eax
	movl $0, %r8d
	movl $1, %eax
	cmove %eax, %r8d
	movl %r8d, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	je .L2
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl %ecx, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .L1
.L2:
	movq %rbp,%rbx
	subq $4, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq %rbp,%rcx
	subq $4, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	movq %rbp,%rcx
	subq $4, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r11d
	movl %r10d, %eax
	movl %r11d, %ecx
	cdq
	idivl %ecx
	movl %eax, %r10d
	imull %r10d, %r9d
	subl %r9d, %r8d
	movl %r8d, (%rbx)
	call gcd
	movl %eax, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
.L1:	nop
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $.string_const2, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $0, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movl $.string_const3, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $4, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
.L4:
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r8d
	movl $0, %ecx
	movl %r8d, %eax
	movl %ecx, %r9d
	cmpl  %r9d, %eax
	movl $0, %r9d
	movl $1, %eax
	cmovne %eax, %r9d
	movl %r9d, %r8d
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	movl $0, %ecx
	movl %r9d, %eax
	movl %ecx, %r10d
	cmpl  %r10d, %eax
	movl $0, %r10d
	movl $1, %eax
	cmovne %eax, %r10d
	movl %r10d, %r9d
	movl %r8d, %eax
	movl %r9d, %ecx
	orl  %eax, %ecx
	movl %ecx, %r8d
	movl $0, %eax
	cmpl %eax, %r8d
	je .L3
	call gcd
	movl %eax, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $.string_const2, %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $0, %rcx
	movl $.int_rformat, %edi
	movl %ecx, %esi
	movl $0, %eax
	call scanf
	movl $.string_const3, %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $4, %rcx
	movl $.int_rformat, %edi
	movl %ecx, %esi
	movl $0, %eax
	call scanf
	jmp .L4
.L3:	nop
	leave
	ret
