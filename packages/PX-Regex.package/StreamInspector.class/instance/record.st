accessing
record

	^ record ifNil: [record := OrderedCollection new]