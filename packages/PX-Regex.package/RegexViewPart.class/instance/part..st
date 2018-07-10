accessing
part: aPart

	| m |
	part := aPart.
	m := (PHLabel text: aPart describe) pointSize: 30; updateStyleProperties; resizeToPreferred.
		
	self
		addMorph: m;
		extent: m extent + 10 asPoint;
		changeTableLayout;
		layoutInset: 5;
		color: aPart color