as yet unclassified
initialize

	super initialize.
	
	self addStyleClass: #withPadding.
	self add: ((regex := PHHoverableTextArea placeholder: 'Enter regex here ...')
			when: #changed send: #matchRegex to: self;
			when: #changed send: #buildView to: self).
	self add: PHDivider new.
	self add: (regexViewRow := PHPage row
			add: ((regexView := RegexViewBuilderForSubstringTool new forRegex: 'ab')
				"when: #changed send: #hResizing: shrinkWrap to: self;"
				when: #subExpressionHovered send: #highlightSubstring: to: self)).
	self add: (PHPage row
			add: ((matchArea := PHHoverableTextArea placeholder: 'Enter search text here...')
				when: #changed send: #matchRegex to: self;
				multiLine: true;
				minRows: 5;
				when: #characterHovered send: #highlightSubExpression: to: self;
				expand: true);
		add: (PHBadge new visible: false))