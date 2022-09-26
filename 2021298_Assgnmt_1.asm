extern printf 
extern scanf
section .data
msg1 : db "Enter number",10,0
fmt1 : db "%ld",0
msg2 : db "Enter String",10,0
fmt2 : db "%s",0
msg3 : db "Number is : ",10,0
msg4 : db "String is : ",10,0
fmt3 : db "%ld",0

section .bss
	arr1 : resb 32
	arr2 : resb 32
section .text
	global main
main:
	push rbp
	mov rbp, rsp
	lea rdi, [msg2]
	xor eax, eax
	call printf

	lea rdi, [fmt2]
	lea rsi, [arr2]
	xor eax, eax
	call scanf

	lea rdi, [msg4]
	xor eax, eax
	call printf

	lea rdi, [fmt2]
	lea rsi, [arr2]
	xor eax, eax
	call printf
	
	lea rdi, [msg1]
	xor eax, eax
	call printf
	
	lea rdi, [fmt1]
	lea rsi, [arr1]
	xor eax, eax
	call scanf

	lea rdi, [msg3]
	xor eax,eax
	call printf

	mov rdi, fmt3
 	mov rsi, [arr1]
	xor eax, eax
	call printf
	
	leave
 	ret
