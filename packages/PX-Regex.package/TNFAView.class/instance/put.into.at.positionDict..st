private
put: state into: rows at: gridCoordinates positionDict: stateToPosition
	"recursively put states into rows. Add a new row for each alternation (|)."
	
	stateToPosition at: state ifAbsent: [
		rows last add: state.
		stateToPosition
			at: state
			put: (self calculatePositionFor: gridCoordinates).

		state isAlternation
			ifTrue: [
				self
					put: state outs first state
					into: rows
					at: gridCoordinates + (1@0)
					positionDict: stateToPosition.
				rows add: OrderedCollection new.
				self
					put: state outs second state
					into: rows
					at: gridCoordinates + (1@1)
					positionDict: stateToPosition.
			] ifFalse: [
				state outs do: [ :statePointer | self
						put: statePointer state
						into: rows
						at: gridCoordinates + (1@0)
						positionDict: stateToPosition].
			].
	].