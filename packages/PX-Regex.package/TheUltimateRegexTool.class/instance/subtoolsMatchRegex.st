as yet unclassified
subtoolsMatchRegex

	[
		substringTextArea matchRegex.
		explanationView container removeAllMorphs.
		explanationView forRegex: self regex.
	
		self matchTestlines.
		nfaView show: (TNFA forRegex: self regex).
		nfaView position: nfaContainer position.
		regexArea color: Color white.
	] on: Error do: [
		nfaView removeAllMorphs.
		regexArea color: Color yellow]