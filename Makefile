book.pdf: book.tex
	xelatex $<

.PHONY: clean test again

clean:
	rm -rf *.log
	rm -rf *.dvi
	rm -rf *.aux
	rm -rf *.toc
	rm -rf *.pdf
test: book.pdf
	evince $<
again: book.tex
	xelatex $<
