initialization
buildPresentation

	^ self
		intro;
		inspector;
		inspector2;
		aOptional;
		decisionTree1;
		decisionTree2;
		decisionTree3;
		aAll;
		"addSlide: self uglyDfaPage;"
		buildPresentationAutomata;
		ourTools;
		yourself