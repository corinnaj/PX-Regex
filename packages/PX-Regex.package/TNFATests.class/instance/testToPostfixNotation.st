as yet unclassified
testToPostfixNotation
	(self expect: (TNFA toPostfixNotation: 'a(b|c)')) to equal: 'abc|.'.
	(self expect: (TNFA toPostfixNotation: 'ab+(d|e)*')) to equal: 'ab+.de|*.'.
	(self expect: (TNFA toPostfixNotation: '[a]')) to equal: 'a'.
	(self expect: (TNFA toPostfixNotation: '[ab]')) to equal: 'ab]'.
	(self expect: (TNFA toPostfixNotation: '[abg]')) to equal: 'abg]]'.
	"(self expect: (TNFA toPostfixNotation: '[a-z]')) to equal: 'az['."