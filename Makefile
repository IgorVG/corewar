# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jfleury <jfleury@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/30 14:54:49 by jfleury           #+#    #+#              #
#    Updated: 2019/07/23 10:28:33 by jfleury          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME1 		= 	asm
NAME2		=	corewar
CC 			= 	gcc
RM 			= 	rm -f
INCLUDE	 	= 	-I ./include
IN_LIB		= 	-I libft/include
IN_PRT		=	-I libft/printf
CFLAGS		=	-Wall -Wextra -Werror $(INCLUDE) $(IN_LIB) $(IN_PRT)
NCURS		=	-lncurses

SRC_ASM		= 	srcs/srcs_asm/main_asm.c 								\
				srcs/srcs_asm/op.c										\
				srcs/srcs_asm/convert/convert.c							\
				srcs/srcs_asm/convert/conv_instru.c						\
				srcs/srcs_asm/convert/conv_utils.c						\
				srcs/srcs_asm/lexer/src_variable/var_automaton.c		\
				srcs/srcs_asm/lexer/ft_lexer.c							\
				srcs/srcs_asm/lexer/ft_automaton.c						\
				srcs/srcs_asm/lexer/lib_lexer/ft_append_token_label.c	\
				srcs/srcs_asm/lexer/lib_lexer/ft_cut_line.c				\
				srcs/srcs_asm/lexer/lib_lexer/ft_line_strchr.c			\
				srcs/srcs_asm/lexer/lib_lexer/ft_create_string.c		\
				srcs/srcs_asm/lexer/lib_lexer/ft_check_line.c			\
				srcs/srcs_asm/lexer/lib_lexer/ft_append_lst_tk.c		\
				srcs/srcs_asm/lexer/lib_lexer/ft_empty_line.c			\
				srcs/srcs_asm/lexer/lib_lexer/ft_free_list.c			\
				srcs/srcs_asm/lexer/lib_lexer/ft_create_token_label.c	\
				srcs/srcs_asm/parser/ft_parser.c						\
				srcs/srcs_asm/parser/parse_utils.c						\
				srcs/srcs_asm/parser/ft_parse_command.c					\
				srcs/srcs_asm/parser/ft_parse_instruc.c					\
				srcs/srcs_asm/parser/ft_cal_progsize.c

SRC_VM		=	srcs/srcs_vm/cw_parser.c		\
				srcs/srcs_vm/cw_read_mem.c		\
				srcs/srcs_vm/cw_write_mem.c		\
				srcs/srcs_vm/cw_process.c		\
				srcs/srcs_vm/cw_vm.c			\
				srcs/srcs_vm/cw_live.c			\
				srcs/srcs_vm/cw_add_sub.c		\
				srcs/srcs_vm/cw_aff.c			\
				srcs/srcs_vm/cw_and_or_xor.c	\
				srcs/srcs_vm/cw_fork_lfork.c	\
				srcs/srcs_vm/cw_ld_lld.c		\
				srcs/srcs_vm/cw_ldi_lldi.c		\
				srcs/srcs_vm/cw_st.c			\
				srcs/srcs_vm/cw_sti.c			\
				srcs/srcs_vm/cw_zjump.c			\
				srcs/srcs_vm/check_args.c		\
				srcs/srcs_vm/main.c				\
				srcs/srcs_vm/cw_visual.c		\
				srcs/srcs_vm/cw_init_ncurs.c 	\
				srcs/srcs_vm/cw_error.c			\
				srcs/srcs_vm/cw_print_usage.c	\
				srcs/srcs_vm/cw_ops_tools.c		\
				srcs/srcs_vm/cw_args.c			\
				srcs/srcs_vm/cw_visual_win.c

LIB			=	libft/libft.a
PRT			=	libft/printf/libftprintf.a

OBJ_ASM 	= $(SRC_ASM:.c=.o)
OBJ_VM		= $(SRC_VM:.c=.o)

all: libft $(NAME1) $(NAME2)

libft :
	make -C libft -f Makefile
	make -C libft/printf -f Makefile

$(NAME1): $(OBJ_ASM)
	make -C libft -f Makefile
	make -C libft/printf -f Makefile
	$(CC) -o $(NAME1) $(CFLAGS) $(OBJ_ASM) $(LIB) $(PRT)

$(NAME2): $(OBJ_VM)
	make -C libft -f Makefile
	make -C libft/printf -f Makefile
	$(CC) -o $(NAME2) $(CFLAGS) $(OBJ_VM) $(LIB) $(PRT) -lncurses

clean:
	make -C libft -f Makefile clean
	make -C libft/printf -f Makefile clean
	$(RM) $(OBJ_ASM) $(OBJ_VM)

fclean: clean
	make -C libft -f Makefile fclean
	make -C libft/printf -f Makefile fclean
	$(RM) $(NAME1) $(NAME2)

re: fclean all

.PHONY: all clean fclean re
