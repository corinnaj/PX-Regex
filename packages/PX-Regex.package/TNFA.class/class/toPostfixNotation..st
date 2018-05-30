private
toPostfixNotation: pattern
	| postfixPattern currentGroup parenthesisStack numAlternatives numAtoms |
	numAlternatives := 0.
	numAtoms := 0.
	postfixPattern := ''.
	parenthesisStack := Stack new.
	
	pattern do: [ :aCharacter | 
		aCharacter caseOf: {
			[$(] -> [
				numAtoms > 0 ifTrue: [
					numAtoms := numAtoms - 1.
					postfixPattern := postfixPattern , $..
				].
				parenthesisStack push: {numAlternatives . numAtoms}.
				numAlternatives := 0.
				numAtoms := 0.
			].
			[$)] -> [
				parenthesisStack isEmpty ifTrue: [ Error signal: 'Error: ")" before "("' ].
				numAtoms = 0 ifTrue: [ Error signal: 'Error: empty group??!' ].
				
				postfixPattern := postfixPattern , (String new: numAtoms-1 withAll: $.).
				postfixPattern := postfixPattern , (String new: numAlternatives withAll: $|).
				currentGroup := parenthesisStack pop.
				numAlternatives := currentGroup first.
				numAtoms := currentGroup second + 1.
			].
			[$|] -> [
				numAtoms = 0 ifTrue: [ Error signal: 'Error: first alternative is empty' ].
				
				postfixPattern := postfixPattern , (String new: numAtoms-1 withAll: $.).
				numAtoms := 0.
				numAlternatives := numAlternatives + 1.
			].
			[$?] -> [
				numAtoms = 0 ifTrue: [ Error signal: 'Error: nothing to optionally skip' ].
				
				postfixPattern := postfixPattern , $?.
			].
			[$*] -> [
				numAtoms = 0 ifTrue: [ Error signal: 'Error: nothing to repeat' ].
				
				postfixPattern := postfixPattern , $*.
			].
			[$+] -> [
				numAtoms = 0 ifTrue: [ Error signal: 'Error: nothing to repeat' ].
				
				postfixPattern := postfixPattern , $+.
			].
		} otherwise: [
			numAtoms > 1 ifTrue: [
				numAtoms := numAtoms - 1.
				postfixPattern := postfixPattern , $..
			].
			postfixPattern := postfixPattern , aCharacter.
			numAtoms := numAtoms + 1.
		].		
	].

	parenthesisStack isEmpty ifFalse: [ Error signal: 'Error: missing closing parenthesis'].
	postfixPattern := postfixPattern , (String new: numAtoms-1 withAll: $.).
	postfixPattern := postfixPattern , (String new: numAlternatives withAll: $|).

	^postfixPattern