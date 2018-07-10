tool slides
explanationWithLines

	(self addSlideWithCenterBoxAndTitle: 'Test Cases')
		add: (RegexExplanationTool new
			minSize: 800 @ 200;
			regex: '[a-zA-Z]+\.[a-zA-z]+@hpi\.de';
			addTestLineFor: 'corinna.jaschek@hpi.de';
			addApplicationStyles: (PHStyle forAny fontSize: 30))