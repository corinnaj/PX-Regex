as yet unclassified
updateExplanation

	[explanation
		removeAllMorphs;
		add: (RegexExplanationView new
			forRegex: regexArea text;
			minSize: self extent x @ 0;
			position: explanation position)] on: Error do: [:e | e return: false]