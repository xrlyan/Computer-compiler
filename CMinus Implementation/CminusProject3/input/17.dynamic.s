	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 1760, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $1, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $2, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $2, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $3, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $3, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $4, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $5, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $5, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $6, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $6, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $7, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $7, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $8, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $8, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $9, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $9, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $10, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $8, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $11, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $7, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $12, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $6, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $13, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $5, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $14, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $4, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $15, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $3, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $16, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $2, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $17, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $18, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $0, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $1, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $2, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $3, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $3, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $5, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $4, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $7, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $5, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $9, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $6, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $11, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $7, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $4, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $8, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $3, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $9, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $2, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $10, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $11, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $9, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $12, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $8, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $13, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $7, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $14, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $6, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $76, %rbx
	movl $15, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $1756, %rbx
	movl $20, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $1740, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
.L2:
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $1740, %rcx
	movl (%rcx), %r10d
	movl $1, %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl (%rbx), %r9d
	movl $0, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovne %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L1
	movq $_gp,%rbx
	addq $140, %rbx
	movq $_gp,%rcx
	addq $1740, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $1740, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $1740, %rbx
	movq $_gp,%rcx
	addq $1740, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L2
.L1:
	movq $_gp,%rbx
	addq $1740, %rbx
	movq $_gp,%rcx
	addq $1740, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	subl %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $1744, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
.L4:
	movq $_gp,%rbx
	addq $76, %rbx
	movq $_gp,%rcx
	addq $1744, %rcx
	movl (%rcx), %r10d
	movl $1, %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl (%rbx), %r9d
	movl $0, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovne %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L3
	movq $_gp,%rbx
	addq $140, %rbx
	movq $_gp,%rcx
	addq $1744, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $1744, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $1744, %rbx
	movq $_gp,%rcx
	addq $1744, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L4
.L3:
	movq $_gp,%rbx
	addq $1744, %rbx
	movq $_gp,%rcx
	addq $1744, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	subl %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $1748, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
.L6:
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovle %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L5
	movq $_gp,%rbx
	addq $1752, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
.L8:
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $1740, %rbx
	movl (%rbx), %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovle %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L7
	movq $_gp,%rbx
	addq $140, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $140, %rcx
	movq $_gp,%rdx
	addq $1748, %rdx
	movl (%rdx), %r10d
	movl $1, %r11d
	subl %r11d, %r10d
	movq $_gp,%rdx
	addq $1756, %rdx
	movl (%rdx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rdx
	addq $1752, %rdx
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
	addq $76, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $1752, %rcx
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
	addq $140, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $140, %rcx
	movq $_gp,%rdx
	addq $1748, %rdx
	movl (%rdx), %r10d
	movq $_gp,%rdx
	addq $1756, %rdx
	movl (%rdx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rdx
	addq $1752, %rdx
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
	addq $140, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r10d
	movl $1, %r11d
	subl %r11d, %r10d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $140, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r11d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r12d
	imull %r12d, %r11d
	movq $_gp,%rcx
	addq $1752, %rcx
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
	addq $140, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $140, %rcx
	movq $_gp,%rdx
	addq $1748, %rdx
	movl (%rdx), %r10d
	movl $1, %r11d
	subl %r11d, %r10d
	movq $_gp,%rdx
	addq $1756, %rdx
	movl (%rdx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rdx
	addq $1752, %rdx
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
	addq $140, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	movl $1, %r11d
	subl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $140, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r11d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r12d
	imull %r12d, %r11d
	movq $_gp,%rcx
	addq $1752, %rcx
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
	addq $140, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $140, %rcx
	movq $_gp,%rdx
	addq $1748, %rdx
	movl (%rdx), %r10d
	movq $_gp,%rdx
	addq $1756, %rdx
	movl (%rdx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rdx
	addq $1752, %rdx
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
	addq $1752, %rbx
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L8
.L7:
	movq $_gp,%rbx
	addq $1748, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L6
.L5:
	movq $_gp,%rcx
	addq $1744, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $1740, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $140, %rcx
	movq $_gp,%rdx
	addq $1744, %rdx
	movl (%rdx), %r9d
	movq $_gp,%rdx
	addq $1756, %rdx
	movl (%rdx), %r10d
	imull %r10d, %r9d
	movq $_gp,%rdx
	addq $1740, %rdx
	movl (%rdx), %r10d
	addl %r10d, %r9d
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
