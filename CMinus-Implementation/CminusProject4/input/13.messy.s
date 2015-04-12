	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 44, 4
	.text
	.globl f1
	.type f1,@function
f1:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp
	movq %rbp,%rbx
	subq $4, %rbx
	movl $9, %ecx
	movl %ecx, (%rbx)
.L2:
	movq %rbp,%rcx
	subq $4, %rcx
	movl (%rcx), %r8d
	movl $0, %ecx
	movl %r8d, %eax
	movl %ecx, %r9d
	cmpl  %r9d, %eax
	movl $0, %r9d
	movl $1, %eax
	cmovge %eax, %r9d
	movl %r9d, %r8d
	movl $0, %eax
	cmpl %eax, %r8d
	je .L1
	movq $_gp,%rcx
	addq $4, %rcx
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movq $_gp,%r8
	addq $4, %r8
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	subl %r8d, %r9d
	movl %r9d, (%rcx)
	movq %rbp,%rcx
	subq $4, %rcx
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	subl %r8d, %r9d
	movl %r9d, (%rcx)
	jmp .L2
.L1:
	movq $_gp,%rcx
	addq $4, %rcx
	movl $5, %r8d
	imull $4, %r8d
	movslq %r8d, %r8
	addq %r8, %rcx
	movl (%rcx), %r8d
	movl %r8d, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl f2
	.type f2,@function
f2:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $44, %rsp
	movq %rbp,%rcx
	subq $4, %rcx
	movl $0, %r8d
	movl %r8d, (%rcx)
.L4:
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	movl $10, %r8d
	movl %r9d, %eax
	movl %r8d, %r10d
	cmpl  %r10d, %eax
	movl $0, %r10d
	movl $1, %eax
	cmovl %eax, %r10d
	movl %r10d, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L3
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	movl $5, %r8d
	movl %r9d, %eax
	movl %r8d, %r10d
	cmpl  %r10d, %eax
	movl $0, %r10d
	movl $1, %eax
	cmovl %eax, %r10d
	movl %r10d, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L6
	movq %rbp,%r8
	subq $44, %r8
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %r8
	movl $0, %r9d
	movl %r9d, (%r8)
	jmp .L5
.L6:
	movq %rbp,%r8
	subq $44, %r8
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %r8
	movl $1, %r9d
	movl %r9d, (%r8)
.L5:
	movq %rbp,%r8
	subq $4, %r8
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	jmp .L4
.L3:
	movq %rbp,%r8
	subq $44, %r8
	movl $9, %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %r8
	movl (%r8), %r9d
	movl %r9d, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%r8
	addq $0, %r8
	movl $0, %r9d
	movl %r9d, (%r8)
.L8:
	movq $_gp,%r9
	addq $0, %r9
	movl (%r9), %r10d
	movl $10, %r9d
	movl %r10d, %eax
	movl %r9d, %r11d
	cmpl  %r11d, %eax
	movl $0, %r11d
	movl $1, %eax
	cmovl %eax, %r11d
	movl %r11d, %r10d
	movl $0, %eax
	cmpl %eax, %r10d
	je .L7
	movq $_gp,%r9
	addq $4, %r9
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %r9
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r12d
	imull %r12d, %r11d
	movl %r11d, (%r9)
	movq $_gp,%r9
	addq $0, %r9
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%r9)
	jmp .L8
.L7:
	call f1
	movl %eax, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r9
	addq $0, %r9
	movl (%r9), %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	call f2
	movl %eax, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r9
	addq $0, %r9
	movl (%r9), %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r9
	addq $4, %r9
	movl $9, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %r9
	movl (%r9), %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
