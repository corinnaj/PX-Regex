accessing
addStateMorphFor: aState

	| circle |
	circle := CircleMorph new
		extent: self stateDiameter asPoint;
		color: Color white.
		
	aState isMatch
		ifTrue: [circle
			addMorph: (CircleMorph new extent: 0.8 * self stateDiameter asPoint;
			center: circle center;
			color: Color transparent)].
			
	^ circle

	