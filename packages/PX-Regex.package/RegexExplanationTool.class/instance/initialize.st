as yet unclassified
initialize

	super initialize.
	
	self
		add: (container := PHMorphContainer new) at: 2;
		add: (explanationLabel := PHLabel new) at: 3