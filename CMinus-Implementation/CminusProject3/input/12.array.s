	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 44, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $0, %rbx
	movl $3, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $4, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rcx
	addq $0, %rcx
	movl $3, %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $40, %rbx
	movl $3, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $40, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $7, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rcx
	addq $0, %rcx
	movq $_gp,%rdx
	addq $40, %rdx
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
	addq $40, %rbx
	movq $_gp,%rcx
	addq $40, %rcx
	movl (%rcx), %r9d
	movl $2, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $40, %rcx
	movl (%rcx), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $22, %r9d
	movl %r9d, (%rbx)
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
	leave
	ret
