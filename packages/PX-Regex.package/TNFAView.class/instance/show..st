as yet unclassified
show: aTNFA
	| stateRows rows |
	tnfa := aTNFA.
	
	self removeAllMorphs.
	
	stateRows := { {} asOrderedCollection } asOrderedCollection.
	self put: tnfa initialState into: stateRows.
	
	rows := stateRows collect: [ :stateRow | PHPage row addAll: (stateRow collect: [ :state | PHButton label: state trigger asString])].
	
	self addAll: rows.
	
	self openInWindowLabeled: 'Thompson NFA'.