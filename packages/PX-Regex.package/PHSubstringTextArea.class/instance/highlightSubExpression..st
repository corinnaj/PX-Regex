as yet unclassified
highlightSubExpression: anIndex

	| range subString |
	range := self getSubStringIndexForIndex: anIndex.
	range ifNotNil: [
		subString :=  (self text copyFrom: range start to: anIndex) asString.
		self tool subStringSelected: subString].
	self tool nfaView highlightActiveStatesFor: self text At: anIndex.