stepping and presenter
startStepping

	self
		startStepping: #incrementAfterHover
		at: Time millisecondClockValue
		arguments: nil
		stepTime: self stepSpeed