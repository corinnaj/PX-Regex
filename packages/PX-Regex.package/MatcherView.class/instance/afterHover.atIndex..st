as yet unclassified
afterHover: aNumber atIndex: anotherNumber

	pos text: anotherNumber asString.
	
	currentStep
		removeAllMorphs;
		add: (self currentStep: (inspector record at: anotherNumber)).

	stringLabel
		removeAttribute: (TextColor color: self highlightColor);
		addAttribute: (TextColor color: self highlightColor) from: 1 to: aNumber