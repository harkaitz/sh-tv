DESTDIR =
PREFIX  =/usr/local
all:
install:

## -- license --
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-tv
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-tv
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/hdvb bin/tv  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
