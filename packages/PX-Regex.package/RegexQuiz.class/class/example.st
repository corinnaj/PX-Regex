examples
example

	| item1 item2 item3 item4 item5 page1 page2 page3 |
	item1 := PHQuizItem text: 'aaac' correct: false.
	item2 := PHQuizItem text: 'aaab' correct: true.
	item3 := PHQuizItem text: 'abbc' correct: false.
	item4 := PHQuizItem text: 'bc' correct: false.
	item5 := PHQuizItem text: 'abc' correct: true.

	page1 := PHQuizPage
		newForQuestion: 'a+bc?'
		answers: {item1. item2. item3. item4}.
	page2 := PHQuizPage
		newForQuestion: 'a+bc' 
		answers: {item3. item1. item5. item4}.
	page3 := PHLabel bold: 'Quiz completed!'.

	RegexQuiz  open pages: {page1. page2. page3}; currentPageIndex: 1