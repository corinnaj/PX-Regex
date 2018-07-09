as yet unclassified
initialize

	| matcher i |
	super initialize.
	
	matcher := 'x+ab' asRegex.
	i := StreamInspector new.
	matcher matchesStream: (i matcher: matcher; myGuy: (ReadStream on: 'xxxxxxxxxxa')).
	self
		add: (pos := PHLabel new);
		add: (PHScrollArea new add: (PHPage column
			addStyleClass: #noSpacing;
			addAll: (i record collect: [:r |
				PHClickable new
					when: #hovered evaluate: [:b :e | b ifTrue: [self afterHover: r third] ifFalse: [self afterHover: '']];
					add: (PHPage row
						add: (PHIcon perform: r first);
						add: (PHLabel text: r second))])))