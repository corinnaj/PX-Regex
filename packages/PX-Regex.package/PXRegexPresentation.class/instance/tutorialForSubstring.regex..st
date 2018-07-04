as yet unclassified
tutorialForSubstring: aSubstringString regex: aRegexString

	
	| regexArea substringArea |
	
	substringArea := (PHSubstringTextArea new)
			minRows: 2;
			multiLine: true;
			pointSize: 30;
			text: aSubstringString.
	
	regexArea := (PHRegexTextArea new)
		text: aRegexString;
		pointSize: 30;
		when: #changed send:#matchRegex  to: substringArea.
		
	substringArea
		tool: regexArea;
		matchRegex.

	^ PHPage column
		add: (PHWidget spacer);
		add: regexArea;
		add: substringArea;
		add: (PHWidget spacer)