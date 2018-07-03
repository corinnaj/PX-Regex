as yet unclassified
tutorial1

	^ PHPage column
		add: (PHWidget spacer);
		add: ((PHTextArea text: ' an? ')
			pointSize: 40);
		add: ((PHSubstringTextArea new)
			minRows: 2;
			multiLine: true;
			pointSize: 30
			"text: 'Let''s introduce a new concept: The ? operator \n This one will match with an expression both if it finds a match and if it doesn''t' You will find an example below. Try it out for yourself");
		add: (PHWidget spacer)