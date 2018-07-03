as yet unclassified
show: aTNFA
	| stateRows stateToPosition |
	tnfa := aTNFA.
	
	activeStates := nil.
	self removeAllMorphs.
	
	stateRows := { {} asOrderedCollection } asOrderedCollection.
	stateToPosition := Dictionary new.
	stateToCircle := Dictionary new.
	self put: tnfa initialState into: stateRows at: 1@2 positionDict: stateToPosition.
	
	"add states -> circles"
	stateRows do: [ :stateRow | 
		stateRow do: [ :state | | stateMorph |
			stateMorph := self addStateMorphFor: state.
			stateMorph center: (self calculateCenterFor: (stateToPosition at: state)).
			self addMorph: stateMorph.
			stateToCircle at: state put: stateMorph.
		].
	].
	
	"add transitions -> arrows"
	stateRows do: [ :stateRow | 
		stateRow do: [ :state |
			(state outs collect: [ :statePointer | statePointer state]) do: [ :targetState | | label transitionArrow |
				transitionArrow := self
					arrowFrom: (stateToPosition at: state)
					to: (stateToPosition at: targetState).
					
				label := StringMorph contents: state triggerLabel.
				transitionArrow vertices last x - transitionArrow vertices first x = 0 ifTrue: [
					label position: transitionArrow vertices middle + (label fontToUse pointSize @ 0).
				] ifFalse: [
					label center: transitionArrow vertices middle - (0 @ label fontToUse pointSize).
				].
				transitionArrow addMorph: label.
				
				self addMorph: transitionArrow.
			].
		].
	].

	self bounds: (Rectangle merging: submorphs).