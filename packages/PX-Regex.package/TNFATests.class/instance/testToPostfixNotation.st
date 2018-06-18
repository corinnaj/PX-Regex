as yet unclassified
testToPostfixNotation
	(self expect: (TNFA toPostfixNotation: 'a(b|c)')) to equal: 'abc|.'