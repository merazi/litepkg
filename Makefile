# Makefile for litepkg

PROJECT_NAME = litepkg
PREFIX ?= $(HOME)/.local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man/man1

# --- Targets ---
.PHONY: all install clean uninstall

all:
	@echo "litepkg is a Python script and does not require building."
	@echo "Run 'make install' to install it."

install:
	@echo "Installing $(PROJECT_NAME) to $(BINDIR)..."
	@mkdir -p $(BINDIR)
	@cp $(PROJECT_NAME) $(BINDIR)/$(PROJECT_NAME)
	@chmod +x $(BINDIR)/$(PROJECT_NAME)
	@echo "Installing man page to $(MANDIR)..."
	@mkdir -p $(MANDIR)
	@cp man/$(PROJECT_NAME).1 $(MANDIR)/$(PROJECT_NAME).1
	@echo "Installation of $(PROJECT_NAME) complete."

uninstall:
	@echo "Removing $(PROJECT_NAME) from $(BINDIR)..."
	@rm -f $(BINDIR)/$(PROJECT_NAME)
	@echo "Removing man page from $(MANDIR)..."
	@rm -f $(MANDIR)/$(PROJECT_NAME).1
	@echo "Uninstallation complete."

clean:
	@echo "Nothing to clean for $(PROJECT_NAME)."

