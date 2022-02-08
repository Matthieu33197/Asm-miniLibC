##
## EPITECH PROJECT, 2019
## makefile
## File description:
## make to file
##

SRC     =	src/strlen.asm			\
			src/strchr.asm			\
			src/memset.asm			\
			src/memcpy.asm			\
			src/memmove.asm			\
			src/strcmp.asm			\
			src/strncmp.asm			\
			src/strcasecmp.asm		\

OBJ	=	$(SRC:.asm=.o)

NAME 	= 	libasm.so

CFLAGS = -Wall -Wextra -Werror -fpic -I include/

all:	$(NAME)

$(NAME):	$(OBJ)
	gcc -nostdlib -shared -fPIC -o $(NAME) $(OBJ)

%.o : %.asm
	nasm -f elf64 -o $@ $<

clean:
	rm -rf $(OBJ)

re:	fclean all

fclean: clean
	rm -rf $(NAME)

.PHONY: all clean fclean re
