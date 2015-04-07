	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.string_const0: .string "enter a:"
	.string_const1: .string "complete!"
	.int_rformat: .string "%d"
	.comm _gp, 4, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $.string_const0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $0, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $0, %rbx
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
	movl $1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
.L1:
	movl $.string_const1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	leave
	ret
