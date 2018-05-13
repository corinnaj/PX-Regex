as yet unclassified
matchRegex

	container
		removeAllMorphs;
		add: (RegexViewBuilder new
			forRegex: regex text;
			position: container position;
			when: #displayExplanation send: #displayExplanation: to: self).
	
	(self submorphs allButFirst: 4) do: [:row |
		([row firstSubmorph text matchesRegex: regex text] on: Error do: [:e | e return: false])
			ifTrue: [row submorphs second visible: true; removeAllMorphs; addStyleClass: #success; removeStyleClass: #danger; add: PHIcon iconCheck]
			ifFalse: [row submorphs second visible: true; removeAllMorphs; addStyleClass: #danger; removeStyleClass: #success; add: PHIcon iconRemove]]