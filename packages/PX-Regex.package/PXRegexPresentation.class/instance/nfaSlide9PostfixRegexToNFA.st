automata slides
nfaSlide9PostfixRegexToNFA	
	| regex |
	regex := 'a(bc|d)'.
	(self addSlideWithCenterBoxAndTitle: 'NFA Construction - Thompsons Algorithm')
		add: ((PHLabel text: 'Regex --> Postfix Regex --> NFA') pointSize: 30);
		add: ((PHLabel text: regex , ' --> ' , (TNFA toPostfixRegex: regex)) pointSize: 30);
		add: (TNFA new forPostfixRegexVisual: (TNFA toPostfixRegex: regex))