GITFILES := $(shell ls -A git)
DOTFILES := $(addprefix $(HOME)/,$(GITFILES))

.PHONEY: link

link: | $(DOTFILES)

$(DOTFILES):
	@ln -s $(PWD)/git/$(notdir $(@)) $(@)
