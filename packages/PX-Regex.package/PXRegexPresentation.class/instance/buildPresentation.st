initialization
buildPresentation

	^ self
		intro;
		inspectorBefore;
		inspector;
		inspector2Before;
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