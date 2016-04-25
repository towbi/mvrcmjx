BIN = mvrcmjx

prefix ?= /usr/local
exec_prefix ?= $(prefix)
bindir ?= $(exec_prefix)/bin
datarootdir ?= $(prefix)/share
mandir ?= $(datarootdir)/man
mandir1 ?= $(mandir)/man1

default:

all: build-doc install

.PHONY: install
install:
	cp $(BIN) $(DESTDIR)/$(bindir)
	cp $(BIN).1 $(DESTDIR)/$(mandir1)

.PHONY: uninstall
uninstall:
	rm $(DESTDIR)/$(bindir)/$(BIN)
	rm $(DESTDIR)/$(mandir1)/$(BIN).1

.PHONY: build-doc
build-doc: $(BIN).1 README.md

.PHONY: $(BIN).1
$(BIN).1:
	pod2man $(BIN) > $(BIN).1

.PHONY: README.md
README.md:
	perl -MPod::Markdown -e 'Pod::Markdown->new->filter(@ARGV)' $(BIN) > README.md

