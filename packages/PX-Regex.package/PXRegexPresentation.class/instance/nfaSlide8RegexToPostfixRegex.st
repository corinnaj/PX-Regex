automata slides
nfaSlide8RegexToPostfixRegex
	(self addSlideWithCenterBoxAndTitle: 'NFA Construction - Thompsons Algorithm')
		add: (PHMorphContainer new add: (Morph new height: 64; color: Color transparent));
		add: ((PHLabel text: 'Regex --> Postfix Regex') pointSize: 30);
		add: ((PHLabel text: 'Massive switch case...') pointSize: 30)