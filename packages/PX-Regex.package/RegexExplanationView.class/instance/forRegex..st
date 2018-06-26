as yet unclassified
forRegex: aRegexString

	self container
		add: (RegexViewBuilder new
			forRegex: aRegexString;
			when: #displayExplanation send: #displayExplanation: to: self);
		calculateSizeForWidth: 0;
		expand: true;
		align: #(center top)