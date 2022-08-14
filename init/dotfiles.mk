ROOT := $(abspath $(PWD)/..)
FILES := $(shell find $(ROOT) -type f -name '.*')
DOTFILES := $(addprefix $(HOME)/,$(notdir $(FILES)))

.PHONEY: link

link: | $(DOTFILES)

$(DOTFILES):
	@ln -s $(ROOT)/$(notdir $(@)) $(@)
