tool slides
substringArea
	
	| regexArea substringArea |
	
	substringArea := (PHSubstringTextArea new)
			minRows: 2;
			multiLine: true;
			pointSize: 30;
			text: 'This is my text.
It contains several email addresses like jane.doe@hpi.de and john@smith.com.
Try matching them all: abc123@test.co.uk and anothertest@x.yz.
But don''t match something@test.'.
	
	regexArea := (PHRegexTextArea new)
		text: '[a-z.0-9]+@[a-z]+(\.[a-z]+)+';
		pointSize: 30;
		when: #changed send:#matchRegex  to: substringArea.
		
	substringArea
		tool: regexArea;
		matchRegex.

	self addSlideWithCenterBox 
		add:  ((PHLabel text: 'Quickly find what your regex matches in a text')
			pointSize: 30);
		add: regexArea;
		add: substringArea