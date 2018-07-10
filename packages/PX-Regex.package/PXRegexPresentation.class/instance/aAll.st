as yet unclassified
aAll

	(self addSlideWithCenterBoxAndTitle: 'Regex As Decisions:')
		add: ((PHLabel markup: 'Decision: <span color="#f00">a?</span>, <span color="#f00">a*</span>, <span color="#f00">a+</span>')
				pointSize: 36);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'aOptional.png') asMorph));
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'aStar.png') asMorph));
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'aPlus.png') asMorph))