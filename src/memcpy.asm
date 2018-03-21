; ASM MiniLibC
; memcpy
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_MEMCPY__
%define __MINILIBC_MEMCPY__ __MINILIBC_MEMCPY__

SECTION .text
global memcpy:function

;; void *memcpy(void *dest, const void *src, size_t n);

memcpy:
	push rcx
	push rbx
	xor rcx, rcx
	mov rax, rdi		; Moving dest in RAX so that we don't need to later

.memsetter:
	cmp rcx, rdx
	je .memret		; If the counter is equal to n, our job is done
	mov bl, byte [rsi+rcx]	; Copy src[i] into
	mov byte [rax+rcx], bl	; dest[i]
	inc rcx
	jmp .memsetter

.memret:
	pop rbx
	pop rcx
	ret

%else
%warning "attempting to redeclare memcpy"
%endif
