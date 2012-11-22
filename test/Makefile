TEXC:=xelatex
test.pdf: test.tex
	$(TEXC) $<
	$(TEXC) $<

.PHONY: clean test again

clean:
	rm -rf *.log
	rm -rf *.dvi
	rm -rf *.aux
	rm -rf *.toc
	rm -rf *.pdf
test: test.pdf
	evince $<
again: test.tex
	$(TEXC) $<
