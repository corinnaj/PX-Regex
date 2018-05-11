construction
addStateFor: regexBranch stateString: stateString 
	"returns a transition to the newly created state (which will be the canonicalTransition of the preceding state)"
	
	| regexPiece newStateString currentState nextState |
	
	regexPiece := regexBranch piece.
	newStateString := stateString , regexPiece atom character.
	regexPiece isPlus ifTrue: [newStateString := newStateString , $+].
	regexPiece isStar ifTrue: [newStateString := newStateString , $*].
	regexPiece isOptional ifTrue: [newStateString := newStateString , $?].
	
	currentState := NFAState new stateString: newStateString; yourself.
	
	regexBranch branch ifNotNil: [
		currentState canonicalTransition: (self addStateFor: regexBranch branch stateString: newStateString).
		
		currentState hasNext ifTrue: [
			nextState := currentState.
			[nextState hasNext and: [nextState canonicalTransition transitionTrigger isNullable]] whileTrue: [
				nextState next hasNext ifTrue: [currentState addTransition: nextState next canonicalTransition].
				nextState := nextState next.
			].
		].
	].
	
	regexPiece max ifNil: [
		currentState addTransition: (NFATransition new 
			targetState: currentState;
			transitionTrigger: regexPiece;
			yourself).
	].

	^ NFATransition new targetState: currentState; transitionTrigger: regexPiece; yourself.