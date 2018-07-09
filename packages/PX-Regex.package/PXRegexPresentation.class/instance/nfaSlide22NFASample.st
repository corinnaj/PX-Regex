automata
nfaSlide22NFASample
	| regex |
	regex := '[01]*1[01][01][01]'.
	self addSlideWithCenterBox
		add: (PHPage column
			expand: true;
			add: ((PHLabel text: 'NFA - nondeterministic finite automaton') pointSize: 45);
			add: (PHMorphContainer new add: (TNFAView forRegex: regex)));
			add: ((PHLabel text: regex) pointSize: 30).