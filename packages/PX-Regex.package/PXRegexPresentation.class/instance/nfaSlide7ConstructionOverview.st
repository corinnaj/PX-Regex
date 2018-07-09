automata
nfaSlide7ConstructionOverview
	| regex |
	regex := 'a(bc|d)*'.
	self addSlideWithCenterBox
		add: ((PHLabel text: 'NFA construction - Thompsons Algorithm') pointSize: 45);
"		add: PHDivider new;"
		add: (PHMorphContainer new add: (Morph new height: 64; color: Color transparent));
		add: (PHPage row 
			add: (PHPage column
				expand: true;
				add: ((PHLabel text: 'regex') pointSize: 30);
				add: (PHMorphContainer new add: 
					(PolygonMorph new vertices: {0@0 . 0@50} color: nil borderWidth: 2 borderColor: Color black; makeOpen; makeForwardArrow));
				add: ((PHLabel text: 'postfix regex') pointSize: 30);
				add: (PHMorphContainer new add: 
					(PolygonMorph new vertices: {0@0 . 0@50} color: nil borderWidth: 2 borderColor: Color black; makeOpen; makeForwardArrow));
				add: ((PHLabel text: 'NFA') pointSize: 30));
			add: (PHMorphContainer new add: (Morph new width: 200; color: Color transparent));
			add: (PHPage column
				expand: true;
				add: ((PHLabel text: regex) pointSize: 30);
				add: (PHMorphContainer new add: 
					(PolygonMorph new vertices: {0@0 . 0@50} color: nil borderWidth: 2 borderColor: Color transparent; makeOpen; makeForwardArrow));
				add: ((PHLabel text: (TNFA toPostfixRegex: regex)) pointSize: 30);
				add: (PHMorphContainer new add: (TNFAView forRegex: regex))))