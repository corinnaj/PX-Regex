as yet unclassified
matchesNot: anArrayOfStrings

	matchesNot := anArrayOfStrings.
	matchesNotArea removeAllMorphs.

	anArrayOfStrings do: [:s |
		matchesNotArea add: (PHAlert text: s)].