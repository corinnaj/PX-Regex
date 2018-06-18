as yet unclassified
show: aTNFA
	| stateRows stateCircle nextPosition stateToPosition transitionArrow from to |
	tnfa := aTNFA.
	
	self removeAllMorphs.
	
	stateRows := { {} asOrderedCollection } asOrderedCollection.
	self put: tnfa initialState into: stateRows.
		
	nextPosition := 0@0.
	stateToPosition := Dictionary new.
	stateRows do: [ :stateRow | 
		stateRow do: [ :state |
			stateCircle := CircleMorph new position: nextPosition; extent: self stateExtent; color: Color white.
			state isMatch ifTrue: [stateCircle addMorph: (CircleMorph new extent: 0.8 * self stateExtent; center: stateCircle center; color: Color white)].
			stateToPosition at: state put: nextPosition.
			nextPosition := (self stateExtent x + self transitionLength)@0 + nextPosition.
			self addMorph: stateCircle.].
		nextPosition := 0@(self cellExtent y + nextPosition y)].
	stateRows do: [ :stateRow | 
		stateRow do: [ :state |
			(state outs collect: [ :statePointer | statePointer state]) do: [ :targetState |
				from := stateToPosition at: state.
				to := targetState isMatch ifTrue: [from + (self transitionLength + self stateExtent x@0)] ifFalse: [stateToPosition at: targetState].
				(from - to) y = 0 ifTrue: [ "arrow stays in this row"
					from := from + (self stateExtent x@(self stateExtent y / 2)).
					to := to + (0@(self stateExtent y / 2)).
				] ifFalse: [
					from := from + ((self stateExtent x / 2)@(self stateExtent y)).
					to := to + ((self stateExtent x / 2)@0).
				].
				transitionArrow := PolygonMorph new 
					vertices: {from . to} 
					color: nil borderWidth: 2 borderColor: Color black; 
					beSmoothCurve; makeOpen; makeForwardArrow.
				transitionArrow addMorph: ((StringMorph contents: state trigger asString) position: transitionArrow center + (5@5)).
				self addMorph: transitionArrow.
			].
		].
	].
	self openInWindowLabeled: 'Thompson NFA'.