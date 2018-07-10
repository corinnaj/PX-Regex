intro
whatIsRegex

	self addSlideWithCenterBox
		add: ((PHLabel text: 'Regex')
			pointSize: 30);
		add: (PHWidget spacer);
		add: (PHWidget spacer);
		add: ((PHLabel text: 
'- in theory: defining a regular language
- in practice: finding out which (sub)strings match a pattern
- implementation approaches: backtracking, NFA, DFA') pointSize: 24)