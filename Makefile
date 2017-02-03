PREFIX = /usr/local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man

help:
	@echo "The only target install takes the following standard parameters:"
	@echo
	@echo "  DESTDIR for staging directory, by default /"
	@echo "  PREFIX for installation prefix, by default $(PREFIX)"
	@echo "  BINDIR for binaries directory, by default PREFIX/bin"
	@echo "  MANDIR for binaries directory, by default PREFIX/share/man"

install:
	install -m 755 -D viexif $(DESTDIR)$(BINDIR)/viexif
	install -m 644 -D viexif.1 $(DESTDIR)$(MANDIR)/man1/viexif.1

.PHONY: help install
