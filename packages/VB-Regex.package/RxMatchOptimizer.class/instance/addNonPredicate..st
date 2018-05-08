private
addNonPredicate: nonPredicate

	^(nonPredicates ifNil: [ nonPredicates := Set new: 1 ]) add: nonPredicate