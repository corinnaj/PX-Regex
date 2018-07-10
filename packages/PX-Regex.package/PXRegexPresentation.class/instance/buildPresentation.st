initialization
buildPresentation

	^ self
		intro;
		inspector;
		inspector2;
		aOptional;
		decisionTree1;
		decisionTree2;
		aAll;
		decisionTree3;
		literallyTobias;
		inspectorTobias;
		"addSlide: self uglyDfaPage;"
		buildPresentationAutomata;
		empty;
		ourTools;
		yourself