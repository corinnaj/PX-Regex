matching
buildView

	viewArea removeAllMorphs.
	
	[(self regex notEmpty) ifTrue: [
		viewArea add: (RegexViewBuilder new
			forRegex: self regex;
			position: viewArea position)
		]] on: Error do: [ #() ]