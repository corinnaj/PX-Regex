as yet unclassified
substringAndNFA

	| regexArea substringArea regexString nfaView |
	
	regexString := 'as+'.
	
	substringArea := (PHSubstringTextArea new)
			minRows: 2;
			multiLine: true;
			pointSize: 30;
			text: 'asdasD'.
	
	nfaView := TNFAView new showTNFAFor: regexString.
	
	regexArea := (PHRegexTextArea text: regexString) nfaView: nfaView.
	
	substringArea
		tool: regexArea;
		matchRegex.
		
	substringArea when: #changed send:#matchRegex to: substringArea.

	self addSlideWithCenterBox
		add: ((PHLabel text: regexString) pointSize: 30);
		add: substringArea;
		add: (PHMorphContainer new add: nfaView)