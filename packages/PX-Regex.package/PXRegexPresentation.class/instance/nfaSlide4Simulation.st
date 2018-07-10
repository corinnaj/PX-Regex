automata slides
nfaSlide4Simulation

	| regexArea substringArea regexString nfaView |
	
	regexString := '[01]*1[01][01][01]'.
	
	substringArea := (PHSubstringTextArea new)
			minRows: 2;
			multiLine: true;
			pointSize: 30.
	
	nfaView := TNFAView new showTNFAFor: regexString; isHighlightingSubmatches: false.
	
	regexArea := (PHRegexTextArea text: regexString) nfaView: nfaView.
	
	substringArea
		tool: regexArea;
		matchRegex.
		
	substringArea when: #changed send:#matchRegex to: substringArea.

	(self addSlideWithCenterBoxAndTitle: 'NFA - Simulation')
		add: (PHMorphContainer new add: nfaView);
		add: ((PHLabel text: regexString) pointSize: 30);
		add: substringArea