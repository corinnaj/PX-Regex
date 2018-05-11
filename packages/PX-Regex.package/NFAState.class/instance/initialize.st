initialize
initialize
	super initialize.
	transitions := OrderedCollection new.
	self canonicalTransition: nil.
	self stateString: ''.