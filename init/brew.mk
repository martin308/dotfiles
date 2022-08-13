PREFIX := /usr/local
HOMEBREW_INSTALLER=https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
BREW=$(PREFIX)/bin/brew
XCODE=/Applications/Xcode.app

all: packages

$(XCODE):
	@echo "Xcode is not installed. Installing."
	@xcode-select --install

$(BREW): $(XCODE)
	@echo Installing Homebrew
	@/bin/bash -c "$(curl -fsSL $(HOMEBREW_INSTALLER))"
	@brew doctor

packages: $(BREW)
	@brew bundle --file=Brewfile
