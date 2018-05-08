accessing
children

	^ Array streamContents: [:s |
		self piece ifNotNil: [s nextPut: self piece].
		self branch ifNotNil: [s nextPut: self branch]]