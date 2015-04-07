	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.string_const0: .string "Enter a:"
	.int_rformat: .string "%d"
	.comm _gp, 12, 4
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
	addq $8, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r9d
	movl $2, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cdq
	idivl %ebx
	movl %eax, %r9d
	movl $2, %r10d
	imull %r10d, %r9d
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmove %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L2
	movq $_gp,%rbx
	addq $4, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
.L4:
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r10d
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
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L4
.L3:
	jmp .L1
.L2:
	movq $_gp,%rbx
	addq $4, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
.L6:
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovle %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L5
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r10d
	imull %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	movl $1, %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	jmp .L6
.L5:
.L1:
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
