as yet unclassified
matchRegex

	matchArea textKeepCursor: matchArea text string.
	(self submorphs first text notEmpty) ifTrue:[
		(([matchArea text string allRangesOfRegexMatches: regex text] on: Error do: [ #() ]) do: [:range | 
			matchArea addAttribute: (TextColor color: Color green) from: range start to: range stop.
			matchArea addAttribute: (TextEmphasis underlined)  from: range start to: range stop.]
		)]