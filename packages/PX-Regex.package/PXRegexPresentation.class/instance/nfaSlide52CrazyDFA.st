automata slides
nfaSlide52CrazyDFA 
	self addSlideWithCenterBox
		add: ((PHLabel text: 'NFA to DFA - powerset construction') pointSize: 45);
		add: (PHMorphContainer new add: (Form fromFileNamed: 'NFAtoDFAcomplete_smaller.png') asMorph)