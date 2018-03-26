##
## EPITECH PROJECT, 2018
## MiniLibC
## File description:
## MiniLibC
##

SRCS		=	src/strlen.asm		\
			src/strchr.asm		\
			src/rindex.asm		\
			src/memset.asm		\
			src/memcpy.asm		\
			src/strcmp.asm		\
			src/strncmp.asm		\
			src/strcspn.asm		\
			src/strpbrk.asm		\
			src/strstr.asm		\
			src/memmove.asm		\
			src/strcasecmp.asm	\
			bonus/write.asm		\
			bonus/read.asm

OBJS		=	$(SRCS:.asm=.o)

NAME		=	libasm.so

ASM		=	nasm

ASMFLAGS	+=	-f elf64

LD		=	ld

LDFLAGS		+=	-shared

all:			$(NAME)

$(NAME):		$(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $(NAME)

%.o:			%.asm
	$(ASM) $(ASMFLAGS) $< -o $@

tests_run:		$(NAME)
	make -C tests
	./tests/MiniLibC-tests

clean:
	rm -f $(OBJS)
	make -C tests/ clean

fclean:			clean
	rm -f $(NAME)
	make -C tests/ fclean

re:			fclean all
	make -C tests/ re

.PHONY:			all asm clean fclean re
