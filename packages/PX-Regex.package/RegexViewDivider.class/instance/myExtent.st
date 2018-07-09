constants
myExtent

	| endRow startRow width |
	
	startRow := self row.
	endRow := self row.
	width := 0.

	builder submorphsBehind: self do: [:c |
		c isDivider ifTrue: [ ^ width @ (endRow - startRow + 1 * c extent y)].
		width := width + c extent x.
		endRow := startRow max: c row].
	
	^ 0 asPoint