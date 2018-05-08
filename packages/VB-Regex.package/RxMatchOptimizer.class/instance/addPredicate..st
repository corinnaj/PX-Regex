private
addPredicate: predicate

	^(predicates ifNil: [ predicates := Set new: 1 ]) add: predicate