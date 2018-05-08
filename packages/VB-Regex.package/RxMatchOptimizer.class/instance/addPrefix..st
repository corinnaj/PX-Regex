private
addPrefix: aCharacter

	^(prefixes ifNil: [ prefixes := CharacterSet new ]) add: aCharacter