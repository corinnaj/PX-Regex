as yet unclassified
nfaPostfixSlide
	^PHPage column
		expand: true;
		add: (PHWidget spacer);
		add: ((PHLabel text: 'To simplify NFA building we first translate a given pattern to a postfix-pattern:')
			pointSize: 35;
			align: #(center center));
		add: (PHWidget new size: 100@100; color: Color red; yourself);"TODO why does this not work?"
		add: ((PHTextArea text: 'TNFA toPostfixPattern: ''(ab)*d|fh[a-z]''')
			align: #(center center));
		add: (PHWidget spacer);
		yourself