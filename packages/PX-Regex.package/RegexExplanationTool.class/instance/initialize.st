as yet unclassified
initialize

	super initialize.
	
	self
		expand: true;
		extent: 400 asPoint;
		add: (container := PHMorphContainer new) at: 2;
		add: (explanationLabel := PHLabel new) at: 3