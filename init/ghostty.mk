GHOSTTY_DIR := $(HOME)/Library/Application Support/com.mitchellh.ghostty
GHOSTTY_SRC := $(abspath $(PWD)/../ghostty)

.PHONY: all

all:
	@mkdir -p "$(GHOSTTY_DIR)"
	@ln -sfh "$(GHOSTTY_SRC)/config" "$(GHOSTTY_DIR)/config"
	@echo "Ghostty Done."
