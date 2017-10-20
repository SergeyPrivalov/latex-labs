.PHONY: all clean mp main

all: main.pdf sukhoplyuev.zip

main: main.pdf $(patsubst %.mp,%.mps,$(wildcard fig*.mp))

main.pdf: main.tex lab_3.tex title_page.tex

# latext -> pdf
%.pdf: %.tex
	pdflatex $^
	bibtex main

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
	zip -r $@ .

clean:
	git clean -xf

A := $(patsubst %.mp,%.pdf,$(wildcard *.mp))
mp: $(A)

%.mps: %.mp
	mpost $^ 
	mptopdf $^
