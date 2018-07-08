as yet unclassified
highlightActiveStatesFor: aString at: stringIndex
	(activeStates isNil or: [aString size + 1 ~= activeStates size]) ifTrue: [activeStates := self tnfa submatchesSimulateOn: aString].
	stateToCircle ifNil: [Error signal: '#show: has to be called before #highlightActiveStatesFor: aString At: stringIndex'].
	stateToCircle keysAndValuesDo: [ :state :circle |
		circle color: (((activeStates at: stringIndex + 1) like: state) 
			ifNil: [Color white] 
			ifNotNil: [state isMatch ifTrue: [Color green] ifFalse: [Color banana]]).
	].