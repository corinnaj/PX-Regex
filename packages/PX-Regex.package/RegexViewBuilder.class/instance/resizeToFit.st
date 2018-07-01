layout
resizeToFit 

	| first |
	self submorphs ifEmpty: [^ self].

	first := self submorphs first.
	first extent: first myExtent.
	first position: 0 @ first row * first sizeY.
	
	self submorphs allButFirstDo:
		[:s |
			s extent: s myExtent.
			s position: (s submorphBefore displayExtent x + s submorphBefore position x) @ (s sizeY *  s row)].
		
	self submorphsDo: [:s | s isDivider ifTrue: [s goBehind]].
	self bounds: (Rectangle merging: submorphs)