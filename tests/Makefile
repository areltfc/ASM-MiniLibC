##
## EPITECH PROJECT, 2018
## MiniLibC
## File description:
## tests-makefile
##

SRCS	=	src/strlen-tests.c	\
		src/strchr-tests.c	\
		src/rindex-tests.c	\
		src/memset-tests.c	\
		src/memcpy-tests.c	\
		src/strcmp-tests.c	\
		src/strncmp-tests.c	\
		src/strcspn-tests.c	\
		src/strpbrk-tests.c	\
		src/strstr-tests.c	\
		src/memmove-tests.c	\
		src/strcasecmp-tests.c

OBJS	=	$(SRCS:.c=.o)

COV1	=	$(SRCS:.c=.gcda)
COV2	=	$(SRCS:.c=.gcno)

LDFLAGS	=	-lcriterion -L. -lasm

CFLAGS	=	-Wextra -Wall --coverage
CFLAGS	+=	-I include/

NAME	=	MiniLibC-tests

CC	=	gcc

all:		$(NAME)

$(NAME):	MLC $(OBJS)
	$(CC) $(OBJS) -o $(NAME) $(LDFLAGS) $(CFLAGS)

MLC:
	cp ../libasm.so .

clean:
	rm -f $(OBJS)
	rm -f $(COV1)
	rm -f $(COV2)

fclean:		clean
	rm -f $(NAME)
	rm -f libasm.so

re:		fclean all

.PHONY:		all MLC clean fclean re
