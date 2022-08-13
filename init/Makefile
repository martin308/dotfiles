PLATFORM=$(shell uname -s)
all:
ifeq ($(PLATFORM),Darwin)
	@echo "Configuring macOS system"
	@$(MAKE) -f macos.mk
else
	@echo "No configuration defined"
endif
