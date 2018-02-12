; Author: Azrin Hadahi
; Date:2/2/2018
; Title: High bit, Lower bit registers


.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO , dwExitCode: DWORD

	

.data
	; define your variable here
	var1 BYTE 12d	; 8-bit values
	var2 BYTE 'm'
	var3 BYTE '$'





.code
main PROC
	; write your assembly code here
	mov al,var1		; lower value of eax register
	mov bl,var2
	mov cl,var3
	
	mov ah,al		; high value of eax register
	mov bh,bl
	mov ch,cl

	Invoke ExitProcess, 0

main endp
end main
