as yet unclassified
initialize
	
	super initialize.
	
	self
		placeholder: 'Enter search text here...';
		text: '';
		when: #changed send: #matchRegex to: self;
		multiLine: true;
		minRows: 5;
		when: #characterHovered send: #highlightSubExpression: to: self;
		expand: true