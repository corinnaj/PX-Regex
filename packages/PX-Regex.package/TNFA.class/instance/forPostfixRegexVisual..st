private
forPostfixRegexVisual: postfixRegex
	"all characters are taken literally except: . (concatenation), | (alternation), ? (optional), * (at least 0 repetitions), + (at least 1 repetition), ] (concatination for character sets []), ^ (negating [])"
	"expects postfix notation: 'ab.c|' instead of 'ab|c' and 'ab.a?.*' instead of '(aba?)*'"
	| stack fragment fragment2 state triggerSet targetMorph stackToShow col stringUpToHere |
	targetMorph := PHPage row.
	stringUpToHere := AttributedTextStream new.
	
	stack := Stack new.
	postfixRegex do: [ :character | 
		(stack isEmpty not and: [stack top start isBackslash]) ifTrue: [
			stack pop.
			state := TStateLiteral new trigger: {character} asSet; yourself.
			stack push: (TFragment new start: state; outs: state outs; yourself).
		] ifFalse: [
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
					triggerSet := fragment start trigger , fragment2 start trigger.
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
				state := TStateLiteral new trigger: {character} asSet; yourself.
				stack push: (TFragment new start: state; outs: state outs; yourself).
			].
		].
	
		stringUpToHere nextPut: character.
		stackToShow := stack veryDeepCopy.
		col := PHPage column add: (PHWidget spacer); color: Color lightGray; yourself.
		[stackToShow isEmpty not] whileTrue: [
			fragment := stackToShow pop.
			TStateMatch new patch: fragment outs.
			col add: (PHMorphContainer new add: (TNFAView new show: (TNFA new initialState: fragment start; yourself); yourself); yourself)].
		col 
			add: ((PHLabel text: stringUpToHere contents asString) pointSize: 40);
			add: ((PHLabel text: ' ') pointSize: 10).
		targetMorph add: col.
		
	].
	fragment := stack pop.
	TStateMatch new patch: fragment outs.
	initialState := fragment start.
	

^PHScrollArea new policy: #(scroll scroll); content: targetMorph