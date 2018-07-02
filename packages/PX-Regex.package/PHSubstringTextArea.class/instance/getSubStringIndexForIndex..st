as yet unclassified
getSubStringIndexForIndex: anIndex

	subexpressions do: [:s |
		(s rangeIncludes: anIndex)
			ifTrue: [^ s]].
		
	^ nil