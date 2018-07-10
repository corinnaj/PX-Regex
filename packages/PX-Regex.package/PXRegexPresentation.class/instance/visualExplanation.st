tool slides
visualExplanation

	| x |
	x := RegexExplanationTool new
			regex: '[a-zA-Z].[a-zA-z]@hpi.de';
			addApplicationStyles: (PHStyle forAny fontSize: 30);
			minSize: 400 @ 200.
	x submorphs fourth visible: false.
	x submorphs fifth visible: false.

	self addSlideWithCenterBox
		add: x