layout
resizeToFit 

	self submorphs first position: 0 asPoint.
	self submorphs allButFirstDo: [:s | s position: (s submorphBefore extent x + s submorphBefore position x) @ 0].
	self bounds: (Rectangle merging: submorphs)