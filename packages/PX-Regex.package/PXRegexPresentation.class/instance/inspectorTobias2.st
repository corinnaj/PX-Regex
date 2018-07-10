as yet unclassified
inspectorTobias2

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'notTStar.png') asMorph));
		add: ((PHLabel text: 'Example: ''Tobias'' matchesRegex: ''[^T]*Tobias'''));
		add: (MatcherView newForRegex: '[^T]*Tobias' andString: 'Tobias')