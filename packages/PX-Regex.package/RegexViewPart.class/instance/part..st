as yet unclassified
part: aPart

	part := aPart.
	
	self
		addMorph: (aPart describe asMorph);
		extent: aPart describe asMorph extent;
		color: aPart color