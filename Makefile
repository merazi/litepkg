# Makefile for litepkg
#
# To build:
#   make
# To clean:
#   make clean
# To install:
#   make install
#   (This will install to ~/.local/bin and ~/.local/share/man/man1)

PROJECT_NAME = litepkg
BINDIR = $(HOME)/.local/bin
MANDIR = $(HOME)/.local/share/man/man1

# --- Build Configuration ---
# TODO: Add your project's build command here.
# Examples:
#   C/C++: CC=gcc CFLAGS=-O2 LDFLAGS= LOBJS=main.o ../$(PROJECT_NAME)
#   Go:    go build -o $(PROJECT_NAME)
#   Rust:  cargo build --release && cp target/release/$(PROJECT_NAME) .
#
# For now, we'll create a placeholder binary if it doesn't exist.
# Replace this with your actual build command.
BUILD_CMD = @echo "TODO: Implement build command for $(PROJECT_NAME)."; touch $(PROJECT_NAME)

# --- Files ---
TARGET = $(PROJECT_NAME)
MAN_PAGE_SRC = man/$(TARGET).1
INSTALL_BIN_PATH = $(BINDIR)/$(TARGET)
INSTALL_MAN_PATH = $(MANDIR)/$(TARGET).1

# --- Targets ---
.PHONY: all install clean

all: $(TARGET)

$(TARGET):
	$(BUILD_CMD)

install: $(TARGET) $(MAN_PAGE_SRC)
	@echo "Ensuring binary directory exists: $(BINDIR)"
	@mkdir -p $(BINDIR)
	@echo "Installing $(TARGET) to $(INSTALL_BIN_PATH)..."
	@cp $(TARGET) $(INSTALL_BIN_PATH)
	@chmod +x $(INSTALL_BIN_PATH)
	@echo "Ensuring man page directory exists: $(MANDIR)"
	@mkdir -p $(MANDIR)
	@cp $(MAN_PAGE_SRC) $(INSTALL_MAN_PATH)
	@echo "Installation of $(PROJECT_NAME) complete."

clean:
	@echo "Cleaning build artifacts..."
	@rm -f $(TARGET)
	@echo "Clean complete."
