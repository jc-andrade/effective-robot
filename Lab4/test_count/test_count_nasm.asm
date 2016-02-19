; test_count_nasm.asm - A  very simple assembly program

	bits 64
	global main
	extern puts

	section .data
A	dd	5
B	dd	7
LC0	db	"COUNTING"

	section .text
main:	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	[rbp-4], edi
	mov	[rbp-16], rsi
	mov	dword [A], 0
	jmp	L2

L3:
	mov	edi, LC0
	call	puts
	mov	eax, [A]
	add	eax, 1
	mov	[A], eax

L2:
	mov	eax, [A]
	cmp	eax, 2
	jle	L3
	leave
	ret
