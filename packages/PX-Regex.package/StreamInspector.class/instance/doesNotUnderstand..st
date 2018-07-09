as yet unclassified
doesNotUnderstand: aMessage

	(#(atEnd position) includes: aMessage selector)  ifFalse: [
		"Transcript show: {myGuy position. self prettyPrint: thisContext sender sender and: aMessage. aMessage}; cr"
		"Transcript show: (self prettyPrint: thisContext sender sender and: aMessage); cr."
		self record add: (self infoFor: thisContext sender sender and: aMessage)].
	^ aMessage sendTo: myGuy