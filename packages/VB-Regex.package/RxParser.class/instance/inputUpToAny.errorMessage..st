private
inputUpToAny: aDelimiterString errorMessage: aString
	"Accumulate input stream until any character from <aDelimiterString> is encountered
	and answer the accumulated chars as String, not including the matched characters from the
	<aDelimiterString>. Signal error if end of stream is encountered,
	passing <aString> as the error description."

	| accumulator |
	accumulator := WriteStream on: (String new: 20).
	[ lookahead == nil or: [ aDelimiterString includes: lookahead ] ]
		whileFalse: [
			accumulator nextPut: lookahead.
			self next ].
	lookahead ifNil: [ self signalParseError: aString ].
	^accumulator contents