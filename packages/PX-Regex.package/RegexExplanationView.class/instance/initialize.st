initialize-release
initialize

	super initialize.
	
	self
		withLayout;
		vertical: true;
		expand: true;
		align: #(fill fill);
		add: (container := PHMorphContainer new);
		add: (explanationLabel := PHLabel new)