initialization
buildPresentation

	^ self
		intro;
		decisionTree1;
		decisionTree2;
		decisionTree3;
		inspector;
		"addSlide: self uglyDfaPage;"
		buildPresentationAutomata;
		ourTools;
		yourself