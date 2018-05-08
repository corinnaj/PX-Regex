tests
testPredicates

	#(
		"input" "regex" "expected case sensitive result" "expected case insensitive result"
		'abc' '[a]bc' true true
		'abc' '[A]bc' false true
		'abc' '[ab]bc' true true
		'abc' '[Ab]bc' false true
		'Abc' '[a]bc' false true
		'Abc' '[A]bc' true true
		'Abc' '[ab]bc' false true
		'Abc' '[Ab]bc' true true
		'abc' '[b]bc' false false
		'abc' '[bB]bc' false false
		'abc' '[bc]bc' false false
		'abc' '[bcBC]bc' false false
	) groupsDo: [ :input :regexString :expectedCaseSensitiveResult :expectedCaseInsensitiveResult |
		self	
			assert: expectedCaseSensitiveResult 
			equals: (input matchesRegex: regexString)
			description: ('{1} matchesRegex: {2} should be {3}' format: { input. regexString. expectedCaseSensitiveResult }).
		self	
			assert: expectedCaseInsensitiveResult 
			equals: (input matchesRegexIgnoringCase: regexString)
			description: ('{1} matchesRegexIgnoringCase: {2} should be {3}' format: { input. regexString. expectedCaseInsensitiveResult }) ]