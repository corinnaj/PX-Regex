initialize-release
initialize

	super initialize.
	
	matches := {}.
	matchesNot := {}.
	
	self
		add: (PHPage row
			add: (PHPage column
				add: (PHLabel text: 'Enter a regex that matches all of these:');
				add: (matchesArea := PHPage column));
			add: (PHPage column
				add: (PHLabel text: 'and none of these entries:');
				add: (matchesNotArea := PHPage column)));
		add: PHDivider new;
		add: (regexArea := PHTextArea new
			when: #changed send: #updateExplanation to: self;
			when: #changed send: #checkRegex to: self);
		add: (explanation := PHMorphContainer new
			visible: false;
			expand: true);
		add: (PHPage row
			align: #(end end);
			add: ((PHButton text: 'Explain Regex')
				when: #clicked send: #toggleExplainRegex to: self);
		extent: 450 @ 400);
		checkRegex