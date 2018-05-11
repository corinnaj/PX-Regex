construction
addStateFor: regexBranch currentState: currentState
	| regexPiece targetState transition |
	regexBranch ifNil: [^nil].
	
	regexPiece := regexBranch piece.
	targetState := NFAState new stateString: currentState stateString , regexPiece atom character; yourself.

	transition := NFATransition new
		originState: currentState;
		targetState: targetState;
		transitionTrigger: regexPiece atom character;
		yourself.
	
	currentState transitions add: transition.
	
	self addStateFor: regexBranch branch currentState: targetState.