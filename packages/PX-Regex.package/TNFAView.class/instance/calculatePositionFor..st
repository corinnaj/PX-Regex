private
calculatePositionFor: gridCoordinates

	^ self position + 
		(gridCoordinates x - 1 * (self stateExtent x / 2 + self transitionLength)
		@ (gridCoordinates y - 1 * self cellExtent y + self offset)).