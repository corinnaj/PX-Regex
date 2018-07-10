automata slides
nfaSlide51CrazyDFA 

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

	(self addSlideWithCenterBoxAndTitle: 'NFA to DFA - Powerset Construction')
		add: (PHPage row
			add: (PHPage column 
				add: (PHMorphContainer new add: nfaView);
				add: ((PHLabel text: regexString) pointSize: 30);
				add: substringArea);
			add: (PHMorphContainer new add: (Form fromFileNamed: 'NFAtoDFA_smaller.png') asMorph))