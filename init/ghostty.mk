GHOSTTY_DIR := $(HOME)/Library/Application Support/com.mitchellh.ghostty
GHOSTTY_SRC := $(abspath $(CURDIR)/../ghostty)

.PHONY: all

all:
	@mkdir -p "$(GHOSTTY_DIR)"
	@[ -e "$(GHOSTTY_DIR)/config" ] || ln -s "$(GHOSTTY_SRC)/config" "$(GHOSTTY_DIR)/config"
	@echo "Ghostty Done."
