tool slides
debugString
	
	(self addSlideWithCenterBoxAndTitle: 'Quick Debugging')
 		add: (PHMorphContainer new minSize: 700 @ 400;
			add: ((PluggableTextMorphPlus new
				useDefaultStyler;
				on: (DummyTextModel
					with: (('''My Regex string''')
						asText
						addAttribute: (TextFontReference toFont: (TextStyle default fontOfPointSize: 20))))
				text: #text
				accept: #accept
				readSelection: nil
				menu: nil)
			extent: (700 @ 400) withScalingFactor)).

	self  slides last onEnterDo:
		[:slide | slide allMorphsDo: [:m | (m isKindOf: PluggableTextMorphPlus) ifTrue: [m grabKeyboard]]]	