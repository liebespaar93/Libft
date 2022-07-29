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
SRC_IS_DIR = $(ROOTDIR)/src_is
SRC_LST_DIR = $(ROOTDIR)/src_lst
SRC_MALLOC_DIR = $(ROOTDIR)/src_malloc
SRC_MEMORY_DIR = $(ROOTDIR)/src_memory
SRC_PUT_DIR = $(ROOTDIR)/src_put
SRC_STR_DIR = $(ROOTDIR)/src_str
SRC_TO_DIR = $(ROOTDIR)/src_to

OBJ_DIR = $(ROOTDIR)/obj
INCLUDE_DIR = $(ROOTDIR)/include

## DIMENSION ##
DIMENSIONDIR = $(ROOTDIR)/src_dimension
SRC_AXIS_DIR = $(DIMENSIONDIR)/src_axis
SRC_DIMENSIONAL_ZERO_DIR = $(DIMENSIONDIR)/src_dimensional_zero
SRC_DIMENSIONAL_ONE_DIR = $(DIMENSIONDIR)/src_dimensional_one
SRC_DIMENSIONAL_TWO_DIR = $(DIMENSIONDIR)/src_dimensional_two
SRC_DIMENSIONAL_THREE_DIR = $(DIMENSIONDIR)/src_dimensional_three
SRC_DIMENSIONAL_FOUR_DIR = $(DIMENSIONDIR)/src_dimensional_four

## GET_NEXT_LINE ##
SRC_GET_NEXT_LINE_DIR = $(ROOTDIR)/src_get_next_line

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
		$(SRC_LST_C:$(SRC_LST_DIR)/%.c=$(OBJ_DIR)/%.o)

## DIMENSION ##
SRC_AXIS_C_FILE =	ft_axis_controller.c	\
					ft_axis_init.c			\
					ft_axis_view.c

SRC_AXIS_C = $(addprefix $(SRC_AXIS_DIR)/, $(SRC_AXIS_C_FILE))

SRC_DIMENSIONAL_ZERO_C_FILE =	ft_d_zero_new.c

SRC_DIMENSIONAL_ZERO_C = $(addprefix $(SRC_DIMENSIONAL_ZERO_DIR)/, $(SRC_DIMENSIONAL_ZERO_C_FILE))

SRC_DIMENSIONAL_ONE_C_FILE =	ft_d_one_addr.c		\
								ft_d_one_connect.c	\
								ft_d_one_connect1.c	\
								ft_d_one_head.c		\
								ft_d_one_new.c		\
								ft_d_one_switch.c

SRC_DIMENSIONAL_ONE_C = $(addprefix $(SRC_DIMENSIONAL_ONE_DIR)/, $(SRC_DIMENSIONAL_ONE_C_FILE))

SRC_DIMENSIONAL_TWO_C_FILE =	ft_d_two_addr.c		\
								ft_d_two_connect.c	\
								ft_d_two_connect1.c	\
								ft_d_two_connect2.c	\
								ft_d_two_connect_axis_one.c	\
								ft_d_two_connect_axis_two.c	\
								ft_d_two_head.c		\
								ft_d_two_new.c		\
								ft_d_two_switch.c

SRC_DIMENSIONAL_TWO_C = $(addprefix $(SRC_DIMENSIONAL_TWO_DIR)/, $(SRC_DIMENSIONAL_TWO_C_FILE))

SRC_DIMENSIONAL_THREE_C_FILE =	ft_d_three_addr.c		\
								ft_d_three_connect.c	\
								ft_d_three_connect1.c	\
								ft_d_three_connect2.c	\
								ft_d_three_connect3.c	\
								ft_d_three_connect_axis_three.c	\
								ft_d_three_connect_axis_two.c	\
								ft_d_three_head.c		\
								ft_d_three_new.c		\
								ft_d_three_switch.c

SRC_DIMENSIONAL_THREE_C = $(addprefix $(SRC_DIMENSIONAL_THREE_DIR)/, $(SRC_DIMENSIONAL_THREE_C_FILE))

SRC_DIMENSIONAL_FOUR_C_FILE =	ft_d_four_addr.c		\
								ft_d_four_connect.c		\
								ft_d_four_connect1.c	\
								ft_d_four_connect2.c	\
								ft_d_four_connect3.c	\
								ft_d_four_connect4.c	\
								ft_d_four_connect_axis_four.c	\
								ft_d_four_connect_axis_three.c	\
								ft_d_four_connect_axis_three_utils.c	\
								ft_d_four_head.c		\
								ft_d_four_new.c			\
								ft_d_four_switch.c

SRC_DIMENSIONAL_FOUR_C = $(addprefix $(SRC_DIMENSIONAL_FOUR_DIR)/, $(SRC_DIMENSIONAL_FOUR_C_FILE))

## DIMENSION ##
OBJS_DIMENSION =	$(SRC_AXIS_C:$(SRC_AXIS_DIR)/%.c=$(OBJ_DIR)/%.o)							\
					$(SRC_DIMENSIONAL_ZERO_C:$(SRC_DIMENSIONAL_ZERO_DIR)/%.c=$(OBJ_DIR)/%.o)	\
					$(SRC_DIMENSIONAL_ONE_C:$(SRC_DIMENSIONAL_ONE_DIR)/%.c=$(OBJ_DIR)/%.o)		\
					$(SRC_DIMENSIONAL_TWO_C:$(SRC_DIMENSIONAL_TWO_DIR)/%.c=$(OBJ_DIR)/%.o)		\
					$(SRC_DIMENSIONAL_THREE_C:$(SRC_DIMENSIONAL_THREE_DIR)/%.c=$(OBJ_DIR)/%.o)	\
					$(SRC_DIMENSIONAL_FOUR_C:$(SRC_DIMENSIONAL_FOUR_DIR)/%.c=$(OBJ_DIR)/%.o)

## GET_NEXT_LINE ##
SRC_GET_NEXT_LINE_C_SRC =	ft_get_next_line.c

SRC_GET_NEXT_LINE_C = $(addprefix $(SRC_GET_NEXT_LINE_DIR)/, $(SRC_GET_NEXT_LINE_C_SRC))

OBJS_GET_NEXT_LINE = $(SRC_GET_NEXT_LINE_C:$(SRC_GET_NEXT_LINE_DIR)/%.c=$(OBJ_DIR)/%.o)


OBJS_CLEAN = $(OBJS) $(OBJS_DIMENSION) $(OBJS_GET_NEXT_LINE)


#####***** working *****#####

all : $(OBJ_DIR) $(TARGET) 

bonus : $(OBJ_DIR) $(TARGET)

ifeq ($(MAKECMDGOALS), bonus)
$(TARGET) : $(OBJS) $(OBJS_GET_NEXT_LINE) $(OBJS_DIMENSION)
	ar src $@ $^
else
$(TARGET) : $(OBJS)
	ar src $@ $^
endif

$(OBJ_DIR) : 
	mkdir $@

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.c
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

## DIMENSION ##
$(OBJ_DIR)/%.o : $(SRC_AXIS_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o: $(SRC_DIMENSIONAL_ZERO_DIR)/%.c 
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_DIMENSIONAL_ONE_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_DIMENSIONAL_TWO_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_DIMENSIONAL_THREE_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_DIMENSIONAL_FOUR_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

## GET_NEXT_LINE ##
$(OBJ_DIR)/%.o : $(SRC_GET_NEXT_LINE_DIR)/%.c
	$(CC) $(CPPFLAGS) $(IFLAGS) -c $< -o $@

clean : 
	rm -f $(OBJS_CLEAN)

fclean : OBJS_CLEAN+=$(TARGET)
fclean : clean

re : fclean all

.PHONY: all bonus clean fclean re
