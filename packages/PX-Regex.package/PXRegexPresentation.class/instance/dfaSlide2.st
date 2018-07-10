automata slides
dfaSlide2
	self addSlideWithCenterBox
		add: (PHPage column
			expand: true;
			add: ((PHLabel text: 'DFA - deterministic finite automaton') pointSize: 45);
			add: (PHMorphContainer new add: (TNFAView forRegex: 'abc')));
			add: ((PHLabel text: 
'- O(n) runtime, where n = |string|
- O(2^m) states/construction, where m = |regex|') pointSize: 30).