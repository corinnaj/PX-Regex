as yet unclassified
add: aBranchOrRegex at: aPoint

	self addMorphBack: (RegexViewPart new
		part: aBranchOrRegex;
		position: aPoint;
		color: aBranchOrRegex color;
		yourself).

	aBranchOrRegex children do: [:c | self add: c at: ((aPoint x + self position x + self extent x) @ aPoint y)]