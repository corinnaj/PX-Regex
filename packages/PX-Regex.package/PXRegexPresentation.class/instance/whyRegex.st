as yet unclassified
whyRegex

	^ PHPage column
		add: ((PHLabel text: 'Why are Regexes important?')
			pointSize: 30);
		add: ((PHLabel markup: '* used for data validation
* data extraction
* changing lots of file names at once')
			pointSize: 24)