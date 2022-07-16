DESTDIR =
PREFIX  =/usr/local
all:
install:
clean:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-tv
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-tv
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/hdvb bin/tv  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
