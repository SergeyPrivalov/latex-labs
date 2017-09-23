.PHONY: all clean

all: main.pdf

%.pdf: %.tex
	pdflatex $^

clean:
	git clean -xf
