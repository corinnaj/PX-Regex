initialization
buildPresentation

	^ self
		intro;
		addSlide: self matchAllStringsQuiz0;
		addSlide: self nfaSlide;
		inspector;
		"addSlide: self uglyDfaPage;"
		ourTools;
		yourself