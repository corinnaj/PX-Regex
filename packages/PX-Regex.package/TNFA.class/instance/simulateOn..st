simulation
simulateOn: aString
"returns an OrderedCollection mapping from index in aString to the states the NFA is in at that point of the simulation"
	| currentStates nextStates nextState currentState activeStates |
	activeStates := OrderedCollection new.
	currentStates := OrderedCollection new.
	
	currentState := initialState.
	[currentState isSplit] whileTrue: [
		currentStates add: currentState outs first state.
		currentState := currentState outs second state.
	].
	currentStates add: currentState.
				
	nextStates := OrderedCollection new.
	aString do: [ :character |
		activeStates add: currentStates asSet.
		currentStates do: [ :state |
			(state triggersOn: character) ifTrue: [
				nextState := state outs first state.
				[nextState isSplit] whileTrue: [
					nextStates add: nextState outs first state.
					nextState := nextState outs second state.
				].
				 nextStates add: nextState.
			].
		].
	
		currentStates := nextStates.
		nextStates := OrderedCollection new.
	].
	activeStates add: currentStates asSet.
	^activeStates