as yet unclassified
open
	| instance |
	instance := self new
		buildPresentation;
		openInWindow;
		enterPresentationMode.
	instance showSlide: instance slides size.