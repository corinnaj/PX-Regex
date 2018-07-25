updating
forRegex: aRegexString

	self displayExplanation: ''.

	[self container
		add: (RegexViewBuilder new
			forRegex: aRegexString;
			position: self container position;
			when: #displayExplanation send: #displayExplanation: to: self);
		expand: true;
		align: #(center top)] on: Error do: [:e |
			self displayExplanation: self invalidRegexText.
			e return: false].