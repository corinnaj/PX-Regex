match enumeration
matchingRangesIn: aString
	"Search aString repeatedly for the matches of the receiver.  Answer an OrderedCollection of ranges of each match (index of first character to: index of last character)."

	| result |
	result := OrderedCollection new.
	self
		matchesIn: aString 
		do: [ :match | 
			| streamPosition |
			result add: ((streamPosition := stream position) - match size + 1 to: streamPosition)].
	^result