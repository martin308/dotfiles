HOME := $(abspath $(PWD)/..)
ROOT := $(abspath $(PWD))
FILES := $(shell find $(ROOT) -type f -name '.*' -maxdepth 1)
DOTFILES := $(addprefix $(HOME)/,$(notdir $(FILES)))

.PHONEY: link

link: $(DOTFILES)

$(DOTFILES):
	@ln -s $(ROOT)/$(notdir $(@)) $(@)
