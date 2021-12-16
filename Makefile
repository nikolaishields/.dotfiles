SHELL := /usr/bin/env bash
OS := $(shell uname)
SRCDIR    := $(shell realpath .)
BUILDDIR  := $(shell realpath ..)
UTILITIES := $(shell ls $(SRCDIR) | grep -Ev 'Makefile')
clean:
	@echo "preparing phase: $@"
	@echo "SRCDIR = $(SRCDIR)"
	for utility in $(UTILITIES); do \
		stow -D $${utility}; \
	done;

install: clean
	@echo "preparing phase: $@"
	@echo "BUILDDIR = $(BUILDDIR)"
	for utility in $(UTILITIES); do \
		stow $${utility}; \
	done;
	source $(BUILDDIR)/.bashrc

