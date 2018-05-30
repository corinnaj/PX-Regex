instance creation
forRegex: pattern
	^TNFA new forPostfixRegex: (TNFA toPostfixNotation: pattern)