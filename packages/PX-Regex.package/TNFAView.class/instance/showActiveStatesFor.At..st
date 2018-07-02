as yet unclassified
showActiveStatesFor: aString At: stringIndex
	activeStates ifNil: [activeStates := self tnfa simulateOn: aString].
	stateToCircle ifNil: [Error signal: '#show: has to be called before #showActiveStatesFor: aString At: stringIndex'].
	stateToCircle keysAndValuesDo: [ :state :circle |
		circle color: (((activeStates at: stringIndex + 1) like: state) 
			ifNil: [Color white] 
			ifNotNil: [state isMatch ifTrue: [Color green] ifFalse: [Color banana]]).
	].