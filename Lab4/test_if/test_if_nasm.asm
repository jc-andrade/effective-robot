; test_if_nasm.asm - A simple Assembly program

	bits	64
	global	main
	extern puts

	section .data
A	dd	5
B	dd	7
LC0	db	"TRUE"
LC1	db	"FALSE"

	section .text
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	[rbp-4], edi
	mov	[rbp-16], rsi
	mov	edx, [A]
	mov	eax, [B]
	cmp	edx, eax
	jle	L2
	mov	edi, LC0
	call	puts
	jmp	L3
L2:
	mov	edi, LC1
	call	puts
L3:
	leave
	ret
