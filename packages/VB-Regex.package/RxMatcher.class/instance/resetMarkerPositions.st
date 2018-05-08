private
resetMarkerPositions
	"Reset the marker positions. This method should only be sent from #tryMatch. When this is after the first #tryMatch send, then the marker positions must be swapped."

	firstTryMatch
		ifTrue: [ firstTryMatch := false ]
		ifFalse: [
			| temp |
			temp := previousMarkerPositions.
			previousMarkerPositions := markerPositions.
			markerPositions := temp ].
	markerPositions
		at: 1 put: nil;
		at: 2 put: nil.
	3 to: markerCount do: [ :index | 
		(markerPositions at: index) resetTo: 1 ]