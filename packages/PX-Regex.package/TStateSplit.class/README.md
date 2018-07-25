A TStateSplit is a TState with no trigger (-> epsilon transitions) and exactly two outgoing edges. Whenever a TNFA enters a TStateSplit, it immediately leaves it again to enter both TStates out and out2.

Instance Variables
	isAlternation:		bool
	out:		TStatePointer 
	out2:		TStatePointer 

isAlternation
	- whether this corresponds to a regex pipe (eg. ab|cd). only relevant for visualization (see TNFAView)

out
	- the first outgoing edge of this TState

out2
	- the second outgoing edge of this TState
