as yet unclassified
initialize

	super initialize.
	
	self
		withLayout;
		vertical: true;
		extent: 600 @ 150;
		add: (container := PHMorphContainer new);
		add: (explanationLabel := PHLabel new)