initialize
addTransition: aNFATransition
	aNFATransition originState: self.
	transitions add: aNFATransition.