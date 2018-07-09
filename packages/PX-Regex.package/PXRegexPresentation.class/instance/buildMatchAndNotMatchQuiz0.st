intro
buildMatchAndNotMatchQuiz0

	| page1 page2 |

	page2 := RegexQuizPage new
		matches: {'00'. '123'}; matchesNot: {'ab'. 'a1'}.

	page1 := RegexQuizPage new
		matches: {#ab. #b}; matchesNot: {#aab. #abbb}.

	^PHQuiz new pages: {page1. page2}; currentPageIndex: 1