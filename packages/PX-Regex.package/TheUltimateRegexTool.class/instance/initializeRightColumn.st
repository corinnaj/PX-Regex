initialize-release
initializeRightColumn 

	rightColumn
		expand: true;
		add: (PHPage row
			add: (PHLabel subHeading: 'NFA View of Your Regex:')
			oppositeTo: ((PHButton text: 'Toggle Full View of NFA')
				small;
				when: #clicked send: #toggleFullNFA to: self));
		add: (nfaScrollArea := (PHScrollArea new)
			expand: true;
			inStickyMode: false;
			policy: #(scroll show);
			content: (nfaContainer := PHMorphContainer new add: (nfaView := TNFAView new)))