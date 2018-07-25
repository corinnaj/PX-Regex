A TNFAView is a visual representation of a TNFA.

Instance Variables
	activeStates:		Collection of Collections containing TStates
	isHighlightingSubmatches:		bool
	stateToCircle:		Dict from TState to CircleMorph
	tnfa:		TNFA

activeStates
	- activeStates at: i is a Collection of TStates that are active (meaning the TNFA is in all these states) after reading i characters of the matchString (see TNFA >> s(ubmatchesS)?imulateOn: ).

isHighlightingSubmatches
	- determines whether submatches are highlighted (-> the TNFA will always remain in the initialState) or not (see TNFA >> submatchesSimulateOn: vs. TNFA >> simulateOn:)

stateToCircle
	- maps a TState to a circle, so it can be highlighted, eg. by assigning a color

tnfa
	- the TNFA this TNFAView is representing
