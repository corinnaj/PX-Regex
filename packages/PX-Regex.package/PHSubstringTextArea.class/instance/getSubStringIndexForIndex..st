as yet unclassified
getSubStringIndexForIndex: anIndex

	subexpressions ifNil: [^ nil].

	subexpressions do: [:s |
		(s rangeIncludes: anIndex)
			ifTrue: [^ s]].
		
	^ nil