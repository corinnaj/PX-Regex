PX
describe 

	| returnText |

	returnText := self atom describe asText addAttribute: (TextColor color: (Color black alpha: 0.6)); yourself.
		
	self isStar ifTrue: [^ returnText, '*' asText allBold].
	self isPlus ifTrue: [^ returnText, '+'].
	self isOptional ifTrue: [^ returnText, '?'].
	
	^ returnText