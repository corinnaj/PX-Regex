initialize-release
explanation

	| returnString |
	returnString := self atom explanation.
	
	min = max
		ifTrue: [^ returnString, ' exactly ', min, (' time' asPluralBasedOn: min)]
		ifFalse: [^ returnString, ' between ', min, ' and ', max, (' time' asPluralBasedOn: max)]