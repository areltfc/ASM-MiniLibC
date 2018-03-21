; ASM MiniLibC
; strcasecmp
; arthur.delattre@epitech.eu

%ifndef __MINILIBC_STRCASECMP__
%define __MINILIBC_STRCASECMP__ __MINILIBC_STRCASECMP__

[BITS 64]
SECTION .text
global strcasecmp:function

;; int strcasecmp(const char *s1, const char *s2);

strcasecmp:
	push r8
	push r9
	xor r8, r8
	xor r9, r9

.look_at_first_string_char:
	mov r8b, byte [rdi]
	cmp r8b, 'A'
	jl .look_at_second_string_char		; *s1 is not a letter, so won't need to be downscaled
	cmp r8b, 'Z'
	jle .scale_first_string_char		; *s1 > 'A' && *s1 <= 'Z', meaning it needs to be downscaled

.look_at_second_string_char:			; s2 equivalent of above label
	mov r9b, byte [rsi]
	cmp r9b, 'A'
	jl .compare_chars
	cmp r9b, 'Z'
	jl .scale_second_string_char
	jae .compare_chars			; If it is not an uppercase letter, go directly to character comparison. This wasn't needed above as the code structure would let to computer "fall down" onto this label

.scale_first_string_char:
	add r8b, 32				; Add 32 to make it a lowercase letter
	jmp .look_at_second_string_char

.scale_second_string_char:
	add r9b, 32				; s2 equivalent of above label
	jmp .compare_chars

.compare_chars:
	cmp r8b, r9b
	jne .ret
	cmp r8b, 0
	jz .ret
	cmp r9b, 0
	jz .ret
	inc rdi
	inc rsi
	jmp .look_at_first_string_char

.ret:
	sub r8b, r9b				; *s1 - *s2
	movsx rax, r8b				; r8b is unsigned, so we need movsx to restore the signed bit
	pop r9
	pop r8
	ret

%else
%warning "attempting to redeclare strcasecmp"
%endif
