as yet unclassified
matchAndNotMatchQuiz0

	^ PHPage column
		expand: true;
		add: ((PHLabel text: 'Lets use your newly acquired knowledge to solve a quiz!')
			pointSize: 30;
			align: #(center center));
		"Give the RegexQuiz at least a page!"
		add: ((self buildMatchAndNotMatchQuiz0)
			align: #(center center));
			add: (PHWidget spacer)