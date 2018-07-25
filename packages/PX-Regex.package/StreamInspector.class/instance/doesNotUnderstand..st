error handling
doesNotUnderstand: aMessage

	(#(atEnd position) includes: aMessage selector)  ifFalse: [
		self record add: (self infoFor: thisContext sender sender and: aMessage)].
	^ aMessage sendTo: stream