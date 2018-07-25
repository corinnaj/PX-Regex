matching
buildView

	viewArea removeAllMorphs.
	
	[(self regex notEmpty) ifTrue: [
		viewArea add: (RegexExplanationView new
			forRegex: self regex;
			minSize: self width @ 0;
			position: viewArea position)
		]] on: Error do: [ #() ]