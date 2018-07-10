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
					
				label := (PHLabel text: state triggerLabel) pointSize: 24; updateStyleProperties; resizeToPreferred.
				transitionArrow vertices last x - transitionArrow vertices first x = 0 ifTrue: [
					label position: transitionArrow vertices middle + (label width @ 0).
				] ifFalse: [
					label center: transitionArrow vertices middle - (0 @ (label height)).
				].
				transitionArrow addMorph: label.
				
				self addMorph: transitionArrow.
			].
		].
	].
	self highlightActiveStatesFor: '' at: 0.
	
	self bounds: self boundingBoxOfSubmorphs