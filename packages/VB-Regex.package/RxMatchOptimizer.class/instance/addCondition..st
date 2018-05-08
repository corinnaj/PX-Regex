private
addCondition: aSymbol

	^(conditions ifNil: [ conditions := IdentitySet new: 1 ]) add: aSymbol