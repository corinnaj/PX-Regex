construction
forRegex: pattern
	parsedRegexRoot := RxParser new parse: pattern.
	initialState := NFAState new.
	
	self addStateFor: parsedRegexRoot branch currentState: initialState.
	^self