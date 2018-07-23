actions
checkRegex

	((stringEntry text) matchesRegex: (regexEntry text))
		ifTrue: [self topLevel displayNotification: 'String matches Regex' type: #success]
		ifFalse: [self topLevel displayNotification: 'String does not match Regex' type: #danger]