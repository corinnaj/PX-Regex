private
calculateCenterFor: gridCoordinates

	^ self position + (self stateDiameter / 2) asPoint + ((gridCoordinates - (1@1)) * self cellSize)