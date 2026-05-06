PLATFORM := $(shell uname -s)

.PHONY: all update

all:
ifeq ($(PLATFORM),Darwin)
	@echo "Configuring macOS system"
	@$(MAKE) -f macos.mk
else
	@echo "No configuration defined"
endif

update:
ifeq ($(PLATFORM),Darwin)
	@$(MAKE) -f macos.mk update
else
	@echo "No update defined"
endif
