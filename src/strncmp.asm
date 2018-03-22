; ASM MiniLibC
; strncmp
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_STRNCMP__
%define __MINILIBC_STRNCMP__ __MINILIBC_STRNCMP__

[BITS 64]
SECTION .text
global strncmp:function

;; int strncmp(const char *s1, const char *s2, size_t n);

strncmp:
	push rcx
	push r8
	xor rcx, rcx
	cmp rdx, 0
	jz .empty_ret		; n == 0, no need to loop

.strncmp_loop:
	cmp byte [rdi+rcx], 0
	jz .ret			; s1[i] == 0, going to return algorithm
	mov al, byte [rdi+rcx]
	cmp byte [rsi+rcx], al	; s1[i] != s2[i]
	jne .ret
	dec rdx
	cmp rdx, 0
	jz .ret			; Comparison before increment
	inc rcx
	jmp .strncmp_loop

.empty_ret:
	xor rax, rax		; Trying a comparison would end up in a segfault
	pop r8
	pop rcx
	ret

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
%warning "attempting to redeclare strncmp"
%endif
