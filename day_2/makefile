all: 01_text_manipulation.pdf 

01_text_manipulation.pdf: 01_text_manipulation.tex
	latexmk -pdf 01_text_manipulation.tex

.PHONY: clean

clean:
		latexmk -c
		rm -rf *.pdf
		rm -rf *.vrb
		rm -rf *.snm
		rm -rf *.nav
