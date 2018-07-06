as yet unclassified
uglyDfaPage

	^ PHPage column
		expand: true;
		add: (PHWidget spacer);
		add: ((Form fromFileNamed: 'dfa.jpeg') asMorph)

	