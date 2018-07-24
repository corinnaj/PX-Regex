instance creation
openWithText: aString andPossibilites: anArray

	self newWithNoLine
		regex: aString;
		addPossibilities: anArray;
		addTestLine;
		openInWindow