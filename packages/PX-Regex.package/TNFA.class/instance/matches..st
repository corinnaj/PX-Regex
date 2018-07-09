simulation
matches: aString
	"^(self simulateOn: aString) last anySatisfy: [ :state | state isMatch ]"
	
	| currentStates nextStates nextState currentState |
	currentStates := OrderedCollection new.
	
	currentState := initialState.
	[currentState isSplit] whileTrue: [
		currentStates add: currentState outs first state.
		currentState := currentState outs second state.
	].
	currentStates add: currentState.
				
	nextStates := OrderedCollection new.
	aString do: [ :character |
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
	^currentStates anySatisfy: [ :state | state isMatch ]