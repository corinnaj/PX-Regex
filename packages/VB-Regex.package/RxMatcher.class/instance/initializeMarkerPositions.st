initialize-release
initializeMarkerPositions

	markerPositions := Array new: markerCount.
	previousMarkerPositions := Array new: markerCount..
	3 to: markerCount do: [ :index |
		markerPositions at: index put: (OrderedCollection new: 1).
		previousMarkerPositions at: index put: (OrderedCollection new: 1) ].