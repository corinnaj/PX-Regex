automata slides
nfaSlide22NFASample
	| regex |
	regex := '[01]*1[01][01][01]'.
	(self addSlideWithCenterBoxAndTitle: 'NFA - Nondeterministic Finite Automaton')
		add: (PHMorphContainer new add: (TNFAView forRegex: regex));
		add: ((PHLabel text: regex) pointSize: 30)