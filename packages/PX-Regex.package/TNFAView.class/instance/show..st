as yet unclassified
show: aTNFA
	| stateRows stateCircle stateToPosition transitionArrow |
	tnfa := aTNFA.
	
	activeStates := nil.
	self removeAllMorphs.
	
	stateRows := { {} asOrderedCollection } asOrderedCollection.
	stateToPosition := Dictionary new.
	stateToCircle := Dictionary new.
	self put: tnfa initialState into: stateRows positionDict: stateToPosition.
	
	"add states -> circles"
	stateRows do: [ :stateRow | 
		stateRow do: [ :state |
			stateCircle := CircleMorph new position: (stateToPosition at: state); extent: self stateExtent; color: Color white.
			state isMatch ifTrue: [stateCircle addMorph: (CircleMorph new extent: 0.8 * self stateExtent; center: stateCircle center; color: Color white)].
			self addMorph: stateCircle.
			stateToCircle at: state put: stateCircle.
		].
	].
	
	"add transitions -> arrows"
	stateRows do: [ :stateRow | 
		stateRow do: [ :state |
			(state outs collect: [ :statePointer | statePointer state]) do: [ :targetState | | label |
				transitionArrow := PolygonMorph new 
					vertices: (self
						getArrowFrom: (stateToPosition at: state)
						to: (stateToPosition at: targetState))
					color: nil borderWidth: 2 borderColor: Color black; 
					beSmoothCurve;
					makeOpen; 
					makeForwardArrow.
					
				label := StringMorph contents: state triggerLabel.
				label center: transitionArrow center x
					@ (transitionArrow top - label fontToUse pointSize).
				transitionArrow addMorph: label.
				
				self addMorph: transitionArrow.
			].
		].
	].

	self bounds: (Rectangle merging: submorphs).