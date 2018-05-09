as yet unclassified
part: aPart

	part := aPart.
	
	self
		addMorph: (aPart describe asMorph);
		extent: aPart describe asMorph extent + 10 asPoint;
		changeTableLayout;
		layoutInset: 5;
		color: aPart color