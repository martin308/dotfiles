ZHOME := $(or $(ZDOTDIR), $(HOME))
ZPREZTO=$(ZHOME)/.zprezto
ZPREZTO_FILES := zlogin zlogout zpreztorc zprofile zshenv zshrc
LINKS=$(ZPREZTO_FILES:%=$(ZHOME)/.%)

all: $(LINKS) $(ZPREZTO)
	@echo "Done."

$(LINKS):
	@ln -s $(ZPREZTO)/runcoms/$(subst .,,$(notdir $(@))) $(@)

$(ZPREZTO):
	@mkdir -p $(ZPREZTO)
	@git clone --recursive https://github.com/martin308/prezto.git $(ZPREZTO)
