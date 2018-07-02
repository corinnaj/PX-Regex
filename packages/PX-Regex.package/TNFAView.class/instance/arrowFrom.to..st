private
arrowFrom: aPoint to: anotherPoint
	| from to vertices vector detour |
	
	from := self calculateCenterFor: aPoint.
	to := self calculateCenterFor: anotherPoint.
	vector := to - from.
	
	vertices := ((vector x > self cellSize or: [vector x < 0]) and: [vector y = 0]) ifTrue: [
		detour := vector / 2 + from + (0 @ (vector x * 0.4)).
		{from + (self stateDiameter / 2 * (detour - from) normalized) . detour . to - (self stateDiameter / 2 * (to - detour) normalized)}
	] ifFalse: [
		{from + (self stateDiameter / 2 * vector normalized) . from + (vector / 2) . to - (self stateDiameter / 2 * vector normalized)}
	].

	^PolygonMorph new 
		vertices: vertices
		color: nil borderWidth: 2 borderColor: Color black; 
		beSmoothCurve;
		makeOpen; 
		makeForwardArrow