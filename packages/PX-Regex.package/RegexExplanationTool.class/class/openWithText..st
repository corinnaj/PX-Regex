instance creation
openWithText: aString

	self newWithNoLine
		regex: aString;
		addTestLine;
		openInWindow