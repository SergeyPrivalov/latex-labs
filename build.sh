#!/bin/bash

mptopdf fig1.mp
mptopdf myfig1.mp
mptopdf fig2.mp
mptopdf myfig2.mp

# Просто так надо...
pdflatex main.tex
pdflatex main.tex
