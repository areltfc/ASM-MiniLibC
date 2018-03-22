; ASM MiniLibC
; rindex
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_RINDEX__
%define __MINILIBC_RINDEX__ __MINILIBC_RINDEX__

[BITS 64]
SECTION .text
global rindex:function

;; char *rindex(const char *s, int c);

rindex: 
	push r8

.strlen:			; strlen() recreation (see strlen.asm)
	mov r8, rdi

.check_char:
        cmp byte [r8], 0
        jz .finished
        inc r8
        jmp .check_char

.finished:
	sub r8, rdi

.rindex_preps:			; Beginning of rindex()
	mov rax, rdi		; Moving s into RAX so that we don't have to later

.rindex_loop:
	cmp byte [rax+r8], sil
	je .rindex_found	; c was found in s
	cmp r8, 0
	jz .rindex_not_found	; If i == 0, c was not found in s
	dec r8
	jmp .rindex_loop	; Try with previous char

.rindex_not_found:
	xor rax, rax		; Return NULL
	jmp .rindex_ret

.rindex_found:
	add rax, r8		; Returning pointer to s[i]
	jmp .rindex_ret

.rindex_ret:
	pop r8
	ret

%else
%warning "attempting to redeclare rindex"
%endif
