as yet unclassified
matchAllStringsQuiz0

	^ PHPage column
		expand: true;
		add: ((PHLabel text: 'Lets use your newly acquired knowledge to solve this quiz!')
			pointSize: 30;
			align: #(center center));
		"TODO: Properly add the RegexExplainationTool (This is the one where you try to match ALL lines)."
		add: (RegexExplanationTool new);
		add: (PHWidget spacer)