	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 8, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $4, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
.L2:
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r9d
	movl $10, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovle %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L1
	movq $_gp,%rbx
	addq $0, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
.L4:
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r9d
	movl $10, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovle %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L3
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %ebx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	imull %r9d, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L4
.L3:
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L2
.L1:	nop
	leave
	ret
