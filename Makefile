CC = gcc
CFLAGS = -Wall -Wextra -O2
PREFIX = /usr/local

TARGET = up
SRC = src/main.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

install: $(TARGET)
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m 755 $(TARGET) $(DESTDIR)$(PREFIX)/bin

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all install uninstall clean