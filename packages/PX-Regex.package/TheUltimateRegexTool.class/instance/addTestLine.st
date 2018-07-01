as yet unclassified
addTestLine

	| testline |
	testline := PHPage row
		add: ((PHTextArea placeholder: 'Enter test here ... (press return to add more)')
			when: #confirmed send: #addTestLine to: self;
			when: #changed send: #subtoolsMatchRegex to:  self;
			expand: true);
		add: (PHBadge new visible: false).
		
	testlineArea add: testline.
	testlines add: testline