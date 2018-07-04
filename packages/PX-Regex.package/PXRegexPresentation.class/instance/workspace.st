as yet unclassified
workspace

	self addSlideWithCenterBox
 		add: (PHMorphContainer new minSize: 700 @ 400;
			add: ((PluggableTextMorphPlus new
				useDefaultStyler;
				on: (DummyTextModel with: '') text: #text accept: #accept readSelection: nil menu: nil)
				extent: (700 @ 400) withScalingFactor)).

	self  slides last onEnterDo:
		[:slide | slide allMorphsDo: [:m | (m isKindOf: PluggableTextMorphPlus) ifTrue: [m grabKeyboard]]]