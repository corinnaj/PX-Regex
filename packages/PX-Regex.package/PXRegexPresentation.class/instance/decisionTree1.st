as yet unclassified
decisionTree1

	(self addSlideWithCenterBoxAndTitle: 'Regex As Decisions:')
		add: ((PHLabel markup: 'Example: <span color="#00f">''aaa''</span> matchesRegex: <span color="#f00">''a?a?a?aaa''</span>')
			pointSize: 36);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'EntscheidungsbaumHalb.png') asMorph))