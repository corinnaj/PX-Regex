accessing
out2: anObject
	(anObject isKindOf: TStatePointer) ifTrue: [
		out2 := anObject.
	] ifFalse: [
		out2 := TStatePointer new state: anObject; yourself.
	].