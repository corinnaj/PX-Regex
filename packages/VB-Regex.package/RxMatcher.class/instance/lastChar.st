accessing
lastChar

	^stream position = 0 ifFalse: [ stream last ]