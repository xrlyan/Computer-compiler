	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 16, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $10, %ebx
	movl $20, %r9d
	subl %r9d, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $0, %rbx
	movl $77, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $8, %rbx
	movl $3, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $12, %rbx
	movl $4, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $8, %rcx
	movl (%rcx), %r10d
	subl %r10d, %r9d
	movq $_gp,%rcx
	addq $12, %rcx
	movl (%rcx), %r10d
	subl %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
