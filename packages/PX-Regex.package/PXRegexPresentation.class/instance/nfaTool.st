tool slides
nfaTool

	| tool x |
	tool := TheUltimateRegexTool new
		addApplicationStyles: (PHStyle forAny fontSize: 30).
	
	tool leftColumn visible: false.
	tool efficiencyArea visible: false.
	x := tool substringArea.
	x addApplicationStyles: (PHStyle forAny fontSize: 30).

	(self addSlideWithCenterBoxAndTitle: 'Dynamic NFA')
		add: tool;
		add: x