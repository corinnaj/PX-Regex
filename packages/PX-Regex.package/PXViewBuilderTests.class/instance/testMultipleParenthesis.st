as yet unclassified
testMultipleParenthesis

	| regex view |
	regex := 'a(b|c)d(e|f)g(h|i)'.
	
	view := RegexViewBuilder new forRegex: regex.
	
	(self expect: view submorphs size) to equal: 18.
	
	(view submorphs atAll: #(13 14 15)) do: [:d |
		(self expect: d isDivider) to equal: true]
