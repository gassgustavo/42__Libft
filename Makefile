# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmoraes- <gmoraes-l@student.42sp.org.br    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/21 16:35:31 by gmoraes-          #+#    #+#              #
#    Updated: 2021/09/27 12:18:44 by gmoraes-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# STATIC LIBRARY
NAME = libft.a

# COMPILER
CC = gcc -c

# FLAGS
FLAGS = -Wall -Werror -Wextra

# SOURCE FILES (Total: 14)
SRCS = ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
		ft_strchr.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c \
		ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c \

# OBJECT FILES
OBJ = $(SRCS:%.c=%.o)

# REMOVE
RM = rm -f

# MAKE STATIC LIBRARY
MKLIB = ar -rcs

# DEFAULT EXECUTION
all: $(SRCS) $(OBJ) $(NAME)

# STATIC LIBRARY EXECUTION
$(NAME):
	$(MKLIB) $(NAME) $(OBJ)

# CLEAN OBJECT FILES
clean:
	$(RM) $(OBJ)

# CLEAN OBJECT FILES AND STATIC LIBRARY
fclean:
	$(RM) $(OBJ) $(NAME)

# CLEAN AND RECOMPILE 
re:
	make fclean
	make all

.PHONY: all clean fclean re