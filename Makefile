PREFIX ?= $(HOME)/.local

install:
	install -m 755 ssha $(PREFIX)/bin/ssha

uninstall:
	rm -f $(PREFIX)/bin/ssha
