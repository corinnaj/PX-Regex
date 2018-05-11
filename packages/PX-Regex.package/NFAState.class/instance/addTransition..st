accessing
addTransition: aNFATransition
	aNFATransition originState == self ifFalse: [
		self halt. "all transitions of a state must have that state as originState"
		^nil.
	].
	transitions add: aNFATransition.