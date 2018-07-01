as yet unclassified
subtoolsMatchRegex

	[
		substringTextArea matchRegex.
		explanationView container removeAllMorphs.
		explanationView forRegex: self regex.
	
		self matchTestlines.
		nfaView show: (TNFA forRegex: self regex).
		nfaView position: nfaContainer position
	] on: Error do: [#()]