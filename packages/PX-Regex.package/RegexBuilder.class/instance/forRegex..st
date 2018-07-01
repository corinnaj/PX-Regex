building
forRegex: aString

	root := RxParser new parse: aString.
	self add: root; resizeToFit.