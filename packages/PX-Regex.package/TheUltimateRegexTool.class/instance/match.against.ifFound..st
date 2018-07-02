as yet unclassified
match: aString against: aRegexString ifFound: aBlock

	| result |
	result := [aString matchesRegex: aRegexString] on: Error do: [ ^ nil].
	result ifTrue: [aBlock value: aRegexString].