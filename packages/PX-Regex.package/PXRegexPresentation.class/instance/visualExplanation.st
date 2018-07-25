tool slides
visualExplanation

	| x |
	x := RegexExplanationTool new
			regex: '[a-zA-Z]+.[a-zA-z]+@hpi.de';
			addApplicationStyles: (PHStyle forAny fontSize: 30);
			minSize: 600 @ 200.
	x submorphs fourth visible: false.

	(self addSlideWithCenterBoxAndTitle: 'Syntax Explanation')
		add: x