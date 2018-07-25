as yet unclassified
infoFor: aContext and: aMessage

	matcher ifNil: [^ ''].

	aContext selector == #restoreState: ifTrue: [^ {#iconRefresh. 'Backtrack from ', stream position, ' to ', aMessage arguments first. aMessage arguments first}].

	(aContext receiver isKindOf: RxmSubstring)
		ifTrue: [^ {#iconStar_half_empty. 'Substring for ', ((aContext receiver instVarNamed: #sample)), ' at ', stream position asString. stream position}].
	
	(aContext receiver isKindOf: RxmPredicate) ifTrue: [ | predicate |
		predicate := aContext receiver instVarNamed: #predicate.
		predicate numCopiedValues > 0 
			ifTrue: [^ {#iconTaxi. 'Predicate for ', (predicate at: 1) printString, ' at ', stream position asString. stream position}]].
	
	^ {#iconQuestion. aContext printString, ' at ', stream position asString. stream position}