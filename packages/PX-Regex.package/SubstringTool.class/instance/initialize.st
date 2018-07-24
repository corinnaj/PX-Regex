initialize-release
initialize

	super initialize.
	
	substringArea := (PHSubstringTextArea placeholder: 'Enter search text here...')
			multiLine: true;
			minRows: 5.
	
	regexArea := (PHRegexTextArea placeholder: 'Enter regex here ...')
		when: #changed send: #buildView to: self;
		when: #changed send: #matchRegex to: substringArea.
		
	substringArea
		tool: regexArea;
		matchRegex.
	
	self
		add: regexArea;
		add: (viewArea := PHMorphContainer new);
		add: substringArea