	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 76, 4
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
	movl $32, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $1, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $11, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $2, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $111, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $3, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $88, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $11, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $5, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $44, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $6, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $33, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $7, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $33, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $8, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $22, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $9, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $77, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $10, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $45, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $11, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $65, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $12, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $76, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $13, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $87, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $14, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $34, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $60, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
.L2:
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %r9d
	movl $14, %r10d
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
	addq $72, %rbx
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $64, %rbx
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
.L4:
	movq $_gp,%rbx
	addq $64, %rbx
	movl (%rbx), %r9d
	movl $15, %r10d
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
	addq $0, %rbx
	movq $_gp,%rcx
	addq $64, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $72, %rcx
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
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L5
	movq $_gp,%rbx
	addq $72, %rbx
	movq $_gp,%rcx
	addq $64, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
.L5:
	movq $_gp,%rbx
	addq $64, %rbx
	movq $_gp,%rcx
	addq $64, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L4
.L3:
	movq $_gp,%rbx
	addq $68, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movq $_gp,%rdx
	addq $60, %rdx
	movl (%rdx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movq $_gp,%rdx
	addq $72, %rdx
	movl (%rdx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $72, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movq $_gp,%rcx
	addq $68, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $60, %rbx
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L2
.L1:
	movq $_gp,%rbx
	addq $60, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
.L7:
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %r9d
	movl $15, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L6
	movq $_gp,%rcx
	addq $0, %rcx
	movq $_gp,%rdx
	addq $60, %rdx
	movl (%rdx), %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $60, %rbx
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L7
.L6:	nop
	leave
	ret
