	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 16, 4
	.text
	.globl a1
	.type a1,@function
a1:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movl $1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $0, %ebx
	movl %ebx, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl a2
	.type a2,@function
a2:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $_gp,%rbx
	addq $4, %rbx
	push %rbx
	call a1
	pop %rbx
	movl %eax, (%rbx)
	movl $2, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $0, %ebx
	movl %ebx, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl a3
	.type a3,@function
a3:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $_gp,%rbx
	addq $0, %rbx
	push %rbx
	call a1
	pop %rbx
	movl %eax, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	push %rbx
	call a2
	pop %rbx
	movl %eax, (%rbx)
	movl $3, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $0, %ebx
	movl %ebx, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl a4
	.type a4,@function
a4:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $_gp,%rbx
	addq $0, %rbx
	push %rbx
	call a1
	pop %rbx
	movl %eax, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	push %rbx
	call a2
	pop %rbx
	movl %eax, (%rbx)
	movq $_gp,%rbx
	addq $8, %rbx
	push %rbx
	call a3
	pop %rbx
	movl %eax, (%rbx)
	movl $4, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $0, %ebx
	movl %ebx, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $0, %rbx
	push %rbx
	call a1
	pop %rbx
	movl %eax, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	push %rbx
	call a2
	pop %rbx
	movl %eax, (%rbx)
	movq $_gp,%rbx
	addq $8, %rbx
	push %rbx
	call a3
	pop %rbx
	movl %eax, (%rbx)
	movq $_gp,%rbx
	addq $12, %rbx
	push %rbx
	call a4
	pop %rbx
	movl %eax, (%rbx)
	leave
	ret
