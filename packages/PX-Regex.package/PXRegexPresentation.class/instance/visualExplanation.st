as yet unclassified
visualExplanation

	self addSlideWithCenterBox
		add: ((PHLabel text: 'See a visual description of your regex:')
			pointSize: 30);
		add: ((PHTextEntry text: '[a-zA-Z].[a-zA-z]@hpi.de')
			pointSize: 30);
		add: (PHMorphContainer new
			add: ((RegexExplanationView new forRegex: '[a-zA-Z].[a-zA-z]@hpi.de')
				addApplicationStyles: (PHStyle forAny fontSize: 30)))