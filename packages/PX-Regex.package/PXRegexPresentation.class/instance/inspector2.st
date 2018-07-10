as yet unclassified
inspector2

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: ((PHLabel text: 'Example: ''aaaa'' matchesRegex: ''a?a?a?a?aaaa'''));
		add: (MatcherView newForRegex: 'a?a?a?a?aaaa' andString: 'aaaa')