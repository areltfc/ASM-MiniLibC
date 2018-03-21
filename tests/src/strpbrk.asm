; ASM MiniLibC
; strpbrk
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_STRPBRK__
%define __MINILIBC_STRPBRK__ __MINILIBC_STRPBRK__

SECTION .text
global strpbrk:function

;; char *strpbrk(const char *s, const char *accept);

strpbrk:
	push rcx
	push rdx
	push r8
	push r9
	xor r8, r8
	xor r9, r9
	xor rcx, rcx

.compare_char:
	cmp byte [rdi+rcx], 0
	jz .not_found		; s[i] == 0, meaning no byte of accept could be found
	xor rdx, rdx
	mov r8b, byte [rdi+rcx]

.compare_with_reject:
	mov r9b, byte [rsi+rdx]
	cmp r9b, 0
	jz .advance_one_char	; No byte could be found
	cmp r8b, r9b
	je .found		; One byte found
	inc rdx
	jmp .compare_with_reject

.advance_one_char:
	inc rcx
	jmp .compare_char

.not_found:
	xor rax, rax		; Return NULL
	jmp .ret

.found:
	mov rax, rdi
	add rax, rcx		; Return s + i
	jmp .ret

.ret:
	pop r9
	pop r8
	pop rdx
	pop rcx
	ret

%else
%warning "attempting to redeclare strpbrk"
%endif
