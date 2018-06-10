building
add: aRxsNode inRow: aNumber

	| row |
	
	row := aNumber.
	aRxsNode isRegex ifTrue: [row := row + 1].
	
	aRxsNode shouldBeDisplayed ifTrue: [
		self addMorphBack: (aRxsNode viewClass new
			part: aRxsNode;
			builder: self;
			row: row + aRxsNode rowOffset;
			color: aRxsNode color;
			yourself)].
	
	aRxsNode children do: [:c | self add: c inRow: row].
	aRxsNode isRegex ifTrue: [row := row - 1]