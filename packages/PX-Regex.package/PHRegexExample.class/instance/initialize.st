as yet unclassified
initialize

	| regexBox evalButton |
	super initialize.
	
	regexBox := (PHPage column)
		add: (regexEntry := PHTextArea placeholder: 'Enter Regex here');
		add: (stringEntry := PHTextArea placeholder: 'Enter string to be matched here');
		add: (evalButton := (PHButton text: 'Match')
			align: #(end start);
			when: #clicked send: #checkRegex to: self);
		primaryFormClickable: evalButton.

	self add: regexBox