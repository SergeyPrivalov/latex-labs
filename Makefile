.PHONY: all clean

all: main.pdf

# latext -> pdf
# %.pdf: %.tex
# 	pdflatex $^

# latex -> dvi
%.dvi: %.tex
	latex $^

# dvi -> ps
%.ps: %.dvi
	dvips $^

# ps -> pdf
%.pdf: %.ps
	ps2pdf $^

clean:
	git clean -xf
