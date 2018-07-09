automata
nfaSlide6Properties
	self addSlideWithCenterBox add: (PHPage column
		expand: true;
		add: ((PHLabel text: 'NFA - nondeterministic finite automaton') pointSize: 45);
		add: (PHMorphContainer new add: (TNFAView forRegex: '[01]*1[01][01][01]'));
		add: ((PHLabel text: 
'- easy to read
- O(m) states/construction
- O(m * n) runtime') pointSize: 30)).