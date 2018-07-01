as yet unclassified
addRegexField
	
	| regexArea |
	regexArea := ((PHHoverableTextArea placeholder: 'Enter regex here ...')
			when: #changed send: #regex to: self).
	
	self add: regexArea at: 1