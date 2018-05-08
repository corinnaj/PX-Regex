accessing
subexpressions: subIndex
	"Answer an array of all matches of the subexpression at the given index.
	The answer is always an array; it is empty if there are no matches."

	| originalPosition startPositions stopPositions reply |
	originalPosition := stream position.
	startPositions := self subBeginning: subIndex.
	stopPositions := self subEnd: subIndex.
	(startPositions isEmpty or: [stopPositions isEmpty]) ifTrue: [^Array new].
	reply := Array new: startPositions size.
	1 to: reply size do: [ :index |
		| start stop |
		start := startPositions at: index.
		stop := stopPositions at: index.
		stream position: start.
		reply at: reply size - index + 1 put: (stream next: stop - start) ].
	stream position: originalPosition.
	^reply