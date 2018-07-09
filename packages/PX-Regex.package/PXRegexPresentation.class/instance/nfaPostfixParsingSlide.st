as yet unclassified
nfaPostfixParsingSlide
	^PHPage column
		expand: true;
		add: (PHWidget spacer);
		add: ((PHLabel text: 
'stack := Stack new.
postfixPattern do: [ :character | 
	character caseOf: {
		"handle special characters..."
	} otherwise: [
		state := TStateLiteral new trigger: {character} asSet; yourself.
		stack push: (TFragment new start: state; outs: state outs; yourself).
	].
].
fragment := stack pop.
TStateMatch new patch: fragment outs.
initialState := fragment start.'
		)
			pointSize: 35;
			align: #(center center));
		add: (PHWidget spacer);
		yourself