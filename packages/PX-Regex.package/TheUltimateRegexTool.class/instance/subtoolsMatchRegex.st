as yet unclassified
subtoolsMatchRegex

	substringTextArea matchRegex.
	explanationView container removeAllMorphs.
	explanationView forRegex: self regex.
	
	self regex ifNotEmpty: [
		self matchTestlines.
		nfaView show: (TNFA forRegex: self regex).
		nfaView position: nfaContainer position]