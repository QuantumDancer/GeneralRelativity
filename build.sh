cd src

pdflatex main
bibtex main
pdflatex main
pdflatex main

mkdir -p ../tmp
cp *.aux ../tmp
cp *.log ../tmp
cp *.toc ../tmp
cp *.bbl ../tmp
cp *.blg ../tmp
cp *.out ../tmp

rm *.aux
rm *.log
rm *.toc
rm *.bbl
rm *.blg
rm *.out

mkdir -p ../bin
mv main.pdf ../bin/GRT.pdf
