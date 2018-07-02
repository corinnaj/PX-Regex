as yet unclassified
highlightSubStringInExpression: aString

	(1 to: self regex size) do: [ :i | | subExpression |
		self flag: #todo. "what to do about or"
		(#($* $+ $?) includes: (self regex at: ((i + 1) min: self regex size)))
			ifTrue: [ subExpression := self regex first: ((i + 1) min: self regex size)]
			ifFalse: [ subExpression := self regex first: i ].
		
		self match: aString against: subExpression ifFound: [ :result |
			^ self highlightRegexPartUntil: result size ]]