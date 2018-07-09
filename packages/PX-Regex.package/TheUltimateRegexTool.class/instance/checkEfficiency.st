actions
checkEfficiency

	| string |
	string := efficiencyTextArea text.
	
	matcherContainer
		removeAllMorphs;
		add: (MatcherView newForRegex: self regex andString: string)
	
	
	
	