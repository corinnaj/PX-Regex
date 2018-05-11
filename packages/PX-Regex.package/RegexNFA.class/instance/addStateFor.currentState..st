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
		targetState: targetState;
		transitionTrigger: regexPiece;
		yourself).
	
	regexPiece max ifNil: [
		targetState addTransition: (NFATransition new
			targetState: targetState;
			transitionTrigger: regexPiece;
			yourself).
	].
	
	self addStateFor: regexBranch branch currentState: targetState.