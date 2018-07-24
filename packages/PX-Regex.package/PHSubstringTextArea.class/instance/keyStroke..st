event handling
keyStroke: anEvent

	| index |
	
	super keyStroke: anEvent.
	index := self cursor.
	self triggerEvent: #characterHovered with: index