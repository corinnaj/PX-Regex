accessing
describe 

	| string |
	string := '['.

	elements do: [:e | string := string, e describe ].
	
	^ string, ']'