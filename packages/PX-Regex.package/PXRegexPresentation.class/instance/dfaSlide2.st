automata slides
dfaSlide2

	(self addSlideWithCenterBoxAndTitle:  'DFA - Deterministic Finite Automaton')
		add: (PHMorphContainer new add: (TNFAView forRegex: 'abc'));
		add: ((PHLabel text: 
'- O(n) runtime, where n = |string|
- O(2^m) states/construction, where m = |regex|') pointSize: 30).