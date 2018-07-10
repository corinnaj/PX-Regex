as yet unclassified
inspectorTobias

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'dotStar.png') asMorph));
		add: ((PHLabel text: 'Example: ''Tobias'' matchesRegex: ''.*Tobias'''));
		add: (MatcherView newForRegex: '.*Tobias' andString: 'Tobias')