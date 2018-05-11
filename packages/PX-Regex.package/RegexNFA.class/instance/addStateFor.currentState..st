construction
addStateFor: regexBranch currentState: currentState
	| regexPiece targetState newStateString |
	regexBranch ifNil: [^nil].
	
	regexPiece := regexBranch piece.
	
	newStateString := currentState stateString , regexPiece atom character.
	regexPiece isPlus ifTrue: [newStateString := newStateString , $+].
	
	targetState := NFAState new 
		stateString: newStateString; 
		yourself.
	
	currentState addTransition: (NFATransition new
		originState: currentState;
		targetState: targetState;
		transitionTrigger: regexPiece atom character;
		yourself).
	
	regexPiece max ifNil: [
		targetState addTransition: (NFATransition new
			originState: targetState;
			targetState: targetState;
			transitionTrigger: regexPiece atom character;
			yourself).
	].
	
	self addStateFor: regexBranch branch currentState: targetState.