automata
nfaSlide9PostfixRegexToNFA	
	| regex |
	regex := 'a(bc|d)*'.
	self addSlideWithCenterBox
		add: ((PHLabel text: 'NFA construction - Thompsons Algorithm') pointSize: 45);
		add: ((PHLabel text: 'regex --> postfix regex --> NFA') pointSize: 30);
		add: ((PHLabel text: regex , ' --> ' , (TNFA toPostfixRegex: regex)) pointSize: 30);
		add: (TNFA new forPostfixRegexVisual: (TNFA toPostfixRegex: regex))