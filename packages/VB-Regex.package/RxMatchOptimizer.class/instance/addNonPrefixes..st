private
addNonPrefixes: aSet

	aSet size = 0 ifTrue: [ ^aSet ].
	^nonPrefixes
		ifNil: [ nonPrefixes := aSet ]
		ifNotNil: [ nonPrefixes addAll: aSet ]