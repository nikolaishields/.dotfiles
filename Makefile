SRCDIR = $(shell pwd)
BUILDDIR = $(HOME)/.config/nixpkgs

.PHONY: install uninstall update
install: 
	ln -s $(SRCDIR) $(BUILDDIR)
	home-manager switch

uninstall:
	unlink $(BUILDDIR)

update:
	home-manager switch
