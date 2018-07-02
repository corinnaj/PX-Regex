private
calculateCenterFor: gridCoordinates
	^(self stateDiameter / 2) asPoint + ((gridCoordinates - (1@1)) * self cellSize)