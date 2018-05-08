private
addNonMethodPredicate: aSelector

	^(nonMethodPredicates ifNil: [ nonMethodPredicates := IdentitySet new: 1 ]) add: aSelector