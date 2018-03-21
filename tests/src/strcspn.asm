; ASM MiniLibC
; strcspn
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_STRCSPN__
%define __MINILIBC_STRCSPN__ __MINILIBC_STRCSPN__

SECTION .text
global strcspn:function

;; size_t strcspn(const char *s, const char *reject);

strcspn:
	push rcx
	push rdx
	push r8
	push r9
	xor r8, r8
	xor r9, r9
	xor rcx, rcx

.compare_char:
	cmp byte [rdi+rcx], 0
	jz .ret			; No byte of reject could be found in s
	xor rdx, rdx
	mov r8b, byte [rdi+rcx]

.compare_with_reject:
	mov r9b, byte [rsi+rdx]
	cmp r9b, 0
	jz .advance_one_char	; Nothing was found
	cmp r8b, r9b
	je .ret			; A byte was found
	inc rdx
	jmp .compare_with_reject

.advance_one_char:
	inc rcx
	jmp .compare_char	; Advance one byte further and try again

.ret:
	mov rax, rcx
	pop r9
	pop r8
	pop rdx
	pop rcx
	ret

%else
%warning "attempting to redeclare strcspn"
%endif
