;convert char to upper case- based off of Lab4
	bit 64
	global convert_data

	#set code
	section .text
convert_data:
	xor	rsi, rsi			;clear out register

loop:
	xor	qword[rdx + rsi*4 + 3], 32	;mask the element
	inc	rsi				;increment src index
	cmp	rsi, rcx			;rcx holds length counter from main
	jne	loop				;jump until no more elements
	ret					;no more elements
