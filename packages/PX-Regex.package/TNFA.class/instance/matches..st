simulation
matches: aString
	| currentStates nextStates |
	currentStates := { initialState } asOrderedCollection.
	nextStates := {} asOrderedCollection.
	aString do: [ :character |
		currentStates do: [ :state | 
			(state isKindOf: TStateLiteral) ifTrue: [
				state trigger == character ifTrue: [ nextStates add: state outs first state ]
			].
		].
		currentStates := nextStates.
		nextStates := {} asOrderedCollection.
	].
	^currentStates anySatisfy: [ :state | state isMatch ]