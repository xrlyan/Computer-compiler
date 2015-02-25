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
	addq $0, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $0, %ebx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	movl %ebx, %eax
	movl %r9d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmove %eax, %ecx
	movl %ecx, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $0, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r9d
	movl %ebx, %eax
	movl %r9d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmove %eax, %ecx
	movl %ecx, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
