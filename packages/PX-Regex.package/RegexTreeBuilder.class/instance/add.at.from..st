building
add: aBranchOrRegex at: aPoint from: anotherPoint

	| x |
	
	self addMorphBack: (RegexTreePart new
		part: aBranchOrRegex;
		center: aPoint;
		color: Color white;
		yourself).
	
	aPoint ~= anotherPoint ifTrue: [self addMorphBack: (LineMorph from: anotherPoint to: aPoint color: (Color gray alpha: 0.4) width: 3)].

	x := self horizontalOffset negated.
	aBranchOrRegex children do: [:c |
		self add: c at: aPoint + (x @ self lineGap) from: aPoint.
		x := self horizontalOffset * 2 + x]