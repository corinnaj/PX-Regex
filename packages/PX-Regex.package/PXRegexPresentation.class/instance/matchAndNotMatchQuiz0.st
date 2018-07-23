intro slides
matchAndNotMatchQuiz0

	self addSlideWithCenterBox
		add: ((self buildMatchAndNotMatchQuiz0)
			addApplicationStyles: (PHStyle forAny fontSize: 30);
			minSize: 400 @ 200;
			align: #(center center))