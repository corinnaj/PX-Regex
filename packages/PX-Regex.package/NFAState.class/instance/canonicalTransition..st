accessing
canonicalTransition: aNFATransition
	aNFATransition ifNotNil: [
		aNFATransition originState: self.
	].
	canonicalTransition:= aNFATransition