as yet unclassified
printOn: stream

	super printOn: stream.
	stream
		nextPut: $(;
		print: self identityHash;
		nextPutAll: ', ';
		print: (next ifNotNil: [ next identityHash ]);
		nextPut: $)