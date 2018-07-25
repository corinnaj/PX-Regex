A TFragment is representing an incomplete NFA during Thompson's construction algorithm. It is incomplete because outgoing edges might not lead to a TState. These edges are saved in the instance variable outs. They have to be connected / "patched" (see TState >> patch:). TFragments are pushed onto a stack, popped and reassembled. See TNFA >> forPostfixRegex: for the mentioned algorithm.

Instance Variables
	outs:		Collection of TStatePointer
	start:		TState

outs
	- outgoing edges without a target TState they point at

start
	- the start TState of this fragment, analogue to TNFA >> initialState
