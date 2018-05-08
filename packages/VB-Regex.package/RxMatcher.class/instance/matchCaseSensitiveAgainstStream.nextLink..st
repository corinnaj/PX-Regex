matching
matchCaseSensitiveAgainstStream: aStream nextLink: anRmxLink

	| next nextSample position |
	position := stream position.
	"The order of the stream reads is important. When aStream runs out of characters, we must not consume any character from stream, or else the next position will be skipped in stream."
	[ (nextSample := aStream next) == nil or: [ (next := stream next) == nil ] ] whileFalse: [
		nextSample == next ifFalse: [
			stream position: position.
			^false ] ].
	(nextSample == nil and: [ anRmxLink matchAgainst: self ]) ifTrue: [ ^true ].
	stream position: position.
	^false