as yet unclassified
show: aTNFA
	| stateRows stateCircle stateToPosition transitionArrow |
	tnfa := aTNFA.
	
	self removeAllMorphs.
	
	stateRows := { {} asOrderedCollection } asOrderedCollection.
	stateToPosition := Dictionary new.
	self put: tnfa initialState into: stateRows positionDict: stateToPosition.
	
	stateRows do: [ :stateRow | 
		stateRow do: [ :state |
			stateCircle := CircleMorph new position: (stateToPosition at: state); extent: self stateExtent; color: Color white.
			state isMatch ifTrue: [stateCircle addMorph: (CircleMorph new extent: 0.8 * self stateExtent; center: stateCircle center; color: Color white)].
			self addMorph: stateCircle.
		].
	].
	
	stateRows do: [ :stateRow | 
		stateRow do: [ :state |
			(state outs collect: [ :statePointer | statePointer state]) do: [ :targetState |
				transitionArrow := PolygonMorph new 
					vertices: (self
						getArrowFrom: (stateToPosition at: state)
						to: (stateToPosition at: targetState))
					color: nil borderWidth: 2 borderColor: Color black; 
					beSmoothCurve;
					makeOpen; 
					makeForwardArrow.
				transitionArrow
					addMorph: ((StringMorph contents: state trigger asString)
					position: transitionArrow center x + 5 @ transitionArrow center y).
				self addMorph: transitionArrow.
			].
		].
	].

	self bounds: (Rectangle merging: submorphs)