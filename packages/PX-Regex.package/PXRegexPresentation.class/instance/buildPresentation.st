as yet unclassified
buildPresentation

	^ self
		addSlide: self introSlide;
		addSlide: self introJoke;
		addSlide: (self tutorialForSubstring: self tutorial0substringAreaText  regex: '');
		addSlide: (self tutorialForSubstring: self tutorial1substringAreaText  regex: self tutorial1regexAreaText);
		addSlide: (self tutorialForSubstring: self tutorial2substringAreaText  regex: self tutorial2regexAreaText);
		addSlide: self matchAndNotMatchQuiz0;
		addSlide: self matchAllStringsQuiz0;
		addSlide: self nfaSlide;
		workspace;
		yourself