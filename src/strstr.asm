; ASM MiniLibC
; strstr
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_STRSTR__
%define __MINILIBC_STRSTR__ __MINILIBC_STRSTR__

[BITS 64]
SECTION .text
global strstr:function

;; char *strstr(const char *haystack, const char *needle);

strstr:
	push rcx
	push rdx
	push r8
	push r9
	push r10
	xor r8, r8
	xor r9, r9
	xor r10, r10
	xor rcx, rcx
	xor rdx, rdx
	cmp byte [rsi+rdx], 0
	jz .needle_found	; needle[0] == 0, returning haystack

.look_for_needle:
	cmp byte [rdi+rcx], 0
	jz .needle_not_found	; We have arrived to the end of haystack and nothing was found
	mov r8b, byte [rdi+rcx]
	mov r9b, byte [rsi+rdx]
	cmp r8b, r9b
	je .check_lead		; haystack[0] == needle[0], possible lead
	inc rcx
	jmp .look_for_needle

.check_lead:
	mov r10, rcx		; Saving i, in case our lead is correct
	inc rcx
	inc rdx

.check_lead_loop:
	cmp byte [rsi+rdx], 0
	jz .needle_found	; needle[ibis] == 0: needle found
	cmp byte [rdi+rcx], 0
	jz .needle_not_found	; haystack[i] == 0 && needle[ibis] != 0: needle not found in haystack
	mov r8b, byte [rdi+rcx]
	mov r9b, byte [rsi+rdx]
	cmp r8b, r9b
	jne .return_to_lookout	; bad lead
	inc rcx
	inc rdx
	jmp .check_lead_loop

.return_to_lookout:
	xor rdx, rdx
	jmp .look_for_needle	; Reset ibis and return to search

.needle_not_found:
	xor rax, rax
	jmp .ret		; Return NULL

.needle_found:
	mov rax, rdi
	add rax, r10
	jmp .ret		; Return s + i_saved_value

.ret:
	pop r10
	pop r9
	pop r8
	pop rdx
	pop rcx
	ret

%else
%warning "attempting to redeclare strstr"
%endif
