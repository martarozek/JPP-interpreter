all:
	bnfc --haskell grammar.cf
	happy -gca ParGrammar.y
	alex -g LexGrammar.x
	ghc --make Interpret.hs -o interpreter
clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

	

