accessing
triggersOn: aCharacter
	^self isNegated = ((self trigger like: aCharacter) isNil)