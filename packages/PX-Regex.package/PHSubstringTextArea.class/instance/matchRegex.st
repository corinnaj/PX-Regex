as yet unclassified
matchRegex

	self textKeepCursor: self text string.
	(self regex notEmpty) ifTrue:[
		([subexpressions := self text string allRangesOfRegexMatches: self regex]
			on: Error do: [ #() ])
			do: [:range | 
				self addAttribute: (TextColor color: Color green) from: range start to: range stop.
				self addAttribute: (TextEmphasis underlined)  from: range start to: range stop]]