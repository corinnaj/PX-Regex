automata slides
nfaSlide1DFASample
	self addSlideWithCenterBox
		add: (PHPage column
			expand: true;
			add: ((PHLabel text: 'NFA - nondeterministic finite automaton') pointSize: 45);
			add: (PHMorphContainer new add: (TNFAView forRegex: 'abc'))).