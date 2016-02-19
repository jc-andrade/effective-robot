; Created by Julio Andrade

        bits 64
        global main
        extern puts
	extern printf

section .data ; ---------------------------------------------------------------
	
	; On STRING1, 0Dh and 0Ah are used to print new line characters. This makes output easily readable. 0 at the end marks end of string
	STRING1	db	"Lab 4 - Modified hello program",0Dh, 0Ah, "COSC2425 - Pentium Assembly Language",0Dh, 0Ah, "Processed with NASM and GNU gcc",0	
	format	db	"%d", 10, 0	; This will convert decimal to a printable string	

section .text ; --------------------------------------------------------------

main:
        ; function setup
        push    rbp			; push the base pointer onto stack
        mov     rbp, rsp		; move the stack pointer into base pointer
        sub     rsp, 32
        
	; user code goes here
        mov     rdi, STRING1		; point to the message
        call    puts			; call puts to print string
	mov	rax, 12345		; loads rax with 12345 literal
	mov	rdi, format
	mov	rsi, rax
	call 	printf			; call printf with rdi and rsi parameters

	mov	rbx, rax
	inc	rbx			; increases rbx
	inc	rbx			;      by 2
	mov	rax, rbx
	mov	rdi, format
	mov	rsi, rax
	call	printf

        ; function return
        mov     eax, 0
        add     rsp, 32
        pop     rbp
        ret
