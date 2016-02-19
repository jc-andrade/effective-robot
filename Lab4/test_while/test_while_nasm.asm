; test_while_nasm.asm - basic NASM assembly language program

        bits 64
        global  main
        extern  puts

        section .data
A	dd	5
B	dd	7
LC0	db	"COUNTING"

        section .text
L2:
	mov	edx, [A]
	mov	eax, [B]
	cmp	edx, eax
	jl	L3
	mov eax, 0
	leave
	ret

L3:
	mov	edi, LC0
	call puts
	mov	eax, [A]
	add	eax, 1
	mov	[A], eax

main:
        ; function setup
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        
	; user code goes here
        mov     edi, LC0		; point to the message		

        ; function return
        mov     eax, 0
        add     rsp, 32
        pop     rbp
        ret
