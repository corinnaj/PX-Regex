as yet unclassified
forRegex: aString

	root := RxParser new parse: aString.
	
	self add: root at: 0 @ 0