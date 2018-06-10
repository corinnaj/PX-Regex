as yet unclassified
testParenthesis

	| regex view divider |
	regex := 'a(b|c)'.
	
	view := RegexViewBuilder new forRegex: regex.
	
	(self expect: view submorphs size) to equal: 6.

	divider := view submorphs fifth.	
	(self expect: divider isDivider) to equal: true.
	(self expect: divider extent) to equal: 67 @ 78.
