tool slides
nfaTool

	| tool x |
	tool := TheUltimateRegexTool new
		addApplicationStyles: (PHStyle forAny fontSize: 30).
	
	tool leftColumn visible: false.
	tool efficiencyArea visible: false.
	x := tool substringArea.
	x addApplicationStyles: (PHStyle forAny fontSize: 30).

	self addSlideWithCenterBox
		add: tool;
		add: x