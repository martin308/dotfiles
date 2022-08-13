GITFILES := $(shell ls -A git)
DOTFILES := $(addprefix $(HOME)/,$(GITFILES))

link: | $(DOTFILES)

$(DOTFILES):
	@ln -s $(PWD)/git/$(notdir $(@)) $(@)
