ASDF=$(HOME)/.asdf
ASDF_VERSION=v0.10.2
NODE_JS=$(ASDF)/plugins/nodejs
GOLANG=$(ASDF)/plugins/golang
RUBY=$(ASDF)/plugins/ruby
KUBECTL=$(ASDF)/plugins/kubectl

all: $(ASDF) $(RUBY) $(GOLANG) $(NODE_JS) $(KUBECTL)
	@echo "ASDF Done."

$(ASDF):
	@git clone https://github.com/asdf-vm/asdf.git $(ASDF) --branch $(ASDF_VERSION)

$(NODE_JS):
	@asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
	@asdf install nodejs latest
	@asdf global nodejs latest

$(GOLANG):
	@asdf plugin add golang https://github.com/kennyp/asdf-golang.git
	@asdf install golang latest
	@asdf global golang latest

$(RUBY):
	@asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
	@asdf install ruby latest
	@asdf global ruby latest

$(KUBECTL):
	@asdf plugin add kubectl https://github.com/asdf-community/asdf-kubectl.git
	@asdf install kubectl 1.24.1
	@asdf global kubectl 1.24.1
