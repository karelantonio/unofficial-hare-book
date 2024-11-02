DOCS=$(shell find . -type f -iname '*.tex')

.PHONY: all clean

all: dist/book

clean:
	rm dist/*

dist/book: $(DOCS)
	pdflatex -output-directory dist/ book.tex
