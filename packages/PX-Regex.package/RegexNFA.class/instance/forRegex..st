construction
forRegex: pattern
	| nextState |
	parsedRegexRoot := RxParser new parse: pattern.
	initialState := NFAState new.
	
	initialState canonicalTransition: (self addStateFor: parsedRegexRoot branch stateString: '').

	initialState hasNext ifTrue: [
		nextState := initialState.
		[nextState hasNext and: [nextState canonicalTransition transitionTrigger isNullable]] whileTrue: [
			nextState next hasNext ifTrue: [initialState addTransition: nextState next canonicalTransition].
			nextState := nextState next.
		].
	].