as yet unclassified
inspector

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: ((MatcherView newForRegex: 'x+ab' andString: 'xxxxxxxxxxa') stepSpeed: 100)