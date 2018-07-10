automata slides
nfaSlide8RegexToPostfixRegex
	self addSlideWithCenterBox
		add: ((PHLabel text: 'NFA construction - Thompsons Algorithm') pointSize: 45);
		add: (PHMorphContainer new add: (Morph new height: 64; color: Color transparent));
		add: ((PHLabel text: 'regex --> postfix regex') pointSize: 30);
		add: ((PHLabel text: 'massive switch case...') pointSize: 30)