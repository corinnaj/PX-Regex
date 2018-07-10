initialize-release
initialize

	super initialize.
	
	self
		withLayout;
		vertical: true;
		expand: true;
		align: #(fill fill);
		add: (container := PHMorphContainer new expand: true);
		add: (explanationLabel := PHLabel new)