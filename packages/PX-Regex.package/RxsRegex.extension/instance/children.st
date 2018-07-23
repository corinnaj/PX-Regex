*PX-Regex
children

	^ Array streamContents: [:s |
		self branch ifNotNil: [s nextPut: self branch].
		self regex ifNotNil: [s nextPut: RxsOr new. s nextPut: self regex]]