accessing
predicateIgnoringCase: aBoolean

	| enumerable predicate |
	enumerable := self enumerablePartPredicateIgnoringCase: aBoolean.
	predicate := self predicatePartPredicate ifNil: [ 
		"There are no predicates in this set."
		^enumerable ifNil: [ 
			"This set is empty."
			[ :char | negated ] ] ].
	enumerable ifNil: [ ^predicate ].
	negated ifTrue: [
		"enumerable and predicate already negate the result, that's why #not is not needed here."
		^[ :char | (enumerable value: char) and: [ predicate value: char ] ] ].
	^[ :char | (enumerable value: char) or: [ predicate value: char ] ]