as yet unclassified
resizeToFit

	| maxX maxY minX minY |
	minX := 0.
	minY := 0.
	maxX := 0.
	maxY := 0.
	self submorphsDo: [:m |
		m left < minX ifTrue: [minX := m left].
		m right > maxX ifTrue: [maxX := m right].
		m top < minY ifTrue: [minY := m top].
		m bottom > maxY ifTrue: [maxY := m bottom]].
	
	self extent: (maxX - minX) @ (maxY - minY).
	self submorphsDo: [:m | m position: m position - (minX @ 0)]