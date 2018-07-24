highlighting
highlightSubExpression: anIndex

	| range subString |
	range := self getSubStringIndexForIndex: anIndex.
	
	range
		ifNotNil: [
			subString :=  (self text copyFrom: range start to: anIndex) asString.
			self tool subStringSelected: subString.]
		ifNil: [self tool subStringSelected: ''].
	
	(self tool nfaView notNil and: [self regex notEmpty]) ifTrue: [
		self tool nfaView highlightActiveStatesFor: self text asString at: anIndex]