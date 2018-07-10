as yet unclassified
inspectorTobias

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'dotStar.png') asMorph));
		add: ((PHLabel markup: 'Example: <span color="#00f">''Tobias''</span> matchesRegex: <span color="#f00">''.*Tobias''</span>'));
		add: (MatcherView newForRegex: '.*Tobias' andString: 'Tobias')