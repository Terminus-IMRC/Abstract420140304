all: main.pdf
main.pdf: main.dvi $(MAKEFILE_LIST)
	dvipdfmx -l $<

main.dvi: main.tex $(MAKEFILE_LIST)
	latexmk -dvi $< -latex=platex

.PHONY: clean
clean:
	$(RM) main.dvi main.pdf
	latexmk -C
