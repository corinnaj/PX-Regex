private
recordingRangeDo: aSymbol

	| part start |

	start := input position.
	part := self perform: aSymbol.
	part sourceRange: (start to: input position).
	^ part