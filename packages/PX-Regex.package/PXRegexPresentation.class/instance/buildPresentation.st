initialization
buildPresentation

	^ self
		intro;
		addSlide: self matchAllStringsQuiz0;
		decisionTree1;
		decisionTree2;
		decisionTree3;
		inspector;
		"addSlide: self uglyDfaPage;"
		buildPresentationAutomata;
		ourTools;
		yourself