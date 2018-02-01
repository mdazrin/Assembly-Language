; Author: Azrin Hadahi
; Creation date: 1/2/2018
; Title: My first program
; Technical details : Simple add of two numbers in register


.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
 sum DWORD 3	; define your variable here



.code


main PROC
	; write your assembly code here

	mov eax,3
	add eax,8

	



	Invoke ExitProcess, 0

main endp
end main
