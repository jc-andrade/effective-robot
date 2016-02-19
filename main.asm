;main.asm - based off of Lab 4
	bits 64
	global main
	extern printf
	extern convertData	;access external file

	section.data
header	db	"Exam 2: Lab", 10, 0
next	db	10,0
char	db	"%c", 0

dataAR	db	'0', '0', '0', 'a'
	db	'0', '0', '0', 'b'
	db	'0', '0', '0', 'c'
	db	'0', '0', '0', 'd'
	db	'0', '0', '0', 'e'

	section .test
main:
	;function setup
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32

	;print out header
	mov	rdi, header	;put header into dest index register
	mov	al, 0		;open the file to read it
	call	printf		;print header

	;call printData for lowercase version
	mov	rbx, dataAr	;put array into base register
	mov	r13, 0		;count elements in string
	call	printData

	;call convertData file
	mov	rbx, dataAr	;reset the array in the base register
	mov	r12, 0
	call	convertData

	;call printData for uppercase version
	mov	rbx, dataAr	;put new array into base register
	mov	r13, 0		;reset count to 0
	call	printData

end:
	;return function
	mov	eax, 0
	mov	rsp, rbp
	pop	rbp
	ret

printData:
	mov	r15, 0		;count element in string- reset every time
	call	printString	;print each eleemnt in a string

	;skip to next line
	mov	rdi, next	;put spacer into destination register
	mov	al, 0		;open to read file
	call	printf

	;print the elements
	inc	r13		;count the strings
	add	rbx, 4		;inc by 4 --> new string
	cmp	r13, 5		;there are 5 string
	jl	printData	;jump if strings 0-4
	ret

printString:
	mov	al, [rbx + r15]	;read one element
	mozx	rsi, al		;mov with zero extend
				;to make up for size difference
	mov	rdi, char	;printf to print a char
	mov	al, 0
	call	printf
	inc	r15		;count the element
	cmp	r15, 4		;4 elements per string
	jl	printString	;jump if elements 0-3
	ret

