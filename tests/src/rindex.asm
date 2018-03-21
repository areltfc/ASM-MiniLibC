; ASM MiniLibC
; rindex
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_RINDEX__
%define __MINILIBC_RINDEX__ __MINILIBC_RINDEX__

SECTION .text
global rindex:function

;; char *rindex(const char *s, int c);

rindex: 
	push rbp

.strlen:			; strlen() recreation (see strlen.asm)
	mov rax, rdi

.check_char:
        cmp byte [rax], 0
        jz .finished
        inc rax
        jmp .check_char

.finished:
	sub rax, rdi

.rindex_preps:			; Beginning of rindex()
	mov rbp, rax
	mov rax, rdi		; Moving s into RAX so that we don't have to later

.rindex_loop:
	cmp rbp, 0
	je .rindex_not_found	; If i == 0, c was not found in s
	cmp byte [rax+rbp], sil
	je .rindex_found	; c was found in s
	dec rbp
	jmp .rindex_loop	; Try with previous char

.rindex_not_found:
	xor rax, rax		; Return NULL
	jmp .rindex_ret

.rindex_found:
	add rax, rbp		; Returning pointer to s[i]
	jmp .rindex_ret

.rindex_ret:
	pop rbp
	ret

%else
%warning "attempting to redeclare rindex"
%endif
