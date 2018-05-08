matching
matchAgainstPredicate: aBlock nextLink: anRmxLink

	| next position |
	next := stream next ifNil: [ ^false ].
	position := stream position - 1.
	(aBlock value: next) ifTrue: [
		(anRmxLink matchAgainst: self) ifTrue: [ ^true ] ].
	stream position: position.
	^false