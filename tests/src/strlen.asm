; ASM MiniLibC
; strlen
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_STRLEN__
%define __MINILIBC_STRLEN__ __MINILIBC_STRLEN__

SECTION .text
global strlen:function

;; size_t strlen(const char *s);

strlen:
	mov rax, rdi

.check_char:
	cmp byte [rax], 0
	jz .finished		; *s == 0, len was found
	inc rax
	jmp .check_char

.finished:
	sub rax, rdi		; Pointer arithmetics to retrieve the param length
	ret

%else
%warning "attempting to redeclare strlen"
%endif
