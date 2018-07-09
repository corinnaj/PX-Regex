tool slides
nfaTool

	| tool x |
	tool := TheUltimateRegexTool new.
	
	tool leftColumn visible: false.
	tool efficiencyArea visible: false.
	x := tool substringArea.
	

	self addSlideWithCenterBox
		add: tool;
		add: x