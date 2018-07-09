initialize-release
initializeLeftColumn

	leftColumn
		extent: 500 @ 300;
		minSize: 500 @ 300;
		add: (PHLabel subHeading: 'Explanation of Your Regex');
		add: (explanationView := RegexExplanationView new);
		add: (PHLabel subHeading: 'Substring Matches:');
		add: (substringTextArea := PHSubstringTextArea newForTool: self);
		add: (PHLabel subHeading: 'Find Out Which Strings Match Your Regex:');
		add: (testlineArea := PHPage column)