as yet unclassified
show: aTNFA
	| stateRows stateCircle stateToPosition transitionArrow from to direction vertices |
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
				from := stateToPosition at: state.
				"to := targetState isMatch ifTrue: [from + (self transitionLength + self stateExtent x@0)] ifFalse: [stateToPosition at: targetState]."
				to := stateToPosition at: targetState.
				direction := to - from.
				direction y = 0 ifTrue: [ "arrow stays in this row"
					direction x < 0 ifTrue: [
						from := from + (self stateExtent x / 2@0).
						to := to + (self stateExtent x / 2@0).
					] ifFalse: [
						direction x > (self transitionLength + self stateExtent x) ifTrue: [
							from := from + (self stateExtent x / 2@self stateExtent y).
							to := to + (self stateExtent x / 2@self stateExtent y).
						] ifFalse: [
							from := from + (self stateExtent x@(self stateExtent y / 2)).
							to := to + (0@(self stateExtent y / 2)).
						].						
					].
				] ifFalse: [
					direction y < 0 ifTrue: [
						from := from + ((self stateExtent x / 2)@0).
						to := to + ((self stateExtent x / 2)@(self stateExtent y)).
					] ifFalse: [
						from := from + ((self stateExtent x / 2)@(self stateExtent y)).
						to := to + ((self stateExtent x / 2)@0).
					].
				].
				vertices := { from . to }.
				
				((direction x > (self transitionLength + self stateExtent x) or: [direction x < 0]) and: [direction y = 0]) ifTrue: [vertices := { from . direction / 2 + from + (0@(direction x * 0.4)) . to}].
				transitionArrow := PolygonMorph new 
					vertices: vertices
					color: nil borderWidth: 2 borderColor: Color black; 
					beSmoothCurve;
					makeOpen; 
					makeForwardArrow.
				transitionArrow addMorph: ((StringMorph contents: state trigger asString) position: transitionArrow center x + 5@transitionArrow center y).
				self addMorph: transitionArrow.
			].
		].
	].
	self openInWindowLabeled: 'Thompson NFA'.