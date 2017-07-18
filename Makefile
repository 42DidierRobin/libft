# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rdidier <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/24 10:18:07 by rdidier           #+#    #+#              #
#    Updated: 2016/03/17 10:55:55 by rdidier          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Wextra -Werror
OBJDIR = obj

SOURCES = gnl/get_next_line.c		\
	  print/ft_putchar.c		\
	  print/ft_putchar_fd.c		\
	  print/ft_putstr.c		\
	  print/ft_putstr_fd.c		\
	  print/ft_putendl.c		\
	  print/ft_putendl_fd.c		\
	  print/ft_putnbr.c		\
	  print/ft_putnbr_fd.c		\
	  str/ft_strlen.c		\
	  btest/ft_isalpha.c		\
	  btest/ft_isdigit.c		\
	  btest/ft_isalnum.c		\
	  btest/ft_isascii.c		\
	  btest/ft_isprint.c		\
	  str/ft_toupper.c		\
	  str/ft_tolower.c		\
	  mem/ft_memset.c		\
	  mem/ft_memcpy.c		\
	  mem/ft_memccpy.c		\
	  mem/ft_memmove.c		\
	  mem/ft_memchr.c		\
	  mem/ft_memcmp.c		\
	  str/ft_strdup.c		\
	  str/ft_strcpy.c		\
	  str/ft_strncpy.c		\
	  str/ft_strcat.c		\
	  str/ft_strlcat.c		\
	  str/ft_strncat.c		\
	  str/ft_strchr.c		\
	  str/ft_strrchr.c		\
	  str/ft_strstr.c		\
	  str/ft_strnstr.c		\
	  str/ft_strcmp.c		\
	  str/ft_strncmp.c		\
	  str/ft_str_find_char.c	\
	  convert/ft_atoi.c		\
	  mem/ft_memalloc.c		\
	  mem/ft_memdel.c		\
	  str/ft_strnew.c		\
	  str/ft_strdel.c		\
	  str/ft_strclr.c		\
	  str/ft_striter.c		\
	  str/ft_striteri.c		\
	  str/ft_strmap.c		\
	  str/ft_strmapi.c		\
	  str/ft_strequ.c		\
	  str/ft_strnequ.c		\
	  str/ft_strsub.c		\
	  str/ft_strjoin.c		\
	  str/ft_strtrim.c		\
	  str/ft_strsplit.c		\
	  convert/ft_itoa.c		\
	  lst/ft_lstnew.c		\
	  lst/ft_lstdelone.c		\
	  lst/ft_lstdel.c		\
	  lst/ft_lstadd.c		\
	  lst/ft_lstiter.c		\
	  lst/ft_lstmap.c		\
	  btree/ft_btree_new.c		\
	  btree/ft_btree_mapinf.c	\
	  btree/ft_btree_mappre.c	\
	  btree/ft_btree_mappost.c	\
	  btree/ft_btree_mapinf.c	\
	  btree/ft_btree_strprint.c

OBJECTS = $(addprefix $(OBJDIR)/,$(patsubst %.c,%.o,$(SOURCES)))


all : $(NAME)

$(NAME) : 
	gcc $(FLAGS) -c $(SOURCES) 
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

clean : 
	/bin/rm -f $(OBJECTS)

fclean : clean
	/bin/rm -f $(NAME)

re : fclean all 
