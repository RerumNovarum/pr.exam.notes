pr.notes.pdf: *.markdown
	pandoc --latex-engine=xelatex --variable mainfont='CMU Serif' -S -o pr.notes.pdf *.markdown
