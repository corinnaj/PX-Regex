accessing
maximumCharacterCodeIgnoringCase: aBoolean
	"Return the largest character code among the characters I represent."

	first <= last ifFalse: [ ^-1 "Empty range" ].
	aBoolean ifFalse: [ ^last asInteger ].
	^(first to: last) detectMax: [ :each |
		each asLowercase asInteger max: each asUppercase asInteger ]
	