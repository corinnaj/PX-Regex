initialize-release
initializeRightColumn 
	rightColumn
		expand: true;
		add: (PHPage row addAll: {
				PHLabel subHeading: 'NFA View of Your Regex:'. 
				PHWidget spacer.
				(PHButton text: 'Toggle Substring Matching of NFA')
					small;
					when: #clicked send: #toggleNfaSubmatchHighlighting to: self.
				(PHButton text: 'Toggle Full View of NFA')
					small;
					when: #clicked send: #toggleFullNFA to: self.
				});
		add: (nfaScrollArea := (PHScrollArea new)
			expand: true;
			inStickyMode: false;
			policy: #(scroll show);
			content: (nfaContainer := PHMorphContainer new add: (nfaView := TNFAView new)));
		add: self initializeEfficiencyArea.