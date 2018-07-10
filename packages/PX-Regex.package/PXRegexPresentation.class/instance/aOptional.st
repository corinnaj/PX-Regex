as yet unclassified
aOptional

	self addSlideWithCenterBox
		add: ((PHLabel markup: 'Decision: <span color="#f00">a?</span>')
				pointSize: 30);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'aOptional.png') asMorph))

	