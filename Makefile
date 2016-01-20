PANDOC=pandoc --latex-engine=xelatex -V mainfont='CMU Serif' -V geometry:margin=1cm -sS

all: pr.notes.pdf cheatsheet.pdf

pr.notes.pdf: *.markdown 
	$(PANDOC) -o pr.notes.pdf 00 *.markdown

cheatsheet.pdf:
	$(PANDOC) -o cheatsheet.pdf 00 pr.terminology.table.tex
