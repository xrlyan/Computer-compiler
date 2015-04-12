	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
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
	movl $1, %ebx
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
	movl $2, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	call a1
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
	movl $4, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	call a1
	call a2
	addl %ebx, %ebx
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
	movl $4, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	call a1
	call a2
	addl %ebx, %ebx
	call a3
	addl %ebx, %ebx
	movl %ebx, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	call a1
	call a2
	addl %ebx, %ebx
	call a3
	addl %ebx, %ebx
	call a4
	addl %ebx, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
