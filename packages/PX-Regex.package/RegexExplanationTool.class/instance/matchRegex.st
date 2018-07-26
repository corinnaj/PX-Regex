matching
matchRegex

	container removeAllMorphs.
		
	[(self regex notEmpty) ifTrue: [
		container add: (RegexExplanationView new
			forRegex: self regex;
			minSize: (self width - self padding directionsAsPoint x) @ 0;
			position: container position)
		]] on: Error do: [ #() ].
	
	(self submorphs allButFirst: 3) do: [:row |
		row submorphs second visible: true; removeAllMorphs.
		([row firstSubmorph text matchesRegex: regex text] on: Error do: [:e | e return: false])
			ifTrue: [row submorphs second addStyleClass: #success; removeStyleClass: #danger; add: PHIcon iconCheck]
			ifFalse: [row submorphs second addStyleClass: #danger; removeStyleClass: #success; add: PHIcon iconRemove]]