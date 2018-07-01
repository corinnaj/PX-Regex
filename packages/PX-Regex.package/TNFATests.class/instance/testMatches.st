as yet unclassified
testMatches
	(self expect: ((TNFA forRegex: 'a(b|c)') matches: 'ab')) to equal: true.
	(self expect: ((TNFA forRegex: 'a(b|c)') matches: 'abc')) to equal: false.
	(self expect: ((TNFA forRegex: 'a(x[bc])') matches: 'axc')) to equal: true.
	(self expect: ((TNFA forRegex: 'a?') matches: 'a')) to equal: true.
	(self expect: ((TNFA forRegex: 'a?') matches: '')) to equal: true.
	(self expect: ((TNFA forRegex: 'a?') matches: 'aa')) to equal: false.

	(self expect: ((TNFA forRegex: '[ab]') matches: 'a')) to equal: true.
	(self expect: ((TNFA forRegex: '[ab]') matches: 'b')) to equal: true.
	(self expect: ((TNFA forRegex: '[ab]') matches: 'c')) to equal: false.

	(self expect: ((TNFA forRegex: '[a-e]') matches: 'a')) to equal: true.
	(self expect: ((TNFA forRegex: '[a-e]') matches: 'e')) to equal: true.
	(self expect: ((TNFA forRegex: '[a-e]') matches: 'b')) to equal: true.
	(self expect: ((TNFA forRegex: '[a-e]') matches: '2')) to equal: false.
	
	(self expect: ((TNFA forRegex: '[^a]') matches: 'a')) to equal: false.
	(self expect: ((TNFA forRegex: '[^a]') matches: 'd')) to equal: true.
	(self expect: ((TNFA forRegex: '[^a-e]') matches: 'e')) to equal: false.
	(self expect: ((TNFA forRegex: '[^a-e]') matches: '4')) to equal: true.