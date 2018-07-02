as yet unclassified
initializeRightColumn 

	rightColumn
		expand: true;
		add: (PHPage row
			add: (PHLabel subHeading: 'NFA View of Your Regex:')
			oppositeTo: ((PHButton text: 'Toggle Full View of NFA')
				small;
				when: #clicked send: #toggleFullNFA to: self));
		add: (PHPage row
			add: ((nfaStepRegex := PHTextArea placeholder: 'Enter String to match against NFA...')
				expand: true);
			add: ((PHButton text: 'Step')
				small;
				when: #clicked send: #step to: self));
		add: (nfaScrollArea := (PHScrollArea new)
			expand: true;
			inStickyMode: false;
			policy: #(scroll show);
			content: (nfaContainer := PHMorphContainer new add: (nfaView := TNFAView new)))