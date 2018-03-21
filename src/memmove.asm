; ASM MiniLibC
; memmove
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_MEMMOVE__
%define __MINILIBC_MEMMOVE__ __MINILIBC_MEMMOVE__

[BITS 64]
SECTION .text
global memmove:function

;; void *memmove(void *dest, const void *str, size_t n);

memmove:
	xor r10, r10
	xor r11, r11
	mov r10, rdi
	cmp rsi, rdi
	jae .forwards_move	; If src >= dest, forward movement
	dec rdx
        add rdi, rdx
        add rsi, rdx
	inc rdx			; Setting up movement

.backwards_move:
        cmp rdx, 0
        je .ret
        mov r11b, byte [rsi]
	mov byte [rdi], r11b
        dec rsi
        dec rdi
        dec rdx
        jmp .backwards_move

.forwards_move:
	cmp rdx, 0
	je .ret
	mov r11b, byte [rsi]
	mov byte [rdi], r11b
	inc rsi
	inc rdi
	dec rdx
	jmp .forwards_move

.ret:
	mov rax, r10		; Return pointer to beginning of dest
	ret

%else
%warning "attempting to redeclare memmove"
%endif
