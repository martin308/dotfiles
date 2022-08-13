all: home-layout defaults brew-packages asdf
	@echo "Done."

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

	@killall SystemUIServer
