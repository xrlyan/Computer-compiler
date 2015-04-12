	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.string_const0: .string "Enter a[0:9]"
	.string_const1: .string "After input"
	.string_const2: .string "After sorting"
	.int_rformat: .string "%d"
	.comm _gp, 52, 4
	.text
	.globl sort
	.type sort,@function
sort:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $_gp,%rbx
	addq $44, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $48, %rbx
	movl (%rbx), %r8d
	movl %ecx, %eax
	movl %r8d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmove %eax, %ebx
	movl %ebx, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	je .L2
	movl $1, %ebx
	movl %ebx, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .L1
.L2:
	movq %rbp,%rbx
	subq $4, %rbx
	movq $_gp,%rcx
	addq $44, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq %rbp,%rbx
	subq $16, %rbx
	movq %rbp,%rcx
	subq $4, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq %rbp,%rbx
	subq $8, %rbx
	movq $_gp,%rcx
	addq $44, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
.L4:
	movq %rbp,%rcx
	subq $8, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $48, %rcx
	movl (%rcx), %r9d
	movl %r8d, %eax
	movl %r9d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovle %eax, %ecx
	movl %ecx, %r8d
	movl $0, %eax
	cmpl %eax, %r8d
	je .L3
	movq $_gp,%rcx
	addq $0, %rcx
	movq %rbp,%r8
	subq $8, %r8
	movl (%r8), %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $0, %rcx
	movq %rbp,%r9
	subq $16, %r9
	movl (%r9), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %rcx
	movl (%rcx), %r9d
	movl %r8d, %eax
	movl %r9d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovl %eax, %ecx
	movl %ecx, %r8d
	movl $0, %eax
	cmpl %eax, %r8d
	je .L5
	movq %rbp,%rcx
	subq $16, %rcx
	movq %rbp,%r8
	subq $8, %r8
	movl (%r8), %r9d
	movl %r9d, (%rcx)
.L5:
	movq %rbp,%rcx
	subq $8, %rcx
	movq %rbp,%r8
	subq $8, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rcx)
	jmp .L4
.L3:
	movq %rbp,%rcx
	subq $12, %rcx
	movq $_gp,%r8
	addq $0, %r8
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %r8
	movl (%r8), %r9d
	movl %r9d, (%rcx)
	movq $_gp,%rcx
	addq $0, %rcx
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movq $_gp,%r8
	addq $0, %r8
	movq %rbp,%r9
	subq $16, %r9
	movl (%r9), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %r8
	movl (%r8), %r9d
	movl %r9d, (%rcx)
	movq $_gp,%rcx
	addq $0, %rcx
	movq %rbp,%r8
	subq $16, %r8
	movl (%r8), %r9d
	imull $4, %r9d
	movslq %r9d, %r9
	addq %r9, %rcx
	movq %rbp,%r8
	subq $12, %r8
	movl (%r8), %r9d
	movl %r9d, (%rcx)
	movq %rbp,%rcx
	subq $4, %rcx
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rcx)
	movq $_gp,%rcx
	addq $44, %rcx
	movq $_gp,%r8
	addq $44, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rcx)
	call sort
	movl %eax, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
.L1:	nop
	.globl output
	.type output,@function
output:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp
	movq %rbp,%rcx
	subq $4, %rcx
	movl $0, %r8d
	movl %r8d, (%rcx)
.L7:
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	movl $10, %r8d
	movl %r9d, %eax
	movl %r8d, %r10d
	cmpl  %r10d, %eax
	movl $0, %r10d
	movl $1, %eax
	cmovl %eax, %r10d
	movl %r10d, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L6
	movq $_gp,%r8
	addq $0, %r8
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %r8
	movl (%r8), %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq %rbp,%r8
	subq $4, %r8
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	jmp .L7
.L6:
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	movl %r9d, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl input
	.type input,@function
input:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp
	movq %rbp,%r8
	subq $4, %r8
	movl $0, %r9d
	movl %r9d, (%r8)
	movl $.string_const0, %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
.L9:
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	movl $10, %r9d
	movl %r10d, %eax
	movl %r9d, %r11d
	cmpl  %r11d, %eax
	movl $0, %r11d
	movl $1, %eax
	cmovl %eax, %r11d
	movl %r11d, %r10d
	movl $0, %eax
	cmpl %eax, %r10d
	je .L8
	movq $_gp,%r9
	addq $0, %r9
	movq %rbp,%r10
	subq $4, %r10
	movl (%r10), %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %r9
	movl $.int_rformat, %edi
	movl %r9d, %esi
	movl $0, %eax
	call scanf
	movq %rbp,%r9
	subq $4, %r9
	movq %rbp,%r10
	subq $4, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%r9)
	jmp .L9
.L8:
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	movl %r10d, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl initialize
	.type initialize,@function
initialize:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp
	movq %rbp,%r9
	subq $4, %r9
	movl $0, %r10d
	movl %r10d, (%r9)
.L11:
	movq %rbp,%r10
	subq $4, %r10
	movl (%r10), %r11d
	movl $20, %r10d
	movl %r11d, %eax
	movl %r10d, %r12d
	cmpl  %r12d, %eax
	movl $0, %r12d
	movl $1, %eax
	cmovl %eax, %r12d
	movl %r12d, %r11d
	movl $0, %eax
	cmpl %eax, %r11d
	je .L10
	movq $_gp,%r10
	addq $0, %r10
	movq %rbp,%r11
	subq $4, %r11
	movl (%r11), %r12d
	imull $4, %r12d
	movslq %r12d, %r12
	addq %r12, %r10
	movl $0, %r11d
	movl %r11d, (%r10)
	movq %rbp,%r10
	subq $4, %r10
	movq %rbp,%r11
	subq $4, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r10)
	jmp .L11
.L10:
	movl $1, %r10d
	movl %r10d, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%r10
	addq $40, %r10
	push %r10
	call input
	pop %r10
	movl %eax, (%r10)
	movl $.string_const1, %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%r10
	addq $40, %r10
	push %r10
	call output
	pop %r10
	movl %eax, (%r10)
	movq $_gp,%r10
	addq $44, %r10
	movl $0, %r11d
	movl %r11d, (%r10)
	movq $_gp,%r10
	addq $48, %r10
	movl $9, %r11d
	movl %r11d, (%r10)
	movq $_gp,%r10
	addq $40, %r10
	push %r10
	call sort
	pop %r10
	movl %eax, (%r10)
	movl $.string_const2, %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%r10
	addq $40, %r10
	push %r10
	call output
	pop %r10
	movl %eax, (%r10)
	leave
	ret
