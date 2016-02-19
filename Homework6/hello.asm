; For Mac OS-X maintain 16 byte alignment on all calls

        bits 64
        global  main
        extern  printf

        section .text
main:
        ; function setup
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        ;
        lea     rdi, [rel courseMsg]
        mov     al, 0
        call    printf

	lea	rdi, [rel studentMsg]
	mov	al, 0
	call	printf

	lea	rdi, [rel helloWorld]
	mov	al, 0
	call	printf

        ; function return
        mov     eax, 0
        add     rsp, 32
        pop     rbp
        ret

        section .data
courseMsg db	"Course: COSC-2425 Lab2 / Homework6", 10, 0
studentMsg db	"Student: Julio Andrade-Merrow", 10, 0
helloWorld db	"Project: Nasm Hello World", 10, 0
