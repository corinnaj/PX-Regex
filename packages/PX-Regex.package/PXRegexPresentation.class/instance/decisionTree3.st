as yet unclassified
decisionTree3

	self addSlideWithCenterBox
		add: ((PHLabel text: '''aaa'' matchesRegex: ''a??a??a??aaa''')
				pointSize: 30);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'EntscheidungsbaumLazy.png') asMorph))

	