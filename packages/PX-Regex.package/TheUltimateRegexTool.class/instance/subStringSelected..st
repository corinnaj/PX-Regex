as yet unclassified
subStringSelected: aString

	self regex doWithIndex: [ :char :i | | subExpression result |
		subExpression := self regex copyFrom: 1 to: i.
		result := ([aString matchesRegex: subExpression] on: Error do: [result := false]	)	.
		result  ifTrue: [self highlightRegexPartUntil: i]]