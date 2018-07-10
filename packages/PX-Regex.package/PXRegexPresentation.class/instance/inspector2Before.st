as yet unclassified
inspector2Before

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: ((PHLabel markup: 'Example: <span color="#00f">''aaaa''</span> matchesRegex: <span color="#f00">''a?a?a?a?aaaa''</span>'))