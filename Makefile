SHELL     := /usr/bin/env bash
OS        := $(shell uname)
SRCDIR    := $(shell realpath .)
BUILDDIR  := $(shell realpath ..)
UTILITIES := $(shell ls $(SRCDIR) | grep -Ev 'Makefile')
STOW      := $(foreach UTILITY,$(UTILITIES), stow -t test/ -D $(UTILITY);)

test: 
	mkdir test/
	$(foreach UTILITY,$(UTILITIES), stow -t test/ $(UTILITY);)

.PHONY: clean
clean: 
	rm -rf test/

install: clean uninstall
	$(foreach UTILITY,$(UTILITIES), stow $(UTILITY);)
	source $(BUILDDIR)/.bashrc

uninstall:
	$(foreach UTILITY,$(UTILITIES), stow -D $(UTILITY);)
