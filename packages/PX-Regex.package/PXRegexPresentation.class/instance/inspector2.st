as yet unclassified
inspector2

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: ((PHLabel markup: 'Example: <span color="#00f">''aaaa''</span> matchesRegex: <span color="#f00">''a?a?a?a?aaaa''</span>'));
		add: ((MatcherView newForRegex: 'a?a?a?a?aaaa' andString: 'aaaa') stepSpeed: 100)