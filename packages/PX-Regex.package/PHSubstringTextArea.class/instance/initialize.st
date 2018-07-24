initialize-release
initialize
	
	super initialize.
	
	self
		placeholder: 'Enter search text here...';
		multiLine: true;
		minRows: 5;
		when: #changed send: #matchRegex to: self;
		when: #characterHovered send: #highlightSubExpression: to: self;
		expand: true