automata slides
dfaSlide1

	(self addSlideWithCenterBoxAndTitle:  'DFA - Deterministic Finite Automaton')
		add: (PHMorphContainer new add: (TNFAView forRegex: 'abc'))