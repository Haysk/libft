# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adylewsk <adylewsk@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/07 11:27:17 by adylewsk          #+#    #+#              #
#    Updated: 2019/10/13 17:42:40 by adylewsk         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=gcc
FLAGS=-Wall -Wextra -Werror
SRCS=ft_strlen.c ft_atoi.c ft_memset.c ft_memcmp.c			\
ft_toupper.c ft_tolower.c ft_isprint.c ft_isascii.c			\
ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_strlcpy.c			\
ft_strncmp.c ft_strlcat.c ft_strnstr.c ft_bzero.c			\
ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c			\
ft_strchr.c ft_strrchr.c ft_strdup.c ft_calloc.c			\
ft_substr.c ft_strjoin.c ft_split.c ft_strtrim.c			\
ft_split.c ft_itoa.c ft_strcat.c ft_strcpy.c				\
ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c	\
ft_putnbr_fd.c
OBJS=${SRCS:.c=.o}
NAME=libft.a

all : $(NAME)

$(NAME) : ${OBJS} libft.h
	ar rc libft.a ${OBJS}
	ranlib libft.a

.c.o : ${SRCS}
	${CC} ${FLAGS} -c -Iincludes/ $< -o ${<:.c=.o}

clean :
	rm -f ${OBJS}

fclean : clean
	rm -f libft.a

re : fclean
	make all

.PHONY : all clean fclean re
