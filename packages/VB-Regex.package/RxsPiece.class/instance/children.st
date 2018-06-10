PX
children

	self atom isRegex ifTrue: [^ Array streamContents: [:s |
			s
				nextPut: RxsDivider new;
				nextPut: self atom;
				nextPut: RxsDivider new]].
	
	^ #()