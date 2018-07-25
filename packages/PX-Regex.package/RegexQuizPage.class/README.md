A RegexQuizPage can be used in similar fashion to the PHQuizPage. Instead of buttons that hide true or false answers, a set of strings that should match the regex and a set of strings which should not are given. The goal is finding one regex so that all examples turn green.

Open an example using these pages by executing: RegexQuiz exampleFindRegex.

Instance Variables
	explanation: PHWidget that contains the explanation for the current regex.
	matches: Array of strings that should match.
	matchesArea: PHWidget that contains all alerts for string that should match.
	matchesNot: Array of strings that should not match.
	matchesNotArea: PHWidget that contains all alerts for string that should match.
	regexArea:	 TextArea that contains the regex entered by the user.