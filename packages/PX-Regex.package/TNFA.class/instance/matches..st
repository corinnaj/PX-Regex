simulation
matches: aString
	| currentStates nextStates nextState currentState |
	currentStates := {} asOrderedCollection.
	
	currentState := initialState.
	[currentState isKindOf: TStateSplit] whileTrue: [
		currentStates add: currentState outs first state.
		currentState := currentState outs second state.
	].
	currentStates add: currentState.
				
	nextStates := {} asOrderedCollection.
	aString do: [ :character |
		currentStates do: [ :state |
			(state triggersOn: character) ifTrue: [
				nextState := state outs first state.
				[nextState isKindOf: TStateSplit] whileTrue: [
					nextStates add: nextState outs first state.
					nextState := nextState outs second state.
				].
				 nextStates add: nextState.
			].
		].
	
		currentStates := nextStates.
		nextStates := {} asOrderedCollection.
	].
	^currentStates anySatisfy: [ :state | state isMatch ]