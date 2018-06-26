as yet unclassified
addHelpButtons

	self  pages allButLastDo: [:p | | button |
	button := (PHButton label: 'Show Help')
		small;
		align: #(end end);
		addStyleClass: #info;
		when: #clicked send: #showHelp: to: self  with: p question.
	p add: button at: 2]