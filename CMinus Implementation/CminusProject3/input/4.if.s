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
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r9d
	movl $2, %r10d
	subl %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L2
	movl $1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp .L1
.L2:
	movl $0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
.L1:
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L4
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L6
	movl $0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp .L5
.L6:
	movl $1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
.L5:
	jmp .L3
.L4:
	movl $0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
.L3:	nop
	leave
	ret
