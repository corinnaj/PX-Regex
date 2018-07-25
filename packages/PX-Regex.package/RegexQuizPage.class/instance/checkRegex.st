updating
checkRegex
	
	[RxParser new parse: regexArea text] on: Error do: [^ self].
	
	matchesArea removeAllMorphs.
	matchesNotArea removeAllMorphs.
	
	matches do: [:m |
		(m matchesRegex: regexArea text)
			ifTrue: [ matchesArea add: (PHAlert text: m type: #success)]
			ifFalse: [matchesArea add: (PHAlert text: m type: #danger)]].
			
	matchesNot do: [:mn |
		(mn matchesRegex: regexArea text)
			ifTrue: [ matchesNotArea add: (PHAlert text: mn type: #danger)]
			ifFalse: [matchesNotArea add: (PHAlert text: mn type: #success)]]