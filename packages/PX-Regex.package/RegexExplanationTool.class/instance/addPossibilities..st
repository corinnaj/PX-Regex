matching
addPossibilities: anArray

	anArray do: [:a |
		self addTestLineFor: a].
	
	self matchRegex