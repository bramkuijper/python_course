all: python_lecture_1.pdf


python_lecture_1.pdf: python_lecture_1.tex
	latexmk -pdf python_lecture_1.tex

.PHONY: clean

clean:
		latexmk -c
