ZHOME := $(or $(ZDOTDIR),$(HOME))
ZPREZTO := $(ZHOME)/.zprezto
ZPREZTO_FILES := zlogin zlogout zpreztorc zprofile zshenv zshrc
LINKS := $(ZPREZTO_FILES:%=$(ZHOME)/.%)

.PHONY: all update

all: $(ZPREZTO) $(LINKS)
	@echo "Done."

update:
	@git -C $(ZPREZTO) pull --recurse-submodules --ff-only
	@echo "Prezto updated."

$(LINKS): | $(ZPREZTO)
	@ln -s $(ZPREZTO)/runcoms/$(subst .,,$(notdir $(@))) $(@)

$(ZPREZTO):
	@mkdir -p $(ZPREZTO)
	@git clone --recursive https://github.com/martin308/prezto.git $(ZPREZTO)
