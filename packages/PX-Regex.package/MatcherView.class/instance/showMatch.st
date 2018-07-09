as yet unclassified
showMatch

	| s |
	(self matcher matches: self matchingString)
		ifTrue: [s := '<span color="#006400">', self matchingString, ' matches your regex</span>']
		 ifFalse: [s := '<span color="#8B0000">', self matchingString, ' does not match your regex</span>'].
	
	currentStep removeAllMorphs; add: (PHLabel markup: s asString).