private
toPostfixNotation: pattern
	| postfixPattern currentGroup parenthesisStack numAlternatives numAtoms numAtomsInBrackets inBrackets |
	numAlternatives := 0.
	numAtoms := 0.
	numAtomsInBrackets := 0.
	inBrackets := false. "e.g. [abc]"
	
	postfixPattern := AttributedTextStream new.
	parenthesisStack := Stack new.
	
	pattern do: [ :aCharacter | 
		inBrackets ifTrue: [
			aCharacter = $] ifTrue: [
				postfixPattern nextPutAll: (String new: numAtomsInBrackets-1 withAll: $]).
				inBrackets := false.
				numAtomsInBrackets := 0.
				numAtoms := numAtoms + 1.
			] ifFalse: [
				numAtomsInBrackets := numAtomsInBrackets + 1.
				postfixPattern nextPut: aCharacter.
			].
		] ifFalse: [
			aCharacter caseOf: {
				[$(] -> [
					numAtoms > 1 ifTrue: [
						numAtoms := numAtoms - 1.
						postfixPattern nextPut: $..
					].
					parenthesisStack push: {numAlternatives . numAtoms}.
					numAlternatives := 0.
					numAtoms := 0.
				].
				[$)] -> [
					parenthesisStack isEmpty ifTrue: [ Error signal: 'Error: ")" before "("' ].
					numAtoms = 0 ifTrue: [ Error signal: 'Error: empty group??!' ].
					
					postfixPattern nextPutAll: (String new: numAtoms-1 withAll: $.).
					postfixPattern nextPutAll: (String new: numAlternatives withAll: $|).
					currentGroup := parenthesisStack pop.
					numAlternatives := currentGroup first.
					numAtoms := currentGroup second + 1.
				].
				[$|] -> [
					numAtoms = 0 ifTrue: [ Error signal: 'Error: first alternative is empty' ].
					
					postfixPattern nextPutAll: (String new: numAtoms-1 withAll: $.).
					numAtoms := 0.
					numAlternatives := numAlternatives + 1.
				].
				[$?] -> [
					numAtoms = 0 ifTrue: [ Error signal: 'Error: nothing to optionally skip' ].
					
					postfixPattern nextPut: $?.
				].
				[$*] -> [
					numAtoms = 0 ifTrue: [ Error signal: 'Error: nothing to repeat' ].
					
					postfixPattern nextPut: $*.
				].
				[$+] -> [
					numAtoms = 0 ifTrue: [ Error signal: 'Error: nothing to repeat' ].
					
					postfixPattern nextPut: $+.
				].
				[$[] -> [
					inBrackets := true.
				].
			} otherwise: [
				numAtoms > 1 ifTrue: [
					numAtoms := numAtoms - 1.
					postfixPattern nextPut: $..
				].
				postfixPattern nextPut: aCharacter.
				numAtoms := numAtoms + 1.
			].		
		].
	].

	parenthesisStack isEmpty ifFalse: [ Error signal: 'Error: missing closing parenthesis'].
	postfixPattern nextPutAll: (String new: numAtoms-1 withAll: $.).
	postfixPattern nextPutAll: (String new: numAlternatives withAll: $|).

	^postfixPattern contents asString