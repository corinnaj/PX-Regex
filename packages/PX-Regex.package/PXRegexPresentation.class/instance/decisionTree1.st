as yet unclassified
decisionTree1

	self addSlideWithCenterBox
		add: ((PHLabel markup: 'Example: <span color="#00f">''aaa''</span> matchesRegex: <span color="#f00">''a?a?a?aaa''</span>')
			pointSize: 30);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'EntscheidungsbaumHalb.png') asMorph))