	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 64, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $0, %rbx
	movl $3, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $4, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $8, %rbx
	movl $5, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $52, %rbx
	movl $13, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $56, %rbx
	movl $14, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $60, %rbx
	movl $15, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %r9d
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r10d
	subl %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rcx
	addq $12, %rcx
	movq $_gp,%rdx
	addq $4, %rdx
	movl (%rdx), %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $12, %rcx
	movl $11, %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $12, %rbx
	movl $12, %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rbx
	movl $100, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
