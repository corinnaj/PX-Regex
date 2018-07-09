as yet unclassified
showTNFAFor: aRegexString

	self
		removeAllMorphs;
		show: (TNFA forRegex: aRegexString)