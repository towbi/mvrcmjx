all: README.md

.PHONY: README.md
README.md:
	perl -MPod::Markdown -e 'Pod::Markdown->new->filter(@ARGV)' mvrcmjx > README.md

.PHONY: clean
clean: