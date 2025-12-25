CC ?= cc
CFLAGS ?= -std=c11 -Wall -Wextra -pedantic
SRC = src/main.c
BIN_DIR = bin
BIN = $(BIN_DIR)/gato-cli

.PHONY: all clean

all: $(BIN)

$(BIN): $(SRC)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -rf $(BIN_DIR)
