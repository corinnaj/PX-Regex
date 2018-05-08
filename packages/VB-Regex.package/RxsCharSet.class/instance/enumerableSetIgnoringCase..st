privileged
enumerableSetIgnoringCase: aBoolean
	"Answer a collection of characters that make up the portion of me that can be enumerated, or nil if there are no such characters. The case check is only used to determine the type of set to be used. The returned set won't contain characters of both cases, because this way the senders of this method can create more efficient checks."

	| highestCharacterCode set |
	highestCharacterCode := elements inject: -1 into: [ :max :each |
		max := (each maximumCharacterCodeIgnoringCase: aBoolean) max: max ].
	highestCharacterCode = -1 ifTrue: [ ^nil ].
	set := highestCharacterCode <= 255
		ifTrue: [ CharacterSet new ]
		ifFalse: [ WideCharacterSet new ].
	elements do: [ :each | each enumerateTo: set ].
	^set