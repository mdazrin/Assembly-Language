; Author : Azrin Hadahi
; Date : 2/2/2018
; Title : Overlapping Values

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define your variable here

	oneByte BYTE 78h
	oneWord WORD 1234h
	oneDWord DWORD 12345678h


.code


main PROC
	; write your assembly code here

	mov eax,0		; EAX = 00000000h
	mov al, oneByte		; EAX = 00000078h
	mov ax, oneWord		; EAX = 00001234h
	mov eax, oneDword	; EAX = 12345678h
	mov ax,0		; EAX = 12340000h


	Invoke ExitProcess, 0

main endp
end main
