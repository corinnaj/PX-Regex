tool slides
nfaTool

	self addSlideWithCenterBox 
		add: ((PHLabel text: 'The NFA we saw before')
			pointSize: 30).
			
	self flag: #todo. "add nfa to slide"