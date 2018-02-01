; Author: Azrin Hadahi
; Date: 1/2/2018
; Title: Integer Expression Calculation
; Expression: A = (A+B)-(C-D)

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define your variable here

	varone DWORD 2		; 32-bit unsigned integer
	vartwo DWORD 4
	varthree DWORD 3
	varfour DWORD 1

.code


main PROC
	; write your assembly code here

	mov eax,varone		;move varone to eax register
	mov ebx,vartwo		
	mov ecx,varthree
	mov edx,varfour

	add eax,ebx
	add ecx,edx

	sub eax,ecx

	


	Invoke ExitProcess, 0

main endp
end main