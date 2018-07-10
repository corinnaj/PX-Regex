as yet unclassified
initializeForRegex: aRegexString andString: aString

	| body header content |
	super initialize.
	
	self matchingString: aString.
	self matcher:aRegexString asRegex.
	inspector := StreamInspector new.
	counter := 0.
	stepSpeed := 250.
	self matcher matchesStream: (inspector matcher: self matcher; myGuy: (ReadStream on: aString)).
	
	content := (PHPage column
				addStyleClass: #noSpacing;
				addAll: (inspector record collectWithIndex: [:r :i |
					PHClickable new
						when: #hovered evaluate: [:b :e | b
							ifTrue: [self afterHover: r third atIndex: i]
							ifFalse: [self afterHover: 0 atIndex: i]];
						add: (self currentStep: r)])).
	
	body := (PHCollapsible new
		add: content;
		collapsed: true).
	
	header := PHCardHeader new
			add: (headerLabel := (PHLabel markup: '<b>Number of Steps total: ', inspector record size,  '</b>') visible: false);
			when: #clicked send: #toggleCollapsed to: body;
			yourself.
	
	self
		extent: 300 @ 400;
		add: (PHPage row
			add: (pos := PHLabel new);
			add: (stringLabel := PHLabel text: self matchingString);
			add: (PHWidget spacer);
			add: ((PHButton text: 'Start Stepping')
				when: #clicked send: #startStepping to: self;
				small));
		add: (currentStep := PHPage column);
		add: (PHCard new
			add: header;
			add: body)