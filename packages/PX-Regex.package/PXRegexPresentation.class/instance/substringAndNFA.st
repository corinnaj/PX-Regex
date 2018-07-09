as yet unclassified
substringAndNFA

	| regexArea substringArea regexString nfaView |
	
	regexString := 'as*'.
	
	substringArea := (PHSubstringTextArea new)
			minRows: 2;
			multiLine: true;
			pointSize: 30;
			text: 'asdasD'.
		
	nfaView := TNFAView new show: (TNFA forRegex: regexString).
	
	regexArea := (PHRegexTextArea new)
		text: regexString;
		pointSize: 30;
		nfaView: nfaView;
		when: #changed send:#matchRegex  to: substringArea.
		"when: #changed send: #showTNFAFor: to: nfaView with: regexArea text."
		
	substringArea
		tool: regexArea;
		matchRegex.

	self addSlideWithCenterBox
		add: regexArea;
		add: substringArea;
		add: (PHMorphContainer new add: nfaView)