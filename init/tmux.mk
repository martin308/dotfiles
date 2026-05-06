TMUX := $(HOME)/.tmux

.PHONY: all update

all: $(HOME)/.tmux.conf
	@echo "TMUX Done."

update:
	@git -C $(TMUX) pull --ff-only
	@echo "TMUX updated."

$(HOME)/.tmux.conf: | $(TMUX)
	@ln -s $(TMUX)/.tmux.conf $@

$(TMUX):
	@mkdir -p $(TMUX)
	@git clone https://github.com/gpakosz/.tmux.git $(TMUX)
