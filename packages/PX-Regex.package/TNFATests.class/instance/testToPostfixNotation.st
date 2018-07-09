as yet unclassified
testToPostfixNotation
	(self expect: (TNFA toPostfixRegex: 'a(b|c)')) to equal: 'abc|.'.
	(self expect: (TNFA toPostfixRegex: 'ab+(d|e)*')) to equal: 'ab+.de|*.'.
	(self expect: (TNFA toPostfixRegex: '[a]')) to equal: 'a'.
	(self expect: (TNFA toPostfixRegex: '[ab]')) to equal: 'ab]'.
	(self expect: (TNFA toPostfixRegex: '[abg]')) to equal: 'abg]]'.
	(self expect: (TNFA toPostfixRegex: '[^abg]')) to equal: 'abg]]^'.
	(self expect: (TNFA toPostfixRegex: '[^a]')) to equal: 'a^'.
	(self expect: (TNFA toPostfixRegex: 'a\[\^')) to equal: 'a\[.\^.'.
	