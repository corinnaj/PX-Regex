automata slides
dfaSlide1
	self addSlideWithCenterBox
		add: (PHPage column
			expand: true;
			add: ((PHLabel text: 'DFA - deterministic finite automaton') pointSize: 45);
			add: (PHMorphContainer new add: (TNFAView forRegex: 'abc'))).