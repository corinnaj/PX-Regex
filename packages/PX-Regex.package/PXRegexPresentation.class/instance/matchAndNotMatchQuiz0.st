intro
matchAndNotMatchQuiz0

	self addSlideWithCenterBox
		add: ((PHLabel text: 'Before we go in-depth, let''s make sure you understand the basics of regexes!')
			pointSize: 30;
			align: #(center center));
		add: ((self buildMatchAndNotMatchQuiz0)
			addApplicationStyles: (PHStyle forAny fontSize: 24);
			minSize: 400 @ 200;
			align: #(center center))