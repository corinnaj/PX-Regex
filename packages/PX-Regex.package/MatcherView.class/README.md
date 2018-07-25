A MatcherView is a widget that displays the steps needed for a string to match against a regex (as implemented by VB-Regex) and if a successful match was found.

Clicking on the card header will reveal all individual steps. Steps can be hovered to display step number and highlight currently matched substring.

Instance Variables
	counter: number of step currently at (while stepping)
	currentStep: current page being displayed (while stepping or through hovering), contains an icon and a label
	headerLabel: label on header of card containing all steps
	inspector: StreamInspector that has a record of all accesses to a stream during matching.
	matcher: RxMatcher generated for the given regex
	matchingString: string to be matched against
	pos: label that displays the current step number
	stepSpeed: time between steps, where lower means faster