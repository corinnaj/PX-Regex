as yet unclassified
testOr

	| orRegex view rows |
	orRegex := 'a|b|c'.
	
	view := RegexViewBuilder new forRegex: orRegex.
	
	(self expect: view submorphs size) to equal: 5.
	
	rows := #(0 1 1 2 2).
	
	view submorphs withIndexDo: [:s :i | (self expect: s row) to equal: (rows at: i)].
	
	(self expect: view submorphs second part describe) to equal: 'or:'.
	(self expect: view submorphs fourth part describe) to equal: 'or:'