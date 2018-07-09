tool slides
visualExplanation

	self addSlideWithCenterBox
		add: ((PHTextArea text: '[a-zA-Z].[a-zA-z]@hpi.de')
			pointSize: 30);
		add: (PHMorphContainer new
			add: ((RegexExplanationView new forRegex: '[a-zA-Z].[a-zA-z]@hpi.de')
				addApplicationStyles: (PHStyle forAny fontSize: 30)))