#!/bin/bash

mptopdf fig1.mp
mptopdf myfig1.mp
mptopdf fig2.mp
mptopdf myfig2.mp
# mptopdf fig3.mp
asy script3.asy
asy myscript.asy
latex script5 && dvips script5.dvi && ps2pdf script5.ps

# Просто так надо...
pdflatex main.tex
pdflatex main.tex
