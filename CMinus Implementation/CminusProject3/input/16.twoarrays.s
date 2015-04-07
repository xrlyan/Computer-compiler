	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 412, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $200, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
.L2:
	movq $_gp,%rbx
	addq $200, %rbx
	movl (%rbx), %r9d
	movl $50, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L1
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $200, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $200, %rbx
	movq $_gp,%rcx
	addq $200, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L2
.L1:
	movq $_gp,%rbx
	addq $204, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
.L4:
	movq $_gp,%rbx
	addq $204, %rbx
	movl (%rbx), %r9d
	movl $50, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L3
	movq $_gp,%rbx
	addq $212, %rbx
	movq $_gp,%rcx
	addq $204, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $204, %rcx
	movl (%rcx), %r9d
	movl $50, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $204, %rbx
	movq $_gp,%rcx
	addq $204, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L4
.L3:
	movq $_gp,%rbx
	addq $200, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $208, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
.L6:
	movq $_gp,%rbx
	addq $200, %rbx
	movl (%rbx), %r9d
	movl $100, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L5
	movq $_gp,%rbx
	addq $200, %rbx
	movl (%rbx), %r9d
	movl $50, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L8
	movq $_gp,%rbx
	addq $208, %rbx
	movq $_gp,%rcx
	addq $208, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $0, %rcx
	movq $_gp,%rdx
	addq $200, %rdx
	movl (%rdx), %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %rcx
	movl (%rcx), %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L7
.L8:
	movq $_gp,%rbx
	addq $208, %rbx
	movq $_gp,%rcx
	addq $208, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $212, %rcx
	movq $_gp,%rdx
	addq $200, %rdx
	movl (%rdx), %r11d
	movl $50, %r12d
	subl %r12d, %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %rcx
	movl (%rcx), %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
.L7:
	movq $_gp,%rbx
	addq $200, %rbx
	movq $_gp,%rcx
	addq $200, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L6
.L5:
	movq $_gp,%rcx
	addq $208, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $0, %rcx
	movl $5, %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $212, %rcx
	movl $10, %r9d
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
