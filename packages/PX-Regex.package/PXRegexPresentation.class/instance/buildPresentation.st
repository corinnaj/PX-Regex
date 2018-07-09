initialization
buildPresentation

	^ self
		substringAndNFA;
		intro;
		addSlide: self matchAllStringsQuiz0;
		decisionTree1;
		decisionTree2;
		decisionTree3;
		inspector;
		addSlide: self nfaSlide;
		"addSlide: self uglyDfaPage;"
		ourTools;
		yourself