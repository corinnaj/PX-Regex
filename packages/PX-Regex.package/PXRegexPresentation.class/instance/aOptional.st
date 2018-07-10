as yet unclassified
aOptional

	(self addSlideWithCenterBoxAndTitle: 'Regex As Decisions:')
		add: ((PHLabel markup: 'Decision: <span color="#f00">a?</span>')
				pointSize: 36);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'aOptional.png') asMorph))

	