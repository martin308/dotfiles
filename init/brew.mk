HOMEBREW_INSTALLER := https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
BREW := /opt/homebrew/bin/brew

.PHONY: all packages xcode update

all: packages

xcode:
	@if ! xcode-select -p >/dev/null 2>&1; then \
		echo "Xcode CLI tools not installed. Installing."; \
		xcode-select --install || :; \
	fi

$(BREW): | xcode
	@echo Installing Homebrew
	@/bin/bash -c "$$(curl -fsSL $(HOMEBREW_INSTALLER))"

packages: $(BREW)
	@$(BREW) bundle --file=$(CURDIR)/Brewfile

update:
	@$(BREW) update
	@$(BREW) bundle --file=$(CURDIR)/Brewfile
	@$(BREW) upgrade
