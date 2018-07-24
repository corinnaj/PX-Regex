event handling
mouseMove: anEvent

	| index |
	super mouseMove: anEvent.
	index := (self cursorFromEvent: anEvent).
	self triggerEvent: #characterHovered with: index.