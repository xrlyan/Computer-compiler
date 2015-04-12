	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.string_const0: .string "Enter a:"
	.int_rformat: .string "%d"
	.comm _gp, 8, 4
	.text
	.globl decls
	.type decls,@function
decls:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $0, %ebx
	movl %ecx, %eax
	movl %ebx, %r8d
	cmpl  %r8d, %eax
	movl $0, %r8d
	movl $1, %eax
	cmovg %eax, %r8d
	movl %r8d, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	je .L2
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movl %r8d, (%rbx)
	call decls
	movl %eax, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .L1
.L2:
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl %ecx, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
.L1:	nop
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
	call decls
	movl %eax, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
