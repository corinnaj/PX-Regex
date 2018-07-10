as yet unclassified
aOptional

	self addSlideWithCenterBox
		add: ((PHLabel text: 'Decision: a?')
				pointSize: 30);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'aOptional.png') asMorph))

	