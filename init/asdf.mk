ASDF=$(HOME)/.asdf
ASDF_VERSION=v0.10.2
NODE_JS=$(ASDF)/plugins/nodejs
GOLANG=$(ASDF)/plugins/golang
RUBY=$(ASDF)/plugins/ruby
PYTHON=$(ASDF)/plugins/python
KUBECTL=$(ASDF)/plugins/kubectl
RUST=$(ASDF)/plugins/rust
TERRAFORM=$(ASDF)/plugins/terraform

all: $(ASDF) $(RUBY) $(GOLANG) $(NODE_JS) $(PYTHON) $(KUBECTL) $(RUST) $(TERRAFORM)
	@echo "ASDF Done."

$(ASDF):
	@git clone https://github.com/asdf-vm/asdf.git $(ASDF) --branch $(ASDF_VERSION)

$(NODE_JS):
	@$(ASDF)/bin/asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
	@$(ASDF)/bin/asdf install nodejs latest
	@$(ASDF)/bin/asdf global nodejs latest

$(GOLANG):
	@$(ASDF)/bin/asdf plugin add golang https://github.com/kennyp/asdf-golang.git
	@$(ASDF)/bin/asdf install golang latest
	@$(ASDF)/bin/asdf global golang latest

$(RUBY):
	@$(ASDF)/bin/asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
	@$(ASDF)/bin/asdf install ruby latest
	@$(ASDF)/bin/asdf global ruby latest

$(PYTHON):
	@$(ASDF)/bin/asdf plugin add python https://github.com/danhper/asdf-python.git
	@$(ASDF)/bin/asdf install python latest
	@$(ASDF)/bin/asdf global python latest

$(KUBECTL):
	@$(ASDF)/bin/asdf plugin add kubectl https://github.com/asdf-community/asdf-kubectl.git
	@$(ASDF)/bin/asdf install kubectl 1.24.1
	@$(ASDF)/bin/asdf global kubectl 1.24.1

$(RUST):
	@$(ASDF)/bin/asdf plugin add rust https://github.com/asdf-community/asdf-rust.git
	@$(ASDF)/bin/asdf install rust 1.63.0
	@$(ASDF)/bin/asdf global rust 1.63.0

$(TERRAFORM):
	@$(ASDF)/bin/asdf plugin add terraform https://github.com/asdf-community/asdf-hashicorp.git
	@$(ASDF)/bin/asdf install terraform 1.3.0
	@$(ASDF)/bin/asdf global terraform 1.3.0
