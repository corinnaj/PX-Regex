regex decision slides
inspector1

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: ((PHLabel markup: '<span color="#00f">''aaa''</span> matchesRegex: <span color="#f00">''a?a?a?aaa''</span>'));
		add: ((MatcherView newForRegex: 'a?a?a?aaa' andString: 'aaa') stepSpeed: 100);
		add: PHDivider new;
		add: ((PHLabel markup: '<span color="#00f">''aaaaaa''</span> matchesRegex: <span color="#f00">''a?a?a?aaa''</span>'));
		add: ((MatcherView newForRegex: 'a?a?a?aaa' andString: 'aaaaaa') stepSpeed: 100)