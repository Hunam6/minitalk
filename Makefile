C_FLAGS	:= -Wall -Wextra -Werror
LIBFT	:= libft/libft.a
CLIENT	:= client
SERVER	:= server
CLIENT_SRCS	:= client.c
SERVER_SRCS	:= server.c

.PHONY: all clean fclean re

all: $(LIBFT) $(CLIENT) $(SERVER)

$(LIBFT):
	@make -C libft

$(CLIENT):
	@echo "Compiling client..."
	@cc $(C_FLAGS) $(LIBFT) $(CLIENT_SRCS) -o $(CLIENT)

$(SERVER):
	@echo "Compiling server..."
	@cc $(C_FLAGS) $(LIBFT) $(SERVER_SRCS) -o $(SERVER)

clean:
	@make clean -C libft

fclean: clean
	@rm -f $(CLIENT) $(SERVER)
	@make fclean -C libft

re: fclean all