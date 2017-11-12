all:
	bnfc --haskell grammar.cf
	happy -gca Pargrammar.y
	alex -g Lexgrammar.x
	ghc --make Interpret.hs -o interpreter
clean:
	-rm -f *.log *.aux *.hi *.o *.dvi *.bak Absgrammar.* Pargrammar.* Testgrammar.* Skelgrammar.* Lexgrammar.* Printgrammar.* Docgrammar.* ErrM.* 

