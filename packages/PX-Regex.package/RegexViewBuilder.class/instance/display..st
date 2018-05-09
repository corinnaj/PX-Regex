as yet unclassified
display: aString

	self owner class = PHMorphContainer ifTrue: [self owner topLevel submorphs first displayExplanation: aString]