TEXFILE = main.tex
IMG     = registry.gitlab.com/islandoftex/images/texlive:TL2025-2025-03-30-full

.PHONY: all clean

all:
	docker run --rm \
		-u $(shell id -u):$(shell id -g) \
		-v $(shell git rev-parse --show-toplevel):/workspace \
		-w /workspace \
		$(IMG) \
		latexmk $(TEXFILE)

clean:
	docker run --rm \
		-u $(shell id -u):$(shell id -g) \
		-v $(shell git rev-parse --show-toplevel):/workspace \
		-w /workspace \
		$(IMG) \
		latexmk -c $(TEXFILE)