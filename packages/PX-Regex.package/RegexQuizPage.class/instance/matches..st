as yet unclassified
matches: anArrayOfStrings

	matches := anArrayOfStrings.
	matchesArea removeAllMorphs.

	anArrayOfStrings do: [:s |
		matchesArea add: (PHAlert text: s)].