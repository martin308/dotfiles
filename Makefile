MAKEFLAGS += --no-print-directory

.PHONY: all update

all update:
	@$(MAKE) -C init $@
