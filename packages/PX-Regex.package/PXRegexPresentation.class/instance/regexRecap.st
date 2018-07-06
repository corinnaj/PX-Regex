as yet unclassified
regexRecap

	^ PHPage column
		expand: true;		
		add: (PHPage row
			add: ((PHLabel pageHeader: 'Recap: Regular Expressions'));
			align: #(center center);
		add: (PHWidget spacer));	
		add: (PHPage row
			add: ((PHLabel text: 'This presentation expects you to understand at least the basics of using Regular Expressions. A good indicator is that you should be able to solve the following quiz:') pointSize: 30);
				align: #(center center));
		add: ((self buildMatchAndNotMatchQuiz0)
			align: #(center center))