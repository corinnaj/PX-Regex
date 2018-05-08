accessing
describe 

	| returnString |
	returnString := self atom describe.
		
	self isStar ifTrue: [^ returnString, '*'].
	self isPlus ifTrue: [^ returnString, '+'].
	self isOptional ifTrue: [^ returnString, '?'].
	
	^ returnString