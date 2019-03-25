all: 01_numpy_scipy.pdf

01_numpy_scipy.pdf: 01_numpy_scipy.tex
	latexmk -pdf 01_numpy_scipy.tex

.PHONY: clean

clean:
		latexmk -c
		rm -rf *.pdf
		rm -rf *.vrb
		rm -rf *.snm
		rm -rf *.nav
