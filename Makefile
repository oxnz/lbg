#
# File:			Makefile
# Author:		yunxinyi@gmail.com
# Last Modified:	Fri Oct 26 20:28:53 CST 2012

TEXC:=xelatex
PDFVIEWER:=evince

book.pdf: book.tex
	$(TEXC) $<
	$(TEXC) $<

.PHONY: clean test

clean:
	-find -name '*.aux' -exec rm -f {} \;
	-rm -f *.log *.out *.toc *.pdf
test: book.pdf
	$(PDFVIEWER) $<
