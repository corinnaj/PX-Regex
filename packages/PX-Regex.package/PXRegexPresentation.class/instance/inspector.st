as yet unclassified
inspector

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: ((PHLabel text: 'Example: ''aaa'' matchesRegex: ''a?a?a?aaa'''));
		add: (MatcherView newForRegex: 'a?a?a?aaa' andString: 'aaa')