A TStateLiteral is TState which is triggered by a set of characters in which case the corresponding TNFA will enter the TState out (which is an instance varable).

Instance Variables
	isNegated:		bool
	out:		TStatePointer
	trigger:		Set of characters

isNegated
	- whether this triggers when a character in trigger is read, or when when a character NOT in trigger is read. corresponds to the regex constructs [abc] vs. [^abc]

out
	- points at the TState that will be active when this triggers. May point to nil ONLY during TNFA construction

trigger
	- the set of characters that will trigger a transition from this TState to out
