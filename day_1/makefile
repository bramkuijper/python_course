all: python_lecture_1.pdf python_lecture_2.pdf

python_lecture_1.pdf: python_lecture_1.tex
	latexmk -pdf python_lecture_1.tex

python_lecture_2.pdf: python_lecture_2.tex
	latexmk -pdf python_lecture_2.tex


.PHONY: clean

clean:
		latexmk -c
