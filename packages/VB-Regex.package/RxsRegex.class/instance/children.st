accessing
children

	^ Array streamContents: [:s |
		self branch ifNotNil: [s nextPut: self branch].
		self regex ifNotNil: [s nextPut: self regex]]