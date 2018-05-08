accessing
maximumCharacterCodeIgnoringCase: aBoolean
	"Return the largest character code among the characters I represent."

	aBoolean ifFalse: [ ^character asInteger ].
	^character asUppercase asInteger max: character asLowercase asInteger