; ASM MiniLibC
; strchr
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_STRCHR__
%define __MINILIBC_STRCHR__ __MINILIBC_STRCHR__

[BITS 64]
SECTION .text
global strchr:function

;; char *strchr(const char *s, int c);

strchr:
	push r11
	mov rax, rdi		; Move s into RAX so that we don't have to later
	xor r11, r11

.check_char:
	cmp byte [rax+r11], 0
	je .check_eos		; If s[i] == 0, c was not found inside s
	cmp byte [rax+r11], sil
	je .found		; s[i] == c
	inc r11
	jmp .check_char

.check_eos:
	cmp sil, 0h
	jne .not_found
	add rax, r11
	jmp .ret

.not_found:
	xor rax, rax
	jmp .ret

.found:
	add rax, r11
	jmp .ret

.ret:
	pop r11
	ret

%else
%warning "attempting to redeclare strchr"
%endif
