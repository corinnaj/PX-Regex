private
put: state into: rows positionDict: stateToPosition
	"recursively put states into rows. Add a new row for each alternation (|)."
	
	stateToPosition at: state ifAbsent: [
		rows last add: state.
		stateToPosition
			at: state
			put: (self calculatePositionFor: rows).

		state isAlternation
			ifTrue: [
				self
					put: state outs first state
					into: rows
					positionDict: stateToPosition.
				rows add: {} asOrderedCollection.
				self
					put: state outs second state
					into: rows
					positionDict: stateToPosition.
			] ifFalse: [
				state outs do: [ :statePointer | self
						put: statePointer state
						into: rows
						positionDict: stateToPosition].
			].
	]