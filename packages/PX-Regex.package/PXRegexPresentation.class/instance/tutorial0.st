as yet unclassified
tutorial0

	self flag: #todo. "give substring area a tool for matching"

	^ PHPage column
		expand: true;
		add: (PHWidget spacer);
		add: ((PHSubstringTextArea text: '
			Welcome to the interactive Tutorial on Regex')
				pointSize: 30);
		add: (PHWidget spacer);
		add: ((PHTextArea placeholder: 'Your Regex')
			pointSize: 30);
		add: (PHWidget spacer)