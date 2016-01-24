PANDOC=pandoc --latex-engine=xelatex -V mainfont='CMU Serif' -V geometry:margin=2cm -sS

all: pr.questions.pdf cheatsheet.pdf

pr.questions.pdf: 00 questions/*.markdown 
	$(PANDOC) -o pr.questions.pdf 00 questions/*.markdown

cheatsheet.pdf: 00 pr.terminology.table.tex
	$(PANDOC) -o cheatsheet.pdf 00 pr.terminology.table.tex

%.pdf: 00 %.markdown
	$(PANDOC) -o $*.pdf 00 $*.markdown
