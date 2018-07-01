accessing
triggerLabel
	| label sortedTriggers rangeStart previous finishRange |
	label := AttributedTextStream new.
	self isNegated ifTrue: [label nextPutAll: '[^'] ifFalse: [self trigger size > 1 ifTrue: [label nextPut: $[]].
	sortedTriggers := self trigger asOrderedCollection.
	sortedTriggers sort.
	rangeStart := nil.
	previous := nil.
	finishRange := [
		label nextPut: rangeStart.
		previous asInteger - rangeStart asInteger > 1 ifTrue: [label nextPut: $-].
		rangeStart ~= previous ifTrue: [label nextPut: previous].
	]. 
	sortedTriggers do: [:trigger | 
		previous ifNil: [
			rangeStart := trigger.
		] ifNotNil: [
			previous asInteger + 1 ~= trigger asInteger ifTrue: [
				finishRange value.
				rangeStart := trigger.
			].
		].
		previous := trigger.
	].
	
	finishRange value.
	
	(self isNegated or: [self trigger size > 1]) ifTrue: [label nextPut: $]].
	^label contents asString