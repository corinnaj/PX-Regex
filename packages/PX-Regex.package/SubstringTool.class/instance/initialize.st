as yet unclassified
initialize

	super initialize.
	
	self addStyleClass: #withPadding.
		
	self add: (regexViewRow := PHMorphContainer new
			add: ((regexView := RegexViewBuilderForSubstringTool new forRegex: 'ab')
				when: #subExpressionHovered send: #highlightSubstring: to: self)).
	self add: (PHPage row
			add: ((matchArea := PHHoverableTextArea placeholder: 'Enter search text here...')
				when: #changed send: #matchRegex to: self;
				multiLine: true;
				minRows: 5;
				when: #characterHovered send: #highlightSubExpression: to: self;
				expand: true)).