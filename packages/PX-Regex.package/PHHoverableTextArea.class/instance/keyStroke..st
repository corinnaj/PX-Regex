as yet unclassified
keyStroke: anEvent

	| index key newIndex |
	
	super keyStroke: anEvent.
	index := (self cursorFromEvent: anEvent).
	key := anEvent keyString.
	
	(key = '<left>' or: [key = '<backspace>'])
		ifTrue: [newIndex := index - 1]
		ifFalse: [newIndex :=  index + 1].
		
	Transcript show: 'old: ', index, 'new: ', newIndex; cr.
	self triggerEvent: #characterHovered with: newIndex