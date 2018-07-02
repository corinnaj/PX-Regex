as yet unclassified
show: aTNFA
	| stateRows stateCircle stateToPosition transitionArrow |
	tnfa := aTNFA.
	
	activeStates := nil.
	self removeAllMorphs.
	
	stateRows := { {} asOrderedCollection } asOrderedCollection.
	stateToPosition := Dictionary new.
	stateToCircle := Dictionary new.
	self put: tnfa initialState into: stateRows at: 1@2 positionDict: stateToPosition.
	
	"add states -> circles"
	stateRows do: [ :stateRow | 
		stateRow do: [ :state |
			stateCircle := CircleMorph new center: (self calculateCenterFor: (stateToPosition at: state)) - (5@5); extent: self stateDiameter asPoint; color: Color white.
			state isMatch ifTrue: [stateCircle addMorph: (CircleMorph new extent: 0.8 * self stateDiameter asPoint; center: stateCircle center; color: Color transparent)].
			self addMorph: stateCircle.
			stateToCircle at: state put: stateCircle.
		].
	].
	
	"add transitions -> arrows"
	stateRows do: [ :stateRow | 
		stateRow do: [ :state |
			(state outs collect: [ :statePointer | statePointer state]) do: [ :targetState | | label |
				transitionArrow := self arrowFrom: (stateToPosition at: state) to: (stateToPosition at: targetState).
					
				label := StringMorph contents: state triggerLabel.
				label center: transitionArrow vertices middle - (0 @ label fontToUse pointSize).
				transitionArrow addMorph: label.
				
				self addMorph: transitionArrow.
			].
		].
	].

	self bounds: (Rectangle merging: submorphs).