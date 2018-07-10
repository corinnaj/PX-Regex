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
		empty;
		literallyTobias;
		literallyTobiasWithRegex;
		inspectorTobias;
		inspectorTobias2;
		transitionDecisionsToNfa;
		"addSlide: self uglyDfaPage;"
		buildPresentationAutomata;
		empty;
		ourTools;
		yourself