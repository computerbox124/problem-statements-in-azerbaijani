cd ../../problems/a+b/statements/azerbaijani
for file in ./*.mp
do
    [ -e $file ] && mpost $file
done
rm -f *.log
cd -


latex statements.tex
latex statements.tex
dvips statements.dvi
dvipdfmx -p a4 statements.dvi
latex tutorials.tex
latex tutorials.tex
dvips tutorials.dvi
dvipdfmx -p a4 tutorials.dvi
rm -f *.log
rm -f *.aux
rm -f *.dvi
rm -f *.ps
