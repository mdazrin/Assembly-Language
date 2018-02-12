; Author: Azrin Hadahi
; Date: 12/2/2018
; Explanation: Data Transfer Instructions, like movzx,movsx, data-offset operands, lahf,sahf

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define your variable here

	myvarone BYTE 11010000b
	mysignvar BYTE 11010000b
	myarray BYTE 11h,22h,33h,44h,55h

	myarraytwo WORD 111h,222h,333h

	myarraythree DWORD 30000h,40000h,50000h

	myflags BYTE ?								; ? = uninitialized

.code


main PROC
	; write your assembly code here
	
	movzx ax,myvarone			; ax = 0000000011010000 bring zero as extended numbers
	movsx bx,mysignvar			; ax = 1111111111010000	bring sign as extended numbers, 1 is false for binary, F for hex

	mov al,myarray				; first offset 8-bit		
	mov al,[myarray+1]			; second offset 8-bit
	mov al,[myarray+2]			; third offset 8-bit

	mov cx,[myarraytwo]			; first offset 16-bit
	mov cx,[myarraytwo+2]		; second offset 16-bit
	mov cx,[myarraytwo+4]		; third offset 16-bit

	mov edx,[myarraythree]		; first offset 32-bit	
	mov edx,[myarraythree+4]	; second offset 32-bit
	mov edx,[myarraythree+8]	; third offset 32-bit

	lahf						; load flags from flag register into AH
	mov myflags,ah				; store flags from AH into myflags variable

	mov ah,myflags				; load flags from myflags variable into AH
	sahf						; copy flags from AH into flag register


	Invoke ExitProcess, 0

main endp
end main
