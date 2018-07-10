as yet unclassified
decisionTree1

	self addSlideWithCenterBox
		add: ((PHLabel text: 'Example: ''aaa'' matchesRegex: ''a?a?a?aaa''')
			pointSize: 30);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'EntscheidungsbaumHalb.png') asMorph))