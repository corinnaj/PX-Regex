initialization
buildPresentation

	^ self
		nfaSlide4Simulation;
		intro;
		addSlide: self matchAllStringsQuiz0;
		decisionTree1;
		decisionTree2;
		decisionTree3;
		inspector;
		"addSlide: self uglyDfaPage;"
		ourTools;
		yourself