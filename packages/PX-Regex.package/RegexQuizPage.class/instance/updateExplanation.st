as yet unclassified
updateExplanation

	[explanation
		removeAllMorphs;
		add: (RegexExplanationView new
			forRegex: regexArea text;
			position: explanation position)] on: Error do: [:e | e return: false]