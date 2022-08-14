ROOT := $(abspath $(PWD)/..)

all: home-layout defaults brew-packages asdf prezto tmux dotfiles
	@echo "Done."

dotfiles:
	@$(MAKE) -f dotfiles.mk

tmux:
	@$(MAKE) -f tmux.mk

prezto:
	@$(MAKE) -f prezto.mk

asdf:
	@$(MAKE) -f asdf.mk

brew-packages:
	@$(MAKE) -f brew.mk

home-layout:
	@mkdir -p ~/{src,tmp/screenshots}

defaults:
	@defaults write com.apple.finder NewWindowTarget -string 'PfHm'

	@defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""

	@defaults write com.apple.TextEdit "RichText" -bool "false"

	@defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
	@defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
	@defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool true
	@defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

	@defaults write com.apple.screencapture location ${HOME}/tmp/screenshots

	@defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$(ROOT)/iterm2"
	@defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

	@killall SystemUIServer
