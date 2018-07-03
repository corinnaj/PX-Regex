as yet unclassified
tutorial2

	^ PHPage column
		add: (PHWidget spacer);
		add: ((PHTextArea text: ' i+ ')
			pointSize: 40);
		add: ((PHSubstringTextArea new)
			minRows: 2;
			multiLine: true;
			pointSize: 30
			"text: 'Another operator is +. This operator matches an expression at least once, but at most infiniiiiiiiiiiiiiiiite times...");
		add: (PHWidget spacer)