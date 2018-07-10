intro
matchAndNotMatchQuiz0

	self addSlideWithCenterBox
		add: ((PHLabel text: 'Before we go into depth, let''s make sure you understand regexes!')
			pointSize: 30;
			align: #(center center));
		add: ((self buildMatchAndNotMatchQuiz0)
			addApplicationStyles: (PHStyle forAny fontSize: 24);
			minSize: 400 @ 200;
			align: #(center center))