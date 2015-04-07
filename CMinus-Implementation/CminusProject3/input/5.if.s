	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.string_const0: .string "enter a:"
	.string_const1: .string "enter b:"
	.string_const2: .string "a = "
	.string_const3: .string "b = "
	.string_const4: .string "a = "
	.string_const5: .string "b = "
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
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovg %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L2
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r9d
	movl $0, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovg %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L4
	movl $.string_const4, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp .L3
.L4:
	movl $.string_const5, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
.L3:
	jmp .L1
.L2:
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r9d
	movl $0, %r10d
	movl %r9d, %eax
	movl %r10d, %ebx
	cmpl  %ebx, %eax
	movl $0, %ebx
	movl $1, %eax
	cmovl %eax, %ebx
	movl %ebx, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L6
	movl $.string_const4, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp .L5
.L6:
	movl $.string_const5, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
.L5:
.L1:	nop
	leave
	ret
