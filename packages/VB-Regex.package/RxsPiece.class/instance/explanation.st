PX
explanation

	| returnString |
	returnString := self atom explanation.
	
	self atom class = RxsContextCondition ifTrue: [^ returnString ].
	
	max ifNil: [^ returnString, ' at least ', min, (' time' asPluralBasedOn: min)].
	
	min = max
		ifTrue: [^ returnString, ' exactly ', min, (' time' asPluralBasedOn: min)]
		ifFalse: [^ returnString, ' between ', min, ' and ', max, (' time' asPluralBasedOn: max)]