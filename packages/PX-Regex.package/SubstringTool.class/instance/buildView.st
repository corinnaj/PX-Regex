as yet unclassified
buildView


	regexView delete.
	self remove: regexViewRow.
	[(self submorphs first text notEmpty) ifTrue:[
		regexView :=  ((RegexViewBuilderForSubstringTool new forRegex: self regex text)
				when: #subExpressionHovered send: #highlightSubstring: to: self).
		self add: (regexViewRow := PHMorphContainer new
			add: ((regexView := RegexViewBuilderForSubstringTool new forRegex: self regex text)
				
				when: #subExpressionHovered send: #highlightSubstring: to: self)) at: 2.
		]] on: Error do: [ #() ].
	Transcript show: self regex text; cr.