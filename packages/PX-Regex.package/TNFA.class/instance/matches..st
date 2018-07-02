simulation
matches: aString
	^(self simulateOn: aString) last anySatisfy: [ :state | state isMatch ]