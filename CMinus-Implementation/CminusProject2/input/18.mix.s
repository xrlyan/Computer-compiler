	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.string_const0: .string "i = "
	.string_const1: .string "j = "
	.string_const2: .string "k = "
	.string_const3: .string "l = "
	.string_const4: .string "m = "
	.int_rformat: .string "%d"
	.comm _gp, 24, 4
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
	movl $.string_const1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $4, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movl $.string_const2, %ebx
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
	movl $.string_const3, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $12, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movl $.string_const4, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $16, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $20, %rbx
	movq $_gp,%rcx
	addq $8, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $12, %rcx
	movl (%rcx), %r11d
	addl %r11d, %r10d
	movl %r9d, %eax
	movl %r10d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovl %eax, %ecx
	movl %ecx, %r9d
	movl $0, %r10d
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r11d
	movq $_gp,%rcx
	addq $8, %rcx
	movl (%rcx), %r12d
	movl %r11d, %eax
	movl %r12d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovne %eax, %ecx
	movl %ecx, %r11d
	movl %r10d, %eax
	movl %r11d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmove %eax, %ecx
	movl %ecx, %r10d
	movl %r9d, %eax
	movl %r10d, %ecx
	andl  %eax, %ecx
	movl %ecx, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rcx
	addq $20, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %ebx
	movq $_gp,%rcx
	addq $12, %rcx
	movl (%rcx), %r9d
	imull %r9d, %ebx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $8, %rcx
	movl (%rcx), %r10d
	imull %r10d, %r9d
	movl %ebx, %eax
	movl %r9d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovg %eax, %ecx
	movl %ecx, %ebx
	movl $1, %r9d
	movq $_gp,%rcx
	addq $16, %rcx
	movl (%rcx), %r10d
	movl %r9d, %eax
	movl %r10d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovle %eax, %ecx
	movl %ecx, %r9d
	movl %ebx, %eax
	movl %r9d, %ecx
	orl  %eax, %ecx
	movl %ecx, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $8, %rcx
	movl (%rcx), %ebx
	movq $_gp,%rcx
	addq $12, %rcx
	movl (%rcx), %r9d
	imull %r9d, %ebx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $8, %rcx
	movl (%rcx), %r10d
	addl %r10d, %r9d
	movq $_gp,%rcx
	addq $12, %rcx
	movl (%rcx), %r10d
	addl %r10d, %r9d
	movl %ebx, %eax
	movl %r9d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovg %eax, %ecx
	movl %ecx, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r10d
	movl %r9d, %eax
	movl %r10d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovne %eax, %ecx
	movl %ecx, %r9d
	movl %ebx, %eax
	movl %r9d, %ecx
	andl  %eax, %ecx
	movl %ecx, %ebx
	movq $_gp,%rcx
	addq $12, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $20, %rcx
	movl (%rcx), %r10d
	movl %r9d, %eax
	movl %r10d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovg %eax, %ecx
	movl %ecx, %r9d
	movl %ebx, %eax
	movl %r9d, %ecx
	orl  %eax, %ecx
	movl %ecx, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $12, %rcx
	movl (%rcx), %ebx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	movl %ebx, %eax
	movl %r9d, %ecx
	cdq
	idivl %ecx
	movl %eax, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r9d
	subl %r9d, %ebx
	movq $_gp,%rcx
	addq $16, %rcx
	movl (%rcx), %r9d
	movl %ebx, %eax
	movl %r9d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovg %eax, %ecx
	movl %ecx, %ebx
	movq $_gp,%rcx
	addq $8, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $12, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $20, %rcx
	movl (%rcx), %r11d
	imull %r11d, %r10d
	addl %r10d, %r9d
	movq $_gp,%rcx
	addq $12, %rcx
	movl (%rcx), %r10d
	movq $_gp,%rcx
	addq $8, %rcx
	movl (%rcx), %r11d
	movq $_gp,%rcx
	addq $20, %rcx
	movl (%rcx), %r12d
	imull %r12d, %r11d
	addl %r11d, %r10d
	movl %r9d, %eax
	movl %r10d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovne %eax, %ecx
	movl %ecx, %r9d
	movl %ebx, %eax
	movl %r9d, %ecx
	andl  %eax, %ecx
	movl %ecx, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
