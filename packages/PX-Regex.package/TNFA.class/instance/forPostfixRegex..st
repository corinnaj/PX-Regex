private
forPostfixRegex: postfixPattern
	"all characters are taken literally except: . (concatenation), | (alternation), ? (optional), * (at least 0 repetitions), + (at least 1 repetition), ] (like concatination for alternative groups []), ^ (negating [])"
	"expects postfix notation: 'ab.c|' instead of 'ab|c' and 'ab.a?.*' instead of '(aba?)*'"
	| stack fragment fragment2 state triggerSet |
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
			[$|] -> [
				fragment2 := stack pop.
				fragment := stack pop.
				state := TStateSplit new out: fragment start; out2: fragment2 start; isAlternation: true; yourself.
				stack push: (TFragment new 
					start: state; 
					outs: fragment outs , fragment2 outs; 
					yourself).
			].
			[$]] -> [
				fragment2 := stack pop.
				fragment := stack pop.
				triggerSet := fragment start trigger 
					addAll: fragment2 start trigger; 
					yourself.
				state := TStateLiteral new 
					trigger: triggerSet;
					yourself.
				stack push: (TFragment new 
					start: state; 
					outs: state outs; 
					yourself).
			].
			[$^] -> [
				stack top start isNegated: true.
			].
		} otherwise: [
			state := TStateLiteral new trigger: (Set new add: character; yourself); yourself.
			stack push: (TFragment new start: state; outs: state outs; yourself).
		].
	].
	fragment := stack pop.
	TStateMatch new patch: fragment outs.
	initialState := fragment start.
	