matching
matchAgainstMarkerAt: index nextLink: anRmxLink

	| position |
	position := stream position.
	(anRmxLink matchAgainst: self) ifFalse: [ ^false ].
	index <= 2 
		ifTrue: [ markerPositions at: index put: position ]
		ifFalse: [ (markerPositions at: index) addLast: position ].
	^true