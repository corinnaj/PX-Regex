recursive descent
branch
	"<branch> ::= e | <piece> <branch>"
	| piece branch |
	piece := self recordingRangeDo: #piece.
	(lookahead = #epsilon or: [lookahead = $| or: [lookahead = $) ]])
		ifTrue: [branch := nil]
		ifFalse: [branch := self recordingRangeDo: #branch].
	^RxsBranch new 
		initializePiece: piece 
		branch: branch