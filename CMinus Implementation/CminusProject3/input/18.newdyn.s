	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 3856, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $3844, %rbx
	movl $30, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $3840, %rbx
	movl $30, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $3848, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
.L2:
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r10d
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
	addq $240, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $3848, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L2
.L1:
	movq $_gp,%rbx
	addq $3852, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
.L4:
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $3840, %rbx
	movl (%rbx), %r10d
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
	addq $240, %rbx
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $120, %rbx
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $2, %r9d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r10d
	movl $1, %r11d
	addl %r11d, %r10d
	imull %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $3852, %rbx
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L4
.L3:
	movq $_gp,%rbx
	addq $3848, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
.L6:
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r10d
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
	addq $3852, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
.L8:
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $3840, %rbx
	movl (%rbx), %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L7
	movq $_gp,%rbx
	addq $240, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $240, %rcx
	movq $_gp,%rdx
	addq $3848, %rdx
	movl (%rdx), %r10d
	movl $1, %r11d
	subl %r11d, %r10d
	movq $_gp,%rdx
	addq $3844, %rdx
	movl (%rdx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rdx
	addq $3852, %rdx
	movl (%rdx), %r11d
	addl %r11d, %r10d
	movl $1, %r11d
	subl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $120, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %rbx
	movl (%rbx), %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovne %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L9
	movq $_gp,%rbx
	addq $240, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $240, %rcx
	movq $_gp,%rdx
	addq $3848, %rdx
	movl (%rdx), %r10d
	movq $_gp,%rdx
	addq $3844, %rdx
	movl (%rdx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rdx
	addq $3852, %rdx
	movl (%rdx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
.L9:
	movq $_gp,%rbx
	addq $240, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r10d
	movl $1, %r11d
	subl %r11d, %r10d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $240, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r11d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r12d
	imull %r12d, %r11d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r12d
	addl %r12d, %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %rbx
	movl (%rbx), %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L10
	movq $_gp,%rbx
	addq $240, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $240, %rcx
	movq $_gp,%rdx
	addq $3848, %rdx
	movl (%rdx), %r10d
	movl $1, %r11d
	subl %r11d, %r10d
	movq $_gp,%rdx
	addq $3844, %rdx
	movl (%rdx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rdx
	addq $3852, %rdx
	movl (%rdx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
.L10:
	movq $_gp,%rbx
	addq $240, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	movl $1, %r11d
	subl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $240, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r11d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r12d
	imull %r12d, %r11d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r12d
	addl %r12d, %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %rbx
	movl (%rbx), %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L11
	movq $_gp,%rbx
	addq $240, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $240, %rcx
	movq $_gp,%rdx
	addq $3848, %rdx
	movl (%rdx), %r10d
	movq $_gp,%rdx
	addq $3844, %rdx
	movl (%rdx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rdx
	addq $3852, %rdx
	movl (%rdx), %r11d
	addl %r11d, %r10d
	movl $1, %r11d
	subl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
.L11:
	movq $_gp,%rbx
	addq $3852, %rbx
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L8
.L7:
	movq $_gp,%rbx
	addq $3848, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L6
.L5:
	movq $_gp,%rcx
	addq $240, %rcx
	movl $899, %r9d
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
