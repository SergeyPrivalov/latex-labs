.PHONY: all clean

all: main.pdf sukhoplyuev.zip

# latext -> pdf
%.pdf: %.tex
	pdflatex $^

# # latex -> dvi
# %.dvi: %.tex
# 	latex $^

# # dvi -> ps
# %.ps: %.dvi
# 	dvips $^

# # ps -> pdf
# %.pdf: %.ps
# 	ps2pdf $^

%.zip: clean $(wildcard ./*)
	zip -S -r $@ .

clean:
	git clean -xf
