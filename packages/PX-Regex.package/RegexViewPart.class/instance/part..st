as yet unclassified
part: aPart

	| m |
	part := aPart.
	m := (PHLabel text: aPart describe) resizeToPreferred.
	
	self
		addMorph: m;
		extent: m extent + 10 asPoint;
		changeTableLayout;
		layoutInset: 5;
		color: aPart color