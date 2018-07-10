as yet unclassified
aAll

	self addSlideWithCenterBox
		add: ((PHLabel text: 'Decision: a?, a*, a+')
				pointSize: 30);
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'aOptional.png') asMorph));
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'aStar.png') asMorph));
		add: (PHMorphContainer new add: ((Form fromFileNamed: 'aPlus.png') asMorph))