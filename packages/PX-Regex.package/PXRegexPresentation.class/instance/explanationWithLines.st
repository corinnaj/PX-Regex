tool slides
explanationWithLines

	self addSlideWithCenterBox
		add: (RegexExplanationTool new
			minSize: 800 @ 200;
			addApplicationStyles: (PHStyle forAny fontSize: 30))