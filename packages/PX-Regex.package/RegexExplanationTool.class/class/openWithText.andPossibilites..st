as yet unclassified
openWithText: aString andPossibilites: anArray

	self newWithNoLine
		regex: aString;
		addPossibilities: anArray;
		addTestLine;
		openInWindow