PX
describe 

	| string |
	string := self isNegated ifTrue: ['^'] ifFalse: [''].

	elements do: [:e | string := string, e describe ].
	
	^ string