as yet unclassified
initialize 

	super initialize.
	
	testlines := OrderedCollection new.
	
	self
		extent: self initialExtent;
		add: ((regexArea := PHTextArea new)
			placeholder: 'Enter your Regex here...';
			when: #changed send: #subtoolsMatchRegex to: self);
		add: (fullPage := PHPage row
			add: (leftColumn := PHPage column);
			add: (rightColumn := PHPage column));
		initializeLeftColumn;
		initializeRightColumn;
		addTestLine;
		subtoolsMatchRegex