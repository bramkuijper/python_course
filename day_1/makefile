all: 00_introduction.pdf 01_variables.pdf 02_flow_control.pdf

00_introduction.pdf: 00_introduction.tex
	latexmk -pdf 00_introduction.tex

01_variables.pdf: 01_variables.tex
	latexmk -pdf 01_variables.tex

02_flow_control.pdf: 02_flow_control.tex
	latexmk -pdf 02_flow_control.tex

.PHONY: clean

clean:
		latexmk -c
		rm -rf *.pdf
		rm -rf *.vrb
		rm -rf *.snm
		rm -rf *.nav
