automata slides
nfaSlide6Properties
	(self addSlideWithCenterBoxAndTitle: 'NFA - Complexity')
		add: (PHMorphContainer new add: (TNFAView forRegex: '[01]*1[01][01][01]'));
		add: ((PHLabel text: 
'- easy to read
- O(m) states/construction, where m = |regex|
- O(m * n) runtime, where n = |string|') pointSize: 30)