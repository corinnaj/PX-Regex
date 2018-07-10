intro
introSlide

	^ PHPage column
		expand: true;
		add: (PHWidget spacer);
		add: ((PHLabel text: 'Regular Expressions')
			pointSize: 45;
			align: #(center center));
		add: ((PHLabel text: 'An active presentation by Pascal Führlich, Kim Borchart and Corinna Jaschek')
			pointSize: 25;
			align: #(center center));
		add: (PHWidget spacer);
		add: ((PHLabel text: 'Programming Experience - SS18 - Prof. Dr. Robert Hirschfeld, Jens Lincke, Stefan Ramson')
			align: #(center center);
			addApplicationStyles: (PHStyle forAny color: Color lightGray);
			pointSize: 20)