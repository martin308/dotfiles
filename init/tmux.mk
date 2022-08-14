TMUX=$(HOME)/.tmux

.PHONEY: all

all: $(HOME)/.tmux.conf $(HOME)/.tmux.conf.local $(HOME)/.p10k.zsh
	@echo "TMUX Done."

$(HOME)/.tmux.conf: $(TMUX)
	@ln -s $(TMUX)/.tmux.conf $@

$(HOME)/.tmux.conf.local: $(TMUX)
	@cp $(TMUX)/.tmux.conf.local $@

$(TMUX):
	@mkdir -p $(TMUX)
	@git clone https://github.com/gpakosz/.tmux.git $(TMUX)
