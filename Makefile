# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: toandrad <toandrad@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/14 13:53:00 by toandrad          #+#    #+#              #
#    Updated: 2025/05/15 14:54:33 by toandrad         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

AR = ar rcs

SRCS =	get_next_line.c \
				get_next_line_utils.c 

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

%.o: %.c get_next_line.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
