private
put: state into: rows
	"recursively put states into rows. Add a new row for each alternation (|)."
	rows last add: state.
	state isAlternation ifTrue: [
		self put: state outs first state into: rows.
		rows add: {} asOrderedCollection.
		self put: state outs second state into: rows.
	] ifFalse: [
		state outs do: [ :statePointer | self put: statePointer state into: rows].
	].