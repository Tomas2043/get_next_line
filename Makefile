# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: toandrad <toandrad@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/14 13:53:00 by toandrad          #+#    #+#              #
#    Updated: 2025/05/28 15:21:39 by toandrad         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

AR = ar rcs

SRCS =	get_next_line.c \
				get_next_line_utils.c 

OBJSDIR = Objects
OBJS = $(addprefix $(OBJSDIR)/, $(SRCS:.c=.o))

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)
	echo "Library $(NAME) built successfully." > test.txt

$(OBJSDIR)/%.o: %.c get_next_line.h | $(OBJSDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJSDIR):
	mkdir -p $(OBJSDIR)

clean:
	rm -rf $(OBJSDIR) test.txt

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
