# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kyoulee <kyoulee@student.42seoul.kr>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/25 08:16:11 by kyoulee           #+#    #+#              #
#    Updated: 2022/06/25 19:36:01 by kyoulee          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

TARGET = libft.a

CC = cc
CXXFLAGS = $(NULL)
CFLAGS = -Wall -Werror -Wextra
DFLAGS = $(NULL)
IFLAGS = -I $(INCLUDE_DIR)

## DIR ##

ROOTDIR = $(abspath $(dir $(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))))
SRC_DIR = $(ROOTDIR)/src
SRC_GET_NEXT_LINE_DIR = $(ROOTDIR)/src_get_next_line
SRC_IS_DIR = $(ROOTDIR)/src_is
SRC_LST_DIR = $(ROOTDIR)/src_lst
SRC_MALLOC_DIR = $(ROOTDIR)/src_malloc
SRC_MEMORY_DIR = $(ROOTDIR)/src_memory
SRC_PUT_DIR = $(ROOTDIR)/src_put
SRC_STR_DIR = $(ROOTDIR)/src_str
SRC_TO_DIR = $(ROOTDIR)/src_to

OBJ_DIR = $(ROOTDIR)/obj
INCLUDE_DIR = $(ROOTDIR)/include

SRC_GET_NEXT_LINE_C_SRC =	ft_get_next_line.c

SRC_GET_NEXT_LINE_C = $(addprefix $(SRC_GET_NEXT_LINE_DIR)/, $(SRC_GET_NEXT_LINE_C_SRC))

SRC_C_SRC =	ft_split.c

SRC_C = $(addprefix $(SRC_DIR)/, $(SRC_C_SRC))

SRC_IS_C_SRC =	ft_isalnum.c		\
				ft_isalpha.c		\
				ft_isascii.c		\
				ft_isdigit.c		\
				ft_isprint.c

SRC_IS_C = $(addprefix $(SRC_IS_DIR)/, $(SRC_IS_C_SRC))

SRC_LST_C_SRC =	ft_lst_len.c		\
				ft_lst_malloc.c		\
				ft_lstadd_back.c	\
				ft_lstadd_front.c	\
				ft_lstclear.c		\
				ft_lstdelone.c		\
				ft_lstiter.c		\
				ft_lstlast.c		\
				ft_lstmap.c			\
				ft_lstnew.c			\
				ft_lstsize.c

SRC_LST_C = $(addprefix $(SRC_LST_DIR)/, $(SRC_LST_C_SRC))

SRC_MALLOC_C_SRC =	ft_calloc.c

SRC_MALLOC_C = $(addprefix $(SRC_MALLOC_DIR)/, $(SRC_MALLOC_C_SRC))

SRC_MEMORY_C_SRC =	ft_bzero.c		\
					ft_memchr.c		\
					ft_memcmp.c		\
					ft_memcpy.c		\
					ft_memmove.c	\
					ft_memset.c

SRC_MEMORY_C = $(addprefix $(SRC_MEMORY_DIR)/, $(SRC_MEMORY_C_SRC))

SRC_PUT_C_SRC =	ft_putchar_fd.c		\
				ft_putendl_fd.c		\
				ft_putnbr_fd.c		\
				ft_putstr_fd.c

SRC_PUT_C = $(addprefix $(SRC_PUT_DIR)/, $(SRC_PUT_C_SRC))

SRC_STR_C_SRC =	ft_strchr.c			\
				ft_strdup.c			\
				ft_striteri.c		\
				ft_strjoin.c		\
				ft_strlcat.c		\
				ft_strlcpy.c		\
				ft_strlen.c			\
				ft_strmapi.c		\
				ft_strncmp.c		\
				ft_strncpy.c		\
				ft_strnstr.c		\
				ft_strrchr.c		\
				ft_strtrim.c		\
				ft_substr.c			\
				ft_tolower.c		\
				ft_toupper.c

SRC_STR_C = $(addprefix $(SRC_STR_DIR)/, $(SRC_STR_C_SRC))

SRC_TO_C_SRC =	ft_atoi.c			\
				ft_atoi_move.c		\
				ft_itoa.c

SRC_TO_C = $(addprefix $(SRC_TO_DIR)/, $(SRC_TO_C_SRC))

OBJS =	$(SRC_C:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)					\
		$(SRC_IS_C:$(SRC_IS_DIR)/%.c=$(OBJ_DIR)/%.o)			\
		$(SRC_MALLOC_C:$(SRC_MALLOC_DIR)/%.c=$(OBJ_DIR)/%.o)	\
		$(SRC_MEMORY_C:$(SRC_MEMORY_DIR)/%.c=$(OBJ_DIR)/%.o)	\
		$(SRC_PUT_C:$(SRC_PUT_DIR)/%.c=$(OBJ_DIR)/%.o)			\
		$(SRC_STR_C:$(SRC_STR_DIR)/%.c=$(OBJ_DIR)/%.o)			\
		$(SRC_TO_C:$(SRC_TO_DIR)/%.c=$(OBJ_DIR)/%.o)			\
		
OBJS_BONUS =	$(SRC_LST_C:$(SRC_LST_DIR)/%.c=$(OBJ_DIR)/%.o)		\
				$(SRC_GET_NEXT_LINE_C:$(SRC_GET_NEXT_LINE_DIR)/%.c=$(OBJ_DIR)/%.o)

OBJS_CLEAN = $(OBJS) $(OBJS_BONUS)

all : $(OBJ_DIR) $(TARGET) 

bonus : $(OBJ_DIR) $(TARGET)

ifeq ($(MAKECMDGOALS), bonus)
$(TARGET) : $(OBJS) $(OBJS_BONUS)
	ar src $@ $^
else
$(TARGET) : $(OBJS)
	ar src $@ $^

endif

$(OBJ_DIR) : 
	mkdir $@

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_GET_NEXT_LINE_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o: $(SRC_IS_DIR)/%.c 
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_MALLOC_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_MEMORY_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_PUT_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_STR_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_TO_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_LST_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

clean : 
	rm -f $(OBJS_CLEAN)

fclean : OBJS_CLEAN+=$(TARGET)
fclean : clean

re : fclean all

.PHONY: all bonus clean fclean re
