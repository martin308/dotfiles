TMUX=$(HOME)/.tmux

$(HOME)/.tmux.conf: $(TMUX)
	@ln -s -f $(TMUX)/.tmux.conf $@

$(HOME)/.tmux.conf.local: $(TMUX)
	@cp $(TMUX)/.tmux.conf.local $@


$(TMUX):
	@mkdir -p $(TMUX)
	@git clone https://github.com/gpakosz/.tmux.git $(TMUX)
