initialize-release
beCharacter: aCharacter

	predicate := [ :char | char == aCharacter ].
	negation := [ :char | (char == aCharacter) not ]