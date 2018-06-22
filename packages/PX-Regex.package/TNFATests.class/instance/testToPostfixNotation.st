as yet unclassified
testToPostfixNotation
	(self expect: (TNFA toPostfixNotation: 'a(b|c)')) to equal: 'abc|.'.
	(self expect: (TNFA toPostfixNotation: 'ab+(d|e)*')) to equal: 'ab+.de|*.'.