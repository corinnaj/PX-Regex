private
addMethodPredicate: aSelector

	^(methodPredicates ifNil: [ methodPredicates := IdentitySet new: 1 ]) add: aSelector