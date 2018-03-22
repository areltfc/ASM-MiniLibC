; ASM MiniLibC
; write
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_WRITE__
%define __MINILIBC_WRITE__ __MINILIBC_WRITE__

[BITS 64]
SECTION .text
global write:function

;; void write(int fd, const void *buf, size_t count);

write:
	mov rax, 1	; write syscall opcode is 1
	syscall
	ret

%else
%warning "attempting to redeclare write"
%endif
