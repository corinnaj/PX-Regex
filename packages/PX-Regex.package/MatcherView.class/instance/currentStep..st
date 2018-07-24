stepping and presenter
currentStep: r

	^ PHPage row
		add: (PHIcon perform: r first);
		add: (PHLabel text: r second)