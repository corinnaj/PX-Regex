as yet unclassified
buildMatchAndNotMatchQuiz0

	| page1 page2 page3 |

	page1 := RegexQuizPage new
		matches: {#abb. #abc. #abz}; matchesNot: {'ab+'. #ab. #ab1}.
	page2 := RegexQuizPage new
		matches: {#asd.#asasdas. #asd12s}; matchesNot: {#abc. #abds. #as}.
	page3 := PHLabel bold: 'Quiz completed!'.

	^PHQuiz new pages: {page1. page2. page3}; currentPageIndex: 1
