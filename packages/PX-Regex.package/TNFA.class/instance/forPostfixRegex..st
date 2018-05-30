private
forPostfixRegex: postfixPattern
	"all characters are taken literally except: . (concatenation), | (alternation), ? (optional), * (at least 0 repetitions), + (at least 1 repetition)"
	"expects postfix notation: 'ab.c|' instead of 'ab|c' and 'ab.a?.*' instead of '(aba?)*'"
	| stack fragment fragment2 state |
	stack := Stack new.
	postfixPattern do: [ :character | 
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
				state := TStateSplit new out: fragment start; out2: nil; yourself.
				stack push: (TFragment new 
					start: state; 
					outs: fragment outs , {state outs second}; 
					yourself).
			].
			[$*] -> [
				fragment := stack pop.
				state := TStateSplit new out: fragment start; out2: nil; yourself.
				state patch: fragment outs.
				stack push: (TFragment new
					start: state; 
					outs: state outs; 
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
	