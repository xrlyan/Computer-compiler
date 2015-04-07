	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.string_const0: .string "Enter a:"
	.int_rformat: .string "%d"
	.comm _gp, 8, 4
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
	movl $0, %eax
	cmpl %eax, %r9d
	je .L2
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %r9d
	movq $_gp,%rcx
	addq $0, %rcx
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
	jmp .L1
.L2:
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
.L1:	nop
	leave
	ret
