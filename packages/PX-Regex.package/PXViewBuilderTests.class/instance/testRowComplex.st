as yet unclassified
testRowComplex

	| view complexRegex rows |
	complexRegex := 'a(b|cd)e'.
	
	view := RegexViewBuilder new forRegex: complexRegex.
	
	(self expect: view submorphs size) to equal: 8.
	
	rows := #(0 1 2 2 2 0 0 0).
	
	view submorphs withIndexDo: [:s :i | (self expect: s row) to equal: (rows at: i)]