initialize-release
initialize

	super initialize.
	
	self
		expand: true;
		extent: 400 asPoint;
		add: (container := PHMorphContainer new) at: 2