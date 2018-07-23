intro slides
introSlide

	^ PHPage column
		expand: true;
		add: (PHWidget spacer);
		add: ((PHLabel text: 'Regular Expressions')
			pointSize: 60;
			align: #(center center));
		add: ((PHLabel text: 'An active presentation by')
			pointSize: 45;
			align: #(center center));
		add: ((PHLabel text: 'Pascal Führlich, Kim Borchart und Corinna Jaschek')
			pointSize: 45;
			align: #(center center));
		add: (PHWidget spacer);
		add: (PHWidget spacer);
		add: ((PHLabel text: 'Programming Experience - SS18 - Prof. Dr. Robert Hirschfeld, Jens Lincke, Stefan Ramson')
			align: #(center center);
			addApplicationStyles: (PHStyle forAny color: Color lightGray);
			pointSize: 30);
		add: (PHWidget spacer)