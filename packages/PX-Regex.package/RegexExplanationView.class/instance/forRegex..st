as yet unclassified
forRegex: aRegexString

	self
		add: (PHMorphContainer new
			add: (RegexViewBuilder new forRegex: aRegexString);
			calculateSizeForWidth: 0;
			expand: true;
			align: #(center top))