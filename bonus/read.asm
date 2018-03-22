; ASM MiniLibC
; read
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_READ__
%define __MINILIBC_READ__ __MINILIBC_READ__

[BITS 64]
SECTION .text
global read:function

;; ssize_t read(int fd, void *buf, size_t count);

read:
	mov rax, 0	; read syscall opcode is 0
	syscall
	ret

%else
%warning "attempting to redeclare read"
%endif
