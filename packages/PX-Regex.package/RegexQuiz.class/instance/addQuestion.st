initialize-release
addQuestion 

	self pages allButLastDo: [:p | p add: (PHLabel text: 'Which of these strings matches the following regex?') at: 1]