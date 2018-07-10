as yet unclassified
inspectorTobias2

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'notTStar.png') asMorph));
		add: ((PHLabel markup: '<span color="#00f">''Tobias''</span> matchesRegex: <span color="#f00">''[^T]*Tobias''</span>'));
		add: (MatcherView newForRegex: '[^T]*Tobias' andString: 'Tobias')