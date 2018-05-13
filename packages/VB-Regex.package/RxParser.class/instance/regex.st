recursive descent
regex
	"<regex> ::= e | <branch> `|' <regex>"
	| branch regex |
	branch := self recordingRangeDo: #branch.
	(lookahead = #epsilon or: [lookahead = $)])
		ifTrue: [regex := nil]
		ifFalse: 
			[self match: $|.
			regex := self recordingRangeDo: #regex].
	^RxsRegex new initializeBranch: branch regex: regex