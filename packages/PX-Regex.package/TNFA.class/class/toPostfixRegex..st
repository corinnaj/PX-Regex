private
toPostfixRegex: regex
	| postfixRegex currentGroup parenthesisStack numAlternatives numAtoms numAtomsInBrackets inBrackets fillingCharacterRange characterRangeStart characterRange negatedBrackets escapeNext |
	numAlternatives := 0.
	numAtoms := 0.
	numAtomsInBrackets := 0.
	inBrackets := false. "e.g. [abc]"
	negatedBrackets := false. "will be set to true for eg. [^a-d]"
	fillingCharacterRange := false. "e.g. [a-g]"
	characterRangeStart := $a.
	escapeNext := false.
	
	postfixRegex := AttributedTextStream new.
	parenthesisStack := Stack new.
	
	regex do: [ :aCharacter | 
		escapeNext ifTrue: [
			escapeNext := false.
			postfixRegex nextPut: (aCharacter caseOf: {
				[$n] -> [Character lf].
				[$r] -> [Character cr].
				[$t] -> [Character tab].
			} otherwise: [aCharacter]).
			numAtoms := numAtoms + 1.
		] ifFalse: [
			inBrackets ifTrue: [
				aCharacter caseOf: {
					[$]] -> [
						postfixRegex nextPutAll: (String new: numAtomsInBrackets-1 withAll: $]).
						negatedBrackets ifTrue: [
							postfixRegex nextPut: $^.
						].					
						inBrackets := false.
						negatedBrackets := false.
						numAtomsInBrackets := 0.
						numAtoms := numAtoms + 1.
					].
					[$-] -> [
						fillingCharacterRange := true.
					].
					[$\] -> [
						postfixRegex nextPut: $\.
						escapeNext := true.
					].
				} otherwise: [
					fillingCharacterRange ifTrue: [
						fillingCharacterRange := false.
						characterRange :=  ((characterRangeStart asInteger + 1) asCharacter to: aCharacter).
						numAtomsInBrackets := numAtomsInBrackets + characterRange size.
						postfixRegex nextPutAll: characterRange.
					] ifFalse: [
						(aCharacter = $^ and: [numAtomsInBrackets = 0]) ifTrue: [
							negatedBrackets := true.
						] ifFalse: [
							numAtomsInBrackets := numAtomsInBrackets + 1.
							postfixRegex nextPut: aCharacter.	
							characterRangeStart := aCharacter.
						]
					]
				].
			] ifFalse: [
				aCharacter caseOf: {
					[$(] -> [
						numAtoms > 1 ifTrue: [
							numAtoms := numAtoms - 1.
							postfixRegex nextPut: $..
						].
						parenthesisStack push: {numAlternatives . numAtoms}.
						numAlternatives := 0.
						numAtoms := 0.
					].
					[$)] -> [
						parenthesisStack isEmpty ifTrue: [ Error signal: 'Error: ")" before "("' ].
						numAtoms = 0 ifTrue: [ Error signal: 'Error: empty group??!' ].
						
						postfixRegex nextPutAll: (String new: numAtoms-1 withAll: $.).
						postfixRegex nextPutAll: (String new: numAlternatives withAll: $|).
						currentGroup := parenthesisStack pop.
						numAlternatives := currentGroup first.
						numAtoms := currentGroup second + 1.
					].
					[$|] -> [
						numAtoms = 0 ifTrue: [ Error signal: 'Error: first alternative is empty' ].
						
						postfixRegex nextPutAll: (String new: numAtoms-1 withAll: $.).
						numAtoms := 0.
						numAlternatives := numAlternatives + 1.
					].
					[$?] -> [
						numAtoms = 0 ifTrue: [ Error signal: 'Error: nothing to optionally skip' ].
						
						postfixRegex nextPut: $?.
					].
					[$*] -> [
						numAtoms = 0 ifTrue: [ Error signal: 'Error: nothing to repeat' ].
						
						postfixRegex nextPut: $*.
					].
					[$+] -> [
						numAtoms = 0 ifTrue: [ Error signal: 'Error: nothing to repeat' ].
						
						postfixRegex nextPut: $+.
					].
					[$[] -> [
						inBrackets := true.
					].
					[$.] -> [
						numAtoms > 1 ifTrue: [
							numAtoms := numAtoms - 1.
							postfixRegex nextPut: $..
						].
						postfixRegex nextPut: Character cr.
						postfixRegex nextPut: Character lf.
						postfixRegex nextPutAll: ']^'.
						numAtoms := numAtoms + 1.
					].
				} otherwise: [
					numAtoms > 1 ifTrue: [
						numAtoms := numAtoms - 1.
						postfixRegex nextPut: $..
					].
					aCharacter caseOf: {
						[$.] -> [
							postfixRegex nextPut: Character cr.
							postfixRegex nextPut: Character lf.
							postfixRegex nextPutAll: ']^'.
							numAtoms := numAtoms + 1.
						].
						[$\] -> [
							postfixRegex nextPut: $\.
							escapeNext := true.
						]
					} otherwise: [
						postfixRegex nextPut: aCharacter.
						numAtoms := numAtoms + 1.
					].
				].		
			].		
		].
	].

	parenthesisStack isEmpty ifFalse: [ Error signal: 'Error: missing closing parenthesis'].
	postfixRegex nextPutAll: (String new: numAtoms-1 withAll: $.).
	postfixRegex nextPutAll: (String new: numAlternatives withAll: $|).

	^postfixRegex contents asString