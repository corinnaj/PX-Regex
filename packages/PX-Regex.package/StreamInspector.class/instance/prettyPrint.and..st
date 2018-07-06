as yet unclassified
prettyPrint: aContext and: aMessage

	matcher ifNil: [^ ''].

	aContext selector == #restoreState: ifTrue: [^ 'Backtrack from ', myGuy position, ' to ', aMessage arguments first].

	(aContext receiver isKindOf: RxmSubstring)
		ifTrue: [^ 'Substring for ', ((aContext receiver instVarNamed: #sample)), ' at ', myGuy position asString].
	
	(aContext receiver isKindOf: RxmPredicate)
		ifTrue: [^ 'Predicate for ', ((aContext receiver instVarNamed: #predicate) at: 1) printString, ' at ', myGuy position asString].
	
	^ {'unknown'. aContext. 'at'. myGuy position}