private
addPrefixes: aSet

	aSet size = 0 ifTrue: [ ^aSet ].
	^prefixes
		ifNil: [ prefixes := aSet ]
		ifNotNil: [ prefixes addAll: aSet ]