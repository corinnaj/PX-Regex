as yet unclassified
showHelp: aRegex

	self currentPage add: (RegexExplanationView new forRegex: aRegex) at: 3.
	self disabled: true