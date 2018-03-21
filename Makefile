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
			src/memmove.asm		\
			src/strcasecmp.asm

OBJS		=	$(SRCS:.asm=.o)

NAME		=	libasm.so

all:			$(NAME)

$(NAME):		asm
	gcc -fPIC -shared $(OBJS) -o $(NAME)

asm:
	nasm -f elf64 src/strlen.asm
	nasm -f elf64 src/strchr.asm
	nasm -f elf64 src/rindex.asm
	nasm -f elf64 src/memset.asm
	nasm -f elf64 src/memcpy.asm
	nasm -f elf64 src/strcmp.asm
	nasm -f elf64 src/strncmp.asm
	nasm -f elf64 src/strcspn.asm
	nasm -f elf64 src/strpbrk.asm
	nasm -f elf64 src/memmove.asm
	nasm -f elf64 src/strcasecmp.asm

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
