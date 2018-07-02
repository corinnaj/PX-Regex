as yet unclassified
introSlide

	^ PHPage column
		expand: true;
		add: (PHWidget spacer);
		add: ((PHLabel text: 'Regular Expressions')
			pointSize: 45;
			align: #(center center));
		add: ((PHLabel text: 'A tutorial by Pascal Führlich, Kim Borchart and Corinna Jaschek')
			pointSize: 25;
			align: #(center center));
		add: (PHWidget spacer)