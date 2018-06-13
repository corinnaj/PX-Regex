as yet unclassified
testRowSimple

	| simpleRegex view |
	simpleRegex := 'ab'.
	
	view := RegexViewBuilder new forRegex: simpleRegex.
	
	(self expect: view submorphs size) to equal: 2.
	
	(self expect: view submorphs first row) to equal: view submorphs second row.
	(self expect: view submorphs first row) to equal: 0.