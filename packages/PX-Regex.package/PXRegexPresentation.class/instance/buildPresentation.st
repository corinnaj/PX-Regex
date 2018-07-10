initialization
buildPresentation

	^ self
		intro;
		addSlide: self matchAllStringsQuiz0;
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