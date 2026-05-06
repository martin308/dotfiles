ROOT := $(abspath $(CURDIR)/..)
FILES := $(shell find $(ROOT) -maxdepth 1 -type f -name '.*')
DOTFILES := $(patsubst $(ROOT)/%,$(HOME)/%,$(FILES))

.PHONY: all link

all: link

link: $(DOTFILES)

$(DOTFILES):
	@ln -sfn $(ROOT)/$(notdir $(@)) $(@)
