as yet unclassified
inspectorBefore

	self addSlideWithCenterBox
		addApplicationStyles: (PHStyle forAny fontSize: 30);
		add: ((PHLabel markup: 'Example: <span color="#00f">''aaa''</span> matchesRegex: <span color="#f00">''a?a?a?aaa''</span>')).