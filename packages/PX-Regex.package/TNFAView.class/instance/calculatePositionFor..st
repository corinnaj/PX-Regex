private
calculatePositionFor: rows

	^ self position + 
		(rows last size - 1 * (self stateExtent x / 2 + self transitionLength)
		@ (rows size - 1 * self cellExtent y + self offset)).