A TStatePointer points at a TState or, during construction, at nil. It is only needed to implement Russ Cox' C implementation of Thompson's construction in Smalltalk (see TNFA class comment for more).

Instance Variables
	state:		TState or nil

state
	- points at a TSTate. May be nil during construction (TNFA >> forPostfixRegex:), but will be properly connected to a TState before that terminates (using TState >> patch:).
