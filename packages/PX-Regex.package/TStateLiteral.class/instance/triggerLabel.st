accessing
triggerLabel
	| label sortedTriggers rangeStart previous finishRange |
	(self isNegated and: [self trigger = {Character lf . Character cr} asSet]) ifTrue: [^'.'].
	
	label := AttributedTextStream new.
	self isNegated ifTrue: [label nextPutAll: '[^'] ifFalse: [self trigger size > 1 ifTrue: [label nextPut: $[]].
	sortedTriggers := self trigger asOrderedCollection.
	sortedTriggers sort.
	
	rangeStart := nil.
	previous := nil.
	finishRange := [
		label nextPutAll: (rangeStart caseOf: {[Character cr] -> ['\r']. [Character lf] -> ['\n']. [Character tab] -> ['\t']} otherwise: [rangeStart asString]).
		previous asInteger - rangeStart asInteger > 1 ifTrue: [label nextPut: $-].
		rangeStart ~= previous ifTrue: [label nextPutAll: (rangeStart caseOf: {[Character cr] -> ['\r']. [Character lf] -> ['\n']. [Character tab] -> ['\t']} otherwise: [rangeStart asString]).].
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
	^label contents collect: [:c | 
		c caseOf: {
			[Character cr] -> [$r].
			[Character lf] -> ['\n'].
			[Character tab] -> ['\t'].
		} otherwise: [c]
	] as: String