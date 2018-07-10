intro
whatIsRegex

	(self addSlideWithCenterBoxAndTitle: 'Regex Definition')
		add: ((PHLabel markup: 
'-<b> in theory:</b> defining a regular language
- <b>in practice:</b> finding out which (sub)strings match a pattern
- <b>implementation approaches:</b> backtracking, NFA, DFA') pointSize: 36)