; ASM MiniLibC
; strcmp
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_STRCMP__
%define __MINILIBC_STRCMP__ __MINILIBC_STRCMP__

[BITS 64]
SECTION .text
global strcmp:function

;; int strcmp(const char *s1, const char *s2);

strcmp:
	push rcx
	push r8
	xor rcx, rcx

.strcmp_loop:
	cmp byte [rdi+rcx], 0
	jz .ret			; End of s1, going to return algorithm
	mov al, byte [rdi+rcx]
	cmp byte [rsi+rcx], al
	jne .ret		; s1[i] != s2[i]
	inc rcx
	jmp .strcmp_loop

.ret:
	xor rax, rax
	xor r8, r8		; Reset RAX and R8 so that they aren't infested with undefined bits
	mov al, byte [rdi+rcx]
	mov r8b, byte [rsi+rcx]
	sub al, r8b		; s1[i] - s2[i]
	movsx rax, al		; AL is unsigned, so this part is mandatory.
	pop r8
	pop rcx
	ret

%else
%warning "attempting to redeclare strcmp"
%endif
