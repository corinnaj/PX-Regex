automata slides
nfaSlide21NFASample
	| regex |
	regex := '[01]*1[01][01][01]'.
	(self addSlideWithCenterBoxAndTitle: 'NFA - Nondeterministic Finite Automaton')
		add: (PHMorphContainer new add: (TNFAView forRegex: regex))