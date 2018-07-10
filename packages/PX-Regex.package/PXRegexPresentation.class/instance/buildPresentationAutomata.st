automata slides
buildPresentationAutomata

	^ self 
		dfaSlide1; 
		dfaSlide2; 
		nfaSlide1DFASample; 
		nfaSlide21NFASample;
		nfaSlide22NFASample;
		nfaSlide3SimulationDescription; 
		nfaSlide4Simulation;
		nfaSlide51CrazyDFA;
		nfaSlide52CrazyDFA;
		nfaSlide6Properties;
		nfaSlide7ConstructionOverview;
		nfaSlide8RegexToPostfixRegex;
		nfaSlide9PostfixRegexToNFA;
		summary 