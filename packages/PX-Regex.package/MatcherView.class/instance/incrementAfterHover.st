as yet unclassified
incrementAfterHover

	counter := counter + 1.
	
	counter > inspector record size ifTrue: [ 
		counter := 0.
		self stopSteppingSelector: #incrementAfterHover.
		self showMatch.
		^ self].
	
	self afterHover: (inspector record at:counter) third atIndex: counter.