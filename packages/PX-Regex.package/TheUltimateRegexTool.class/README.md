A TheUltimateRegexTool consists of the essential widgets created during this project, such as the substring area, the NFA, the matcher view, the explanation of the regex, etc. All widgets update when the regex at the top is changed, in addition to other context-specific updates.

The NFA will highlight which states are currently active when the cursor moves over text in the substring area.
2 options are possible for the NFA: only match the full string, match all substrings. They can be toggled via the button.

The RegexArea and nfaView react to the cursor position in the substringArea. The nfaView will highlight all active states corresponding to the cursor position. If the cursor is inside a matched substring, the RegexArea will highlight the regex prefix, that would match up to the cursor position, if possible.

Instance Variables
	efficiencyArea: area that contains the matcher view, to check the efficiency of a regex given a test case.
	efficiencyTextArea: text area that contains the test case for the efficiency check.
	explanationView: contains the explanation of the regex
	fullPage: contains both leftPage and rightPage
	leftColumn: container for all widgets on the left side of the tool.
	matcherContainer: contains the MatcherView widget
	nfaContainer: containst he nfaView
	nfaScrollArea:	scroll area for the nfaContainer
	nfaView: holds all morphs that are part of the NFA
	regexArea:	 text area up top that expects a regex
	rightColumn: container for all widgets on the right side of the tool
	substringTextArea: text area for substring highlighting
	testlineArea: area that contains all current testlines
	testlines: OrderedCollection of all current testlines