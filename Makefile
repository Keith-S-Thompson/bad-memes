MARKDOWN = $(wildcard [0-9]*.md)
HTML     = $(MARKDOWN:.md=.html)

all: $(HTML)

%.html: %.md
	@echo "$< --> $@"
	@(cat $< ; ./updated $<) | pandoc -o $@

clean:
	rm -f $(HTML)
