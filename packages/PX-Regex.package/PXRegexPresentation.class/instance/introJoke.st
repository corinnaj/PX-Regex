as yet unclassified
introJoke

	^ PHPage column
		expand: true;
		padding: 100 asPoint;
		add: (PHWidget spacer);
		add: (PHPage row
			add: (PHWidget spacer);
			add: ((PHLabel pageHeader: '"What do you call a phobia of regexes?"')
				align: #(start center));
			add: (PHWidget spacer));
		add: (PHWidget spacer);
		add: (PHPage row
			add: (PHWidget spacer);
			add: ((PHLabel pageHeader: '"Common Sense!"')
				align: #(start center));
			add: (PHWidget spacer));
		add: (PHWidget spacer)