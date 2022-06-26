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

SRC_C =	$(shell ls -1 $(SRC_DIR)/*.c | tr "\n" " ")
SRC_IS_C = $(shell ls -1 $(SRC_IS_DIR)/*.c | tr "\n" " ")
SRC_LST_C = $(shell ls -1 $(SRC_LST_DIR)/*.c | tr "\n" " ")
SRC_MALLOC_C = $(shell ls -1 $(SRC_MALLOC_DIR)/*.c | tr "\n" " ")
SRC_MEMORY_C = $(shell ls -1 $(SRC_MEMORY_DIR)/*.c | tr "\n" " ")
SRC_PUT_C = $(shell ls -1 $(SRC_PUT_DIR)/*.c | tr "\n" " ")
SRC_STR_C = $(shell ls -1 $(SRC_STR_DIR)/*.c | tr "\n" " ")
SRC_TO_C = $(shell ls -1 $(SRC_TO_DIR)/*.c | tr "\n" " ")

OBJS = $(SRC_C:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o) \
		$(SRC_IS_C:$(SRC_IS_DIR)/%.c=$(OBJ_DIR)/%.o) \
		$(SRC_MALLOC_C:$(SRC_MALLOC_DIR)/%.c=$(OBJ_DIR)/%.o) \
		$(SRC_MEMORY_C:$(SRC_MEMORY_DIR)/%.c=$(OBJ_DIR)/%.o) \
		$(SRC_PUT_C:$(SRC_PUT_DIR)/%.c=$(OBJ_DIR)/%.o) \
		$(SRC_STR_C:$(SRC_STR_DIR)/%.c=$(OBJ_DIR)/%.o) \
		$(SRC_TO_C:$(SRC_TO_DIR)/%.c=$(OBJ_DIR)/%.o) \
		$(SRC_LST_C:$(SRC_LST_DIR)/%.c=$(OBJ_DIR)/%.o)
		
OBJS_BONUS = $(SRC_LST_C:$(SRC_LST_DIR)/%.c=$(OBJ_DIR)/%.o)

OBJS_CLEAN = $(OBJS) $(OBJS_BONUS)

all :$(OBJ_DIR) $(TARGET) 

bonus : $(OBJ_DIR) $(TARGET)/
	
test : $(shell ls -1 $(SRC_LST_DIR)/*.c | tr "\n" " ")
	echo $^
ifeq ($(MAKECMDGOALS), bonus)
$(TARGET) : $(OBJS) $(OBJS_BONUS)
	@mkdir -p $(dir $@)
	echo ar scv $@ $(OBJECOBJSTS) $(OBJS_BONUS)
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

clean : 
	rm -f $(OBJS_CLEAN)

fclean : OBJS_CLEAN+=$(TARGET)
fclean : clean

re : fclean all

.PHONY: all bonus clean fclean re
