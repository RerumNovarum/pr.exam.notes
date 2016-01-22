PANDOC=pandoc --latex-engine=xelatex -V mainfont='CMU Serif' -V geometry:margin=2cm -sS

all: pr.notes.pdf cheatsheet.pdf

pr.notes.pdf: *.markdown 
	$(PANDOC) -o pr.notes.pdf 00 *.markdown

cheatsheet.pdf: pr.terminology.table.tex
	$(PANDOC) -o cheatsheet.pdf 00 pr.terminology.table.tex
