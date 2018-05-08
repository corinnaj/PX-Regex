matching
matchAgainstLookahead: lookahead nextLink: anRmxLink

	| position result |
	position := stream position.
	result := lookahead matchAgainst: self.
	stream position: position.
	result ifTrue: [ ^false ].
	^anRmxLink matchAgainst: self