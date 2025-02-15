SRCS = ft_printf.c ft_putpointer.c ft_putchar.c ft_puthexa_long.c ft_puthexa_lower.c \
		ft_puthexa_upper.c ft_putnbr.c ft_putstr.c ft_putunsign.c ft_strlen.c

NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

OBJ = $(SRCS:.c=.o)

%.o: %.c
	$(CC) $(CFLAGS) -I. -c $(<) -o $@

all: $(NAME)

$(NAME) : $(OBJ)
	@ar rcs $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
