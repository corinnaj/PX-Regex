accessing
out: anObject
	(anObject isKindOf: TStatePointer) ifTrue: [
		out := anObject.
	] ifFalse: [
		out := TStatePointer new state: anObject; yourself.
	].