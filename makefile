compiler=pdflatex -shell-escape
file=first
viewer=evince
bib=bibtex
all:$(file).tex clean
	$(compiler) $(file).tex
	$(bib) $(file)
	$(compiler) $(file).tex
	$(compiler) $(file).tex
	$(viewer) $(file).pdf

clean:*
	rm -f *.aux *.bbl *.bcf *.blg *.dvi *.lof *.lot *.toc *blx.bib *run.xml *.log
