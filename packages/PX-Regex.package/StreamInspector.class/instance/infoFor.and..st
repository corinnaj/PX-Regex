as yet unclassified
infoFor: aContext and: aMessage

	matcher ifNil: [^ ''].

	aContext selector == #restoreState: ifTrue: [^ {#iconRefresh. 'Backtrack from ', myGuy position, ' to ', aMessage arguments first. aMessage arguments first}].

	(aContext receiver isKindOf: RxmSubstring)
		ifTrue: [^ {#iconStar_half_empty. 'Substring for ', ((aContext receiver instVarNamed: #sample)), ' at ', myGuy position asString. myGuy position}].
	
	(aContext receiver isKindOf: RxmPredicate)
		ifTrue: [^ {#iconTaxi. 'Predicate for ', ((aContext receiver instVarNamed: #predicate) at: 1) printString, ' at ', myGuy position asString. myGuy position}].
	
	^ {#iconQuestion. aContext printString, ' at ', myGuy position asString. myGuy position}