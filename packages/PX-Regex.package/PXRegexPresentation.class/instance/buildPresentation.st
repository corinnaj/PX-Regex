initialization
buildPresentation

	^ self
		substringAndNFA;
		intro;
		decisionTree1;
		decisionTree2;
		inspector;
		addSlide: self nfaSlide;
		"addSlide: self uglyDfaPage;"
		ourTools;
		yourself