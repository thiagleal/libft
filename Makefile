# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tsiqueir <tsiqueir@student.42lisboa.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/28 12:49:29 by tsiqueir          #+#    #+#              #
#    Updated: 2025/04/13 00:22:11 by tsiqueir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Nome da biblioteca estatica
NAME = libft.a

# Diretorios
SRC_DIR = src
INC_DIR = inc
OBJ_DIR = obj

# Source e Objects
SRC_FILES = $(wildcard $(SRC_DIR)/ft_mem/*.c) \
			$(wildcard $(SRC_DIR)/ft_is/*.c) \
			$(wildcard $(SRC_DIR)/ft_str/*.c) \
			$(wildcard $(SRC_DIR)/ft_put/*.c) \
			$(wildcard $(SRC_DIR)/ft_conv/*.c)
LST_FILES = $(wildcard $(SRC_DIR)/ft_lst/*.c)

OBJS = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_FILES))
BONUS_OBJS = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(LST_FILES))

# Include
INCLUDE = -I$(INC_DIR)

# Compilador, flags, compressor e remover
CC = cc
RM = rm -rf
COMPRESS = ar rcs
CFLAGS = -Wall -Wextra -Werror

# Regras
all: $(NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

$(NAME): $(OBJS)
	@$(COMPRESS) $(NAME) $(OBJS)
	@echo "Library $(NAME) successfully created!"

bonus: $(BONUS_OBJS)
	@$(COMPRESS) $(NAME) $(BONUS_OBJS)
	@echo "Bonus objects added to $(NAME)!"

libft: all bonus

clean:
	@$(RM) $(OBJ_DIR)
	@echo "Object files and directories removed!"

fclean: clean
	@$(RM) $(NAME)
	@echo "Library $(NAME) removed!"

re: fclean all

test: libft $(NAME) src/main_libft.c
	@$(CC) $(INCLUDE) -o test_libft src/main_libft.c $(NAME)
	@echo "Test created"
	
fcleantest: fclean
	@$(RM) test_libft
	@echo "Test removed"

.PHONY: all bonus libft clean fclean re test fcleantest
