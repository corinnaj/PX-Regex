as yet unclassified
add: aBranchOrRegex

	aBranchOrRegex shouldBeDisplayed ifTrue: [
		self addMorphBack: (RegexViewPart new
			part: aBranchOrRegex;
			color: aBranchOrRegex color;
			yourself)].

	aBranchOrRegex children do: [:c | self add: c]