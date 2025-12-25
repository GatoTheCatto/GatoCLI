CC ?= cc
CFLAGS ?= -std=c11 -Wall -Wextra -pedantic -O2

SRC = src/main.c
BIN_DIR = bin
BIN = $(BIN_DIR)/gato-cli

PREFIX ?= /usr/local

.PHONY: all clean install uninstall

all: $(BIN)

$(BIN): $(SRC)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -o $@ $^

install: $(BIN)
	install -Dm755 $(BIN) $(PREFIX)/bin/gato-cli

uninstall:
	rm -f $(PREFIX)/bin/gato-cli

clean:
	rm -rf $(BIN_DIR)
