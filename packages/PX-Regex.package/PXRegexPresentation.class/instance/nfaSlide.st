as yet unclassified
nfaSlide
	^PHPage column
		expand: true;
		add: (PHWidget spacer);
		add: ((PHLabel text: 'This a non-deterministic finite automaton aka NFA:')
			pointSize: 20;
			align: #(center center));
		add: ((PHMorphContainer new add: (TNFAView forRegex: 'ab?c'); yourself)
			align: #(center center));
		add: ((PHLabel text: 'it represents the regex ' , $' , 'ab?c' , $')
			pointSize: 20;
			align: #(center center));
		add: (PHWidget spacer);
		yourself