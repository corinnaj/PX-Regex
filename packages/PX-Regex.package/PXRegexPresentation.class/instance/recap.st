automata slides
recap
	(self addSlideWithCenterBoxAndTitle: 'Recap')
		add: ((PHLabel text: '-  Most modern regex engines use backtracking') pointSize: 30);
		add: ((PHLabel text: '-  Backtracking is powerful, but can be VERY slow') pointSize: 30);
		add: ((PHLabel text: '-  NFAs are less powerful, but ALWAYS efficient') pointSize: 30)
