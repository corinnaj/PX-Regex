construction
forRegex: pattern
	| stack fragment fragment2 state |
	stack := Stack new.
	pattern do: [ :character | 
		character caseOf: {
			[$.] -> [
				fragment2 := stack pop.
				fragment := stack pop.
				fragment2 start patch: fragment outs.
				stack push: (TFragment new 
					start: fragment start; 
					outs: fragment2 outs; 
					yourself).
			].
			[$|] -> [
				fragment2 := stack pop.
				fragment := stack pop.
				state := TStateSplit new out: fragment start; out2: fragment2 start; yourself.
				stack push: (TFragment new 
					start: state; 
					outs: fragment outs , fragment2 outs; 
					yourself).
			].
			[$?] -> [
				fragment := stack pop.
				stack push: (TFragment new 
					start: (TStateSplit new out: fragment start; out2: nil; yourself); 
					outs: fragment outs; 
					yourself).
			].
			[$*] -> [
				fragment := stack pop.
				state := TStateSplit new out: fragment start; out2: nil; yourself.
				state patch: fragment outs.
				stack push: (TFragment new 
					start: state; 
					outs: fragment outs; 
					yourself).
			].
			[$+] -> [
				fragment := stack pop.
				state := TStateSplit new out: fragment start; out2:nil; yourself.
				state patch: fragment outs.
				stack push: (TFragment new 
					start: fragment start; 
					outs: state outs; 
					yourself).
			].
		} otherwise: [
			state := TStateLiteral new trigger: character; yourself.
			stack push: (TFragment new start: state; outs: state outs; yourself).
		].
	].
	fragment := stack pop.
	TStateMatch new patch: fragment outs.
	initialState := fragment start.
	