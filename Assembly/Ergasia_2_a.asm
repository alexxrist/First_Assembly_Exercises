TITLE Expression Calculator
;This program calculates a simple arithmetical expression
INCLUDE Irvine32.inc

p EQU 8d ;Constant p, declared as 8 decimal

.data
	x SDWORD 16d ;All variables here are signed 32-bit
	y SDWORD 154d
	z SDWORD -17d
	w SDWORD ?

.code
main PROC
	mov eax, w ;This part calculates x + y
	mov ebx, x
	mov ecx, y	
	add ebx, ecx

	mov ecx, 50d ; This part calculates (50d + x + y + z - p)
	mov edx, x
	add ecx, edx
	mov edx, y
	add ecx, edx
	mov edx, z
	add ecx, edx
	sub ecx, p

	sub ebx, ecx ; This part calculates the difference of the two things found before.
	mov eax, ebx

	call WriteInt	;Here, we print the result of the arithmetical expression.
	exit
main ENDP
END main
