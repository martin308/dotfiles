HOMEBREW_INSTALLER=https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
BREW=/opt/homebrew/bin/brew
XCODE=$(shell xcode-select -p)

all: packages

$(XCODE):
	@echo "Xcode is not installed. Installing."
	@xcode-select --install ||:

$(BREW): $(XCODE)
	@echo Installing Homebrew
	@/bin/bash -c "$$(curl -fsSL $(HOMEBREW_INSTALLER))"

packages: $(BREW)
	@$(BREW) bundle --file=Brewfile
