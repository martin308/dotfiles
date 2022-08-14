TMUX=$(HOME)/.tmux

.PHONEY: all

all: $(HOME)/.tmux.conf
	@echo "TMUX Done."

$(HOME)/.tmux.conf: $(TMUX)
	@ln -s $(TMUX)/.tmux.conf $@

$(TMUX):
	@mkdir -p $(TMUX)
	@git clone https://github.com/gpakosz/.tmux.git $(TMUX)
