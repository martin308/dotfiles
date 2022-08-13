TMUX=$(HOME)/.tmux

.PHONEY: all

all: $(HOME)/.tmux.conf $(HOME)/.tmux.conf.local
	@echo "TMUX Done."

$(HOME)/.tmux.conf: $(TMUX)
	@ln -s -f $(TMUX)/.tmux.conf $@

$(HOME)/.tmux.conf.local: $(TMUX)
	@cp $(TMUX)/.tmux.conf.local $@

$(TMUX):
	@mkdir -p $(TMUX)
	@git clone https://github.com/gpakosz/.tmux.git $(TMUX)
