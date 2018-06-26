as yet unclassified
matchRegex

	matchArea textKeepCursor: matchArea text string.
	(self submorphs first text isEmpty or: [self submorphs first text includesSubstring: '()']) ifFalse: [
		(([matchArea text string allRangesOfRegexMatches: regex text] on: RegexSyntaxError do: [ #() ]) do: [:range | 
			matchArea addAttribute: (TextColor color: Color green) from: range start to: range stop])
		].