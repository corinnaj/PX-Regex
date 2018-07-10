automata slides
nfaSlide1DFASample

	(self addSlideWithCenterBoxAndTitle: 'NFA - Nondeterministic Finite Automaton')
		add: (PHMorphContainer new add: (TNFAView forRegex: 'abc'))