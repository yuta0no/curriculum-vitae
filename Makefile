IMG     = registry.gitlab.com/islandoftex/images/texlive:TL2025-2025-03-30-full
TEX_FILES = $(wildcard *.tex)
PDF_FILES = $(patsubst %.tex,%.pdf,$(TEX_FILES))

.PHONY: all
all: $(PDF_FILES)

%.pdf: %.tex
	docker run --rm \
		-u $(shell id -u):$(shell id -g) \
		-v $(shell git rev-parse --show-toplevel):/workspace \
		-w /workspace \
		$(IMG) \
		latexmk $<

.PHONY: clean
clean:
	docker run --rm \
		-u $(shell id -u):$(shell id -g) \
		-v $(shell git rev-parse --show-toplevel):/workspace \
		-w /workspace \
		$(IMG) \
		latexmk -c $(TEXFILE)