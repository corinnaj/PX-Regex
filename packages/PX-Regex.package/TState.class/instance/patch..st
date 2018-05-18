as yet unclassified
patch: pointerList
	pointerList do: [ :pointer | 
		pointer state ifNil: [ pointer state: self ]
	].