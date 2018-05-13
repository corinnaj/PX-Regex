as yet unclassified
initialize

	super initialize.
	
	self addStyleClass: #withPadding.
	self add: ((regex := PHTextArea placeholder: 'Enter regex here ...')
		when: #changed send: #matchRegex to: self).
	self add: (container := PHMorphContainer new).
	self add: (explanationLabel := PHLabel new).
	self add: PHDivider new.
	self addTestLine