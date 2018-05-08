privileged
enumerablePartPredicateIgnoringCase: ignoreCase

	| set p |
	set := (self enumerableSetIgnoringCase: ignoreCase) ifNil: [ ^nil ].
	set size = 1 ifTrue: [
		| char |
		char := set anyOne.
		ignoreCase ifTrue: [
			| lowercaseChar |
			lowercaseChar := char asLowercase.
			char := char asUppercase.
			char == lowercaseChar ifFalse: [ 
				negated ifTrue: [ 
					^[ :character | (character == char or: [ character == lowercaseChar ]) not ] ].
				^[ :character | character == char or: [ character == lowercaseChar ] ] ] ].
		negated ifTrue: [ ^[ :character | (character == char) not ] ].
		^[ :character | character == char ] ].
	ignoreCase ifTrue: [
		set copy do: [ :each |
			| char |
			(char := each asUppercase) == each
				ifFalse: [ set add: char ]
				ifTrue: [ 
					(char := each asLowercase) == each ifFalse: [
						set add: char ] ] ] ].
	set size < 10 ifTrue: [ "10 is an empirical value"
		p := set asArray.
		negated ifTrue: [ ^[ :character | (p instVarsInclude: character) not ] ].
		^[ :character | p instVarsInclude: character ] ].
	negated ifTrue: [ ^[ :character | (set includes: character) not ] ].
	^[ :character | set includes: character ]