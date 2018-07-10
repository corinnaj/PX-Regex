automata slides
summary
	self addSlideWithCenterBox
		add: ((PHLabel text: 'Recap') pointSize: 45);
		add: ((PHLabel text: '-  Most modern regex engines use backreferences') pointSize: 30);
		add: ((PHLabel text: '-  Backreferences are powerful, but can be VERY slow') pointSize: 30);
		add: ((PHLabel text: '-  NFAs are less powerful, but ALWAYS efficient') pointSize: 30)
