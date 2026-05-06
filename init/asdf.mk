TOOL_VERSIONS := $(abspath $(CURDIR)/../.tool-versions)
PLUGINS := $(shell awk '!/^\#/ && NF {print $$1}' $(TOOL_VERSIONS))

.PHONY: all plugins install update

all: install

plugins:
	@for p in $(PLUGINS); do \
		asdf plugin list 2>/dev/null | grep -qx "$$p" || asdf plugin add "$$p"; \
	done

install: plugins
	@cd $(dir $(TOOL_VERSIONS)) && asdf install
	@echo "ASDF Done."

update: plugins
	@asdf plugin update --all
	@cd $(dir $(TOOL_VERSIONS)) && asdf install
	@echo "ASDF updated."
