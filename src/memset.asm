; ASM MiniLibC
; memset
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_MEMSET__
%define __MINILIBC_MEMSET__ __MINILIBC_MEMSET__

[BITS 64]
SECTION .text
global memset:function

;; void *memset(void *s, int c, size_t n);

memset:
	push rcx
	xor rcx, rcx
	mov rax, rdi		; Moving s into RAX so that we do'nt have to later

.memsetter:
	cmp rcx, rdx
	je .memret		; If counter is equal to n, our job is done
	mov byte [rax+rcx], sil	; Setting s[i] to c
	inc rcx
	jmp .memsetter

.memret:
	pop rcx
	ret

%else
%warning "attempting to redeclare memset"
%endif
