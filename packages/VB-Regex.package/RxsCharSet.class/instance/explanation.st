PX
explanation 

	^ self isNegated
		ifTrue: ['Match any charcter <b>not</b> included']
		ifFalse:  ['Match any of these characters']