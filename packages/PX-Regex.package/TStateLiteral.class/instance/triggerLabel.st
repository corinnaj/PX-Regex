accessing
triggerLabel
	| label sortedTriggers rangeStart previous finishRange |
	label := AttributedTextStream new.
	label nextPut: $[.
	self isNegated ifTrue: [label nextPut: $^].
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
	
	label nextPut: $].
	^label contents asString