intro
whyRegex

	self addSlideWithCenterBox
		add: ((PHLabel text: 'What are regexes used for?')
			pointSize: 30);
		add: (PHWidget spacer);
		add: (PHWidget spacer);
		add: ((PHLabel markup: '- <b>data validation</b>(is this a correct email?)
- <b>data extraction</b>(get all emails out of a text)
- <b>search and replace</b>')
			pointSize: 24)