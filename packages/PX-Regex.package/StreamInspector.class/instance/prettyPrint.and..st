ui
prettyPrint: aContext and: aMessage

	matcher ifNil: [^ ''].

	aContext selector == #restoreState: ifTrue: [^ 'Backtrack from ', stream position, ' to ', aMessage arguments first].

	(aContext receiver isKindOf: RxmSubstring)
		ifTrue: [^ 'Substring for ', ((aContext receiver instVarNamed: #sample)), ' at ', stream position asString].
	
	(aContext receiver isKindOf: RxmPredicate)
		ifTrue: [^ 'Predicate for ', ((aContext receiver instVarNamed: #predicate) at: 1) printString, ' at ', stream position asString].
	
	^ {'unknown'. aContext. 'at'. stream position}